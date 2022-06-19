contract main {




// =====================  Runtime code  =====================


#
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 bonusEndBlock;
uint256 BONUS_MULTIPLIER;
address sub_5ee57413Address;
uint256 sub_08cbe411;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
array of address stor57762096780731528330405058414938765910932439953606620384872163540286326260488;
array of uint256 stor57762096780731528330405058414938765910932439953606620384872163540286326260489;
array of uint256 stor57762096780731528330405058414938765910932439953606620384872163540286326260490;
array of uint256 stor57762096780731528330405058414938765910932439953606620384872163540286326260491;

function poolLength() payable {
    return poolInfo.length
}

function sub_08cbe411(?) payable {
    return sub_08cbe411
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function bonusEndBlock() payable {
    return bonusEndBlock
}

function startBlock() payable {
    return startBlock
}

function sub_5ee57413(?) payable {
    return sub_5ee57413Address
}

function BONUS_MULTIPLIER() payable {
    return BONUS_MULTIPLIER
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
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

function setBonusEndBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bonusEndBlock = arg1
}

function setBonusMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    BONUS_MULTIPLIER = arg1
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

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= bonusEndBlock:
        if arg2 < arg1:
            revert with 0, 17
        if arg2 - arg1 and BONUS_MULTIPLIER > -1 / arg2 - arg1:
            revert with 0, 17
        return ((arg2 * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER))
    if arg1 >= bonusEndBlock:
        if arg2 < arg1:
            revert with 0, 17
        return (arg2 - arg1)
    if arg2 < bonusEndBlock:
        revert with 0, 17
    if bonusEndBlock < arg1:
        revert with 0, 17
    if bonusEndBlock - arg1 and BONUS_MULTIPLIER > -1 / bonusEndBlock - arg1:
        revert with 0, 17
    if (bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) > !(arg2 - bonusEndBlock):
        revert with 0, 17
    return ((bonusEndBlock * BONUS_MULTIPLIER) - (arg1 * BONUS_MULTIPLIER) + arg2 - bonusEndBlock)
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_5ee57413Address = arg1
    sub_08cbe411 = arg2
    startBlock = arg3
    bonusEndBlock = arg4
    totalAllocPoint = 0
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if block.number < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) and sub_08cbe411 > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                    revert with 0, 17
                if (block.number * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411) and poolInfo[arg1].field_256 > -1 / (block.number * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if block.number < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[arg1].field_512 and sub_08cbe411 > -1 / block.number - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (block.number * sub_08cbe411) - (poolInfo[arg1].field_512 * sub_08cbe411) and poolInfo[arg1].field_256 > -1 / (block.number * sub_08cbe411) - (poolInfo[arg1].field_512 * sub_08cbe411):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number < bonusEndBlock:
                        revert with 0, 17
                    if bonusEndBlock < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if bonusEndBlock - poolInfo[arg1].field_512 and BONUS_MULTIPLIER > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) > !(block.number - bonusEndBlock):
                        revert with 0, 17
                    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) + block.number - bonusEndBlock and sub_08cbe411 > -1 / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) + block.number - bonusEndBlock:
                        revert with 0, 17
                    if (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411) + (block.number * sub_08cbe411) - (bonusEndBlock * sub_08cbe411) and poolInfo[arg1].field_256 > -1 / (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411) + (block.number * sub_08cbe411) - (bonusEndBlock * sub_08cbe411):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) + (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) + (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) + (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 105
        if block.number > poolInfo[idx].field_512:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _9 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_9]:
                if block.number <= bonusEndBlock:
                    if block.number < poolInfo[idx].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[idx].field_512:
                        revert with 0, 17
                    if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and sub_08cbe411 > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                        revert with 0, 17
                    if (block.number * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411) and poolInfo[idx].field_256 > -1 / (block.number * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not mem[_9]:
                        revert with 0, 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]):
                        revert with 0, 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
                else:
                    if poolInfo[idx].field_512 >= bonusEndBlock:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and sub_08cbe411 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * sub_08cbe411) - (poolInfo[idx].field_512 * sub_08cbe411) and poolInfo[idx].field_256 > -1 / (block.number * sub_08cbe411) - (poolInfo[idx].field_512 * sub_08cbe411):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not mem[_9]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
                    else:
                        if block.number < bonusEndBlock:
                            revert with 0, 17
                        if bonusEndBlock < poolInfo[idx].field_512:
                            revert with 0, 17
                        if bonusEndBlock - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / bonusEndBlock - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) > !(block.number - bonusEndBlock):
                            revert with 0, 17
                        if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) + block.number - bonusEndBlock and sub_08cbe411 > -1 / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) + block.number - bonusEndBlock:
                            revert with 0, 17
                        if (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411) + (block.number * sub_08cbe411) - (bonusEndBlock * sub_08cbe411) and poolInfo[idx].field_256 > -1 / (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411) + (block.number * sub_08cbe411) - (bonusEndBlock * sub_08cbe411):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) + (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not mem[_9]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) + (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) + (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_9]
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function add(uint256 arg1, address arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 105
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _31 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_31]:
                    if block.number <= bonusEndBlock:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and sub_08cbe411 > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                            revert with 0, 17
                        if (block.number * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411) and poolInfo[idx].field_256 > -1 / (block.number * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not mem[_31]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_31]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_31]
                    else:
                        if poolInfo[idx].field_512 >= bonusEndBlock:
                            if block.number < poolInfo[idx].field_512:
                                revert with 0, 17
                            if block.number - poolInfo[idx].field_512 and sub_08cbe411 > -1 / block.number - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (block.number * sub_08cbe411) - (poolInfo[idx].field_512 * sub_08cbe411) and poolInfo[idx].field_256 > -1 / (block.number * sub_08cbe411) - (poolInfo[idx].field_512 * sub_08cbe411):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not mem[_31]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_31]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_31]
                        else:
                            if block.number < bonusEndBlock:
                                revert with 0, 17
                            if bonusEndBlock < poolInfo[idx].field_512:
                                revert with 0, 17
                            if bonusEndBlock - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) > !(block.number - bonusEndBlock):
                                revert with 0, 17
                            if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) + block.number - bonusEndBlock and sub_08cbe411 > -1 / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) + block.number - bonusEndBlock:
                                revert with 0, 17
                            if (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411) + (block.number * sub_08cbe411) - (bonusEndBlock * sub_08cbe411) and poolInfo[idx].field_256 > -1 / (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411) + (block.number * sub_08cbe411) - (bonusEndBlock * sub_08cbe411):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) + (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not mem[_31]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) + (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_31]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) + (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_31]
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 0, 17
    totalAllocPoint += arg1
    poolInfo.length++
    stor7FB4[stor105.length] = arg2
    stor7FB4[stor105.length] = arg1
    if block.number > startBlock:
        stor7FB4[stor105.length] = block.number
    else:
        stor7FB4[stor105.length] = startBlock
    stor7FB4[stor105.length] = 0
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 105
            if block.number > poolInfo[idx].field_512:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _16 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_16]:
                    if block.number <= bonusEndBlock:
                        if block.number < poolInfo[idx].field_512:
                            revert with 0, 17
                        if block.number - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[idx].field_512:
                            revert with 0, 17
                        if (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) and sub_08cbe411 > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER):
                            revert with 0, 17
                        if (block.number * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411) and poolInfo[idx].field_256 > -1 / (block.number * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411):
                            revert with 0, 17
                        if not totalAllocPoint:
                            revert with 0, 18
                        if (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                            revert with 0, 17
                        if not mem[_16]:
                            revert with 0, 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_16]):
                            revert with 0, 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_16]
                    else:
                        if poolInfo[idx].field_512 >= bonusEndBlock:
                            if block.number < poolInfo[idx].field_512:
                                revert with 0, 17
                            if block.number - poolInfo[idx].field_512 and sub_08cbe411 > -1 / block.number - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (block.number * sub_08cbe411) - (poolInfo[idx].field_512 * sub_08cbe411) and poolInfo[idx].field_256 > -1 / (block.number * sub_08cbe411) - (poolInfo[idx].field_512 * sub_08cbe411):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not mem[_16]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_16]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_16]
                        else:
                            if block.number < bonusEndBlock:
                                revert with 0, 17
                            if bonusEndBlock < poolInfo[idx].field_512:
                                revert with 0, 17
                            if bonusEndBlock - poolInfo[idx].field_512 and BONUS_MULTIPLIER > -1 / bonusEndBlock - poolInfo[idx].field_512:
                                revert with 0, 17
                            if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) > !(block.number - bonusEndBlock):
                                revert with 0, 17
                            if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) + block.number - bonusEndBlock and sub_08cbe411 > -1 / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER) + block.number - bonusEndBlock:
                                revert with 0, 17
                            if (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411) + (block.number * sub_08cbe411) - (bonusEndBlock * sub_08cbe411) and poolInfo[idx].field_256 > -1 / (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411) + (block.number * sub_08cbe411) - (bonusEndBlock * sub_08cbe411):
                                revert with 0, 17
                            if not totalAllocPoint:
                                revert with 0, 18
                            if (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) + (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                                revert with 0, 17
                            if not mem[_16]:
                                revert with 0, 18
                            if poolInfo[idx].field_768 > !(10^12 * (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) + (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_16]):
                                revert with 0, 17
                            poolInfo[idx].field_768 += 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[idx].field_256) + (block.number * sub_08cbe411 * poolInfo[idx].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[idx].field_256) / totalAllocPoint / mem[_16]
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
}

function sub_ed498e4c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number <= bonusEndBlock:
        if block.number < poolInfo[arg1].field_512:
            revert with 0, 17
        if block.number - poolInfo[arg1].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[arg1].field_512:
            revert with 0, 17
        if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) and sub_08cbe411 > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
            revert with 0, 17
        if (block.number * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411) and poolInfo[arg1].field_256 > -1 / (block.number * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411):
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 >= bonusEndBlock:
        if block.number < poolInfo[arg1].field_512:
            revert with 0, 17
        if block.number - poolInfo[arg1].field_512 and sub_08cbe411 > -1 / block.number - poolInfo[arg1].field_512:
            revert with 0, 17
        if (block.number * sub_08cbe411) - (poolInfo[arg1].field_512 * sub_08cbe411) and poolInfo[arg1].field_256 > -1 / (block.number * sub_08cbe411) - (poolInfo[arg1].field_512 * sub_08cbe411):
            revert with 0, 17
        if not totalAllocPoint:
            revert with 0, 18
        if (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.number < bonusEndBlock:
        revert with 0, 17
    if bonusEndBlock < poolInfo[arg1].field_512:
        revert with 0, 17
    if bonusEndBlock - poolInfo[arg1].field_512 and BONUS_MULTIPLIER > -1 / bonusEndBlock - poolInfo[arg1].field_512:
        revert with 0, 17
    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) > !(block.number - bonusEndBlock):
        revert with 0, 17
    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) + block.number - bonusEndBlock and sub_08cbe411 > -1 / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) + block.number - bonusEndBlock:
        revert with 0, 17
    if (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411) + (block.number * sub_08cbe411) - (bonusEndBlock * sub_08cbe411) and poolInfo[arg1].field_256 > -1 / (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411) + (block.number * sub_08cbe411) - (bonusEndBlock * sub_08cbe411):
        revert with 0, 17
    if not totalAllocPoint:
        revert with 0, 18
    if (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) + (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if poolInfo[arg1].field_768 > !(10^12 * (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) + (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) + (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) + (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) + (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if arg2 > userInfo[arg1][msg.sender].field_0:
        revert with 0, 'withdraw: not good'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        mem[100] = this.address
        require ext_code.size(sub_5ee57413Address)
        staticcall sub_5ee57413Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = msg.sender
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            require ext_code.size(sub_5ee57413Address)
            call sub_5ee57413Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
        else:
            mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
            require ext_code.size(sub_5ee57413Address)
            call sub_5ee57413Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if userInfo[arg1][msg.sender].field_0 < arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_0 -= arg2
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12
        mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(2 * ceil32(return_data.size)) + 164] = arg2
        mem[(2 * ceil32(return_data.size)) + 96] = 68
        mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(2 * ceil32(return_data.size)) + 196] = 32
        mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[(2 * ceil32(return_data.size)) + 328] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
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
            mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                if not mem[(2 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[100] = this.address
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.number <= bonusEndBlock:
                if block.number < poolInfo[arg1].field_512:
                    revert with 0, 17
                if block.number - poolInfo[arg1].field_512 and BONUS_MULTIPLIER > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 0, 17
                if (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) and sub_08cbe411 > -1 / (block.number * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER):
                    revert with 0, 17
                if (block.number * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411) and poolInfo[arg1].field_256 > -1 / (block.number * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411):
                    revert with 0, 17
                if not totalAllocPoint:
                    revert with 0, 18
                if (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if poolInfo[arg1].field_768 > !(10^12 * (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0, 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
            else:
                if poolInfo[arg1].field_512 >= bonusEndBlock:
                    if block.number < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if block.number - poolInfo[arg1].field_512 and sub_08cbe411 > -1 / block.number - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (block.number * sub_08cbe411) - (poolInfo[arg1].field_512 * sub_08cbe411) and poolInfo[arg1].field_256 > -1 / (block.number * sub_08cbe411) - (poolInfo[arg1].field_512 * sub_08cbe411):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.number < bonusEndBlock:
                        revert with 0, 17
                    if bonusEndBlock < poolInfo[arg1].field_512:
                        revert with 0, 17
                    if bonusEndBlock - poolInfo[arg1].field_512 and BONUS_MULTIPLIER > -1 / bonusEndBlock - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) > !(block.number - bonusEndBlock):
                        revert with 0, 17
                    if (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) + block.number - bonusEndBlock and sub_08cbe411 > -1 / (bonusEndBlock * BONUS_MULTIPLIER) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER) + block.number - bonusEndBlock:
                        revert with 0, 17
                    if (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411) + (block.number * sub_08cbe411) - (bonusEndBlock * sub_08cbe411) and poolInfo[arg1].field_256 > -1 / (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411) + (block.number * sub_08cbe411) - (bonusEndBlock * sub_08cbe411):
                        revert with 0, 17
                    if not totalAllocPoint:
                        revert with 0, 18
                    if (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) + (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if poolInfo[arg1].field_768 > !(10^12 * (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) + (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0, 17
                    poolInfo[arg1].field_768 += 10^12 * (bonusEndBlock * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * BONUS_MULTIPLIER * sub_08cbe411 * poolInfo[arg1].field_256) + (block.number * sub_08cbe411 * poolInfo[arg1].field_256) - (bonusEndBlock * sub_08cbe411 * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.number
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        if userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][msg.sender].field_256:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(sub_5ee57413Address)
        staticcall sub_5ee57413Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
        if (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 132] = (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
            require ext_code.size(sub_5ee57413Address)
            call sub_5ee57413Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][msg.sender].field_256
        else:
            mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
            require ext_code.size(sub_5ee57413Address)
            call sub_5ee57413Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if userInfo[arg1][msg.sender].field_0 < arg2:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_0 -= arg2
        if userInfo[arg1][msg.sender].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][msg.sender].field_0:
            revert with 0, 17
        userInfo[arg1][msg.sender].field_256 = userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_768 / 10^12
        mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 164] = arg2
        mem[(4 * ceil32(return_data.size)) + 96] = 68
        mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 196] = 32
        mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
        mem[(4 * ceil32(return_data.size)) + 328] = 0
        call poolInfo[arg1].field_0 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
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
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Withdraw(arg2, msg.sender, arg1);
}



}
