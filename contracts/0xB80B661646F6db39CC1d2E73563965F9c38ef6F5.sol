contract main {




// =====================  Runtime code  =====================


const SAFE_MULTIPLIER = 10^16


address owner;
mapping of uint8 stor2;
address rewardTokenAddress;
address wearableAddress;
uint256 stor5;
uint256 stor6;
uint256 stor7;
array of uint256 stor8;
mapping of uint256 stor9;
mapping of struct userInfo;
uint256 rewardPerBlock;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[Mask(32, 224, arg1)])
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    return userInfo[arg1].field_0, userInfo[arg1].field_256, userInfo[arg1].field_512
}

function rewardPerBlock() payable {
    return rewardPerBlock
}

function owner() payable {
    return owner
}

function wearable() payable {
    return wearableAddress
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function rewardInfo() payable {
    return stor5, stor6, stor7
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setrewardPerBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    rewardPerBlock = arg1
}

function addAllowedWearableType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not stor9[arg1]:
        stor8.length++
        stor8[stor8.length] = arg1
        stor9[arg1] = stor8.length
}

function removeAllowedWearableType(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor9[arg1]:
        require stor8.length - 1 < stor8.length
        require stor9[arg1] - 1 < stor8.length
        stor8[stor9[arg1]] = stor8[stor8.length]
        stor9[stor8[stor8.length]] = stor9[arg1]
        require stor8.length
        stor8[stor8.length] = 0
        stor8.length--
        stor9[arg1] = 0
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

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg5.length) + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg3.length) + (32 * arg4.length) + ceil32(arg5.length) + 192] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    return Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), 
           mem[(32 * arg3.length) + (32 * arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]
}

function updatePool() payable {
    if block.number > stor5:
        if stor7:
            if stor5 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - stor5:
                require ext_code.size(rewardTokenAddress)
                staticcall rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 < ext_call.return_data[0]:
                    if not stor7:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / stor7) + stor6 < stor6:
                        revert with 0, 'SafeMath: addition overflow'
                    stor6 += 0 / stor7
                else:
                    if not ext_call.return_data[0]:
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 0 / stor7
                    else:
                        if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^16 * ext_call.return_data[0] / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 10^16 * ext_call.return_data[0] / stor7
            else:
                if (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) / block.number - stor5 != rewardPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(rewardTokenAddress)
                staticcall rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) < ext_call.return_data[0]:
                    if not (block.number * rewardPerBlock) - (stor5 * rewardPerBlock):
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 0 / stor7
                    else:
                        if (10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) != 10^16:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += (10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / stor7
                else:
                    if not ext_call.return_data[0]:
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 0 / stor7
                    else:
                        if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^16 * ext_call.return_data[0] / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 10^16 * ext_call.return_data[0] / stor7
        stor5 = block.number
}

function pendingAlpa(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number <= stor5:
        if not userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_0
        if stor6 * userInfo[address(arg1)].field_256 / userInfo[address(arg1)].field_256 != stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_0 > stor6 * userInfo[address(arg1)].field_256 / 10^16:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((stor6 * userInfo[address(arg1)].field_256 / 10^16) - userInfo[address(arg1)].field_0)
    if not stor7:
        if not userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_0
        if stor6 * userInfo[address(arg1)].field_256 / userInfo[address(arg1)].field_256 != stor6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[address(arg1)].field_0 > stor6 * userInfo[address(arg1)].field_256 / 10^16:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((stor6 * userInfo[address(arg1)].field_256 / 10^16) - userInfo[address(arg1)].field_0)
    if stor5 > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - stor5:
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 < ext_call.return_data[0]:
            if not stor7:
                revert with 0, 'SafeMath: division by zero'
            if (0 / stor7) + stor6 < stor6:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_256:
                if userInfo[address(arg1)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_0
            if (0 / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / userInfo[address(arg1)].field_256 != (0 / stor7) + stor6:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[address(arg1)].field_0 > (0 / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / 10^16:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((0 / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / 10^16) - userInfo[address(arg1)].field_0)
    else:
        if (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) / block.number - stor5 != rewardPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(rewardTokenAddress)
        staticcall rewardTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) < ext_call.return_data[0]:
            if not (block.number * rewardPerBlock) - (stor5 * rewardPerBlock):
                if not stor7:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / stor7) + stor6 < stor6:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[address(arg1)].field_256:
                    if userInfo[address(arg1)].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[address(arg1)].field_0
                if (0 / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / userInfo[address(arg1)].field_256 != (0 / stor7) + stor6:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if userInfo[address(arg1)].field_0 > (0 / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / 10^16:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((0 / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / 10^16) - userInfo[address(arg1)].field_0)
            if (10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) != 10^16:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not stor7:
                revert with 0, 'SafeMath: division by zero'
            if ((10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / stor7) + stor6 < stor6:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[address(arg1)].field_256:
                if userInfo[address(arg1)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[address(arg1)].field_0
            if ((10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / userInfo[address(arg1)].field_256 != ((10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / stor7) + stor6:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if userInfo[address(arg1)].field_0 > ((10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / 10^16:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((((10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / 10^16) - userInfo[address(arg1)].field_0)
    if not ext_call.return_data[0]:
        if not stor7:
            revert with 0, 'SafeMath: division by zero'
        if (0 / stor7) + stor6 < stor6:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[address(arg1)].field_256:
            if userInfo[address(arg1)].field_0 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[address(arg1)].field_0
        if (0 / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / userInfo[address(arg1)].field_256 != (0 / stor7) + stor6:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if userInfo[address(arg1)].field_0 > (0 / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / 10^16:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((0 / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / 10^16) - userInfo[address(arg1)].field_0)
    if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not stor7:
        revert with 0, 'SafeMath: division by zero'
    if (10^16 * ext_call.return_data[0] / stor7) + stor6 < stor6:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[address(arg1)].field_256:
        if userInfo[address(arg1)].field_0 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[address(arg1)].field_0
    if (10^16 * ext_call.return_data[0] / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / userInfo[address(arg1)].field_256 != (10^16 * ext_call.return_data[0] / stor7) + stor6:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if userInfo[address(arg1)].field_0 > (10^16 * ext_call.return_data[0] / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / 10^16:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((10^16 * ext_call.return_data[0] / stor7 * userInfo[address(arg1)].field_256) + (stor6 * userInfo[address(arg1)].field_256) / 10^16) - userInfo[address(arg1)].field_0)
}

function claim() payable {
    if block.number <= stor5:
        if not userInfo[msg.sender].field_256:
            userInfo[msg.sender].field_0 = 0
        else:
            if not userInfo[msg.sender].field_256:
                if userInfo[msg.sender].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[msg.sender].field_0:
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(rewardTokenAddress)
                    if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[msg.sender].field_0
                    else:
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                if stor6 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor6:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[msg.sender].field_0 > stor6 * userInfo[msg.sender].field_256 / 10^16:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (stor6 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(rewardTokenAddress)
                    if (stor6 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (stor6 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                    else:
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            if not userInfo[msg.sender].field_256:
                userInfo[msg.sender].field_0 = 0
            else:
                if stor6 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor6:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                userInfo[msg.sender].field_0 = stor6 * userInfo[msg.sender].field_256 / 10^16
    else:
        if not stor7:
            stor5 = block.number
            if not userInfo[msg.sender].field_256:
                userInfo[msg.sender].field_0 = 0
            else:
                if not userInfo[msg.sender].field_256:
                    if userInfo[msg.sender].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[msg.sender].field_0:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardTokenAddress)
                        if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_0
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if stor6 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor6:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[msg.sender].field_0 > stor6 * userInfo[msg.sender].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (stor6 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardTokenAddress)
                        if (stor6 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor6 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if not userInfo[msg.sender].field_256:
                    userInfo[msg.sender].field_0 = 0
                else:
                    if stor6 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor6:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userInfo[msg.sender].field_0 = stor6 * userInfo[msg.sender].field_256 / 10^16
        else:
            if stor5 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - stor5:
                require ext_code.size(rewardTokenAddress)
                staticcall rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 < ext_call.return_data[0]:
                    if not stor7:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / stor7) + stor6 < stor6:
                        revert with 0, 'SafeMath: addition overflow'
                    stor6 += 0 / stor7
                else:
                    if not ext_call.return_data[0]:
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 0 / stor7
                    else:
                        if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^16 * ext_call.return_data[0] / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 10^16 * ext_call.return_data[0] / stor7
            else:
                if (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) / block.number - stor5 != rewardPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(rewardTokenAddress)
                staticcall rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) < ext_call.return_data[0]:
                    if not (block.number * rewardPerBlock) - (stor5 * rewardPerBlock):
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 0 / stor7
                    else:
                        if (10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) != 10^16:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += (10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / stor7
                else:
                    if not ext_call.return_data[0]:
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 0 / stor7
                    else:
                        if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^16 * ext_call.return_data[0] / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 10^16 * ext_call.return_data[0] / stor7
            stor5 = block.number
            if not userInfo[msg.sender].field_256:
                userInfo[msg.sender].field_0 = 0
            else:
                if not userInfo[msg.sender].field_256:
                    if userInfo[msg.sender].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[msg.sender].field_0:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardTokenAddress)
                        if -userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[msg.sender].field_0
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if stor6 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor6:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if userInfo[msg.sender].field_0 > stor6 * userInfo[msg.sender].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (stor6 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardTokenAddress)
                        if (stor6 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor6 * userInfo[msg.sender].field_256 / 10^16) - userInfo[msg.sender].field_0
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if not userInfo[msg.sender].field_256:
                    userInfo[msg.sender].field_0 = 0
                else:
                    if stor6 * userInfo[msg.sender].field_256 / userInfo[msg.sender].field_256 != stor6:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    userInfo[msg.sender].field_0 = stor6 * userInfo[msg.sender].field_256 / 10^16
}

function unstake() payable {
    if not userInfo[address(msg.sender)].field_512:
        revert with 0, 'not staked'
    if block.number <= stor5:
        if not userInfo[address(msg.sender)].field_256:
            userInfo[address(msg.sender)].field_0 = 0
            if userInfo[address(msg.sender)].field_256 > stor7:
                revert with 0, 'SafeMath: subtraction overflow'
            stor7 -= userInfo[address(msg.sender)].field_256
            userInfo[address(msg.sender)].field_0 = 0
            userInfo[address(msg.sender)].field_256 = 0
            userInfo[address(msg.sender)].field_512 = 0
            require ext_code.size(wearableAddress)
            call wearableAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args this.address, msg.sender, userInfo[address(msg.sender)].field_512, 1, 160, 0, mem[420]
        else:
            if not userInfo[address(msg.sender)].field_256:
                if userInfo[address(msg.sender)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[address(msg.sender)].field_0:
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(rewardTokenAddress)
                    if -userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[address(msg.sender)].field_0
                    else:
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                if stor6 * userInfo[address(msg.sender)].field_256 / userInfo[address(msg.sender)].field_256 != stor6:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[address(msg.sender)].field_0 > stor6 * userInfo[address(msg.sender)].field_256 / 10^16:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0:
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(rewardTokenAddress)
                    if (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0
                    else:
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            userInfo[address(msg.sender)].field_0 = 0
            if userInfo[address(msg.sender)].field_256 > stor7:
                revert with 0, 'SafeMath: subtraction overflow'
            stor7 -= userInfo[address(msg.sender)].field_256
            userInfo[address(msg.sender)].field_0 = 0
            userInfo[address(msg.sender)].field_256 = 0
            userInfo[address(msg.sender)].field_512 = 0
            require ext_code.size(wearableAddress)
            call wearableAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args this.address, msg.sender, userInfo[address(msg.sender)].field_512, 1, 160, 0, mem[548]
    else:
        if not stor7:
            stor5 = block.number
            if not userInfo[address(msg.sender)].field_256:
                userInfo[address(msg.sender)].field_0 = 0
                if userInfo[address(msg.sender)].field_256 > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7 -= userInfo[address(msg.sender)].field_256
                userInfo[address(msg.sender)].field_0 = 0
                userInfo[address(msg.sender)].field_256 = 0
                userInfo[address(msg.sender)].field_512 = 0
                require ext_code.size(wearableAddress)
                call wearableAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args this.address, msg.sender, userInfo[address(msg.sender)].field_512, 1, 160, 0, mem[420]
            else:
                if not userInfo[address(msg.sender)].field_256:
                    if userInfo[address(msg.sender)].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[address(msg.sender)].field_0:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardTokenAddress)
                        if -userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[address(msg.sender)].field_0
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if stor6 * userInfo[address(msg.sender)].field_256 / userInfo[address(msg.sender)].field_256 != stor6:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[address(msg.sender)].field_0 > stor6 * userInfo[address(msg.sender)].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardTokenAddress)
                        if (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                userInfo[address(msg.sender)].field_0 = 0
                if userInfo[address(msg.sender)].field_256 > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7 -= userInfo[address(msg.sender)].field_256
                userInfo[address(msg.sender)].field_0 = 0
                userInfo[address(msg.sender)].field_256 = 0
                userInfo[address(msg.sender)].field_512 = 0
                require ext_code.size(wearableAddress)
                call wearableAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args this.address, msg.sender, userInfo[address(msg.sender)].field_512, 1, 160, 0, mem[548]
        else:
            if stor5 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - stor5:
                require ext_code.size(rewardTokenAddress)
                staticcall rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 < ext_call.return_data[0]:
                    if not stor7:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / stor7) + stor6 < stor6:
                        revert with 0, 'SafeMath: addition overflow'
                    stor6 += 0 / stor7
                else:
                    if not ext_call.return_data[0]:
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 0 / stor7
                    else:
                        if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^16 * ext_call.return_data[0] / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 10^16 * ext_call.return_data[0] / stor7
            else:
                if (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) / block.number - stor5 != rewardPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(rewardTokenAddress)
                staticcall rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) < ext_call.return_data[0]:
                    if not (block.number * rewardPerBlock) - (stor5 * rewardPerBlock):
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 0 / stor7
                    else:
                        if (10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) != 10^16:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += (10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / stor7
                else:
                    if not ext_call.return_data[0]:
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 0 / stor7
                    else:
                        if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^16 * ext_call.return_data[0] / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 10^16 * ext_call.return_data[0] / stor7
            stor5 = block.number
            if not userInfo[address(msg.sender)].field_256:
                userInfo[address(msg.sender)].field_0 = 0
                if userInfo[address(msg.sender)].field_256 > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7 -= userInfo[address(msg.sender)].field_256
                userInfo[address(msg.sender)].field_0 = 0
                userInfo[address(msg.sender)].field_256 = 0
                userInfo[address(msg.sender)].field_512 = 0
                require ext_code.size(wearableAddress)
                call wearableAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args this.address, msg.sender, userInfo[address(msg.sender)].field_512, 1, 160, 0, mem[548]
            else:
                if not userInfo[address(msg.sender)].field_256:
                    if userInfo[address(msg.sender)].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[address(msg.sender)].field_0:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardTokenAddress)
                        if -userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[address(msg.sender)].field_0
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if stor6 * userInfo[address(msg.sender)].field_256 / userInfo[address(msg.sender)].field_256 != stor6:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if userInfo[address(msg.sender)].field_0 > stor6 * userInfo[address(msg.sender)].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardTokenAddress)
                        if (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                userInfo[address(msg.sender)].field_0 = 0
                if userInfo[address(msg.sender)].field_256 > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7 -= userInfo[address(msg.sender)].field_256
                userInfo[address(msg.sender)].field_0 = 0
                userInfo[address(msg.sender)].field_256 = 0
                userInfo[address(msg.sender)].field_512 = 0
                require ext_code.size(wearableAddress)
                call wearableAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args this.address, msg.sender, userInfo[address(msg.sender)].field_512, 1, 160, 0, mem[676]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if userInfo[address(msg.sender)].field_512:
        revert with 0, 'already staked'
    require ext_code.size(wearableAddress)
    staticcall wearableAddress.getWearable(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not stor9[ext_call.return_data[64]]:
        revert with 0, 'invalid wearable type'
    if block.number <= stor5:
        if not userInfo[address(msg.sender)].field_256:
            if not ext_call.return_data[32]:
                userInfo[address(msg.sender)].field_0 = 0
            else:
                if stor6 * ext_call.return_data[32] / ext_call.return_data[32] != stor6:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                userInfo[address(msg.sender)].field_0 = stor6 * ext_call.return_data[32] / 10^16
            if ext_call.return_data[32] + stor7 < stor7:
                revert with 0, 'SafeMath: addition overflow'
            stor7 += ext_call.return_data[32]
            userInfo[address(msg.sender)].field_512 = uint32(arg1)
            userInfo[address(msg.sender)].field_256 = uint32(ext_call.return_data[32])
            userInfo[address(msg.sender)].field_288 = 0
            require ext_code.size(wearableAddress)
            call wearableAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), this.address, arg1, 1, 160, 0, mem[356]
        else:
            if not userInfo[address(msg.sender)].field_256:
                if userInfo[address(msg.sender)].field_0 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[address(msg.sender)].field_0:
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(rewardTokenAddress)
                    if -userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, -userInfo[address(msg.sender)].field_0
                    else:
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                if stor6 * userInfo[address(msg.sender)].field_256 / userInfo[address(msg.sender)].field_256 != stor6:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[address(msg.sender)].field_0 > stor6 * userInfo[address(msg.sender)].field_256 / 10^16:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0:
                    require ext_code.size(rewardTokenAddress)
                    staticcall rewardTokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(rewardTokenAddress)
                    if (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0
                    else:
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            if not ext_call.return_data[32]:
                userInfo[address(msg.sender)].field_0 = 0
            else:
                if stor6 * ext_call.return_data[32] / ext_call.return_data[32] != stor6:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                userInfo[address(msg.sender)].field_0 = stor6 * ext_call.return_data[32] / 10^16
            if ext_call.return_data[32] + stor7 < stor7:
                revert with 0, 'SafeMath: addition overflow'
            stor7 += ext_call.return_data[32]
            userInfo[address(msg.sender)].field_512 = uint32(arg1)
            userInfo[address(msg.sender)].field_256 = uint32(ext_call.return_data[32])
            userInfo[address(msg.sender)].field_288 = 0
            require ext_code.size(wearableAddress)
            call wearableAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1, 1, 160, 0, mem[484]
    else:
        if not stor7:
            stor5 = block.number
            if not userInfo[address(msg.sender)].field_256:
                if not ext_call.return_data[32]:
                    userInfo[address(msg.sender)].field_0 = 0
                else:
                    if stor6 * ext_call.return_data[32] / ext_call.return_data[32] != stor6:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    userInfo[address(msg.sender)].field_0 = stor6 * ext_call.return_data[32] / 10^16
                if ext_call.return_data[32] + stor7 < stor7:
                    revert with 0, 'SafeMath: addition overflow'
                stor7 += ext_call.return_data[32]
                userInfo[address(msg.sender)].field_512 = uint32(arg1)
                userInfo[address(msg.sender)].field_256 = uint32(ext_call.return_data[32])
                userInfo[address(msg.sender)].field_288 = 0
                require ext_code.size(wearableAddress)
                call wearableAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), this.address, arg1, 1, 160, 0, mem[356]
            else:
                if not userInfo[address(msg.sender)].field_256:
                    if userInfo[address(msg.sender)].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[address(msg.sender)].field_0:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardTokenAddress)
                        if -userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[address(msg.sender)].field_0
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if stor6 * userInfo[address(msg.sender)].field_256 / userInfo[address(msg.sender)].field_256 != stor6:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[address(msg.sender)].field_0 > stor6 * userInfo[address(msg.sender)].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardTokenAddress)
                        if (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if not ext_call.return_data[32]:
                    userInfo[address(msg.sender)].field_0 = 0
                else:
                    if stor6 * ext_call.return_data[32] / ext_call.return_data[32] != stor6:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userInfo[address(msg.sender)].field_0 = stor6 * ext_call.return_data[32] / 10^16
                if ext_call.return_data[32] + stor7 < stor7:
                    revert with 0, 'SafeMath: addition overflow'
                stor7 += ext_call.return_data[32]
                userInfo[address(msg.sender)].field_512 = uint32(arg1)
                userInfo[address(msg.sender)].field_256 = uint32(ext_call.return_data[32])
                userInfo[address(msg.sender)].field_288 = 0
                require ext_code.size(wearableAddress)
                call wearableAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1, 1, 160, 0, mem[484]
        else:
            if stor5 > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.number - stor5:
                require ext_code.size(rewardTokenAddress)
                staticcall rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 < ext_call.return_data[0]:
                    if not stor7:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / stor7) + stor6 < stor6:
                        revert with 0, 'SafeMath: addition overflow'
                    stor6 += 0 / stor7
                else:
                    if not ext_call.return_data[0]:
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 0 / stor7
                    else:
                        if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^16 * ext_call.return_data[0] / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 10^16 * ext_call.return_data[0] / stor7
            else:
                if (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) / block.number - stor5 != rewardPerBlock:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(rewardTokenAddress)
                staticcall rewardTokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) < ext_call.return_data[0]:
                    if not (block.number * rewardPerBlock) - (stor5 * rewardPerBlock):
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 0 / stor7
                    else:
                        if (10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / (block.number * rewardPerBlock) - (stor5 * rewardPerBlock) != 10^16:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += (10^16 * block.number * rewardPerBlock) - (10^16 * stor5 * rewardPerBlock) / stor7
                else:
                    if not ext_call.return_data[0]:
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 0 / stor7
                    else:
                        if 10^16 * ext_call.return_data[0] / ext_call.return_data[0] != 10^16:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not stor7:
                            revert with 0, 'SafeMath: division by zero'
                        if (10^16 * ext_call.return_data[0] / stor7) + stor6 < stor6:
                            revert with 0, 'SafeMath: addition overflow'
                        stor6 += 10^16 * ext_call.return_data[0] / stor7
            stor5 = block.number
            if not userInfo[address(msg.sender)].field_256:
                if not ext_call.return_data[32]:
                    userInfo[address(msg.sender)].field_0 = 0
                else:
                    if stor6 * ext_call.return_data[32] / ext_call.return_data[32] != stor6:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    userInfo[address(msg.sender)].field_0 = stor6 * ext_call.return_data[32] / 10^16
                if ext_call.return_data[32] + stor7 < stor7:
                    revert with 0, 'SafeMath: addition overflow'
                stor7 += ext_call.return_data[32]
                userInfo[address(msg.sender)].field_512 = uint32(arg1)
                userInfo[address(msg.sender)].field_256 = uint32(ext_call.return_data[32])
                userInfo[address(msg.sender)].field_288 = 0
                require ext_code.size(wearableAddress)
                call wearableAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1, 1, 160, 0, mem[484]
            else:
                if not userInfo[address(msg.sender)].field_256:
                    if userInfo[address(msg.sender)].field_0 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[address(msg.sender)].field_0:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardTokenAddress)
                        if -userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -userInfo[address(msg.sender)].field_0
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                else:
                    if stor6 * userInfo[address(msg.sender)].field_256 / userInfo[address(msg.sender)].field_256 != stor6:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if userInfo[address(msg.sender)].field_0 > stor6 * userInfo[address(msg.sender)].field_256 / 10^16:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0:
                        require ext_code.size(rewardTokenAddress)
                        staticcall rewardTokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(rewardTokenAddress)
                        if (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (stor6 * userInfo[address(msg.sender)].field_256 / 10^16) - userInfo[address(msg.sender)].field_0
                        else:
                            call rewardTokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if not ext_call.return_data[32]:
                    userInfo[address(msg.sender)].field_0 = 0
                else:
                    if stor6 * ext_call.return_data[32] / ext_call.return_data[32] != stor6:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    userInfo[address(msg.sender)].field_0 = stor6 * ext_call.return_data[32] / 10^16
                if ext_call.return_data[32] + stor7 < stor7:
                    revert with 0, 'SafeMath: addition overflow'
                stor7 += ext_call.return_data[32]
                userInfo[address(msg.sender)].field_512 = uint32(arg1)
                userInfo[address(msg.sender)].field_256 = uint32(ext_call.return_data[32])
                userInfo[address(msg.sender)].field_288 = 0
                require ext_code.size(wearableAddress)
                call wearableAddress.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1, 1, 160, 0, mem[612]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
