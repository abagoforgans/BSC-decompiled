contract main {




// =====================  Runtime code  =====================


#
#  - process()
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
uint256 stor13;
address stor15;
uint8 stor16; offset 160
address stor16;

function totalRewards() {
    return totalRewards
}

function getTotalRewarded() {
    return totalRewarded
}

function initialized() {
    return bool(uint8(stor16.field_160))
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
    uint8(stor16.field_160) = 0
}

function updateGnosisGas(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor0[msg.sender]
    stor13 = arg1
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

function startDistribution() {
    require not uint8(stor16.field_160)
    require stor0[msg.sender]
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if rewardsPerShareAccuracyFactor and ext_call.return_data[0] > -1 / rewardsPerShareAccuracyFactor:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if rewardsPerShare > !(rewardsPerShareAccuracyFactor * ext_call.return_data[0] / totalShares):
        revert with 0, 17
    rewardsPerShare += rewardsPerShareAccuracyFactor * ext_call.return_data[0] / totalShares
    uint8(stor16.field_160) = 1
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
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor15.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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

function setAccuracyFactor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require stor0[msg.sender]
    if not rewardsPerShareAccuracyFactor:
        revert with 0, 18
    rewardsPerShare = rewardsPerShare / rewardsPerShareAccuracyFactor
    if not arg1:
        rewardsPerShareAccuracyFactor = 1
        if rewardsPerShare and 1 > -1 / rewardsPerShare:
            revert with 0, 17
    else:
        if bool(bool(arg1 < 78)) or bool(bool(arg1 < 32)):
            rewardsPerShareAccuracyFactor = 10^arg1
            if rewardsPerShare and 10^arg1 > -1 / rewardsPerShare:
                revert with 0, 17
            rewardsPerShare = rewardsPerShare * 10^arg1
        else:
            s = 10
            t = 1
            idx = arg1
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            rewardsPerShareAccuracyFactor = s * t
            if rewardsPerShare and s * t > -1 / rewardsPerShare:
                revert with 0, 17
            rewardsPerShare = rewardsPerShare * s * t
}

function deposit() payable {
    mem[100] = this.address
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 2
    staticcall address(stor16.field_0).WETH() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = stor15
    mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = 128
    mem[(2 * ceil32(return_data.size)) + 324] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 356
    t = ceil32(return_data.size) + 128
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 260] = this.address
    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
    require ext_code.size(address(stor16.field_0))
    call address(stor16.field_0).mem[mem[64] len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    _24 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_24] < ext_call.return_data[0]:
        revert with 0, 17
    if totalRewards > !(mem[_24] - ext_call.return_data[0]):
        revert with 0, 17
    totalRewards = totalRewards + mem[_24] - ext_call.return_data[0]
    if uint8(stor16.field_160):
        if rewardsPerShareAccuracyFactor and mem[_24] - ext_call.return_data[0] > -1 / rewardsPerShareAccuracyFactor:
            revert with 0, 17
        if not totalShares:
            revert with 0, 18
        if rewardsPerShare > !((mem[_24] * rewardsPerShareAccuracyFactor) - (ext_call.return_data[0] * rewardsPerShareAccuracyFactor) / totalShares):
            revert with 0, 17
        rewardsPerShare += (mem[_24] * rewardsPerShareAccuracyFactor) - (ext_call.return_data[0] * rewardsPerShareAccuracyFactor) / totalShares
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
                shareholders[stor2[address(arg1)]] = shareholders[shareholders.length]
                if shareholders.length < 1:
                    revert with 0, 17
                if shareholders.length - 1 >= shareholders.length:
                    revert with 0, 50
                shareholderIndexes[stor1[stor1.length]] = shareholderIndexes[address(arg1)]
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
                    shareholders[stor2[address(arg1)]] = shareholders[shareholders.length]
                    if shareholders.length < 1:
                        revert with 0, 17
                    if shareholders.length - 1 >= shareholders.length:
                        revert with 0, 50
                    shareholderIndexes[stor1[stor1.length]] = shareholderIndexes[address(arg1)]
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
                                 gas stor13 wei
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
                                 gas stor13 wei
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
                                         gas stor13 wei
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
                                         gas stor13 wei
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
                                                 gas stor13 wei
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
                                                 gas stor13 wei
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
                                                 gas stor13 wei
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
                                                 gas stor13 wei
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
                                                 gas stor13 wei
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
                                                 gas stor13 wei
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
                                                 gas stor13 wei
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
                                                 gas stor13 wei
                                            if not ext_call.success:
                                                revert with 0, 'Failed to send to shareholder'
}



}
