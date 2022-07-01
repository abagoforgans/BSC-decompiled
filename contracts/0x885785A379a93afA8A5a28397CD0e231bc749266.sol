contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
const BONUS_MULTIPLIER = 1

const MAXIMUM_HARVEST_INTERVAL = (336 * 24 * 3600)


address owner;
address sub_3102cabbAddress;
address devAddress;
address feeAddress;
uint256 sub_fa1670fe;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 totalLockedUpRewards;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of uint16 stor111414077815863400510004064629973595961579173665589224203503662149373724986691;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986692;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986693;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           poolInfo[arg1].field_1536
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function getPoolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280
}

function sub_3102cabb(?) payable {
    return sub_3102cabbAddress
}

function devAddress() payable {
    return devAddress
}

function feeAddress() payable {
    return feeAddress
}

function totalLockedUpRewards() payable {
    return totalLockedUpRewards
}

function startBlock() payable {
    return startBlock
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, 
           userInfo[arg1][arg2].field_256,
           userInfo[arg1][arg2].field_512,
           userInfo[arg1][arg2].field_768
}

function sub_fa1670fe(?) payable {
    return sub_fa1670fe
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

function canHarvest(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return block.timestamp >= userInfo[arg1][address(arg2)].field_768
}

function getMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < arg1:
        revert with 'NH{q', 17
    if arg2 - arg1 and 1 > -1 / arg2 - arg1:
        revert with 'NH{q', 17
    return (arg2 - arg1)
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeAddress != msg.sender:
        revert with 0, 'setFeeAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setFeeAddress: ZERO'
    feeAddress = arg1
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if devAddress != msg.sender:
        revert with 0, 'setDevAddress: FORBIDDEN'
    if not arg1:
        revert with 0, 'setDevAddress: ZERO'
    devAddress = arg1
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

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number > poolInfo[arg1].field_512:
        if poolInfo[arg1].field_1536:
            if poolInfo[arg1].field_256:
                if block.number < poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if block.number - poolInfo[arg1].field_512 and sub_fa1670fe > -1 / block.number - poolInfo[arg1].field_512:
                    revert with 'NH{q', 17
                if (block.number * sub_fa1670fe) - (poolInfo[arg1].field_512 * sub_fa1670fe) and poolInfo[arg1].field_256 > -1 / (block.number * sub_fa1670fe) - (poolInfo[arg1].field_512 * sub_fa1670fe):
                    revert with 'NH{q', 17
                if not totalAllocPoint:
                    revert with 'NH{q', 18
                require ext_code.size(sub_3102cabbAddress)
                staticcall sub_3102cabbAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_3102cabbAddress)
                if (block.number * sub_fa1670fe * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fa1670fe * poolInfo[arg1].field_256) / totalAllocPoint / 30 <= ext_call.return_data[0]:
                    call sub_3102cabbAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args devAddress, (block.number * sub_fa1670fe * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fa1670fe * poolInfo[arg1].field_256) / totalAllocPoint / 30
                else:
                    call sub_3102cabbAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args devAddress, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if (block.number * sub_fa1670fe * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fa1670fe * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_fa1670fe * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fa1670fe * poolInfo[arg1].field_256) / totalAllocPoint:
                    revert with 'NH{q', 17
                if not poolInfo[arg1].field_1536:
                    revert with 'NH{q', 18
                if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_fa1670fe * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fa1670fe * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536):
                    revert with 'NH{q', 17
                poolInfo[arg1].field_768 += 10^12 * (block.number * sub_fa1670fe * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fa1670fe * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536
        poolInfo[arg1].field_512 = block.number
}

function sub_67cd2663(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if block.number <= poolInfo[arg1].field_512:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if not poolInfo[arg1].field_1536:
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 'NH{q', 17
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 'NH{q', 17
        if (userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
            revert with 'NH{q', 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
    if block.number < poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if block.number - poolInfo[arg1].field_512 and 1 > -1 / block.number - poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if block.number - poolInfo[arg1].field_512 and sub_fa1670fe > -1 / block.number - poolInfo[arg1].field_512:
        revert with 'NH{q', 17
    if (block.number * sub_fa1670fe) - (poolInfo[arg1].field_512 * sub_fa1670fe) and poolInfo[arg1].field_256 > -1 / (block.number * sub_fa1670fe) - (poolInfo[arg1].field_512 * sub_fa1670fe):
        revert with 'NH{q', 17
    if not totalAllocPoint:
        revert with 'NH{q', 18
    if (block.number * sub_fa1670fe * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fa1670fe * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_fa1670fe * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fa1670fe * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 'NH{q', 17
    if not poolInfo[arg1].field_1536:
        revert with 'NH{q', 18
    if poolInfo[arg1].field_768 > !(10^12 * (block.number * sub_fa1670fe * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fa1670fe * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536):
        revert with 'NH{q', 17
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.number * sub_fa1670fe * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fa1670fe * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 'NH{q', 17
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_fa1670fe * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fa1670fe * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 'NH{q', 17
    if ((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_fa1670fe * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fa1670fe * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 > !userInfo[arg1][address(arg2)].field_512:
        revert with 'NH{q', 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.number * sub_fa1670fe * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_fa1670fe * poolInfo[arg1].field_256) / totalAllocPoint / poolInfo[arg1].field_1536 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256 + userInfo[arg1][address(arg2)].field_512)
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.number > poolInfo[idx].field_512:
            if poolInfo[idx].field_1536:
                if poolInfo[idx].field_256:
                    if block.number < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and sub_fa1670fe > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (block.number * sub_fa1670fe) - (poolInfo[idx].field_512 * sub_fa1670fe) and poolInfo[idx].field_256 > -1 / (block.number * sub_fa1670fe) - (poolInfo[idx].field_512 * sub_fa1670fe):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_3102cabbAddress)
                    staticcall sub_3102cabbAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _17 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _18 = mem[_17]
                    mem[mem[64] + 4] = devAddress
                    if (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / 30 <= mem[_17]:
                        mem[mem[64] + 36] = (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / 30
                        require ext_code.size(sub_3102cabbAddress)
                        call sub_3102cabbAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args devAddress, (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / 30
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _23 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_23] == bool(mem[_23])
                    else:
                        mem[mem[64] + 36] = _18
                        require ext_code.size(sub_3102cabbAddress)
                        call sub_3102cabbAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args devAddress, _18
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _24 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_24] == bool(mem[_24])
                    if (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not poolInfo[idx].field_1536:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function updateEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.number > poolInfo[idx].field_512:
            if poolInfo[idx].field_1536:
                if poolInfo[idx].field_256:
                    if block.number < poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if block.number - poolInfo[idx].field_512 and sub_fa1670fe > -1 / block.number - poolInfo[idx].field_512:
                        revert with 'NH{q', 17
                    if (block.number * sub_fa1670fe) - (poolInfo[idx].field_512 * sub_fa1670fe) and poolInfo[idx].field_256 > -1 / (block.number * sub_fa1670fe) - (poolInfo[idx].field_512 * sub_fa1670fe):
                        revert with 'NH{q', 17
                    if not totalAllocPoint:
                        revert with 'NH{q', 18
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_3102cabbAddress)
                    staticcall sub_3102cabbAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _23 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _24 = mem[_23]
                    mem[mem[64] + 4] = devAddress
                    if (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / 30 <= mem[_23]:
                        mem[mem[64] + 36] = (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / 30
                        require ext_code.size(sub_3102cabbAddress)
                        call sub_3102cabbAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args devAddress, (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / 30
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _29 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_29] == bool(mem[_29])
                    else:
                        mem[mem[64] + 36] = _24
                        require ext_code.size(sub_3102cabbAddress)
                        call sub_3102cabbAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args devAddress, _24
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _30 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_30] == bool(mem[_30])
                    if (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint:
                        revert with 'NH{q', 17
                    if not poolInfo[idx].field_1536:
                        revert with 'NH{q', 18
                    if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                        revert with 'NH{q', 17
                    poolInfo[idx].field_768 += 10^12 * (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
            poolInfo[idx].field_512 = block.number
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    emit EmissionRateUpdated(sub_fa1670fe, arg1, msg.sender);
    sub_fa1670fe = arg1
}

function set(uint256 arg1, uint256 arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg3 == arg3
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'set: invalid deposit fee basis points'
    if arg4 > 336 * 24 * 3600:
        revert with 0, 'set: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.number > poolInfo[idx].field_512:
                if poolInfo[idx].field_1536:
                    if poolInfo[idx].field_256:
                        if block.number < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.number - poolInfo[idx].field_512 and sub_fa1670fe > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (block.number * sub_fa1670fe) - (poolInfo[idx].field_512 * sub_fa1670fe) and poolInfo[idx].field_256 > -1 / (block.number * sub_fa1670fe) - (poolInfo[idx].field_512 * sub_fa1670fe):
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_3102cabbAddress)
                        staticcall sub_3102cabbAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _35 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _36 = mem[_35]
                        mem[mem[64] + 4] = devAddress
                        if (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / 30 <= mem[_35]:
                            mem[mem[64] + 36] = (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / 30
                            require ext_code.size(sub_3102cabbAddress)
                            call sub_3102cabbAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devAddress, (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / 30
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _41 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_41] == bool(mem[_41])
                        else:
                            mem[mem[64] + 36] = _36
                            require ext_code.size(sub_3102cabbAddress)
                            call sub_3102cabbAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devAddress, _36
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _42 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_42] == bool(mem[_42])
                        if (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not poolInfo[idx].field_1536:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 'NH{q', 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 'NH{q', 17
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 'NH{q', 50
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1024 = arg3
    poolInfo[arg1].field_1280 = arg4
}

function add(uint256 arg1, address arg2, uint16 arg3, uint256 arg4, bool arg5) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require arg2 == arg2
    require arg3 == arg3
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'add: invalid deposit fee basis points'
    if arg4 > 336 * 24 * 3600:
        revert with 0, 'add: invalid harvest interval'
    if arg5:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.number > poolInfo[idx].field_512:
                if poolInfo[idx].field_1536:
                    if poolInfo[idx].field_256:
                        if block.number < poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.number - poolInfo[idx].field_512 and 1 > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if block.number - poolInfo[idx].field_512 and sub_fa1670fe > -1 / block.number - poolInfo[idx].field_512:
                            revert with 'NH{q', 17
                        if (block.number * sub_fa1670fe) - (poolInfo[idx].field_512 * sub_fa1670fe) and poolInfo[idx].field_256 > -1 / (block.number * sub_fa1670fe) - (poolInfo[idx].field_512 * sub_fa1670fe):
                            revert with 'NH{q', 17
                        if not totalAllocPoint:
                            revert with 'NH{q', 18
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(sub_3102cabbAddress)
                        staticcall sub_3102cabbAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _71 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _72 = mem[_71]
                        mem[mem[64] + 4] = devAddress
                        if (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / 30 <= mem[_71]:
                            mem[mem[64] + 36] = (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / 30
                            require ext_code.size(sub_3102cabbAddress)
                            call sub_3102cabbAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devAddress, (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / 30
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _77 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_77] == bool(mem[_77])
                        else:
                            mem[mem[64] + 36] = _72
                            require ext_code.size(sub_3102cabbAddress)
                            call sub_3102cabbAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args devAddress, _72
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _78 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_78] == bool(mem[_78])
                        if (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint:
                            revert with 'NH{q', 17
                        if not poolInfo[idx].field_1536:
                            revert with 'NH{q', 18
                        if poolInfo[idx].field_768 > !(10^12 * (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536):
                            revert with 'NH{q', 17
                        poolInfo[idx].field_768 += 10^12 * (block.number * sub_fa1670fe * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_fa1670fe * poolInfo[idx].field_256) / totalAllocPoint / poolInfo[idx].field_1536
                poolInfo[idx].field_512 = block.number
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    if totalAllocPoint > !arg1:
        revert with 'NH{q', 17
    totalAllocPoint += arg1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    storF652[stor6.length] = arg1
    if block.number > startBlock:
        storF652[stor6.length] = block.number
    else:
        storF652[stor6.length] = startBlock
    storF652[stor6.length] = 0
    storF652[stor6.length] = arg3
    storF652[stor6.length] = arg4
    storF652[stor6.length] = 0
}



}
