contract main {




// =====================  Runtime code  =====================


#
#  - process()
#  - sub_e5dd0451(?)
#  - _fallback()
#
mapping of uint8 stor0;
array of address shareholders;
mapping of uint256 shareholderIndexes;
mapping of uint256 shareholderClaims;
mapping of struct paidRewards;
uint256 totalShares;
uint256 totalRewards;
uint256 totalRewarded;
uint256 rewardsPerShare;
uint256 rewardsPerShareAccuracyFactor;
uint256 minPeriod;
uint256 minDistribution;
uint256 gas;
uint256 stor14;
address stor16;
uint8 initialized;

function totalRewards() {
    return totalRewards
}

function getTotalRewarded() {
    return totalRewarded
}

function initialized() {
    return bool(initialized)
}

function totalShares() {
    return totalShares
}

function minDistribution() {
    return minDistribution
}

function shareholderClaims(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shareholderClaims[arg1]
}

function gas() {
    return gas
}

function countShareholders() {
    return shareholders.length
}

function shareholders(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < shareholders.length
    return shareholders[arg1]
}

function totalRewarded() {
    return totalRewarded
}

function rewardsPerShareAccuracyFactor() {
    return rewardsPerShareAccuracyFactor
}

function getPaidRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return paidRewards[address(arg1)].field_512
}

function rewardsPerShare() {
    return rewardsPerShare
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return paidRewards[arg1].field_0, paidRewards[arg1].field_256, paidRewards[arg1].field_512
}

function shareholderIndexes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shareholderIndexes[arg1]
}

function getTotalRewards() {
    return totalRewards
}

function minPeriod() {
    return minPeriod
}

function finishDistribution() {
    require stor0[msg.sender]
    initialized = 0
}

function updateGnosisGas(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor0[msg.sender]
    stor14 = arg1
}

function sub_5f7bb049(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require stor0[msg.sender]
    stor0[address(arg1)] = uint8(bool(arg2))
}

function setDistributionParameters(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require stor0[msg.sender]
    minPeriod = arg1
    minDistribution = arg2
    gas = arg3
}

function sub_f7bf02cd(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor16.0x66817df5 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7e0230f9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor16.0xce7c2ac2 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function getClaimTime(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if shareholderClaims[address(arg1)] > !minPeriod:
        revert with 0, 17
    if shareholderClaims[address(arg1)] + minPeriod <= block.timestamp:
        return 0
    if shareholderClaims[address(arg1)] > !minPeriod:
        revert with 0, 17
    if shareholderClaims[address(arg1)] + minPeriod < block.timestamp:
        revert with 0, 17
    return (shareholderClaims[address(arg1)] + minPeriod - block.timestamp)
}

function deposit() payable {
    if initialized:
        if msg.value:
            if totalRewards > !msg.value:
                revert with 0, 17
            totalRewards += msg.value
            if rewardsPerShareAccuracyFactor and msg.value > -1 / rewardsPerShareAccuracyFactor:
                revert with 0, 17
            if not totalShares:
                revert with 0, 18
            if rewardsPerShare > !(rewardsPerShareAccuracyFactor * msg.value / totalShares):
                revert with 0, 17
            rewardsPerShare += rewardsPerShareAccuracyFactor * msg.value / totalShares
}

function startDistribution() {
    require not initialized
    require stor0[msg.sender]
    if totalRewards > !eth.balance(this.address):
        revert with 0, 17
    totalRewards += eth.balance(this.address)
    if rewardsPerShareAccuracyFactor and eth.balance(this.address) > -1 / rewardsPerShareAccuracyFactor:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if rewardsPerShare > !(rewardsPerShareAccuracyFactor * eth.balance(this.address) / totalShares):
        revert with 0, 17
    rewardsPerShare += rewardsPerShareAccuracyFactor * eth.balance(this.address) / totalShares
    initialized = 1
}

function migrate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    staticcall arg1.0x158ef93e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require not ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getUnpaidRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not paidRewards[address(arg1)].field_0:
        return 0
    if not paidRewards[address(arg1)].field_0:
        if 0 <= paidRewards[address(arg1)].field_256:
            return 0
        if 0 < paidRewards[address(arg1)].field_256:
            revert with 0, 17
        return -paidRewards[address(arg1)].field_256
    if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
        revert with 0, 17
    if not rewardsPerShareAccuracyFactor:
        revert with 0, 18
    if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor <= paidRewards[address(arg1)].field_256:
        return 0
    if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor < paidRewards[address(arg1)].field_256:
        revert with 0, 17
    return ((paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256)
}

function setShares(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require stor0[msg.sender]
    if arg2 <= 0:
        if not arg2:
            if paidRewards[address(arg1)].field_0:
                if shareholders.length < 1:
                    revert with 0, 17
                if shareholders.length - 1 >= shareholders.length:
                    revert with 0, 50
                if shareholderIndexes[address(arg1)] >= shareholders.length:
                    revert with 0, 50
                shareholders[stor3[address(arg1)]] = shareholders[shareholders.length]
                if shareholders.length < 1:
                    revert with 0, 17
                if shareholders.length - 1 >= shareholders.length:
                    revert with 0, 50
                shareholderIndexes[stor2[stor2.length]] = shareholderIndexes[address(arg1)]
                if not shareholders.length:
                    revert with 0, 49
                shareholders[shareholders.length] = 0
                shareholders.length--
    else:
        if not paidRewards[address(arg1)].field_0:
            shareholderIndexes[address(arg1)] = shareholders.length
            shareholders.length++
            shareholders[shareholders.length] = arg1
        else:
            if not arg2:
                if paidRewards[address(arg1)].field_0:
                    if shareholders.length < 1:
                        revert with 0, 17
                    if shareholders.length - 1 >= shareholders.length:
                        revert with 0, 50
                    if shareholderIndexes[address(arg1)] >= shareholders.length:
                        revert with 0, 50
                    shareholders[stor3[address(arg1)]] = shareholders[shareholders.length]
                    if shareholders.length < 1:
                        revert with 0, 17
                    if shareholders.length - 1 >= shareholders.length:
                        revert with 0, 50
                    shareholderIndexes[stor2[stor2.length]] = shareholderIndexes[address(arg1)]
                    if not shareholders.length:
                        revert with 0, 49
                    shareholders[shareholders.length] = 0
                    shareholders.length--
    if paidRewards[address(arg1)].field_0:
        if paidRewards[address(arg1)].field_0:
            if paidRewards[address(arg1)].field_0:
                if not paidRewards[address(arg1)].field_0:
                    if 0 > paidRewards[address(arg1)].field_256:
                        if 0 < paidRewards[address(arg1)].field_256:
                            revert with 0, 17
                        if -paidRewards[address(arg1)].field_256:
                            if totalRewarded > !-paidRewards[address(arg1)].field_256:
                                revert with 0, 17
                            totalRewarded -= paidRewards[address(arg1)].field_256
                            shareholderClaims[address(arg1)] = block.timestamp
                            if paidRewards[address(arg1)].field_512 > !-paidRewards[address(arg1)].field_256:
                                revert with 0, 17
                            paidRewards[address(arg1)].field_512 -= paidRewards[address(arg1)].field_256
                            if not paidRewards[address(arg1)].field_0:
                                paidRewards[address(arg1)].field_256 = 0
                            else:
                                if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                    revert with 0, 17
                                if not rewardsPerShareAccuracyFactor:
                                    revert with 0, 18
                                paidRewards[address(arg1)].field_256 = paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                            call arg1 with:
                               value -paidRewards[address(arg1)].field_256 wei
                                 gas stor14 wei
                            if not ext_call.success:
                                revert with 0, 'Failed to send to shareholder'
                else:
                    if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                        revert with 0, 17
                    if not rewardsPerShareAccuracyFactor:
                        revert with 0, 18
                    if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor > paidRewards[address(arg1)].field_256:
                        if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor < paidRewards[address(arg1)].field_256:
                            revert with 0, 17
                        if (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256:
                            if totalRewarded > !((paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256):
                                revert with 0, 17
                            totalRewarded = totalRewarded + (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256
                            shareholderClaims[address(arg1)] = block.timestamp
                            if paidRewards[address(arg1)].field_512 > !((paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256):
                                revert with 0, 17
                            paidRewards[address(arg1)].field_512 = paidRewards[address(arg1)].field_512 + (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256
                            if not paidRewards[address(arg1)].field_0:
                                paidRewards[address(arg1)].field_256 = 0
                            else:
                                if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                    revert with 0, 17
                                if not rewardsPerShareAccuracyFactor:
                                    revert with 0, 18
                                paidRewards[address(arg1)].field_256 = paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                            call arg1 with:
                               value (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256 wei
                                 gas stor14 wei
                            if not ext_call.success:
                                revert with 0, 'Failed to send to shareholder'
    if totalShares < paidRewards[address(arg1)].field_0:
        revert with 0, 17
    if totalShares - paidRewards[address(arg1)].field_0 > !arg2:
        revert with 0, 17
    totalShares = totalShares - paidRewards[address(arg1)].field_0 + arg2
    paidRewards[address(arg1)].field_0 = arg2
    if not arg2:
        paidRewards[address(arg1)].field_256 = 0
    else:
        if arg2 and rewardsPerShare > -1 / arg2:
            revert with 0, 17
        if not rewardsPerShareAccuracyFactor:
            revert with 0, 18
        paidRewards[address(arg1)].field_256 = arg2 * rewardsPerShare / rewardsPerShareAccuracyFactor
}

function claim(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require stor0[msg.sender]
    if shareholderClaims[address(arg1)] > !minPeriod:
        revert with 0, 17
    if shareholderClaims[address(arg1)] + minPeriod < block.timestamp:
        if not paidRewards[address(arg1)].field_0:
            if 0 > minDistribution:
                if paidRewards[address(arg1)].field_0:
                    if paidRewards[address(arg1)].field_0:
                        if not paidRewards[address(arg1)].field_0:
                            if 0 > paidRewards[address(arg1)].field_256:
                                if 0 < paidRewards[address(arg1)].field_256:
                                    revert with 0, 17
                                if -paidRewards[address(arg1)].field_256:
                                    if totalRewarded > !-paidRewards[address(arg1)].field_256:
                                        revert with 0, 17
                                    totalRewarded -= paidRewards[address(arg1)].field_256
                                    shareholderClaims[address(arg1)] = block.timestamp
                                    if paidRewards[address(arg1)].field_512 > !-paidRewards[address(arg1)].field_256:
                                        revert with 0, 17
                                    paidRewards[address(arg1)].field_512 -= paidRewards[address(arg1)].field_256
                                    if not paidRewards[address(arg1)].field_0:
                                        paidRewards[address(arg1)].field_256 = 0
                                    else:
                                        if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                            revert with 0, 17
                                        if not rewardsPerShareAccuracyFactor:
                                            revert with 0, 18
                                        paidRewards[address(arg1)].field_256 = paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                                    call arg1 with:
                                       value -paidRewards[address(arg1)].field_256 wei
                                         gas stor14 wei
                                    if not ext_call.success:
                                        revert with 0, 'Failed to send to shareholder'
                        else:
                            if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                revert with 0, 17
                            if not rewardsPerShareAccuracyFactor:
                                revert with 0, 18
                            if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor > paidRewards[address(arg1)].field_256:
                                if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor < paidRewards[address(arg1)].field_256:
                                    revert with 0, 17
                                if (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256:
                                    if totalRewarded > !((paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256):
                                        revert with 0, 17
                                    totalRewarded = totalRewarded + (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256
                                    shareholderClaims[address(arg1)] = block.timestamp
                                    if paidRewards[address(arg1)].field_512 > !((paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256):
                                        revert with 0, 17
                                    paidRewards[address(arg1)].field_512 = paidRewards[address(arg1)].field_512 + (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256
                                    if not paidRewards[address(arg1)].field_0:
                                        paidRewards[address(arg1)].field_256 = 0
                                    else:
                                        if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                            revert with 0, 17
                                        if not rewardsPerShareAccuracyFactor:
                                            revert with 0, 18
                                        paidRewards[address(arg1)].field_256 = paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                                    call arg1 with:
                                       value (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256 wei
                                         gas stor14 wei
                                    if not ext_call.success:
                                        revert with 0, 'Failed to send to shareholder'
        else:
            if not paidRewards[address(arg1)].field_0:
                if 0 <= paidRewards[address(arg1)].field_256:
                    if 0 > minDistribution:
                        if paidRewards[address(arg1)].field_0:
                            if paidRewards[address(arg1)].field_0:
                                if not paidRewards[address(arg1)].field_0:
                                    if 0 > paidRewards[address(arg1)].field_256:
                                        if 0 < paidRewards[address(arg1)].field_256:
                                            revert with 0, 17
                                        if -paidRewards[address(arg1)].field_256:
                                            if totalRewarded > !-paidRewards[address(arg1)].field_256:
                                                revert with 0, 17
                                            totalRewarded -= paidRewards[address(arg1)].field_256
                                            shareholderClaims[address(arg1)] = block.timestamp
                                            if paidRewards[address(arg1)].field_512 > !-paidRewards[address(arg1)].field_256:
                                                revert with 0, 17
                                            paidRewards[address(arg1)].field_512 -= paidRewards[address(arg1)].field_256
                                            if not paidRewards[address(arg1)].field_0:
                                                paidRewards[address(arg1)].field_256 = 0
                                            else:
                                                if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                                    revert with 0, 17
                                                if not rewardsPerShareAccuracyFactor:
                                                    revert with 0, 18
                                                paidRewards[address(arg1)].field_256 = paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                                            call arg1 with:
                                               value -paidRewards[address(arg1)].field_256 wei
                                                 gas stor14 wei
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send to shareholder'
                                else:
                                    if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                        revert with 0, 17
                                    if not rewardsPerShareAccuracyFactor:
                                        revert with 0, 18
                                    if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor > paidRewards[address(arg1)].field_256:
                                        if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor < paidRewards[address(arg1)].field_256:
                                            revert with 0, 17
                                        if (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256:
                                            if totalRewarded > !((paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256):
                                                revert with 0, 17
                                            totalRewarded = totalRewarded + (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256
                                            shareholderClaims[address(arg1)] = block.timestamp
                                            if paidRewards[address(arg1)].field_512 > !((paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256):
                                                revert with 0, 17
                                            paidRewards[address(arg1)].field_512 = paidRewards[address(arg1)].field_512 + (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256
                                            if not paidRewards[address(arg1)].field_0:
                                                paidRewards[address(arg1)].field_256 = 0
                                            else:
                                                if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                                    revert with 0, 17
                                                if not rewardsPerShareAccuracyFactor:
                                                    revert with 0, 18
                                                paidRewards[address(arg1)].field_256 = paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                                            call arg1 with:
                                               value (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256 wei
                                                 gas stor14 wei
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send to shareholder'
                else:
                    if 0 < paidRewards[address(arg1)].field_256:
                        revert with 0, 17
                    if -paidRewards[address(arg1)].field_256 > minDistribution:
                        if paidRewards[address(arg1)].field_0:
                            if paidRewards[address(arg1)].field_0:
                                if not paidRewards[address(arg1)].field_0:
                                    if 0 > paidRewards[address(arg1)].field_256:
                                        if 0 < paidRewards[address(arg1)].field_256:
                                            revert with 0, 17
                                        if -paidRewards[address(arg1)].field_256:
                                            if totalRewarded > !-paidRewards[address(arg1)].field_256:
                                                revert with 0, 17
                                            totalRewarded -= paidRewards[address(arg1)].field_256
                                            shareholderClaims[address(arg1)] = block.timestamp
                                            if paidRewards[address(arg1)].field_512 > !-paidRewards[address(arg1)].field_256:
                                                revert with 0, 17
                                            paidRewards[address(arg1)].field_512 -= paidRewards[address(arg1)].field_256
                                            if not paidRewards[address(arg1)].field_0:
                                                paidRewards[address(arg1)].field_256 = 0
                                            else:
                                                if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                                    revert with 0, 17
                                                if not rewardsPerShareAccuracyFactor:
                                                    revert with 0, 18
                                                paidRewards[address(arg1)].field_256 = paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                                            call arg1 with:
                                               value -paidRewards[address(arg1)].field_256 wei
                                                 gas stor14 wei
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send to shareholder'
                                else:
                                    if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                        revert with 0, 17
                                    if not rewardsPerShareAccuracyFactor:
                                        revert with 0, 18
                                    if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor > paidRewards[address(arg1)].field_256:
                                        if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor < paidRewards[address(arg1)].field_256:
                                            revert with 0, 17
                                        if (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256:
                                            if totalRewarded > !((paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256):
                                                revert with 0, 17
                                            totalRewarded = totalRewarded + (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256
                                            shareholderClaims[address(arg1)] = block.timestamp
                                            if paidRewards[address(arg1)].field_512 > !((paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256):
                                                revert with 0, 17
                                            paidRewards[address(arg1)].field_512 = paidRewards[address(arg1)].field_512 + (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256
                                            if not paidRewards[address(arg1)].field_0:
                                                paidRewards[address(arg1)].field_256 = 0
                                            else:
                                                if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                                    revert with 0, 17
                                                if not rewardsPerShareAccuracyFactor:
                                                    revert with 0, 18
                                                paidRewards[address(arg1)].field_256 = paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                                            call arg1 with:
                                               value (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256 wei
                                                 gas stor14 wei
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send to shareholder'
            else:
                if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                    revert with 0, 17
                if not rewardsPerShareAccuracyFactor:
                    revert with 0, 18
                if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor <= paidRewards[address(arg1)].field_256:
                    if 0 > minDistribution:
                        if paidRewards[address(arg1)].field_0:
                            if paidRewards[address(arg1)].field_0:
                                if not paidRewards[address(arg1)].field_0:
                                    if 0 > paidRewards[address(arg1)].field_256:
                                        if 0 < paidRewards[address(arg1)].field_256:
                                            revert with 0, 17
                                        if -paidRewards[address(arg1)].field_256:
                                            if totalRewarded > !-paidRewards[address(arg1)].field_256:
                                                revert with 0, 17
                                            totalRewarded -= paidRewards[address(arg1)].field_256
                                            shareholderClaims[address(arg1)] = block.timestamp
                                            if paidRewards[address(arg1)].field_512 > !-paidRewards[address(arg1)].field_256:
                                                revert with 0, 17
                                            paidRewards[address(arg1)].field_512 -= paidRewards[address(arg1)].field_256
                                            if not paidRewards[address(arg1)].field_0:
                                                paidRewards[address(arg1)].field_256 = 0
                                            else:
                                                if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                                    revert with 0, 17
                                                if not rewardsPerShareAccuracyFactor:
                                                    revert with 0, 18
                                                paidRewards[address(arg1)].field_256 = paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                                            call arg1 with:
                                               value -paidRewards[address(arg1)].field_256 wei
                                                 gas stor14 wei
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send to shareholder'
                                else:
                                    if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                        revert with 0, 17
                                    if not rewardsPerShareAccuracyFactor:
                                        revert with 0, 18
                                    if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor > paidRewards[address(arg1)].field_256:
                                        if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor < paidRewards[address(arg1)].field_256:
                                            revert with 0, 17
                                        if (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256:
                                            if totalRewarded > !((paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256):
                                                revert with 0, 17
                                            totalRewarded = totalRewarded + (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256
                                            shareholderClaims[address(arg1)] = block.timestamp
                                            if paidRewards[address(arg1)].field_512 > !((paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256):
                                                revert with 0, 17
                                            paidRewards[address(arg1)].field_512 = paidRewards[address(arg1)].field_512 + (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256
                                            if not paidRewards[address(arg1)].field_0:
                                                paidRewards[address(arg1)].field_256 = 0
                                            else:
                                                if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                                    revert with 0, 17
                                                if not rewardsPerShareAccuracyFactor:
                                                    revert with 0, 18
                                                paidRewards[address(arg1)].field_256 = paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                                            call arg1 with:
                                               value (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256 wei
                                                 gas stor14 wei
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send to shareholder'
                else:
                    if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor < paidRewards[address(arg1)].field_256:
                        revert with 0, 17
                    if (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256 > minDistribution:
                        if paidRewards[address(arg1)].field_0:
                            if paidRewards[address(arg1)].field_0:
                                if not paidRewards[address(arg1)].field_0:
                                    if 0 > paidRewards[address(arg1)].field_256:
                                        if 0 < paidRewards[address(arg1)].field_256:
                                            revert with 0, 17
                                        if -paidRewards[address(arg1)].field_256:
                                            if totalRewarded > !-paidRewards[address(arg1)].field_256:
                                                revert with 0, 17
                                            totalRewarded -= paidRewards[address(arg1)].field_256
                                            shareholderClaims[address(arg1)] = block.timestamp
                                            if paidRewards[address(arg1)].field_512 > !-paidRewards[address(arg1)].field_256:
                                                revert with 0, 17
                                            paidRewards[address(arg1)].field_512 -= paidRewards[address(arg1)].field_256
                                            if not paidRewards[address(arg1)].field_0:
                                                paidRewards[address(arg1)].field_256 = 0
                                            else:
                                                if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                                    revert with 0, 17
                                                if not rewardsPerShareAccuracyFactor:
                                                    revert with 0, 18
                                                paidRewards[address(arg1)].field_256 = paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                                            call arg1 with:
                                               value -paidRewards[address(arg1)].field_256 wei
                                                 gas stor14 wei
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send to shareholder'
                                else:
                                    if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                        revert with 0, 17
                                    if not rewardsPerShareAccuracyFactor:
                                        revert with 0, 18
                                    if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor > paidRewards[address(arg1)].field_256:
                                        if paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor < paidRewards[address(arg1)].field_256:
                                            revert with 0, 17
                                        if (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256:
                                            if totalRewarded > !((paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256):
                                                revert with 0, 17
                                            totalRewarded = totalRewarded + (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256
                                            shareholderClaims[address(arg1)] = block.timestamp
                                            if paidRewards[address(arg1)].field_512 > !((paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256):
                                                revert with 0, 17
                                            paidRewards[address(arg1)].field_512 = paidRewards[address(arg1)].field_512 + (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256
                                            if not paidRewards[address(arg1)].field_0:
                                                paidRewards[address(arg1)].field_256 = 0
                                            else:
                                                if paidRewards[address(arg1)].field_0 and rewardsPerShare > -1 / paidRewards[address(arg1)].field_0:
                                                    revert with 0, 17
                                                if not rewardsPerShareAccuracyFactor:
                                                    revert with 0, 18
                                                paidRewards[address(arg1)].field_256 = paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor
                                            call arg1 with:
                                               value (paidRewards[address(arg1)].field_0 * rewardsPerShare / rewardsPerShareAccuracyFactor) - paidRewards[address(arg1)].field_256 wei
                                                 gas stor14 wei
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send to shareholder'
}



}
