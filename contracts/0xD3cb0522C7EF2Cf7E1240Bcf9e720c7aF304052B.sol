contract main {




// =====================  Runtime code  =====================


#
#  - claimStake(uint256 arg1)
#  - sub_dce975c1(?)
#  - _fallback()
#
mapping of uint8 stor0;
address TOKENAddress;
uint256 countShareholders;
mapping of uint256 shareholderIndexes;
mapping of struct checkShares;
uint256 totalStaked;
uint256 totalRewards;
uint256 totalRewarded;
uint256 sub_dccc2fb3;
uint256 lastRewardUpdate;
uint256 sub_b7ff9f47;
uint256 sub_60569d5b;
uint256 rewardsPerShareAccuracyFactor;
uint256 startedAt;
uint256 resetTime;
uint256 runTime;
uint256 minPeriod;
uint256 ticker;
uint256 sub_5d47e028;
uint8 sub_f36397c0;
uint256 sub_3539eacb;
uint256 sub_45625616;
uint256 minStake;
uint256 maxStake;
uint8 open;
uint8 initialized; offset 8
address previousAddress; offset 16

function totalRewards() {
    return totalRewards
}

function getTotalRewarded() {
    return totalRewarded
}

function initialized() {
    return bool(initialized)
}

function sub_3539eacb(?) {
    return sub_3539eacb
}

function shareholders() {
    return countShareholders
}

function minStake() {
    return minStake
}

function totalShares() {
    return totalStaked
}

function sub_45625616(?) {
    return sub_45625616
}

function isOpen() {
    return bool(open)
}

function sub_5d47e028(?) {
    return sub_5d47e028
}

function sub_60569d5b(?) {
    return sub_60569d5b
}

function resetTime() {
    return resetTime
}

function previous() {
    return previousAddress
}

function totalStaked() {
    return totalStaked
}

function TOKEN() {
    return TOKENAddress
}

function ticker() {
    return ticker
}

function checkShares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return checkShares[address(arg1)].field_0
}

function countShareholders() {
    return countShareholders
}

function lastRewardUpdate() {
    return lastRewardUpdate
}

function totalRewarded() {
    return totalRewarded
}

function rewardsPerShareAccuracyFactor() {
    return rewardsPerShareAccuracyFactor
}

function sub_b7ff9f47(?) {
    return sub_b7ff9f47
}

function getPaidRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return checkShares[address(arg1)].field_512
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return checkShares[arg1].field_0, checkShares[arg1].field_256, checkShares[arg1].field_512, checkShares[arg1].field_768
}

function shareholderIndexes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shareholderIndexes[arg1]
}

function mainContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[arg1])
}

function sub_dccc2fb3(?) {
    return sub_dccc2fb3
}

function getTotalRewards() {
    return totalRewards
}

function maxStake() {
    return maxStake
}

function runTime() {
    return runTime
}

function startedAt() {
    return startedAt
}

function sub_f36397c0(?) {
    return bool(sub_f36397c0)
}

function open() {
    return bool(open)
}

function minPeriod() {
    return minPeriod
}

function finishDistribution() {
    require stor0[msg.sender]
    initialized = 0
}

function sub_52c8c18c(?) {
    require calldata.size - 4 >= 64
    require stor0[msg.sender]
    minStake = arg1
    maxStake = arg2
}

function setOpen(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    open = uint8(arg1)
}

function sub_9e0c0a12(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require stor0[msg.sender]
    sub_f36397c0 = uint8(bool(arg1))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    stor0[address(arg1)] = 1
    stor0[msg.sender] = 0
}

function extractETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor0[msg.sender]
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_53dfc3fa(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor0[msg.sender]
    require ext_code.size(previousAddress)
    call previousAddress.0xf2fde38b with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getClaimTime(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if checkShares[address(arg1)].field_768 > !minPeriod:
        revert with 0, 17
    if checkShares[address(arg1)].field_768 + minPeriod <= block.timestamp:
        return 0
    if checkShares[address(arg1)].field_768 > !minPeriod:
        revert with 0, 17
    if checkShares[address(arg1)].field_768 + minPeriod < block.timestamp:
        revert with 0, 17
    return (checkShares[address(arg1)].field_768 + minPeriod - block.timestamp)
}

function sub_a450a2f5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_f36397c0:
        if initialized:
            if checkShares[address(arg1)].field_768 > !minPeriod:
                revert with 0, 17
            if checkShares[address(arg1)].field_768 + minPeriod > block.timestamp:
                if startedAt > !runTime:
                    revert with 0, 17
                if startedAt + runTime > block.timestamp:
                    return sub_5d47e028
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sub_06663c5e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if sub_f36397c0:
        if initialized:
            if checkShares[address(arg1)].field_768 > !minPeriod:
                revert with 0, 17
            if checkShares[address(arg1)].field_768 + minPeriod > block.timestamp:
                if startedAt > !runTime:
                    revert with 0, 17
                if startedAt + runTime > block.timestamp:
                    if arg2 and sub_5d47e028 > -1 / arg2:
                        revert with 0, 17
                    return (arg2 * sub_5d47e028 / 1000)
    if arg2 and 0 > -1 / arg2:
        revert with 0, 17
    else:
        return 0
}

function sub_6d9b2c56(?) {
    require calldata.size - 4 >= 32
    require stor0[msg.sender]
    if 0 == totalStaked:
        if startedAt > !runTime:
            revert with 0, 17
        if startedAt + runTime > !resetTime:
            revert with 0, 17
        require startedAt + runTime + resetTime <= block.timestamp
    else:
        if startedAt > 0:
            if startedAt > !runTime:
                revert with 0, 17
            if startedAt + runTime > !resetTime:
                revert with 0, 17
            require startedAt + runTime + resetTime <= block.timestamp
        else:
            if block.timestamp > !runTime:
                revert with 0, 17
            if block.timestamp + runTime > !resetTime:
                revert with 0, 17
            require block.timestamp + runTime + resetTime <= block.timestamp
    resetTime = arg1
}

function sub_2fca307d(?) {
    require calldata.size - 4 >= 32
    require stor0[msg.sender]
    if 0 == totalStaked:
        if startedAt > !runTime:
            revert with 0, 17
        if startedAt + runTime > !resetTime:
            revert with 0, 17
        require startedAt + runTime + resetTime <= block.timestamp
    else:
        if startedAt > 0:
            if startedAt > !runTime:
                revert with 0, 17
            if startedAt + runTime > !resetTime:
                revert with 0, 17
            require startedAt + runTime + resetTime <= block.timestamp
        else:
            if block.timestamp > !runTime:
                revert with 0, 17
            if block.timestamp + runTime > !resetTime:
                revert with 0, 17
            require block.timestamp + runTime + resetTime <= block.timestamp
    sub_5d47e028 = arg1
}

function sub_df514e31(?) {
    require calldata.size - 4 >= 32
    require stor0[msg.sender]
    if 0 == totalStaked:
        if startedAt > !runTime:
            revert with 0, 17
        if startedAt + runTime > !resetTime:
            revert with 0, 17
        require startedAt + runTime + resetTime <= block.timestamp
    else:
        if startedAt > 0:
            if startedAt > !runTime:
                revert with 0, 17
            if startedAt + runTime > !resetTime:
                revert with 0, 17
            require startedAt + runTime + resetTime <= block.timestamp
        else:
            if block.timestamp > !runTime:
                revert with 0, 17
            if block.timestamp + runTime > !resetTime:
                revert with 0, 17
            require block.timestamp + runTime + resetTime <= block.timestamp
    require arg1 > 0
    minPeriod = arg1
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    if 0 == totalStaked:
        if startedAt > !runTime:
            revert with 0, 17
        if startedAt + runTime > !resetTime:
            revert with 0, 17
        require startedAt + runTime + resetTime <= block.timestamp
    else:
        if startedAt > 0:
            if startedAt > !runTime:
                revert with 0, 17
            if startedAt + runTime > !resetTime:
                revert with 0, 17
            require startedAt + runTime + resetTime <= block.timestamp
        else:
            if block.timestamp > !runTime:
                revert with 0, 17
            if block.timestamp + runTime > !resetTime:
                revert with 0, 17
            require block.timestamp + runTime + resetTime <= block.timestamp
    TOKENAddress = arg1
}

function sub_d99754cd(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    require stor0[msg.sender]
    if TOKENAddress == address(arg2):
        staticcall TOKENAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            revert with 0, 17
        if ext_call.return_data[0] - arg1 < totalStaked:
            revert with 0, 'Cannot remove staked tokens'
    call address(arg2).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_eabd5c93(?) {
    require calldata.size - 4 >= 64
    require stor0[msg.sender]
    if 0 == totalStaked:
        if startedAt > !runTime:
            revert with 0, 17
        if startedAt + runTime > !resetTime:
            revert with 0, 17
        require startedAt + runTime + resetTime <= block.timestamp
    else:
        if startedAt > 0:
            if startedAt > !runTime:
                revert with 0, 17
            if startedAt + runTime > !resetTime:
                revert with 0, 17
            require startedAt + runTime + resetTime <= block.timestamp
        else:
            if block.timestamp > !runTime:
                revert with 0, 17
            if block.timestamp + runTime > !resetTime:
                revert with 0, 17
            require block.timestamp + runTime + resetTime <= block.timestamp
    require arg1 <= 50
    sub_45625616 = arg2
    sub_3539eacb = arg1
}

function sub_bd66f7fb(?) {
    require calldata.size - 4 >= 64
    require stor0[msg.sender]
    if 0 == totalStaked:
        if startedAt > !runTime:
            revert with 0, 17
        if startedAt + runTime > !resetTime:
            revert with 0, 17
        require startedAt + runTime + resetTime <= block.timestamp
    else:
        if startedAt > 0:
            if startedAt > !runTime:
                revert with 0, 17
            if startedAt + runTime > !resetTime:
                revert with 0, 17
            require startedAt + runTime + resetTime <= block.timestamp
        else:
            if block.timestamp > !runTime:
                revert with 0, 17
            if block.timestamp + runTime > !resetTime:
                revert with 0, 17
            require block.timestamp + runTime + resetTime <= block.timestamp
    require arg1 > 0
    require arg2 > 0
    runTime = arg1
    ticker = arg2
}

function reset() {
    require stor0[msg.sender]
    if 0 == totalStaked:
        if startedAt > !runTime:
            revert with 0, 17
        if startedAt + runTime > !resetTime:
            revert with 0, 17
        require startedAt + runTime + resetTime <= block.timestamp
    else:
        if startedAt > 0:
            if startedAt > !runTime:
                revert with 0, 17
            if startedAt + runTime > !resetTime:
                revert with 0, 17
            require startedAt + runTime + resetTime <= block.timestamp
        else:
            if block.timestamp > !runTime:
                revert with 0, 17
            if block.timestamp + runTime > !resetTime:
                revert with 0, 17
            require block.timestamp + runTime + resetTime <= block.timestamp
    startedAt = 0
    totalRewards = 0
    totalRewarded = 0
    sub_60569d5b = 0
    initialized = 0
    runTime = 0
    minPeriod = 0
    ticker = 0
}

function topUp() {
    require stor0[msg.sender]
    require initialized
    if totalStaked > !totalRewards:
        revert with 0, 17
    staticcall TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < totalStaked + totalRewards:
        revert with 0, 17
    if totalRewards > !(ext_call.return_data[0] - totalStaked - totalRewards):
        revert with 0, 17
    totalRewards = ext_call.return_data[0] - totalStaked
    if runTime > !startedAt:
        revert with 0, 17
    if runTime + startedAt < block.timestamp:
        revert with 0, 17
    if not ticker:
        revert with 0, 18
    if rewardsPerShareAccuracyFactor and ext_call.return_data[0] - totalStaked - totalRewards > -1 / rewardsPerShareAccuracyFactor:
        revert with 0, 17
    if not runTime + startedAt - block.timestamp / ticker:
        revert with 0, 18
    if sub_60569d5b > !((ext_call.return_data[0] * rewardsPerShareAccuracyFactor) - (totalStaked * rewardsPerShareAccuracyFactor) - (totalRewards * rewardsPerShareAccuracyFactor) / runTime + startedAt - block.timestamp / ticker):
        revert with 0, 17
    sub_60569d5b += (ext_call.return_data[0] * rewardsPerShareAccuracyFactor) - (totalStaked * rewardsPerShareAccuracyFactor) - (totalRewards * rewardsPerShareAccuracyFactor) / runTime + startedAt - block.timestamp / ticker
}

function sub_0ca38955(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require not initialized
    require stor0[msg.sender]
    if not arg1:
        if not startedAt:
            staticcall TOKENAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < totalStaked:
                revert with 0, 17
            startedAt = block.timestamp
            totalRewards = ext_call.return_data[0] - totalStaked
            if not ticker:
                revert with 0, 18
            if rewardsPerShareAccuracyFactor and ext_call.return_data[0] - totalStaked > -1 / rewardsPerShareAccuracyFactor:
                revert with 0, 17
            if not runTime / ticker:
                revert with 0, 18
            sub_60569d5b = (ext_call.return_data[0] * rewardsPerShareAccuracyFactor) - (totalStaked * rewardsPerShareAccuracyFactor) / runTime / ticker
    else:
        staticcall previousAddress.0xf21f537d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        startedAt = ext_call.return_data[0]
        staticcall previousAddress.0x60569d5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_60569d5b = ext_call.return_data[0]
        staticcall previousAddress.0xaed29d07 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        totalRewarded = ext_call.return_data[0]
        staticcall previousAddress.totalRewards() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        totalRewards = ext_call.return_data[0]
        if startedAt:
            if block.timestamp < startedAt:
                revert with 0, 17
            if not ticker:
                revert with 0, 18
            if block.timestamp - startedAt / ticker <= runTime / ticker:
                if block.timestamp - startedAt / ticker != lastRewardUpdate:
                    if not totalStaked:
                        if block.timestamp - startedAt / ticker and sub_60569d5b > -1 / block.timestamp - startedAt / ticker:
                            revert with 0, 17
                        sub_dccc2fb3 = block.timestamp - startedAt / ticker * sub_60569d5b
                    else:
                        if block.timestamp - startedAt / ticker < lastRewardUpdate:
                            revert with 0, 17
                        if sub_60569d5b and (block.timestamp - startedAt / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                            revert with 0, 17
                        if not totalStaked:
                            revert with 0, 18
                        if sub_b7ff9f47 > !((block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) / totalStaked):
                            revert with 0, 17
                        sub_b7ff9f47 += (block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) / totalStaked
                    lastRewardUpdate = block.timestamp - startedAt / ticker
            else:
                if not ticker:
                    revert with 0, 18
                if runTime / ticker != lastRewardUpdate:
                    if not totalStaked:
                        if runTime / ticker and sub_60569d5b > -1 / runTime / ticker:
                            revert with 0, 17
                        sub_dccc2fb3 = runTime / ticker * sub_60569d5b
                    else:
                        if runTime / ticker < lastRewardUpdate:
                            revert with 0, 17
                        if sub_60569d5b and (runTime / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                            revert with 0, 17
                        if not totalStaked:
                            revert with 0, 18
                        if sub_b7ff9f47 > !((runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) / totalStaked):
                            revert with 0, 17
                        sub_b7ff9f47 += (runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) / totalStaked
                    lastRewardUpdate = runTime / ticker
        staticcall previousAddress.0x3a98ef39 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        staticcall TOKENAddress.0x70a08231 with:
                gas gas_remaining wei
               args previousAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(previousAddress)
        call previousAddress.0xd99754cd with:
             gas gas_remaining wei
            args 0, TOKENAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    initialized = 1
}

function getUnpaidRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not checkShares[address(arg1)].field_0:
        return 0
    if not initialized:
        return 0
    if startedAt > !sub_45625616:
        revert with 0, 17
    if not checkShares[address(arg1)].field_0:
        if 0 <= checkShares[address(arg1)].field_256:
            return 0
        if 0 < checkShares[address(arg1)].field_256:
            revert with 0, 17
        return -checkShares[address(arg1)].field_256
    if block.timestamp < startedAt:
        revert with 0, 17
    if not ticker:
        revert with 0, 18
    if block.timestamp - startedAt / ticker <= runTime / ticker:
        if sub_3539eacb <= 0:
            if checkShares[address(arg1)].field_0 and sub_b7ff9f47 > -1 / checkShares[address(arg1)].field_0:
                revert with 0, 17
            if not rewardsPerShareAccuracyFactor:
                revert with 0, 18
            if block.timestamp - startedAt / ticker <= lastRewardUpdate:
                if checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor <= checkShares[address(arg1)].field_256:
                    return 0
                if checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor < checkShares[address(arg1)].field_256:
                    revert with 0, 17
                return ((checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) - checkShares[address(arg1)].field_256)
            if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
                revert with 0, 17
            if block.timestamp - startedAt / ticker < lastRewardUpdate:
                revert with 0, 17
            if sub_60569d5b and (block.timestamp - startedAt / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                revert with 0, 17
            if checkShares[address(arg1)].field_0 and (block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / checkShares[address(arg1)].field_0:
                revert with 0, 17
            if not rewardsPerShareAccuracyFactor * totalStaked:
                revert with 0, 18
            if checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor > !((block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked):
                revert with 0, 17
            if (checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked) <= checkShares[address(arg1)].field_256:
                return 0
            if (checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked) < checkShares[address(arg1)].field_256:
                revert with 0, 17
            return ((checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked) - checkShares[address(arg1)].field_256)
        if checkShares[address(arg1)].field_768 <= startedAt + sub_45625616:
            if checkShares[address(arg1)].field_0 and sub_b7ff9f47 > -1 / checkShares[address(arg1)].field_0:
                revert with 0, 17
            if not rewardsPerShareAccuracyFactor:
                revert with 0, 18
            if block.timestamp - startedAt / ticker <= lastRewardUpdate:
                if checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor <= checkShares[address(arg1)].field_256:
                    return 0
                if checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor < checkShares[address(arg1)].field_256:
                    revert with 0, 17
                return ((checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) - checkShares[address(arg1)].field_256)
            if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
                revert with 0, 17
            if block.timestamp - startedAt / ticker < lastRewardUpdate:
                revert with 0, 17
            if sub_60569d5b and (block.timestamp - startedAt / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                revert with 0, 17
            if checkShares[address(arg1)].field_0 and (block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / checkShares[address(arg1)].field_0:
                revert with 0, 17
            if not rewardsPerShareAccuracyFactor * totalStaked:
                revert with 0, 18
            if checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor > !((block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked):
                revert with 0, 17
            if (checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked) <= checkShares[address(arg1)].field_256:
                return 0
            if (checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked) < checkShares[address(arg1)].field_256:
                revert with 0, 17
            return ((checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked) - checkShares[address(arg1)].field_256)
        if checkShares[address(arg1)].field_0 and sub_3539eacb > -1 / checkShares[address(arg1)].field_0:
            revert with 0, 17
        if checkShares[address(arg1)].field_0 < checkShares[address(arg1)].field_0 * sub_3539eacb / 100:
            revert with 0, 17
        if checkShares[address(arg1)].field_0 - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100) and sub_b7ff9f47 > -1 / checkShares[address(arg1)].field_0 - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100):
            revert with 0, 17
        if not rewardsPerShareAccuracyFactor:
            revert with 0, 18
        if block.timestamp - startedAt / ticker <= lastRewardUpdate:
            if (checkShares[address(arg1)].field_0 * sub_b7ff9f47) - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor <= checkShares[address(arg1)].field_256:
                return 0
            if (checkShares[address(arg1)].field_0 * sub_b7ff9f47) - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor < checkShares[address(arg1)].field_256:
                revert with 0, 17
            return (((checkShares[address(arg1)].field_0 * sub_b7ff9f47) - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) - checkShares[address(arg1)].field_256)
        if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
            revert with 0, 17
        if block.timestamp - startedAt / ticker < lastRewardUpdate:
            revert with 0, 17
        if sub_60569d5b and (block.timestamp - startedAt / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
            revert with 0, 17
        if checkShares[address(arg1)].field_0 - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100) and (block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / checkShares[address(arg1)].field_0 - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100):
            revert with 0, 17
        if not rewardsPerShareAccuracyFactor * totalStaked:
            revert with 0, 18
        if (checkShares[address(arg1)].field_0 * sub_b7ff9f47) - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor > !((block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) - (block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked):
            revert with 0, 17
        if ((checkShares[address(arg1)].field_0 * sub_b7ff9f47) - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) - (block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked) <= checkShares[address(arg1)].field_256:
            return 0
        if ((checkShares[address(arg1)].field_0 * sub_b7ff9f47) - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) - (block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked) < checkShares[address(arg1)].field_256:
            revert with 0, 17
        return (((checkShares[address(arg1)].field_0 * sub_b7ff9f47) - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) - (block.timestamp - startedAt / ticker * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked) - checkShares[address(arg1)].field_256)
    if not ticker:
        revert with 0, 18
    if sub_3539eacb <= 0:
        if checkShares[address(arg1)].field_0 and sub_b7ff9f47 > -1 / checkShares[address(arg1)].field_0:
            revert with 0, 17
        if not rewardsPerShareAccuracyFactor:
            revert with 0, 18
        if runTime / ticker <= lastRewardUpdate:
            if checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor <= checkShares[address(arg1)].field_256:
                return 0
            if checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor < checkShares[address(arg1)].field_256:
                revert with 0, 17
            return ((checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) - checkShares[address(arg1)].field_256)
        if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
            revert with 0, 17
        if runTime / ticker < lastRewardUpdate:
            revert with 0, 17
        if sub_60569d5b and (runTime / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
            revert with 0, 17
        if checkShares[address(arg1)].field_0 and (runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / checkShares[address(arg1)].field_0:
            revert with 0, 17
        if not rewardsPerShareAccuracyFactor * totalStaked:
            revert with 0, 18
        if checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor > !((runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked):
            revert with 0, 17
        if (checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked) <= checkShares[address(arg1)].field_256:
            return 0
        if (checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked) < checkShares[address(arg1)].field_256:
            revert with 0, 17
        return ((checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked) - checkShares[address(arg1)].field_256)
    if checkShares[address(arg1)].field_768 <= startedAt + sub_45625616:
        if checkShares[address(arg1)].field_0 and sub_b7ff9f47 > -1 / checkShares[address(arg1)].field_0:
            revert with 0, 17
        if not rewardsPerShareAccuracyFactor:
            revert with 0, 18
        if runTime / ticker <= lastRewardUpdate:
            if checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor <= checkShares[address(arg1)].field_256:
                return 0
            if checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor < checkShares[address(arg1)].field_256:
                revert with 0, 17
            return ((checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) - checkShares[address(arg1)].field_256)
        if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
            revert with 0, 17
        if runTime / ticker < lastRewardUpdate:
            revert with 0, 17
        if sub_60569d5b and (runTime / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
            revert with 0, 17
        if checkShares[address(arg1)].field_0 and (runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / checkShares[address(arg1)].field_0:
            revert with 0, 17
        if not rewardsPerShareAccuracyFactor * totalStaked:
            revert with 0, 18
        if checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor > !((runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked):
            revert with 0, 17
        if (checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked) <= checkShares[address(arg1)].field_256:
            return 0
        if (checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked) < checkShares[address(arg1)].field_256:
            revert with 0, 17
        return ((checkShares[address(arg1)].field_0 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) / rewardsPerShareAccuracyFactor * totalStaked) - checkShares[address(arg1)].field_256)
    if checkShares[address(arg1)].field_0 and sub_3539eacb > -1 / checkShares[address(arg1)].field_0:
        revert with 0, 17
    if checkShares[address(arg1)].field_0 < checkShares[address(arg1)].field_0 * sub_3539eacb / 100:
        revert with 0, 17
    if checkShares[address(arg1)].field_0 - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100) and sub_b7ff9f47 > -1 / checkShares[address(arg1)].field_0 - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100):
        revert with 0, 17
    if not rewardsPerShareAccuracyFactor:
        revert with 0, 18
    if runTime / ticker <= lastRewardUpdate:
        if (checkShares[address(arg1)].field_0 * sub_b7ff9f47) - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor <= checkShares[address(arg1)].field_256:
            return 0
        if (checkShares[address(arg1)].field_0 * sub_b7ff9f47) - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor < checkShares[address(arg1)].field_256:
            revert with 0, 17
        return (((checkShares[address(arg1)].field_0 * sub_b7ff9f47) - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) - checkShares[address(arg1)].field_256)
    if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
        revert with 0, 17
    if runTime / ticker < lastRewardUpdate:
        revert with 0, 17
    if sub_60569d5b and (runTime / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
        revert with 0, 17
    if checkShares[address(arg1)].field_0 - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100) and (runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / checkShares[address(arg1)].field_0 - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100):
        revert with 0, 17
    if not rewardsPerShareAccuracyFactor * totalStaked:
        revert with 0, 18
    if (checkShares[address(arg1)].field_0 * sub_b7ff9f47) - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor > !((runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) - (runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked):
        revert with 0, 17
    if ((checkShares[address(arg1)].field_0 * sub_b7ff9f47) - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) - (runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked) <= checkShares[address(arg1)].field_256:
        return 0
    if ((checkShares[address(arg1)].field_0 * sub_b7ff9f47) - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) - (runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked) < checkShares[address(arg1)].field_256:
        revert with 0, 17
    return (((checkShares[address(arg1)].field_0 * sub_b7ff9f47) - (checkShares[address(arg1)].field_0 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0) - (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0) - (runTime / ticker * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * checkShares[address(arg1)].field_0 * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked) - checkShares[address(arg1)].field_256)
}

function stake(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not open:
        revert with 0, 'Staking closed'
    if startedAt:
        if startedAt > !runTime:
            revert with 0, 17
        if block.timestamp >= startedAt + runTime:
            revert with 0, 'Staking closed'
    if arg2 <= 0:
        revert with 0, 'No shares added'
    if checkShares[msg.sender].field_0 > !arg2:
        revert with 0, 17
    if checkShares[msg.sender].field_0 + arg2 < minStake:
        revert with 0, 'Outside staking parameters'
    if checkShares[msg.sender].field_0 > !arg2:
        revert with 0, 17
    if checkShares[msg.sender].field_0 + arg2 > maxStake:
        revert with 0, 'Outside staking parameters'
    staticcall TOKENAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg2:
        call TOKENAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not checkShares[address(msg.sender)].field_0:
            if countShareholders == -1:
                revert with 0, 17
            countShareholders++
            checkShares[address(msg.sender)].field_768 = block.timestamp
        if startedAt:
            if block.timestamp < startedAt:
                revert with 0, 17
            if not ticker:
                revert with 0, 18
            if block.timestamp - startedAt / ticker <= runTime / ticker:
                if block.timestamp - startedAt / ticker != lastRewardUpdate:
                    if not totalStaked:
                        if block.timestamp - startedAt / ticker and sub_60569d5b > -1 / block.timestamp - startedAt / ticker:
                            revert with 0, 17
                        sub_dccc2fb3 = block.timestamp - startedAt / ticker * sub_60569d5b
                    else:
                        if block.timestamp - startedAt / ticker < lastRewardUpdate:
                            revert with 0, 17
                        if sub_60569d5b and (block.timestamp - startedAt / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                            revert with 0, 17
                        if not totalStaked:
                            revert with 0, 18
                        if sub_b7ff9f47 > !((block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) / totalStaked):
                            revert with 0, 17
                        sub_b7ff9f47 += (block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) / totalStaked
                    lastRewardUpdate = block.timestamp - startedAt / ticker
            else:
                if not ticker:
                    revert with 0, 18
                if runTime / ticker != lastRewardUpdate:
                    if not totalStaked:
                        if runTime / ticker and sub_60569d5b > -1 / runTime / ticker:
                            revert with 0, 17
                        sub_dccc2fb3 = runTime / ticker * sub_60569d5b
                    else:
                        if runTime / ticker < lastRewardUpdate:
                            revert with 0, 17
                        if sub_60569d5b and (runTime / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                            revert with 0, 17
                        if not totalStaked:
                            revert with 0, 18
                        if sub_b7ff9f47 > !((runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) / totalStaked):
                            revert with 0, 17
                        sub_b7ff9f47 += (runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) / totalStaked
                    lastRewardUpdate = runTime / ticker
        if totalStaked > !arg2:
            revert with 0, 17
        totalStaked += arg2
        if checkShares[address(msg.sender)].field_0 > !arg2:
            revert with 0, 17
        checkShares[address(msg.sender)].field_0 += arg2
        if startedAt > !sub_45625616:
            revert with 0, 17
        if not arg2:
            if checkShares[address(msg.sender)].field_256 > -1:
                revert with 0, 17
        else:
            if block.timestamp < startedAt:
                revert with 0, 17
            if not ticker:
                revert with 0, 18
            if block.timestamp - startedAt / ticker <= runTime / ticker:
                if sub_3539eacb <= 0:
                    if arg2 and sub_b7ff9f47 > -1 / arg2:
                        revert with 0, 17
                    if not rewardsPerShareAccuracyFactor:
                        revert with 0, 18
                    if block.timestamp - startedAt / ticker <= lastRewardUpdate:
                        if checkShares[address(msg.sender)].field_256 > !(arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor):
                            revert with 0, 17
                        checkShares[address(msg.sender)].field_256 += arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor
                    else:
                        if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
                            revert with 0, 17
                        if block.timestamp - startedAt / ticker < lastRewardUpdate:
                            revert with 0, 17
                        if sub_60569d5b and (block.timestamp - startedAt / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                            revert with 0, 17
                        if arg2 and (block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / arg2:
                            revert with 0, 17
                        if not rewardsPerShareAccuracyFactor * totalStaked:
                            revert with 0, 18
                        if arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor > !((block.timestamp - startedAt / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) / rewardsPerShareAccuracyFactor * totalStaked):
                            revert with 0, 17
                        if checkShares[address(msg.sender)].field_256 > !((arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) / rewardsPerShareAccuracyFactor * totalStaked)):
                            revert with 0, 17
                        checkShares[address(msg.sender)].field_256 = checkShares[address(msg.sender)].field_256 + (arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) / rewardsPerShareAccuracyFactor * totalStaked)
                else:
                    if checkShares[address(msg.sender)].field_768 <= startedAt + sub_45625616:
                        if arg2 and sub_b7ff9f47 > -1 / arg2:
                            revert with 0, 17
                        if not rewardsPerShareAccuracyFactor:
                            revert with 0, 18
                        if block.timestamp - startedAt / ticker <= lastRewardUpdate:
                            if checkShares[address(msg.sender)].field_256 > !(arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 += arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor
                        else:
                            if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
                                revert with 0, 17
                            if block.timestamp - startedAt / ticker < lastRewardUpdate:
                                revert with 0, 17
                            if sub_60569d5b and (block.timestamp - startedAt / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                                revert with 0, 17
                            if arg2 and (block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / arg2:
                                revert with 0, 17
                            if not rewardsPerShareAccuracyFactor * totalStaked:
                                revert with 0, 18
                            if arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor > !((block.timestamp - startedAt / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) / rewardsPerShareAccuracyFactor * totalStaked):
                                revert with 0, 17
                            if checkShares[address(msg.sender)].field_256 > !((arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) / rewardsPerShareAccuracyFactor * totalStaked)):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 = checkShares[address(msg.sender)].field_256 + (arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) / rewardsPerShareAccuracyFactor * totalStaked)
                    else:
                        if arg2 and sub_3539eacb > -1 / arg2:
                            revert with 0, 17
                        if arg2 < arg2 * sub_3539eacb / 100:
                            revert with 0, 17
                        if arg2 - (arg2 * sub_3539eacb / 100) and sub_b7ff9f47 > -1 / arg2 - (arg2 * sub_3539eacb / 100):
                            revert with 0, 17
                        if not rewardsPerShareAccuracyFactor:
                            revert with 0, 18
                        if block.timestamp - startedAt / ticker <= lastRewardUpdate:
                            if checkShares[address(msg.sender)].field_256 > !((arg2 * sub_b7ff9f47) - (arg2 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 += (arg2 * sub_b7ff9f47) - (arg2 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor
                        else:
                            if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
                                revert with 0, 17
                            if block.timestamp - startedAt / ticker < lastRewardUpdate:
                                revert with 0, 17
                            if sub_60569d5b and (block.timestamp - startedAt / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                                revert with 0, 17
                            if arg2 - (arg2 * sub_3539eacb / 100) and (block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / arg2 - (arg2 * sub_3539eacb / 100):
                                revert with 0, 17
                            if not rewardsPerShareAccuracyFactor * totalStaked:
                                revert with 0, 18
                            if (arg2 * sub_b7ff9f47) - (arg2 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor > !((block.timestamp - startedAt / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) - (block.timestamp - startedAt / ticker * sub_60569d5b * arg2 * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * arg2 * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked):
                                revert with 0, 17
                            if checkShares[address(msg.sender)].field_256 > !(((arg2 * sub_b7ff9f47) - (arg2 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) - (block.timestamp - startedAt / ticker * sub_60569d5b * arg2 * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * arg2 * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked)):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 = checkShares[address(msg.sender)].field_256 + ((arg2 * sub_b7ff9f47) - (arg2 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) - (block.timestamp - startedAt / ticker * sub_60569d5b * arg2 * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * arg2 * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked)
            else:
                if not ticker:
                    revert with 0, 18
                if sub_3539eacb <= 0:
                    if arg2 and sub_b7ff9f47 > -1 / arg2:
                        revert with 0, 17
                    if not rewardsPerShareAccuracyFactor:
                        revert with 0, 18
                    if runTime / ticker <= lastRewardUpdate:
                        if checkShares[address(msg.sender)].field_256 > !(arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor):
                            revert with 0, 17
                        checkShares[address(msg.sender)].field_256 += arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor
                    else:
                        if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
                            revert with 0, 17
                        if runTime / ticker < lastRewardUpdate:
                            revert with 0, 17
                        if sub_60569d5b and (runTime / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                            revert with 0, 17
                        if arg2 and (runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / arg2:
                            revert with 0, 17
                        if not rewardsPerShareAccuracyFactor * totalStaked:
                            revert with 0, 18
                        if arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor > !((runTime / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) / rewardsPerShareAccuracyFactor * totalStaked):
                            revert with 0, 17
                        if checkShares[address(msg.sender)].field_256 > !((arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) / rewardsPerShareAccuracyFactor * totalStaked)):
                            revert with 0, 17
                        checkShares[address(msg.sender)].field_256 = checkShares[address(msg.sender)].field_256 + (arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) / rewardsPerShareAccuracyFactor * totalStaked)
                else:
                    if checkShares[address(msg.sender)].field_768 <= startedAt + sub_45625616:
                        if arg2 and sub_b7ff9f47 > -1 / arg2:
                            revert with 0, 17
                        if not rewardsPerShareAccuracyFactor:
                            revert with 0, 18
                        if runTime / ticker <= lastRewardUpdate:
                            if checkShares[address(msg.sender)].field_256 > !(arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 += arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor
                        else:
                            if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
                                revert with 0, 17
                            if runTime / ticker < lastRewardUpdate:
                                revert with 0, 17
                            if sub_60569d5b and (runTime / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                                revert with 0, 17
                            if arg2 and (runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / arg2:
                                revert with 0, 17
                            if not rewardsPerShareAccuracyFactor * totalStaked:
                                revert with 0, 18
                            if arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor > !((runTime / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) / rewardsPerShareAccuracyFactor * totalStaked):
                                revert with 0, 17
                            if checkShares[address(msg.sender)].field_256 > !((arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) / rewardsPerShareAccuracyFactor * totalStaked)):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 = checkShares[address(msg.sender)].field_256 + (arg2 * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) / rewardsPerShareAccuracyFactor * totalStaked)
                    else:
                        if arg2 and sub_3539eacb > -1 / arg2:
                            revert with 0, 17
                        if arg2 < arg2 * sub_3539eacb / 100:
                            revert with 0, 17
                        if arg2 - (arg2 * sub_3539eacb / 100) and sub_b7ff9f47 > -1 / arg2 - (arg2 * sub_3539eacb / 100):
                            revert with 0, 17
                        if not rewardsPerShareAccuracyFactor:
                            revert with 0, 18
                        if runTime / ticker <= lastRewardUpdate:
                            if checkShares[address(msg.sender)].field_256 > !((arg2 * sub_b7ff9f47) - (arg2 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 += (arg2 * sub_b7ff9f47) - (arg2 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor
                        else:
                            if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
                                revert with 0, 17
                            if runTime / ticker < lastRewardUpdate:
                                revert with 0, 17
                            if sub_60569d5b and (runTime / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                                revert with 0, 17
                            if arg2 - (arg2 * sub_3539eacb / 100) and (runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / arg2 - (arg2 * sub_3539eacb / 100):
                                revert with 0, 17
                            if not rewardsPerShareAccuracyFactor * totalStaked:
                                revert with 0, 18
                            if (arg2 * sub_b7ff9f47) - (arg2 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor > !((runTime / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) - (runTime / ticker * sub_60569d5b * arg2 * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * arg2 * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked):
                                revert with 0, 17
                            if checkShares[address(msg.sender)].field_256 > !(((arg2 * sub_b7ff9f47) - (arg2 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) - (runTime / ticker * sub_60569d5b * arg2 * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * arg2 * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked)):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 = checkShares[address(msg.sender)].field_256 + ((arg2 * sub_b7ff9f47) - (arg2 * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * arg2) - (lastRewardUpdate * sub_60569d5b * arg2) - (runTime / ticker * sub_60569d5b * arg2 * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * arg2 * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked)
        emit Stake(arg2, msg.sender);
    else:
        call TOKENAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not checkShares[address(msg.sender)].field_0:
            if countShareholders == -1:
                revert with 0, 17
            countShareholders++
            checkShares[address(msg.sender)].field_768 = block.timestamp
        if startedAt:
            if block.timestamp < startedAt:
                revert with 0, 17
            if not ticker:
                revert with 0, 18
            if block.timestamp - startedAt / ticker <= runTime / ticker:
                if block.timestamp - startedAt / ticker != lastRewardUpdate:
                    if not totalStaked:
                        if block.timestamp - startedAt / ticker and sub_60569d5b > -1 / block.timestamp - startedAt / ticker:
                            revert with 0, 17
                        sub_dccc2fb3 = block.timestamp - startedAt / ticker * sub_60569d5b
                    else:
                        if block.timestamp - startedAt / ticker < lastRewardUpdate:
                            revert with 0, 17
                        if sub_60569d5b and (block.timestamp - startedAt / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                            revert with 0, 17
                        if not totalStaked:
                            revert with 0, 18
                        if sub_b7ff9f47 > !((block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) / totalStaked):
                            revert with 0, 17
                        sub_b7ff9f47 += (block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) / totalStaked
                    lastRewardUpdate = block.timestamp - startedAt / ticker
            else:
                if not ticker:
                    revert with 0, 18
                if runTime / ticker != lastRewardUpdate:
                    if not totalStaked:
                        if runTime / ticker and sub_60569d5b > -1 / runTime / ticker:
                            revert with 0, 17
                        sub_dccc2fb3 = runTime / ticker * sub_60569d5b
                    else:
                        if runTime / ticker < lastRewardUpdate:
                            revert with 0, 17
                        if sub_60569d5b and (runTime / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                            revert with 0, 17
                        if not totalStaked:
                            revert with 0, 18
                        if sub_b7ff9f47 > !((runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) / totalStaked):
                            revert with 0, 17
                        sub_b7ff9f47 += (runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) / totalStaked
                    lastRewardUpdate = runTime / ticker
        if totalStaked > !ext_call.return_data[0]:
            revert with 0, 17
        totalStaked += ext_call.return_data[0]
        if checkShares[address(msg.sender)].field_0 > !ext_call.return_data[0]:
            revert with 0, 17
        checkShares[address(msg.sender)].field_0 += ext_call.return_data[0]
        if startedAt > !sub_45625616:
            revert with 0, 17
        if not ext_call.return_data[0]:
            if checkShares[address(msg.sender)].field_256 > -1:
                revert with 0, 17
        else:
            if block.timestamp < startedAt:
                revert with 0, 17
            if not ticker:
                revert with 0, 18
            if block.timestamp - startedAt / ticker <= runTime / ticker:
                if sub_3539eacb <= 0:
                    if ext_call.return_data[0] and sub_b7ff9f47 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not rewardsPerShareAccuracyFactor:
                        revert with 0, 18
                    if block.timestamp - startedAt / ticker <= lastRewardUpdate:
                        if checkShares[address(msg.sender)].field_256 > !(ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor):
                            revert with 0, 17
                        checkShares[address(msg.sender)].field_256 += ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor
                    else:
                        if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
                            revert with 0, 17
                        if block.timestamp - startedAt / ticker < lastRewardUpdate:
                            revert with 0, 17
                        if sub_60569d5b and (block.timestamp - startedAt / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                            revert with 0, 17
                        if ext_call.return_data[0] and (block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not rewardsPerShareAccuracyFactor * totalStaked:
                            revert with 0, 18
                        if ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor > !((block.timestamp - startedAt / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) / rewardsPerShareAccuracyFactor * totalStaked):
                            revert with 0, 17
                        if checkShares[address(msg.sender)].field_256 > !((ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) / rewardsPerShareAccuracyFactor * totalStaked)):
                            revert with 0, 17
                        checkShares[address(msg.sender)].field_256 = checkShares[address(msg.sender)].field_256 + (ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) / rewardsPerShareAccuracyFactor * totalStaked)
                else:
                    if checkShares[address(msg.sender)].field_768 <= startedAt + sub_45625616:
                        if ext_call.return_data[0] and sub_b7ff9f47 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not rewardsPerShareAccuracyFactor:
                            revert with 0, 18
                        if block.timestamp - startedAt / ticker <= lastRewardUpdate:
                            if checkShares[address(msg.sender)].field_256 > !(ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 += ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor
                        else:
                            if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
                                revert with 0, 17
                            if block.timestamp - startedAt / ticker < lastRewardUpdate:
                                revert with 0, 17
                            if sub_60569d5b and (block.timestamp - startedAt / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                                revert with 0, 17
                            if ext_call.return_data[0] and (block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if not rewardsPerShareAccuracyFactor * totalStaked:
                                revert with 0, 18
                            if ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor > !((block.timestamp - startedAt / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) / rewardsPerShareAccuracyFactor * totalStaked):
                                revert with 0, 17
                            if checkShares[address(msg.sender)].field_256 > !((ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) / rewardsPerShareAccuracyFactor * totalStaked)):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 = checkShares[address(msg.sender)].field_256 + (ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) / rewardsPerShareAccuracyFactor * totalStaked)
                    else:
                        if ext_call.return_data[0] and sub_3539eacb > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] < ext_call.return_data[0] * sub_3539eacb / 100:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * sub_3539eacb / 100) and sub_b7ff9f47 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * sub_3539eacb / 100):
                            revert with 0, 17
                        if not rewardsPerShareAccuracyFactor:
                            revert with 0, 18
                        if block.timestamp - startedAt / ticker <= lastRewardUpdate:
                            if checkShares[address(msg.sender)].field_256 > !((ext_call.return_data[0] * sub_b7ff9f47) - (ext_call.return_data[0] * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 += (ext_call.return_data[0] * sub_b7ff9f47) - (ext_call.return_data[0] * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor
                        else:
                            if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
                                revert with 0, 17
                            if block.timestamp - startedAt / ticker < lastRewardUpdate:
                                revert with 0, 17
                            if sub_60569d5b and (block.timestamp - startedAt / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * sub_3539eacb / 100) and (block.timestamp - startedAt / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * sub_3539eacb / 100):
                                revert with 0, 17
                            if not rewardsPerShareAccuracyFactor * totalStaked:
                                revert with 0, 18
                            if (ext_call.return_data[0] * sub_b7ff9f47) - (ext_call.return_data[0] * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor > !((block.timestamp - startedAt / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) - (block.timestamp - startedAt / ticker * sub_60569d5b * ext_call.return_data[0] * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0] * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked):
                                revert with 0, 17
                            if checkShares[address(msg.sender)].field_256 > !(((ext_call.return_data[0] * sub_b7ff9f47) - (ext_call.return_data[0] * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) - (block.timestamp - startedAt / ticker * sub_60569d5b * ext_call.return_data[0] * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0] * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked)):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 = checkShares[address(msg.sender)].field_256 + ((ext_call.return_data[0] * sub_b7ff9f47) - (ext_call.return_data[0] * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) + ((block.timestamp - startedAt / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) - (block.timestamp - startedAt / ticker * sub_60569d5b * ext_call.return_data[0] * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0] * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked)
            else:
                if not ticker:
                    revert with 0, 18
                if sub_3539eacb <= 0:
                    if ext_call.return_data[0] and sub_b7ff9f47 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not rewardsPerShareAccuracyFactor:
                        revert with 0, 18
                    if runTime / ticker <= lastRewardUpdate:
                        if checkShares[address(msg.sender)].field_256 > !(ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor):
                            revert with 0, 17
                        checkShares[address(msg.sender)].field_256 += ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor
                    else:
                        if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
                            revert with 0, 17
                        if runTime / ticker < lastRewardUpdate:
                            revert with 0, 17
                        if sub_60569d5b and (runTime / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                            revert with 0, 17
                        if ext_call.return_data[0] and (runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not rewardsPerShareAccuracyFactor * totalStaked:
                            revert with 0, 18
                        if ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor > !((runTime / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) / rewardsPerShareAccuracyFactor * totalStaked):
                            revert with 0, 17
                        if checkShares[address(msg.sender)].field_256 > !((ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) / rewardsPerShareAccuracyFactor * totalStaked)):
                            revert with 0, 17
                        checkShares[address(msg.sender)].field_256 = checkShares[address(msg.sender)].field_256 + (ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) / rewardsPerShareAccuracyFactor * totalStaked)
                else:
                    if checkShares[address(msg.sender)].field_768 <= startedAt + sub_45625616:
                        if ext_call.return_data[0] and sub_b7ff9f47 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if not rewardsPerShareAccuracyFactor:
                            revert with 0, 18
                        if runTime / ticker <= lastRewardUpdate:
                            if checkShares[address(msg.sender)].field_256 > !(ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 += ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor
                        else:
                            if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
                                revert with 0, 17
                            if runTime / ticker < lastRewardUpdate:
                                revert with 0, 17
                            if sub_60569d5b and (runTime / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                                revert with 0, 17
                            if ext_call.return_data[0] and (runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if not rewardsPerShareAccuracyFactor * totalStaked:
                                revert with 0, 18
                            if ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor > !((runTime / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) / rewardsPerShareAccuracyFactor * totalStaked):
                                revert with 0, 17
                            if checkShares[address(msg.sender)].field_256 > !((ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) / rewardsPerShareAccuracyFactor * totalStaked)):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 = checkShares[address(msg.sender)].field_256 + (ext_call.return_data[0] * sub_b7ff9f47 / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) / rewardsPerShareAccuracyFactor * totalStaked)
                    else:
                        if ext_call.return_data[0] and sub_3539eacb > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] < ext_call.return_data[0] * sub_3539eacb / 100:
                            revert with 0, 17
                        if ext_call.return_data[0] - (ext_call.return_data[0] * sub_3539eacb / 100) and sub_b7ff9f47 > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * sub_3539eacb / 100):
                            revert with 0, 17
                        if not rewardsPerShareAccuracyFactor:
                            revert with 0, 18
                        if runTime / ticker <= lastRewardUpdate:
                            if checkShares[address(msg.sender)].field_256 > !((ext_call.return_data[0] * sub_b7ff9f47) - (ext_call.return_data[0] * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 += (ext_call.return_data[0] * sub_b7ff9f47) - (ext_call.return_data[0] * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor
                        else:
                            if rewardsPerShareAccuracyFactor and totalStaked > -1 / rewardsPerShareAccuracyFactor:
                                revert with 0, 17
                            if runTime / ticker < lastRewardUpdate:
                                revert with 0, 17
                            if sub_60569d5b and (runTime / ticker) - lastRewardUpdate > -1 / sub_60569d5b:
                                revert with 0, 17
                            if ext_call.return_data[0] - (ext_call.return_data[0] * sub_3539eacb / 100) and (runTime / ticker * sub_60569d5b) - (lastRewardUpdate * sub_60569d5b) > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * sub_3539eacb / 100):
                                revert with 0, 17
                            if not rewardsPerShareAccuracyFactor * totalStaked:
                                revert with 0, 18
                            if (ext_call.return_data[0] * sub_b7ff9f47) - (ext_call.return_data[0] * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor > !((runTime / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) - (runTime / ticker * sub_60569d5b * ext_call.return_data[0] * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0] * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked):
                                revert with 0, 17
                            if checkShares[address(msg.sender)].field_256 > !(((ext_call.return_data[0] * sub_b7ff9f47) - (ext_call.return_data[0] * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) - (runTime / ticker * sub_60569d5b * ext_call.return_data[0] * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0] * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked)):
                                revert with 0, 17
                            checkShares[address(msg.sender)].field_256 = checkShares[address(msg.sender)].field_256 + ((ext_call.return_data[0] * sub_b7ff9f47) - (ext_call.return_data[0] * sub_3539eacb / 100 * sub_b7ff9f47) / rewardsPerShareAccuracyFactor) + ((runTime / ticker * sub_60569d5b * ext_call.return_data[0]) - (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0]) - (runTime / ticker * sub_60569d5b * ext_call.return_data[0] * sub_3539eacb / 100) + (lastRewardUpdate * sub_60569d5b * ext_call.return_data[0] * sub_3539eacb / 100) / rewardsPerShareAccuracyFactor * totalStaked)
        emit Stake(ext_call.return_data[0], msg.sender);
}



}
