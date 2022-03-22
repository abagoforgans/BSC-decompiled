contract main {




// =====================  Runtime code  =====================


#
#  - stake(uint256 arg1)
#
address configAddress;
address owner;
uint256 totalProductivity;
uint256 interestsPerBlock;
uint256 totalShare;
uint256 mintedShare;
uint256 mintCumulation;
uint256 stor7;
address shareTokenAddress;
mapping of struct users;

function totalShare() payable {
    return totalShare
}

function accAmountPerShare() payable {
    return interestsPerBlock
}

function shareToken() payable {
    return shareTokenAddress
}

function config() payable {
    return configAddress
}

function owner() payable {
    return owner
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[arg1].field_0, users[arg1].field_256, users[arg1].field_512
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

function _fallback() payable {
    revert
}

function getProductivity(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return users[address(arg1)].field_0, totalProductivity
}

function setupConfig(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'OWNER FORBIDDEN'
    configAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.developer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    owner = ext_call.return_data[12 len 20]
}

function initialize() payable {
    require ext_code.size(configAddress)
    staticcall configAddress.developer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'DEVELOPER FORBIDDEN'
    require ext_code.size(configAddress)
    staticcall configAddress.base() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    shareTokenAddress = ext_call.return_data[12 len 20]
}

function queryReward() payable {
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
    require ext_code.size(shareTokenAddress)
    staticcall shareTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not mintedShare + ext_call.return_data[0] - totalShare:
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
    if (10^12 * mintedShare) + (10^12 * ext_call.return_data[0]) - (10^12 * totalShare) / mintedShare + ext_call.return_data[0] - totalShare != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalProductivity:
        revert with 0, 'SafeMath: division by zero', 0
    if ((10^12 * mintedShare) + (10^12 * ext_call.return_data[0]) - (10^12 * totalShare) / totalProductivity) + interestsPerBlock < interestsPerBlock:
        revert with 0, 'SafeMath: addition overflow'
    if not users[address(msg.sender)].field_0:
        if users[address(msg.sender)].field_512 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_512:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (users[address(msg.sender)].field_512 - users[address(msg.sender)].field_256)
    if ((10^12 * mintedShare) + (10^12 * ext_call.return_data[0]) - (10^12 * totalShare) / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / users[address(msg.sender)].field_0 != ((10^12 * mintedShare) + (10^12 * ext_call.return_data[0]) - (10^12 * totalShare) / totalProductivity) + interestsPerBlock:
        revert with 0, 'SafeMath: multiplication overflow'
    if users[address(msg.sender)].field_512 + (((10^12 * mintedShare) + (10^12 * ext_call.return_data[0]) - (10^12 * totalShare) / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / 10^12) < ((10^12 * mintedShare) + (10^12 * ext_call.return_data[0]) - (10^12 * totalShare) / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / 10^12:
        revert with 0, 'SafeMath: addition overflow'
    if users[address(msg.sender)].field_256 > users[address(msg.sender)].field_512 + (((10^12 * mintedShare) + (10^12 * ext_call.return_data[0]) - (10^12 * totalShare) / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / 10^12):
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (users[address(msg.sender)].field_512 + (((10^12 * mintedShare) + (10^12 * ext_call.return_data[0]) - (10^12 * totalShare) / totalProductivity * users[address(msg.sender)].field_0) + (interestsPerBlock * users[address(msg.sender)].field_0) / 10^12) - users[address(msg.sender)].field_256)
}

function mintReward() payable {
    if stor7 != 1:
        revert with 0, 'Locked'
    stor7 = 0
    mem[100] = this.address
    require ext_code.size(shareTokenAddress)
    staticcall shareTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalProductivity:
        if mintedShare + ext_call.return_data[0] < totalShare:
            revert with 0, 'SafeMath: addition overflow'
        totalShare = mintedShare + ext_call.return_data[0]
        if not users[address(msg.sender)].field_0:
            if not users[address(msg.sender)].field_512:
                revert with 0, 'NOTHING TO MINT'
            mem[ceil32(return_data.size) + 96] = 68
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, users[address(msg.sender)].field_512, mem[ceil32(return_data.size) + 196 len 28]
            call shareTokenAddress.mem[ceil32(return_data.size) + 196 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 200 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                    if not mem[ceil32(return_data.size) + 228]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if not users[address(msg.sender)].field_0:
                mem[ceil32(return_data.size) + 96] = 26
                mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
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
                mem[ceil32(return_data.size) + 96] = 26
                mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
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
            mem[ceil32(return_data.size) + 388 len 96] = unknown_0xa9059cbb(?????), msg.sender, users[address(msg.sender)].field_512, mem[ceil32(return_data.size) + 388 len 28]
            call shareTokenAddress.mem[ceil32(return_data.size) + 388 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 392 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[ceil32(return_data.size) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 420] == bool(mem[ceil32(return_data.size) + 420])
                    if not mem[ceil32(return_data.size) + 420]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        if not mintedShare + ext_call.return_data[0] - totalShare:
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            if not totalProductivity:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / totalProductivity) + interestsPerBlock < interestsPerBlock:
                revert with 0, 'SafeMath: addition overflow'
            interestsPerBlock += 0 / totalProductivity
        else:
            if (10^12 * mintedShare) + (10^12 * ext_call.return_data[0]) - (10^12 * totalShare) / mintedShare + ext_call.return_data[0] - totalShare != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            if not totalProductivity:
                revert with 0, 'SafeMath: division by zero', 0
            if ((10^12 * mintedShare) + (10^12 * ext_call.return_data[0]) - (10^12 * totalShare) / totalProductivity) + interestsPerBlock < interestsPerBlock:
                revert with 0, 'SafeMath: addition overflow'
            interestsPerBlock += (10^12 * mintedShare) + (10^12 * ext_call.return_data[0]) - (10^12 * totalShare) / totalProductivity
        totalShare = mintedShare + ext_call.return_data[0]
        if not users[address(msg.sender)].field_0:
            if not users[address(msg.sender)].field_512:
                revert with 0, 'NOTHING TO MINT'
            mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, users[address(msg.sender)].field_512, mem[ceil32(return_data.size) + 260 len 28]
            call shareTokenAddress.mem[ceil32(return_data.size) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 264 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                    if not mem[ceil32(return_data.size) + 292]:
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
            mem[ceil32(return_data.size) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, users[address(msg.sender)].field_512, mem[ceil32(return_data.size) + 452 len 28]
            call shareTokenAddress.mem[ceil32(return_data.size) + 452 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 456 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 484] == bool(mem[ceil32(return_data.size) + 484])
                    if not mem[ceil32(return_data.size) + 484]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    users[address(msg.sender)].field_512 = 0
    mintedShare += users[address(msg.sender)].field_512
    stor7 = 1
    emit Mint(users[address(msg.sender)].field_512, msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'INSUFFICIENT_PRODUCTIVITY'
    if arg1 > users[address(msg.sender)].field_0:
        revert with 0, 'INSUFFICIENT_PRODUCTIVITY'
    mem[100] = this.address
    require ext_code.size(shareTokenAddress)
    staticcall shareTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalProductivity:
        if mintedShare + ext_call.return_data[0] < totalShare:
            revert with 0, 'SafeMath: addition overflow'
        totalShare = mintedShare + ext_call.return_data[0]
        if not users[address(msg.sender)].field_0:
            mem[ceil32(return_data.size) + 96] = 30
            mem[ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
            if arg1 > users[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            users[address(msg.sender)].field_0 -= arg1
            if not users[address(msg.sender)].field_0 - arg1:
                users[address(msg.sender)].field_256 = 0
            else:
                if (users[address(msg.sender)].field_0 * interestsPerBlock) - (arg1 * interestsPerBlock) / users[address(msg.sender)].field_0 - arg1 != interestsPerBlock:
                    revert with 0, 'SafeMath: multiplication overflow'
                users[address(msg.sender)].field_256 = (users[address(msg.sender)].field_0 * interestsPerBlock) - (arg1 * interestsPerBlock) / 10^12
            if arg1 > totalProductivity:
                revert with 0, 'SafeMath: subtraction overflow', 0
            totalProductivity -= arg1
            require ext_code.size(configAddress)
            staticcall configAddress.token() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 388 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, mem[(2 * ceil32(return_data.size)) + 388 len 28]
            call address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 388 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 392 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[(2 * ceil32(return_data.size)) + 420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 420] == bool(mem[(2 * ceil32(return_data.size)) + 420])
                    if not mem[(2 * ceil32(return_data.size)) + 420]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            if not users[address(msg.sender)].field_0:
                mem[ceil32(return_data.size) + 96] = 26
                mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
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
                mem[ceil32(return_data.size) + 96] = 26
                mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
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
            if arg1 > users[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            users[address(msg.sender)].field_0 -= arg1
            if not users[address(msg.sender)].field_0 - arg1:
                users[address(msg.sender)].field_256 = 0
            else:
                if (users[address(msg.sender)].field_0 * interestsPerBlock) - (arg1 * interestsPerBlock) / users[address(msg.sender)].field_0 - arg1 != interestsPerBlock:
                    revert with 0, 'SafeMath: multiplication overflow'
                users[address(msg.sender)].field_256 = (users[address(msg.sender)].field_0 * interestsPerBlock) - (arg1 * interestsPerBlock) / 10^12
            if arg1 > totalProductivity:
                revert with 0, 'SafeMath: subtraction overflow', 0
            totalProductivity -= arg1
            require ext_code.size(configAddress)
            staticcall configAddress.token() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 580 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, mem[(2 * ceil32(return_data.size)) + 580 len 28]
            call address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 580 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 584 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[(2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 612] == bool(mem[(2 * ceil32(return_data.size)) + 612])
                    if not mem[(2 * ceil32(return_data.size)) + 612]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        if not mintedShare + ext_call.return_data[0] - totalShare:
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            if not totalProductivity:
                revert with 0, 'SafeMath: division by zero', 0
            if (0 / totalProductivity) + interestsPerBlock < interestsPerBlock:
                revert with 0, 'SafeMath: addition overflow'
            interestsPerBlock += 0 / totalProductivity
        else:
            if (10^12 * mintedShare) + (10^12 * ext_call.return_data[0]) - (10^12 * totalShare) / mintedShare + ext_call.return_data[0] - totalShare != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            if not totalProductivity:
                revert with 0, 'SafeMath: division by zero', 0
            if ((10^12 * mintedShare) + (10^12 * ext_call.return_data[0]) - (10^12 * totalShare) / totalProductivity) + interestsPerBlock < interestsPerBlock:
                revert with 0, 'SafeMath: addition overflow'
            interestsPerBlock += (10^12 * mintedShare) + (10^12 * ext_call.return_data[0]) - (10^12 * totalShare) / totalProductivity
        totalShare = mintedShare + ext_call.return_data[0]
        if not users[address(msg.sender)].field_0:
            if arg1 > users[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            users[address(msg.sender)].field_0 -= arg1
            if not users[address(msg.sender)].field_0 - arg1:
                users[address(msg.sender)].field_256 = 0
            else:
                if (users[address(msg.sender)].field_0 * interestsPerBlock) - (arg1 * interestsPerBlock) / users[address(msg.sender)].field_0 - arg1 != interestsPerBlock:
                    revert with 0, 'SafeMath: multiplication overflow'
                users[address(msg.sender)].field_256 = (users[address(msg.sender)].field_0 * interestsPerBlock) - (arg1 * interestsPerBlock) / 10^12
            if arg1 > totalProductivity:
                revert with 0, 'SafeMath: subtraction overflow', 0
            totalProductivity -= arg1
            require ext_code.size(configAddress)
            staticcall configAddress.token() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, mem[(2 * ceil32(return_data.size)) + 452 len 28]
            call address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 452 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 456 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
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
            if arg1 > users[address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            users[address(msg.sender)].field_0 -= arg1
            if not users[address(msg.sender)].field_0 - arg1:
                users[address(msg.sender)].field_256 = 0
            else:
                if (users[address(msg.sender)].field_0 * interestsPerBlock) - (arg1 * interestsPerBlock) / users[address(msg.sender)].field_0 - arg1 != interestsPerBlock:
                    revert with 0, 'SafeMath: multiplication overflow'
                users[address(msg.sender)].field_256 = (users[address(msg.sender)].field_0 * interestsPerBlock) - (arg1 * interestsPerBlock) / 10^12
            if arg1 > totalProductivity:
                revert with 0, 'SafeMath: subtraction overflow', 0
            totalProductivity -= arg1
            require ext_code.size(configAddress)
            staticcall configAddress.token() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 644 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, mem[(2 * ceil32(return_data.size)) + 644 len 28]
            call address(ext_call.return_data[0]).mem[(2 * ceil32(return_data.size)) + 644 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 648 len 64]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[(2 * ceil32(return_data.size)) + 676 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 676] == bool(mem[(2 * ceil32(return_data.size)) + 676])
                    if not mem[(2 * ceil32(return_data.size)) + 676]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
    emit ProductivityDecreased(arg1, msg.sender);
}



}
