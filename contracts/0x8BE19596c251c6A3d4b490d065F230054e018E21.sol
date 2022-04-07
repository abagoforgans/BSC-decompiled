contract main {




// =====================  Runtime code  =====================


#
#  - withdrawAll(uint256 arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address tcoreAddress;
address devaddr;
uint256 stor152;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 pendingRewards;
uint256 contractStartBlock;
uint256 epochCalculationStartBlock;
uint256 cumulativeRewardsSinceStart;
uint256 rewardsInThisEpoch;
uint256 epoch;
mapping of uint256 epochRewards;
uint16 stor163;
uint256 stor164;
uint256 stor165;
uint128 stor166; offset 160
address superAdminAddress;
uint256 stor166;
array of address stor51848699043762354786445001410105671568266765734117956169291548475795829136640;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136641;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136642;
array of uint8 stor51848699043762354786445001410105671568266765734117956169291548475795829136643;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, bool(poolInfo[arg1].field_768)
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function superAdmin() payable {
    return superAdminAddress
}

function contractStartBlock() payable {
    return contractStartBlock
}

function epochRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return epochRewards[arg1]
}

function epochCalculationStartBlock() payable {
    return epochCalculationStartBlock
}

function rewardsInThisEpoch() payable {
    return rewardsInThisEpoch
}

function tcore() payable {
    return tcoreAddress
}

function owner() payable {
    return owner
}

function epoch() payable {
    return epoch
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function cumulativeRewardsSinceStart() payable {
    return cumulativeRewardsSinceStart
}

function devaddr() payable {
    return address(devaddr)
}

function pendingRewards() payable {
    return pendingRewards
}

function _fallback() payable {
    revert
}

function isContract(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(ext_code.size(arg1))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDevFeeReceiver(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(devaddr) = arg1
}

function setDevFee(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 > 10000:
        revert with 0, 'Dev fee clamped at 10%'
    stor163 = arg1
}

function setPoolWithdrawable(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1 < poolInfo.length
    poolInfo[arg1].field_768 = uint8(arg2)
}

function setAllowanceForPoolToken(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 < poolInfo.length
    stor[(5 * arg2) + ('name', 'poolInfo', 153) + 4][msg.sender][address(arg1)].field_0 = arg3
    emit Approval(arg2, arg3, msg.sender, arg1);
}

function averageFeesPerBlockEpoch() payable {
    if epochCalculationStartBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.number - epochCalculationStartBlock:
        revert with 0, 'SafeMath: division by zero'
    return (rewardsInThisEpoch / block.number - epochCalculationStartBlock)
}

function burnSuperAdmin() payable {
    if superAdminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x7353757065722061646d696e203a2063616c6c6572206973206e6f742073757065722061646d696e,
                    mem[204 len 24]
    emit SuperAdminTransfered(superAdminAddress, 0);
    superAdminAddress = 0
}

function startNewEpoch() payable {
    if epochCalculationStartBlock + 50000 >= block.number:
        revert with 0, 'New epoch not ready yet'
    epochRewards[stor161] = rewardsInThisEpoch
    if rewardsInThisEpoch + cumulativeRewardsSinceStart < cumulativeRewardsSinceStart:
        revert with 0, 'SafeMath: addition overflow'
    cumulativeRewardsSinceStart += rewardsInThisEpoch
    rewardsInThisEpoch = 0
    epochCalculationStartBlock = block.number
    epoch++
}

function averageFeesPerBlockSinceStart() payable {
    if contractStartBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if rewardsInThisEpoch + cumulativeRewardsSinceStart < cumulativeRewardsSinceStart:
        revert with 0, 'SafeMath: addition overflow'
    if not block.number - contractStartBlock:
        revert with 0, 'SafeMath: division by zero'
    return (rewardsInThisEpoch + cumulativeRewardsSinceStart / block.number - contractStartBlock)
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

function newSuperAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if superAdminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x7353757065722061646d696e203a2063616c6c6572206973206e6f742073757065722061646d696e,
                    mem[204 len 24]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit SuperAdminTransfered(superAdminAddress, arg1);
    superAdminAddress = arg1
}

function pendingTcore(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    if poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0 / 10^12:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((poolInfo[arg1].field_512 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function transferDevFee() payable {
    if stor164:
        require ext_code.size(tcoreAddress)
        staticcall tcoreAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tcoreAddress)
        if ext_call.return_data[0] >= stor164:
            call tcoreAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(devaddr), stor164
        else:
            call tcoreAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(devaddr), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(tcoreAddress)
        staticcall tcoreAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor165 = ext_call.return_data[0]
        stor164 = 0
}

function addPendingRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(tcoreAddress)
    staticcall tcoreAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor165 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - stor165:
        require ext_code.size(tcoreAddress)
        staticcall tcoreAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor165 = ext_call.return_data[0]
        if ext_call.return_data[0] - stor165 + pendingRewards < pendingRewards:
            revert with 0, 'SafeMath: addition overflow'
        pendingRewards = ext_call.return_data[0] - stor165 + pendingRewards
        if ext_call.return_data[0] - stor165 + rewardsInThisEpoch < rewardsInThisEpoch:
            revert with 0, 'SafeMath: addition overflow'
        rewardsInThisEpoch = ext_call.return_data[0] - stor165 + rewardsInThisEpoch
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    if not poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x645769746864726177696e672066726f6d207468697320706f6f6c2069732064697361626c65,
                    mem[202 len 26]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, userInfo[arg1][msg.sender].field_32
    call poolInfo[arg1].field_0 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args userInfo[arg1][msg.sender].field_0, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor163 = 1000
        tcoreAddress = arg1
        uint256(stor152) = msg.sender or Mask(96, 160, uint256(stor152))
        contractStartBlock = block.number
        uint256(stor166.field_0) = Mask(96, 0, stor166.field_160)
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stor163 = 1000
            tcoreAddress = arg1
            uint256(stor152) = msg.sender or Mask(96, 160, uint256(stor152))
            contractStartBlock = block.number
            uint256(stor166.field_0) = Mask(96, 0, stor166.field_160)
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stor163 = 1000
                tcoreAddress = arg1
                uint256(stor152) = msg.sender or Mask(96, 160, uint256(stor152))
                contractStartBlock = block.number
                uint256(stor166.field_0) = Mask(96, 0, stor166.field_160)
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stor163 = 1000
                    tcoreAddress = arg1
                    uint256(stor152) = msg.sender or Mask(96, 160, uint256(stor152))
                    contractStartBlock = block.number
                    uint256(stor166.field_0) = Mask(96, 0, stor166.field_160)
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stor163 = 1000
                        tcoreAddress = arg1
                        uint256(stor152) = msg.sender or Mask(96, 160, uint256(stor152))
                        contractStartBlock = block.number
                        uint256(stor166.field_0) = Mask(96, 0, stor166.field_160)
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        stor163 = 1000
                        tcoreAddress = arg1
                        uint256(stor152) = msg.sender or Mask(96, 160, uint256(stor152))
                        contractStartBlock = block.number
                        uint256(stor166.field_0) = Mask(96, 0, stor166.field_160)
                        uint8(stor0.field_8) = 0
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 153
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            continue 
        if not pendingRewards:
            _239 = mem[64]
            mem[64] = mem[64] + 64
            mem[_239] = 26
            mem[_239 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _239 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not 0 / totalAllocPoint:
                    _267 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_267] = 26
                    mem[_267 + 32] = 'SafeMath: division by zero'
                    _271 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_271] = 30
                    mem[_271 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > 0 / totalAllocPoint:
                        _275 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _275 + 68] = mem[idx + _271 + 32]
                            idx = idx + 32
                            continue 
                        mem[_275 + 68] = mem[_275 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _275 + -mem[64] + 100
                    if stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0 / totalAllocPoint:
                        _317 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_317] = 26
                        mem[_317 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _317 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_322] = 26
                        mem[_322 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _322 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if stor163 * 0 / totalAllocPoint / 0 / totalAllocPoint != stor163:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _269 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_269] = 26
                    mem[_269 + 32] = 'SafeMath: division by zero'
                    _273 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_273] = 30
                    mem[_273 + 32] = 'SafeMath: subtraction overflow'
                    if stor163 * 0 / totalAllocPoint / 10000 > 0 / totalAllocPoint:
                        _281 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _281 + 68] = mem[idx + _273 + 32]
                            idx = idx + 32
                            continue 
                        mem[_281 + 68] = mem[_281 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _281 + -mem[64] + 100
                    if (stor163 * 0 / totalAllocPoint / 10000) + stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    stor164 += stor163 * 0 / totalAllocPoint / 10000
                    if not (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000):
                        _321 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_321] = 26
                        mem[_321 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _321 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000) != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _325 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_325] = 26
                        mem[_325 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if ((10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _325 + 32]
                            idx = idx + 32
                            continue 
        else:
            if poolInfo[idx].field_256 * pendingRewards / pendingRewards != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _240 = mem[64]
            mem[64] = mem[64] + 64
            mem[_240] = 26
            mem[_240 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _240 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                    _268 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_268] = 26
                    mem[_268 + 32] = 'SafeMath: division by zero'
                    _272 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_272] = 30
                    mem[_272 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _278 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _278 + 68] = mem[idx + _272 + 32]
                            idx = idx + 32
                            continue 
                        mem[_278 + 68] = mem[_278 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _278 + -mem[64] + 100
                    if stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _320 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_320] = 26
                        mem[_320 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _320 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _324 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_324] = 26
                        mem[_324 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _324 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != stor163:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_270] = 26
                    mem[_270 + 32] = 'SafeMath: division by zero'
                    _274 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_274] = 30
                    mem[_274 + 32] = 'SafeMath: subtraction overflow'
                    if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _284 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _284 + 68] = mem[idx + _274 + 32]
                            idx = idx + 32
                            continue 
                        mem[_284 + 68] = mem[_284 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _284 + -mem[64] + 100
                    if (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) + stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    stor164 += stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000
                    if not (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000):
                        _323 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_323] = 26
                        mem[_323 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _323 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _329 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_329] = 26
                        mem[_329 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if ((10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _329 + 32]
                            idx = idx + 32
                            continue 
        revert with 0, 'SafeMath: division by zero'
    if 0 > pendingRewards:
        revert with 0, 'SafeMath: subtraction overflow'
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 153
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                idx = idx + 1
                continue 
            if not pendingRewards:
                _276 = mem[64]
                mem[64] = mem[64] + 64
                mem[_276] = 26
                mem[_276 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _276 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not 0 / totalAllocPoint:
                        _311 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_311] = 26
                        mem[_311 + 32] = 'SafeMath: division by zero'
                        _315 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_315] = 30
                        mem[_315 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > 0 / totalAllocPoint:
                            _319 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _319 + 68] = mem[idx + _315 + 32]
                                idx = idx + 32
                                continue 
                            mem[_319 + 68] = mem[_319 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _319 + -mem[64] + 100
                        if stor164 < stor164:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 0 / totalAllocPoint:
                            _361 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_361] = 26
                            mem[_361 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                                if 0 / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _361 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _366 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_366] = 26
                            mem[_366 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                if 0 / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _366 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        if stor163 * 0 / totalAllocPoint / 0 / totalAllocPoint != stor163:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _313 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_313] = 26
                        mem[_313 + 32] = 'SafeMath: division by zero'
                        _317 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_317] = 30
                        mem[_317 + 32] = 'SafeMath: subtraction overflow'
                        if stor163 * 0 / totalAllocPoint / 10000 > 0 / totalAllocPoint:
                            _325 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _325 + 68] = mem[idx + _317 + 32]
                                idx = idx + 32
                                continue 
                            mem[_325 + 68] = mem[_325 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _325 + -mem[64] + 100
                        if (stor163 * 0 / totalAllocPoint / 10000) + stor164 < stor164:
                            revert with 0, 'SafeMath: addition overflow'
                        stor164 += stor163 * 0 / totalAllocPoint / 10000
                        if not (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000):
                            _365 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_365] = 26
                            mem[_365 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                                if 0 / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _365 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000) != 10^12:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _369 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_369] = 26
                            mem[_369 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if ((10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]
                                if 0 / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _369 + 32]
                                idx = idx + 32
                                continue 
            else:
                if poolInfo[idx].field_256 * pendingRewards / pendingRewards != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _278 = mem[64]
                mem[64] = mem[64] + 64
                mem[_278] = 26
                mem[_278 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _278 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _312 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_312] = 26
                        mem[_312 + 32] = 'SafeMath: division by zero'
                        _316 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_316] = 30
                        mem[_316 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                            _322 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _322 + 68] = mem[idx + _316 + 32]
                                idx = idx + 32
                                continue 
                            mem[_322 + 68] = mem[_322 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _322 + -mem[64] + 100
                        if stor164 < stor164:
                            revert with 0, 'SafeMath: addition overflow'
                        if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                            _364 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_364] = 26
                            mem[_364 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                                if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _364 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _368 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_368] = 26
                            mem[_368 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]
                                if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _368 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != stor163:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _314 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_314] = 26
                        mem[_314 + 32] = 'SafeMath: division by zero'
                        _318 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_318] = 30
                        mem[_318 + 32] = 'SafeMath: subtraction overflow'
                        if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                            _328 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _328 + 68] = mem[idx + _318 + 32]
                                idx = idx + 32
                                continue 
                            mem[_328 + 68] = mem[_328 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _328 + -mem[64] + 100
                        if (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) + stor164 < stor164:
                            revert with 0, 'SafeMath: addition overflow'
                        stor164 += stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000
                        if not (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000):
                            _367 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_367] = 26
                            mem[_367 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                                if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _367 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) != 10^12:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _373 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_373] = 26
                            mem[_373 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if ((10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]
                                if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _373 + 32]
                                idx = idx + 32
                                continue 
            revert with 0, 'SafeMath: division by zero'
        if 0 > pendingRewards:
            revert with 0, 'SafeMath: subtraction overflow'
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = arg2 + totalAllocPoint - poolInfo[arg1].field_256
    require arg1 < poolInfo.length
    poolInfo[arg1].field_256 = arg2
}

function add(uint256 arg1, address arg2, bool arg3, bool arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 153
            if poolInfo[idx].field_0 == arg2:
                revert with 0, 'Error pool already added'
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 153
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                idx = idx + 1
                continue 
            if not pendingRewards:
                _283 = mem[64]
                mem[64] = mem[64] + 64
                mem[_283] = 26
                mem[_283 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _283 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not 0 / totalAllocPoint:
                        _311 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_311] = 26
                        mem[_311 + 32] = 'SafeMath: division by zero'
                        _315 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_315] = 30
                        mem[_315 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > 0 / totalAllocPoint:
                            _319 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _319 + 68] = mem[idx + _315 + 32]
                                idx = idx + 32
                                continue 
                            mem[_319 + 68] = mem[_319 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _319 + -mem[64] + 100
                        if stor164 < stor164:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 0 / totalAllocPoint:
                            _361 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_361] = 26
                            mem[_361 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                                if 0 / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _361 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _366 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_366] = 26
                            mem[_366 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                                if 0 / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _366 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        if stor163 * 0 / totalAllocPoint / 0 / totalAllocPoint != stor163:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _313 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_313] = 26
                        mem[_313 + 32] = 'SafeMath: division by zero'
                        _317 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_317] = 30
                        mem[_317 + 32] = 'SafeMath: subtraction overflow'
                        if stor163 * 0 / totalAllocPoint / 10000 > 0 / totalAllocPoint:
                            _325 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _325 + 68] = mem[idx + _317 + 32]
                                idx = idx + 32
                                continue 
                            mem[_325 + 68] = mem[_325 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _325 + -mem[64] + 100
                        if (stor163 * 0 / totalAllocPoint / 10000) + stor164 < stor164:
                            revert with 0, 'SafeMath: addition overflow'
                        stor164 += stor163 * 0 / totalAllocPoint / 10000
                        if not (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000):
                            _365 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_365] = 26
                            mem[_365 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                                if 0 / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _365 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000) != 10^12:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _369 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_369] = 26
                            mem[_369 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if ((10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]
                                if 0 / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _369 + 32]
                                idx = idx + 32
                                continue 
            else:
                if poolInfo[idx].field_256 * pendingRewards / pendingRewards != poolInfo[idx].field_256:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _284 = mem[64]
                mem[64] = mem[64] + 64
                mem[_284] = 26
                mem[_284 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _284 + 32]
                        idx = idx + 32
                        continue 
                else:
                    if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _312 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_312] = 26
                        mem[_312 + 32] = 'SafeMath: division by zero'
                        _316 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_316] = 30
                        mem[_316 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                            _322 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _322 + 68] = mem[idx + _316 + 32]
                                idx = idx + 32
                                continue 
                            mem[_322 + 68] = mem[_322 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _322 + -mem[64] + 100
                        if stor164 < stor164:
                            revert with 0, 'SafeMath: addition overflow'
                        if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                            _364 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_364] = 26
                            mem[_364 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                                if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _364 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != 10^12:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _368 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_368] = 26
                            mem[_368 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]
                                if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _368 + 32]
                                idx = idx + 32
                                continue 
                    else:
                        if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != stor163:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _314 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_314] = 26
                        mem[_314 + 32] = 'SafeMath: division by zero'
                        _318 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_318] = 30
                        mem[_318 + 32] = 'SafeMath: subtraction overflow'
                        if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                            _328 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _328 + 68] = mem[idx + _318 + 32]
                                idx = idx + 32
                                continue 
                            mem[_328 + 68] = mem[_328 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _328 + -mem[64] + 100
                        if (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) + stor164 < stor164:
                            revert with 0, 'SafeMath: addition overflow'
                        stor164 += stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000
                        if not (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000):
                            _367 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_367] = 26
                            mem[_367 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                                if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _367 + 32]
                                idx = idx + 32
                                continue 
                        else:
                            if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) != 10^12:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _373 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_373] = 26
                            mem[_373 + 32] = 'SafeMath: division by zero'
                            if ext_call.return_data[0]:
                                if ((10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_512 += (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]
                                if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _373 + 32]
                                idx = idx + 32
                                continue 
            revert with 0, 'SafeMath: division by zero'
        if 0 > pendingRewards:
            revert with 0, 'SafeMath: subtraction overflow'
        s = 0
        while s < poolInfo.length:
            mem[0] = 153
            if poolInfo[s].field_0 == arg2:
                revert with 0, 'Error pool already added'
            s = s + 1
            continue 
    if arg1 + totalAllocPoint < totalAllocPoint:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint += arg1
    poolInfo.length++
    stor72A1[stor153.length] = arg2
    stor72A1[stor153.length] = arg1
    stor72A1[stor153.length] = 0
    stor72A1[stor153.length] = uint8(arg4)
}

function withdrawFrom(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 < poolInfo.length
    if arg3 > stor[(5 * arg2) + ('name', 'poolInfo', 153) + 4][address(arg1)][msg.sender].field_0:
        revert with 0, 'withdraw: insufficient allowance'
    mem[64] = 160
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if arg3 > stor[(5 * arg2) + ('name', 'poolInfo', 153) + 4][address(arg1)][msg.sender].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    stor[(5 * arg2) + ('name', 'poolInfo', 153) + 4][address(arg1)][msg.sender].field_0 -= arg3
    require arg2 < poolInfo.length
    if not poolInfo[arg2].field_768:
        revert with 0, 32, 38, 0x645769746864726177696e672066726f6d207468697320706f6f6c2069732064697361626c65, mem[266 len 26]
    mem[0] = arg1
    mem[32] = sha3(arg2, 154)
    if arg3 > userInfo[arg2][address(arg1)].field_0:
        revert with 0, 'withdraw: not good'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 153
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            continue 
        if not pendingRewards:
            _1016 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1016] = 26
            mem[_1016 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1016 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not 0 / totalAllocPoint:
                    _1065 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1065] = 26
                    mem[_1065 + 32] = 'SafeMath: division by zero'
                    _1091 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1091] = 30
                    mem[_1091 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > 0 / totalAllocPoint:
                        _1105 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1105 + 68] = mem[idx + _1091 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1105 + 68] = mem[_1105 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1105 + -mem[64] + 100
                    if stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0 / totalAllocPoint:
                        _1223 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1223] = 26
                        mem[_1223 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1223 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1232 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1232] = 26
                        mem[_1232 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1232 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if stor163 * 0 / totalAllocPoint / 0 / totalAllocPoint != stor163:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1074 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1074] = 26
                    mem[_1074 + 32] = 'SafeMath: division by zero'
                    _1100 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1100] = 30
                    mem[_1100 + 32] = 'SafeMath: subtraction overflow'
                    if stor163 * 0 / totalAllocPoint / 10000 > 0 / totalAllocPoint:
                        _1117 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1117 + 68] = mem[idx + _1100 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1117 + 68] = mem[_1117 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1117 + -mem[64] + 100
                    if (stor163 * 0 / totalAllocPoint / 10000) + stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    stor164 += stor163 * 0 / totalAllocPoint / 10000
                    if not (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000):
                        _1231 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1231] = 26
                        mem[_1231 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1231 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000) != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1245 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1245] = 26
                        mem[_1245 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if ((10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1245 + 32]
                            idx = idx + 32
                            continue 
        else:
            if poolInfo[idx].field_256 * pendingRewards / pendingRewards != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1020 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1020] = 26
            mem[_1020 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1020 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                    _1073 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1073] = 26
                    mem[_1073 + 32] = 'SafeMath: division by zero'
                    _1099 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1099] = 30
                    mem[_1099 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1114 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1114 + 68] = mem[idx + _1099 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1114 + 68] = mem[_1114 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1114 + -mem[64] + 100
                    if stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1230 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1230] = 26
                        mem[_1230 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1230 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1244 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1244] = 26
                        mem[_1244 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1244 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != stor163:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1079 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1079] = 26
                    mem[_1079 + 32] = 'SafeMath: division by zero'
                    _1104 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1104] = 30
                    mem[_1104 + 32] = 'SafeMath: subtraction overflow'
                    if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1130 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1130 + 68] = mem[idx + _1104 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1130 + 68] = mem[_1130 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1130 + -mem[64] + 100
                    if (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) + stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    stor164 += stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000
                    if not (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000):
                        _1243 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1243] = 26
                        mem[_1243 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1243 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1260 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1260] = 26
                        mem[_1260 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if ((10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1260 + 32]
                            idx = idx + 32
                            continue 
        revert with 0, 'SafeMath: division by zero'
    _998 = mem[64]
    mem[64] = mem[64] + 64
    mem[_998] = 30
    mem[_998 + 32] = 'SafeMath: subtraction overflow'
    if 0 > pendingRewards:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[arg2][address(arg1)].field_0:
        if arg3:
            _1019 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1019] = 30
            mem[_1019 + 32] = 'SafeMath: subtraction overflow'
            if arg3 > userInfo[arg2][address(arg1)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[arg2][address(arg1)].field_0 -= arg3
            _1044 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg3
            _1045 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1045 + 32 len 4] = unknown_0xa9059cbb(?????)
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(poolInfo[arg2].field_0):
                revert with 0, 'SafeERC20: call to non-contract'
            _1076 = mem[_1045]
            mem[mem[64] len floor32(mem[_1045])] = mem[_1045 + 32 len floor32(mem[_1045])]
            mem[mem[64] + floor32(mem[_1045]) + -(mem[_1045] % 32) + 32 len mem[_1045] % 32] = mem[_1045 + floor32(mem[_1045]) + -(mem[_1045] % 32) + 64 len mem[_1045] % 32]
            call poolInfo[arg2].field_0 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1076 + _1044 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
            else:
                _2060 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2060] = return_data.size
                mem[_2060 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_2060 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
    else:
        if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1024 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1024] = 26
        mem[_1024 + 32] = 'SafeMath: division by zero'
        _1058 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1058] = 30
        mem[_1058 + 32] = 'SafeMath: subtraction overflow'
        if userInfo[arg2][address(arg1)].field_256 > poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12) - userInfo[arg2][address(arg1)].field_256:
            if arg3:
                _1092 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1092] = 30
                mem[_1092 + 32] = 'SafeMath: subtraction overflow'
                if arg3 > userInfo[arg2][address(arg1)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg2][address(arg1)].field_0 -= arg3
                _1142 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = arg3
                _1143 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1143 + 32 len 4] = unknown_0xa9059cbb(?????)
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(poolInfo[arg2].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                _1214 = mem[_1143]
                mem[mem[64] len floor32(mem[_1143])] = mem[_1143 + 32 len floor32(mem[_1143])]
                mem[mem[64] + floor32(mem[_1143]) + -(mem[_1143] % 32) + 32 len mem[_1143] % 32] = mem[_1143 + floor32(mem[_1143]) + -(mem[_1143] % 32) + 64 len mem[_1143] % 32]
                call poolInfo[arg2].field_0 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1214 + _1142 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                else:
                    _2034 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2034] = return_data.size
                    mem[_2034 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_2034 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
        else:
            if not (poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12) - userInfo[arg2][address(arg1)].field_256:
                if arg3:
                    _1136 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1136] = 30
                    mem[_1136 + 32] = 'SafeMath: subtraction overflow'
                    if arg3 > userInfo[arg2][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg2][address(arg1)].field_0 -= arg3
                    _1193 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg3
                    _1194 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1194 + 32 len 4] = unknown_0xa9059cbb(?????)
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(poolInfo[arg2].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    _1274 = mem[_1194]
                    mem[mem[64] len floor32(mem[_1194])] = mem[_1194 + 32 len floor32(mem[_1194])]
                    mem[mem[64] + floor32(mem[_1194]) + -(mem[_1194] % 32) + 32 len mem[_1194] % 32] = mem[_1194 + floor32(mem[_1194]) + -(mem[_1194] % 32) + 64 len mem[_1194] % 32]
                    call poolInfo[arg2].field_0 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1274 + _1193 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    else:
                        _2055 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2055] = return_data.size
                        mem[_2055 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_2055 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
            else:
                require ext_code.size(tcoreAddress)
                staticcall tcoreAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tcoreAddress)
                if (poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12) - userInfo[arg2][address(arg1)].field_256 <= ext_call.return_data[0]:
                    call tcoreAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12) - userInfo[arg2][address(arg1)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tcoreAddress)
                    staticcall tcoreAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor165 = ext_call.return_data[0]
                    if not stor164:
                        if arg3:
                            _1352 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1352] = 30
                            mem[_1352 + 32] = 'SafeMath: subtraction overflow'
                            if arg3 > userInfo[arg2][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg2][address(arg1)].field_0 -= arg3
                            _1456 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg3
                            _1457 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1457 + 32 len 4] = unknown_0xa9059cbb(?????)
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg2].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1524 = mem[_1457]
                            mem[mem[64] len floor32(mem[_1457])] = mem[_1457 + 32 len floor32(mem[_1457])]
                            mem[mem[64] + floor32(mem[_1457]) + -(mem[_1457] % 32) + 32 len mem[_1457] % 32] = mem[_1457 + floor32(mem[_1457]) + -(mem[_1457] % 32) + 64 len mem[_1457] % 32]
                            call poolInfo[arg2].field_0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1524 + _1456 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _2043 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2043] = return_data.size
                                mem[_2043 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_2043 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                    else:
                        require ext_code.size(tcoreAddress)
                        staticcall tcoreAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tcoreAddress)
                        if ext_call.return_data[0] >= stor164:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), stor164
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if arg3:
                                _1521 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1521] = 30
                                mem[_1521 + 32] = 'SafeMath: subtraction overflow'
                                if arg3 > userInfo[arg2][address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg2][address(arg1)].field_0 -= arg3
                                _1598 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg3
                                _1599 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1599 + 32 len 4] = unknown_0xa9059cbb(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1690 = mem[_1599]
                                mem[mem[64] len floor32(mem[_1599])] = mem[_1599 + 32 len floor32(mem[_1599])]
                                mem[mem[64] + floor32(mem[_1599]) + -(mem[_1599] % 32) + 32 len mem[_1599] % 32] = mem[_1599 + floor32(mem[_1599]) + -(mem[_1599] % 32) + 64 len mem[_1599] % 32]
                                call poolInfo[arg2].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1690 + _1598 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _2037 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2037] = return_data.size
                                    mem[_2037 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2037 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                        else:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if arg3:
                                _1522 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1522] = 30
                                mem[_1522 + 32] = 'SafeMath: subtraction overflow'
                                if arg3 > userInfo[arg2][address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg2][address(arg1)].field_0 -= arg3
                                _1604 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg3
                                _1605 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1605 + 32 len 4] = unknown_0xa9059cbb(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1694 = mem[_1605]
                                mem[mem[64] len floor32(mem[_1605])] = mem[_1605 + 32 len floor32(mem[_1605])]
                                mem[mem[64] + floor32(mem[_1605]) + -(mem[_1605] % 32) + 32 len mem[_1605] % 32] = mem[_1605 + floor32(mem[_1605]) + -(mem[_1605] % 32) + 64 len mem[_1605] % 32]
                                call poolInfo[arg2].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1694 + _1604 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _2040 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2040] = return_data.size
                                    mem[_2040 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2040 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                else:
                    call tcoreAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tcoreAddress)
                    staticcall tcoreAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor165 = ext_call.return_data[0]
                    if not stor164:
                        if arg3:
                            _1355 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1355] = 30
                            mem[_1355 + 32] = 'SafeMath: subtraction overflow'
                            if arg3 > userInfo[arg2][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg2][address(arg1)].field_0 -= arg3
                            _1462 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg3
                            _1463 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1463 + 32 len 4] = unknown_0xa9059cbb(?????)
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg2].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1530 = mem[_1463]
                            mem[mem[64] len floor32(mem[_1463])] = mem[_1463 + 32 len floor32(mem[_1463])]
                            mem[mem[64] + floor32(mem[_1463]) + -(mem[_1463] % 32) + 32 len mem[_1463] % 32] = mem[_1463 + floor32(mem[_1463]) + -(mem[_1463] % 32) + 64 len mem[_1463] % 32]
                            call poolInfo[arg2].field_0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1530 + _1462 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _2052 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2052] = return_data.size
                                mem[_2052 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_2052 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                    else:
                        require ext_code.size(tcoreAddress)
                        staticcall tcoreAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tcoreAddress)
                        if ext_call.return_data[0] >= stor164:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), stor164
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if arg3:
                                _1527 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1527] = 30
                                mem[_1527 + 32] = 'SafeMath: subtraction overflow'
                                if arg3 > userInfo[arg2][address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg2][address(arg1)].field_0 -= arg3
                                _1616 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg3
                                _1617 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1617 + 32 len 4] = unknown_0xa9059cbb(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1698 = mem[_1617]
                                mem[mem[64] len floor32(mem[_1617])] = mem[_1617 + 32 len floor32(mem[_1617])]
                                mem[mem[64] + floor32(mem[_1617]) + -(mem[_1617] % 32) + 32 len mem[_1617] % 32] = mem[_1617 + floor32(mem[_1617]) + -(mem[_1617] % 32) + 64 len mem[_1617] % 32]
                                call poolInfo[arg2].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1698 + _1616 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _2046 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2046] = return_data.size
                                    mem[_2046 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2046 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                        else:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if arg3:
                                _1528 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1528] = 30
                                mem[_1528 + 32] = 'SafeMath: subtraction overflow'
                                if arg3 > userInfo[arg2][address(arg1)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg2][address(arg1)].field_0 -= arg3
                                _1622 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg3
                                _1623 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1623 + 32 len 4] = unknown_0xa9059cbb(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1702 = mem[_1623]
                                mem[mem[64] len floor32(mem[_1623])] = mem[_1623 + 32 len floor32(mem[_1623])]
                                mem[mem[64] + floor32(mem[_1623]) + -(mem[_1623] % 32) + 32 len mem[_1623] % 32] = mem[_1623 + floor32(mem[_1623]) + -(mem[_1623] % 32) + 64 len mem[_1623] % 32]
                                call poolInfo[arg2].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1702 + _1622 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _2049 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2049] = return_data.size
                                    mem[_2049 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2049 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
    if not userInfo[arg2][address(arg1)].field_0:
        userInfo[arg2][address(arg1)].field_256 = 0
    else:
        if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
    emit Withdraw(arg3, msg.sender, arg2);
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if not poolInfo[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x645769746864726177696e672066726f6d207468697320706f6f6c2069732064697361626c65,
                    mem[202 len 26]
    mem[0] = msg.sender
    mem[32] = sha3(arg1, 154)
    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
        revert with 0, 'withdraw: not good'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 153
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            continue 
        if not pendingRewards:
            _995 = mem[64]
            mem[64] = mem[64] + 64
            mem[_995] = 26
            mem[_995 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _995 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not 0 / totalAllocPoint:
                    _1044 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1044] = 26
                    mem[_1044 + 32] = 'SafeMath: division by zero'
                    _1070 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1070] = 30
                    mem[_1070 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > 0 / totalAllocPoint:
                        _1084 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1084 + 68] = mem[idx + _1070 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1084 + 68] = mem[_1084 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1084 + -mem[64] + 100
                    if stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0 / totalAllocPoint:
                        _1202 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1202] = 26
                        mem[_1202 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1202 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1211 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1211] = 26
                        mem[_1211 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1211 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if stor163 * 0 / totalAllocPoint / 0 / totalAllocPoint != stor163:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1053 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1053] = 26
                    mem[_1053 + 32] = 'SafeMath: division by zero'
                    _1079 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1079] = 30
                    mem[_1079 + 32] = 'SafeMath: subtraction overflow'
                    if stor163 * 0 / totalAllocPoint / 10000 > 0 / totalAllocPoint:
                        _1096 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1096 + 68] = mem[idx + _1079 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1096 + 68] = mem[_1096 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1096 + -mem[64] + 100
                    if (stor163 * 0 / totalAllocPoint / 10000) + stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    stor164 += stor163 * 0 / totalAllocPoint / 10000
                    if not (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000):
                        _1210 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1210] = 26
                        mem[_1210 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1210 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000) != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1224 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1224] = 26
                        mem[_1224 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if ((10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1224 + 32]
                            idx = idx + 32
                            continue 
        else:
            if poolInfo[idx].field_256 * pendingRewards / pendingRewards != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _999 = mem[64]
            mem[64] = mem[64] + 64
            mem[_999] = 26
            mem[_999 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _999 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                    _1052 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1052] = 26
                    mem[_1052 + 32] = 'SafeMath: division by zero'
                    _1078 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1078] = 30
                    mem[_1078 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1093 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1093 + 68] = mem[idx + _1078 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1093 + 68] = mem[_1093 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1093 + -mem[64] + 100
                    if stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1209 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1209] = 26
                        mem[_1209 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1209 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1223 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1223] = 26
                        mem[_1223 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1223 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != stor163:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1058 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1058] = 26
                    mem[_1058 + 32] = 'SafeMath: division by zero'
                    _1083 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1083] = 30
                    mem[_1083 + 32] = 'SafeMath: subtraction overflow'
                    if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1109 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1109 + 68] = mem[idx + _1083 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1109 + 68] = mem[_1109 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1109 + -mem[64] + 100
                    if (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) + stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    stor164 += stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000
                    if not (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000):
                        _1222 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1222] = 26
                        mem[_1222 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1222 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1239 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1239] = 26
                        mem[_1239 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if ((10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1239 + 32]
                            idx = idx + 32
                            continue 
        revert with 0, 'SafeMath: division by zero'
    _980 = mem[64]
    mem[64] = mem[64] + 64
    mem[_980] = 30
    mem[_980 + 32] = 'SafeMath: subtraction overflow'
    if 0 > pendingRewards:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[arg1][address(msg.sender)].field_0:
        if not arg2:
            if not userInfo[arg1][address(msg.sender)].field_0:
                userInfo[arg1][address(msg.sender)].field_256 = 0
            else:
                if poolInfo[arg1].field_512 * userInfo[arg1][address(msg.sender)].field_0 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_512:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                userInfo[arg1][address(msg.sender)].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][address(msg.sender)].field_0 / 10^12
        else:
            _998 = mem[64]
            mem[64] = mem[64] + 64
            mem[_998] = 30
            mem[_998 + 32] = 'SafeMath: subtraction overflow'
            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            userInfo[arg1][address(msg.sender)].field_0 -= arg2
            _1023 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = arg2
            _1024 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1024 + 32 len 4] = unknown_0xa9059cbb(?????)
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'SafeERC20: call to non-contract'
            _1055 = mem[_1024]
            mem[_1023 + 100 len floor32(mem[_1024])] = mem[_1024 + 32 len floor32(mem[_1024])]
            mem[_1023 + floor32(mem[_1024]) + -(mem[_1024] % 32) + 132 len mem[_1024] % 32] = mem[_1024 + -(mem[_1024] % 32) + floor32(mem[_1024]) + 64 len mem[_1024] % 32]
            call poolInfo[arg1].field_0.mem[_1023 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_1023 + 104 len _1055 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_1023 + 210 len 22]
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    if poolInfo[arg1].field_512 * userInfo[arg1][address(msg.sender)].field_0 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_512:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1023 + 201 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][address(msg.sender)].field_0 / 10^12
            else:
                mem[_1023 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_1023 + 132]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_1023 + ceil32(return_data.size) + 211 len 22]
                if not userInfo[arg1][address(msg.sender)].field_0:
                    userInfo[arg1][address(msg.sender)].field_256 = 0
                else:
                    if poolInfo[arg1].field_512 * userInfo[arg1][address(msg.sender)].field_0 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_512:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[_1023 + ceil32(return_data.size) + 202 len 31]
                    userInfo[arg1][address(msg.sender)].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][address(msg.sender)].field_0 / 10^12
    else:
        if poolInfo[arg1].field_512 * userInfo[arg1][address(msg.sender)].field_0 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_512:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1003 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1003] = 26
        mem[_1003 + 32] = 'SafeMath: division by zero'
        _1037 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1037] = 30
        mem[_1037 + 32] = 'SafeMath: subtraction overflow'
        if userInfo[arg1][address(msg.sender)].field_256 > poolInfo[arg1].field_512 * userInfo[arg1][address(msg.sender)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (poolInfo[arg1].field_512 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256:
            if arg2:
                _1071 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1071] = 30
                mem[_1071 + 32] = 'SafeMath: subtraction overflow'
                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                _1121 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = arg2
                _1122 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1122 + 32 len 4] = unknown_0xa9059cbb(?????)
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                _1193 = mem[_1122]
                mem[mem[64] len floor32(mem[_1122])] = mem[_1122 + 32 len floor32(mem[_1122])]
                mem[mem[64] + floor32(mem[_1122]) + -(mem[_1122] % 32) + 32 len mem[_1122] % 32] = mem[_1122 + floor32(mem[_1122]) + -(mem[_1122] % 32) + 64 len mem[_1122] % 32]
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1193 + _1121 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                else:
                    _2013 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2013] = return_data.size
                    mem[_2013 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_2013 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
        else:
            if not (poolInfo[arg1].field_512 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256:
                if arg2:
                    _1115 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1115] = 30
                    mem[_1115 + 32] = 'SafeMath: subtraction overflow'
                    if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    userInfo[arg1][address(msg.sender)].field_0 -= arg2
                    _1172 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = arg2
                    _1173 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_1173 + 32 len 4] = unknown_0xa9059cbb(?????)
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    _1253 = mem[_1173]
                    mem[mem[64] len floor32(mem[_1173])] = mem[_1173 + 32 len floor32(mem[_1173])]
                    mem[mem[64] + floor32(mem[_1173]) + -(mem[_1173] % 32) + 32 len mem[_1173] % 32] = mem[_1173 + floor32(mem[_1173]) + -(mem[_1173] % 32) + 64 len mem[_1173] % 32]
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1253 + _1172 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    else:
                        _2034 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2034] = return_data.size
                        mem[_2034 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_2034 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
            else:
                require ext_code.size(tcoreAddress)
                staticcall tcoreAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tcoreAddress)
                if (poolInfo[arg1].field_512 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256 <= ext_call.return_data[0]:
                    call tcoreAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_512 * userInfo[arg1][address(msg.sender)].field_0 / 10^12) - userInfo[arg1][address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tcoreAddress)
                    staticcall tcoreAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor165 = ext_call.return_data[0]
                    if not stor164:
                        if arg2:
                            _1331 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1331] = 30
                            mem[_1331 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            _1435 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            _1436 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1436 + 32 len 4] = unknown_0xa9059cbb(?????)
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1503 = mem[_1436]
                            mem[mem[64] len floor32(mem[_1436])] = mem[_1436 + 32 len floor32(mem[_1436])]
                            mem[mem[64] + floor32(mem[_1436]) + -(mem[_1436] % 32) + 32 len mem[_1436] % 32] = mem[_1436 + floor32(mem[_1436]) + -(mem[_1436] % 32) + 64 len mem[_1436] % 32]
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1503 + _1435 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _2022 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2022] = return_data.size
                                mem[_2022 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_2022 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                    else:
                        require ext_code.size(tcoreAddress)
                        staticcall tcoreAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tcoreAddress)
                        if ext_call.return_data[0] >= stor164:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), stor164
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if arg2:
                                _1500 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1500] = 30
                                mem[_1500 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                _1577 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                _1578 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1578 + 32 len 4] = unknown_0xa9059cbb(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1669 = mem[_1578]
                                mem[mem[64] len floor32(mem[_1578])] = mem[_1578 + 32 len floor32(mem[_1578])]
                                mem[mem[64] + floor32(mem[_1578]) + -(mem[_1578] % 32) + 32 len mem[_1578] % 32] = mem[_1578 + floor32(mem[_1578]) + -(mem[_1578] % 32) + 64 len mem[_1578] % 32]
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1669 + _1577 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _2016 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2016] = return_data.size
                                    mem[_2016 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2016 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                        else:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if arg2:
                                _1501 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1501] = 30
                                mem[_1501 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                _1583 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                _1584 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1584 + 32 len 4] = unknown_0xa9059cbb(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1673 = mem[_1584]
                                mem[mem[64] len floor32(mem[_1584])] = mem[_1584 + 32 len floor32(mem[_1584])]
                                mem[mem[64] + floor32(mem[_1584]) + -(mem[_1584] % 32) + 32 len mem[_1584] % 32] = mem[_1584 + floor32(mem[_1584]) + -(mem[_1584] % 32) + 64 len mem[_1584] % 32]
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1673 + _1583 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _2019 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2019] = return_data.size
                                    mem[_2019 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2019 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                else:
                    call tcoreAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tcoreAddress)
                    staticcall tcoreAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor165 = ext_call.return_data[0]
                    if not stor164:
                        if arg2:
                            _1334 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1334] = 30
                            mem[_1334 + 32] = 'SafeMath: subtraction overflow'
                            if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][address(msg.sender)].field_0 -= arg2
                            _1441 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg2
                            _1442 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_1442 + 32 len 4] = unknown_0xa9059cbb(?????)
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1509 = mem[_1442]
                            mem[mem[64] len floor32(mem[_1442])] = mem[_1442 + 32 len floor32(mem[_1442])]
                            mem[mem[64] + floor32(mem[_1442]) + -(mem[_1442] % 32) + 32 len mem[_1442] % 32] = mem[_1442 + floor32(mem[_1442]) + -(mem[_1442] % 32) + 64 len mem[_1442] % 32]
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1509 + _1441 + -mem[64] + 96]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _2031 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2031] = return_data.size
                                mem[_2031 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_2031 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                    else:
                        require ext_code.size(tcoreAddress)
                        staticcall tcoreAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tcoreAddress)
                        if ext_call.return_data[0] >= stor164:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), stor164
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if arg2:
                                _1506 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1506] = 30
                                mem[_1506 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                _1595 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                _1596 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1596 + 32 len 4] = unknown_0xa9059cbb(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1677 = mem[_1596]
                                mem[mem[64] len floor32(mem[_1596])] = mem[_1596 + 32 len floor32(mem[_1596])]
                                mem[mem[64] + floor32(mem[_1596]) + -(mem[_1596] % 32) + 32 len mem[_1596] % 32] = mem[_1596 + floor32(mem[_1596]) + -(mem[_1596] % 32) + 64 len mem[_1596] % 32]
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1677 + _1595 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _2025 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2025] = return_data.size
                                    mem[_2025 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2025 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                        else:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if arg2:
                                _1507 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1507] = 30
                                mem[_1507 + 32] = 'SafeMath: subtraction overflow'
                                if arg2 > userInfo[arg1][address(msg.sender)].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][address(msg.sender)].field_0 -= arg2
                                _1601 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg2
                                _1602 = mem[64]
                                mem[mem[64]] = 68
                                mem[64] = mem[64] + 100
                                mem[_1602 + 32 len 4] = unknown_0xa9059cbb(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1681 = mem[_1602]
                                mem[mem[64] len floor32(mem[_1602])] = mem[_1602 + 32 len floor32(mem[_1602])]
                                mem[mem[64] + floor32(mem[_1602]) + -(mem[_1602] % 32) + 32 len mem[_1602] % 32] = mem[_1602 + floor32(mem[_1602]) + -(mem[_1602] % 32) + 64 len mem[_1602] % 32]
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1681 + _1601 + -mem[64] + 96]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
                                else:
                                    _2028 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2028] = return_data.size
                                    mem[_2028 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2028 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[mem[64] + 110 len 22]
        if not userInfo[arg1][address(msg.sender)].field_0:
            userInfo[arg1][address(msg.sender)].field_256 = 0
        else:
            if poolInfo[arg1].field_512 * userInfo[arg1][address(msg.sender)].field_0 / userInfo[arg1][address(msg.sender)].field_0 != poolInfo[arg1].field_512:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            userInfo[arg1][address(msg.sender)].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][address(msg.sender)].field_0 / 10^12
    emit Withdraw(arg2, msg.sender, arg1);
}

function deposit(uint256 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    mem[0] = msg.sender
    mem[32] = sha3(arg1, 154)
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 153
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            continue 
        if not pendingRewards:
            _991 = mem[64]
            mem[64] = mem[64] + 64
            mem[_991] = 26
            mem[_991 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _991 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not 0 / totalAllocPoint:
                    _1043 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1043] = 26
                    mem[_1043 + 32] = 'SafeMath: division by zero'
                    _1072 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1072] = 30
                    mem[_1072 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > 0 / totalAllocPoint:
                        _1084 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1084 + 68] = mem[idx + _1072 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1084 + 68] = mem[_1084 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1084 + -mem[64] + 100
                    if stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0 / totalAllocPoint:
                        _1199 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1199] = 26
                        mem[_1199 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1199 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1218 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1218] = 26
                        mem[_1218 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1218 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if stor163 * 0 / totalAllocPoint / 0 / totalAllocPoint != stor163:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1050 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1050] = 26
                    mem[_1050 + 32] = 'SafeMath: division by zero'
                    _1081 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1081] = 30
                    mem[_1081 + 32] = 'SafeMath: subtraction overflow'
                    if stor163 * 0 / totalAllocPoint / 10000 > 0 / totalAllocPoint:
                        _1095 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1095 + 68] = mem[idx + _1081 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1095 + 68] = mem[_1095 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1095 + -mem[64] + 100
                    if (stor163 * 0 / totalAllocPoint / 10000) + stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    stor164 += stor163 * 0 / totalAllocPoint / 10000
                    if not (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000):
                        _1217 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1217] = 26
                        mem[_1217 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1217 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000) != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1230 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1230] = 26
                        mem[_1230 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if ((10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1230 + 32]
                            idx = idx + 32
                            continue 
        else:
            if poolInfo[idx].field_256 * pendingRewards / pendingRewards != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _997 = mem[64]
            mem[64] = mem[64] + 64
            mem[_997] = 26
            mem[_997 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _997 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                    _1049 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1049] = 26
                    mem[_1049 + 32] = 'SafeMath: division by zero'
                    _1080 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1080] = 30
                    mem[_1080 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1092 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1092 + 68] = mem[idx + _1080 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1092 + 68] = mem[_1092 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1092 + -mem[64] + 100
                    if stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1216 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1216] = 26
                        mem[_1216 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1216 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1229 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1229] = 26
                        mem[_1229 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1229 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != stor163:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1057 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1057] = 26
                    mem[_1057 + 32] = 'SafeMath: division by zero'
                    _1083 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1083] = 30
                    mem[_1083 + 32] = 'SafeMath: subtraction overflow'
                    if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1104 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1104 + 68] = mem[idx + _1083 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1104 + 68] = mem[_1104 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1104 + -mem[64] + 100
                    if (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) + stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    stor164 += stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000
                    if not (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000):
                        _1228 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1228] = 26
                        mem[_1228 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1228 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1246 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1246] = 26
                        mem[_1246 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if ((10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1246 + 32]
                            idx = idx + 32
                            continue 
        revert with 0, 'SafeMath: division by zero'
    _976 = mem[64]
    mem[64] = mem[64] + 64
    mem[_976] = 30
    mem[_976 + 32] = 'SafeMath: subtraction overflow'
    if 0 > pendingRewards:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[arg1][msg.sender].field_0:
        if not arg2:
            if not userInfo[arg1][msg.sender].field_0:
                userInfo[arg1][msg.sender].field_256 = 0
            else:
                if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            _994 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = arg2
            _995 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_995 + 32 len 4] = unknown_0x23b872dd(?????)
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'SafeERC20: call to non-contract'
            _1024 = mem[_995]
            mem[mem[64] len floor32(mem[_995])] = mem[_995 + 32 len floor32(mem[_995])]
            mem[mem[64] + floor32(mem[_995]) + -(mem[_995] % 32) + 32 len mem[_995] % 32] = mem[_995 + floor32(mem[_995]) + -(mem[_995] % 32) + 64 len mem[_995] % 32]
            call poolInfo[arg1].field_0 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1024 + _994 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
            else:
                _2010 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2010 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_2010 + 32]:
                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][msg.sender].field_0 += arg2
            if not userInfo[arg1][msg.sender].field_0:
                userInfo[arg1][msg.sender].field_256 = 0
            else:
                if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg2)
                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
    else:
        if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1001 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1001] = 26
        mem[_1001 + 32] = 'SafeMath: division by zero'
        _1031 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1031] = 30
        mem[_1031 + 32] = 'SafeMath: subtraction overflow'
        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
            if not arg2:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                _1073 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = arg2
                _1074 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_1074 + 32 len 4] = unknown_0x23b872dd(?????)
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                _1130 = mem[_1074]
                mem[mem[64] len floor32(mem[_1074])] = mem[_1074 + 32 len floor32(mem[_1074])]
                mem[mem[64] + floor32(mem[_1074]) + -(mem[_1074] % 32) + 32 len mem[_1074] % 32] = mem[_1074 + floor32(mem[_1074]) + -(mem[_1074] % 32) + 64 len mem[_1074] % 32]
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1130 + _1073 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                else:
                    _2000 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2000 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_2000 + 32]:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg2)
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if not (poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                if not arg2:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    _1109 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = arg2
                    _1110 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_1110 + 32 len 4] = unknown_0x23b872dd(?????)
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    _1182 = mem[_1110]
                    mem[mem[64] len floor32(mem[_1110])] = mem[_1110 + 32 len floor32(mem[_1110])]
                    mem[mem[64] + floor32(mem[_1110]) + -(mem[_1110] % 32) + 32 len mem[_1110] % 32] = mem[_1110 + floor32(mem[_1110]) + -(mem[_1110] % 32) + 64 len mem[_1110] % 32]
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1182 + _1109 + -mem[64] + 128]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                    else:
                        _2007 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2007 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_2007 + 32]:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                    if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += arg2
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg2)
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                require ext_code.size(tcoreAddress)
                staticcall tcoreAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tcoreAddress)
                if (poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call tcoreAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tcoreAddress)
                    staticcall tcoreAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor165 = ext_call.return_data[0]
                    if not stor164:
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            _1334 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg2
                            _1335 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1335 + 32 len 4] = unknown_0x23b872dd(?????)
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1451 = mem[_1335]
                            mem[mem[64] len floor32(mem[_1335])] = mem[_1335 + 32 len floor32(mem[_1335])]
                            mem[mem[64] + floor32(mem[_1335]) + -(mem[_1335] % 32) + 32 len mem[_1335] % 32] = mem[_1335 + floor32(mem[_1335]) + -(mem[_1335] % 32) + 64 len mem[_1335] % 32]
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1451 + _1334 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                            else:
                                _2003 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2003 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_2003 + 32]:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg2)
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        require ext_code.size(tcoreAddress)
                        staticcall tcoreAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tcoreAddress)
                        if ext_call.return_data[0] >= stor164:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), stor164
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if not arg2:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                _1508 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = arg2
                                _1509 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1509 + 32 len 4] = unknown_0x23b872dd(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1605 = mem[_1509]
                                mem[mem[64] len floor32(mem[_1509])] = mem[_1509 + 32 len floor32(mem[_1509])]
                                mem[mem[64] + floor32(mem[_1509]) + -(mem[_1509] % 32) + 32 len mem[_1509] % 32] = mem[_1509 + floor32(mem[_1509]) + -(mem[_1509] % 32) + 64 len mem[_1509] % 32]
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1605 + _1508 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                                else:
                                    _2001 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2001 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2001 + 32]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += arg2
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg2)
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if not arg2:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                _1511 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = arg2
                                _1512 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1512 + 32 len 4] = unknown_0x23b872dd(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1609 = mem[_1512]
                                mem[mem[64] len floor32(mem[_1512])] = mem[_1512 + 32 len floor32(mem[_1512])]
                                mem[mem[64] + floor32(mem[_1512]) + -(mem[_1512] % 32) + 32 len mem[_1512] % 32] = mem[_1512 + floor32(mem[_1512]) + -(mem[_1512] % 32) + 64 len mem[_1512] % 32]
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1609 + _1511 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                                else:
                                    _2002 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2002 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2002 + 32]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += arg2
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg2)
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    call tcoreAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tcoreAddress)
                    staticcall tcoreAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor165 = ext_call.return_data[0]
                    if not stor164:
                        if not arg2:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            _1339 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg2
                            _1340 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1340 + 32 len 4] = unknown_0x23b872dd(?????)
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1455 = mem[_1340]
                            mem[mem[64] len floor32(mem[_1340])] = mem[_1340 + 32 len floor32(mem[_1340])]
                            mem[mem[64] + floor32(mem[_1340]) + -(mem[_1340] % 32) + 32 len mem[_1340] % 32] = mem[_1340 + floor32(mem[_1340]) + -(mem[_1340] % 32) + 64 len mem[_1340] % 32]
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1455 + _1339 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                            else:
                                _2006 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2006 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_2006 + 32]:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += arg2
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg2)
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        require ext_code.size(tcoreAddress)
                        staticcall tcoreAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tcoreAddress)
                        if ext_call.return_data[0] >= stor164:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), stor164
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if not arg2:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                _1520 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = arg2
                                _1521 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1521 + 32 len 4] = unknown_0x23b872dd(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1613 = mem[_1521]
                                mem[mem[64] len floor32(mem[_1521])] = mem[_1521 + 32 len floor32(mem[_1521])]
                                mem[mem[64] + floor32(mem[_1521]) + -(mem[_1521] % 32) + 32 len mem[_1521] % 32] = mem[_1521 + floor32(mem[_1521]) + -(mem[_1521] % 32) + 64 len mem[_1521] % 32]
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1613 + _1520 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                                else:
                                    _2004 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2004 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2004 + 32]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += arg2
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg2)
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if not arg2:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                _1523 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = arg2
                                _1524 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1524 + 32 len 4] = unknown_0x23b872dd(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1617 = mem[_1524]
                                mem[mem[64] len floor32(mem[_1524])] = mem[_1524 + 32 len floor32(mem[_1524])]
                                mem[mem[64] + floor32(mem[_1524]) + -(mem[_1524] % 32) + 32 len mem[_1524] % 32] = mem[_1524 + floor32(mem[_1524]) + -(mem[_1524] % 32) + 64 len mem[_1524] % 32]
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1617 + _1523 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                                else:
                                    _2005 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2005 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2005 + 32]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg2)
                                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += arg2
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg2)
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
    emit Deposit(arg2, msg.sender, arg1);
}

function depositFor(address arg1, uint256 arg2, uint256 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 < poolInfo.length
    mem[0] = arg1
    mem[32] = sha3(arg2, 154)
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 153
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            continue 
        if not pendingRewards:
            _991 = mem[64]
            mem[64] = mem[64] + 64
            mem[_991] = 26
            mem[_991 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _991 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not 0 / totalAllocPoint:
                    _1043 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1043] = 26
                    mem[_1043 + 32] = 'SafeMath: division by zero'
                    _1072 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1072] = 30
                    mem[_1072 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > 0 / totalAllocPoint:
                        _1084 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1084 + 68] = mem[idx + _1072 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1084 + 68] = mem[_1084 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1084 + -mem[64] + 100
                    if stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0 / totalAllocPoint:
                        _1199 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1199] = 26
                        mem[_1199 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1199 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1218 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1218] = 26
                        mem[_1218 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1218 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if stor163 * 0 / totalAllocPoint / 0 / totalAllocPoint != stor163:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1050 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1050] = 26
                    mem[_1050 + 32] = 'SafeMath: division by zero'
                    _1081 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1081] = 30
                    mem[_1081 + 32] = 'SafeMath: subtraction overflow'
                    if stor163 * 0 / totalAllocPoint / 10000 > 0 / totalAllocPoint:
                        _1095 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1095 + 68] = mem[idx + _1081 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1095 + 68] = mem[_1095 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1095 + -mem[64] + 100
                    if (stor163 * 0 / totalAllocPoint / 10000) + stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    stor164 += stor163 * 0 / totalAllocPoint / 10000
                    if not (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000):
                        _1217 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1217] = 26
                        mem[_1217 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1217 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000) != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1230 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1230] = 26
                        mem[_1230 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if ((10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1230 + 32]
                            idx = idx + 32
                            continue 
        else:
            if poolInfo[idx].field_256 * pendingRewards / pendingRewards != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _997 = mem[64]
            mem[64] = mem[64] + 64
            mem[_997] = 26
            mem[_997 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _997 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                    _1049 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1049] = 26
                    mem[_1049 + 32] = 'SafeMath: division by zero'
                    _1080 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1080] = 30
                    mem[_1080 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1092 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1092 + 68] = mem[idx + _1080 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1092 + 68] = mem[_1092 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1092 + -mem[64] + 100
                    if stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1216 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1216] = 26
                        mem[_1216 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1216 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1229 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1229] = 26
                        mem[_1229 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1229 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != stor163:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1057 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1057] = 26
                    mem[_1057 + 32] = 'SafeMath: division by zero'
                    _1083 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1083] = 30
                    mem[_1083 + 32] = 'SafeMath: subtraction overflow'
                    if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1104 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1104 + 68] = mem[idx + _1083 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1104 + 68] = mem[_1104 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1104 + -mem[64] + 100
                    if (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) + stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    stor164 += stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000
                    if not (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000):
                        _1228 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1228] = 26
                        mem[_1228 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1228 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1246 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1246] = 26
                        mem[_1246 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if ((10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1246 + 32]
                            idx = idx + 32
                            continue 
        revert with 0, 'SafeMath: division by zero'
    _976 = mem[64]
    mem[64] = mem[64] + 64
    mem[_976] = 30
    mem[_976 + 32] = 'SafeMath: subtraction overflow'
    if 0 > pendingRewards:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[arg2][address(arg1)].field_0:
        if not arg3:
            if not userInfo[arg2][address(arg1)].field_0:
                userInfo[arg2][address(arg1)].field_256 = 0
            else:
                if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
        else:
            _994 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = arg3
            _995 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_995 + 32 len 4] = unknown_0x23b872dd(?????)
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(poolInfo[arg2].field_0):
                revert with 0, 'SafeERC20: call to non-contract'
            _1024 = mem[_995]
            mem[mem[64] len floor32(mem[_995])] = mem[_995 + 32 len floor32(mem[_995])]
            mem[mem[64] + floor32(mem[_995]) + -(mem[_995] % 32) + 32 len mem[_995] % 32] = mem[_995 + floor32(mem[_995]) + -(mem[_995] % 32) + 64 len mem[_995] % 32]
            call poolInfo[arg2].field_0 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1024 + _994 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
            else:
                _2010 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2010 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_2010 + 32]:
                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
            if arg3 + userInfo[arg2][address(arg1)].field_0 < userInfo[arg2][address(arg1)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg2][address(arg1)].field_0 += arg3
            if not userInfo[arg2][address(arg1)].field_0:
                userInfo[arg2][address(arg1)].field_256 = 0
            else:
                if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg3)
                userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
    else:
        if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1001 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1001] = 26
        mem[_1001 + 32] = 'SafeMath: division by zero'
        _1031 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1031] = 30
        mem[_1031 + 32] = 'SafeMath: subtraction overflow'
        if userInfo[arg2][address(arg1)].field_256 > poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12) - userInfo[arg2][address(arg1)].field_256:
            if not arg3:
                if not userInfo[arg2][address(arg1)].field_0:
                    userInfo[arg2][address(arg1)].field_256 = 0
                else:
                    if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
            else:
                _1073 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = arg3
                _1074 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_1074 + 32 len 4] = unknown_0x23b872dd(?????)
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(poolInfo[arg2].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                _1130 = mem[_1074]
                mem[mem[64] len floor32(mem[_1074])] = mem[_1074 + 32 len floor32(mem[_1074])]
                mem[mem[64] + floor32(mem[_1074]) + -(mem[_1074] % 32) + 32 len mem[_1074] % 32] = mem[_1074 + floor32(mem[_1074]) + -(mem[_1074] % 32) + 64 len mem[_1074] % 32]
                call poolInfo[arg2].field_0 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1130 + _1073 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                else:
                    _2000 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2000 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_2000 + 32]:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                if arg3 + userInfo[arg2][address(arg1)].field_0 < userInfo[arg2][address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg2][address(arg1)].field_0 += arg3
                if not userInfo[arg2][address(arg1)].field_0:
                    userInfo[arg2][address(arg1)].field_256 = 0
                else:
                    if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg3)
                    userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
        else:
            if not (poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12) - userInfo[arg2][address(arg1)].field_256:
                if not arg3:
                    if not userInfo[arg2][address(arg1)].field_0:
                        userInfo[arg2][address(arg1)].field_256 = 0
                    else:
                        if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
                else:
                    _1109 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = arg3
                    _1110 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_1110 + 32 len 4] = unknown_0x23b872dd(?????)
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(poolInfo[arg2].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    _1182 = mem[_1110]
                    mem[mem[64] len floor32(mem[_1110])] = mem[_1110 + 32 len floor32(mem[_1110])]
                    mem[mem[64] + floor32(mem[_1110]) + -(mem[_1110] % 32) + 32 len mem[_1110] % 32] = mem[_1110 + floor32(mem[_1110]) + -(mem[_1110] % 32) + 64 len mem[_1110] % 32]
                    call poolInfo[arg2].field_0 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1182 + _1109 + -mem[64] + 128]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                    else:
                        _2007 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2007 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_2007 + 32]:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                    if arg3 + userInfo[arg2][address(arg1)].field_0 < userInfo[arg2][address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg2][address(arg1)].field_0 += arg3
                    if not userInfo[arg2][address(arg1)].field_0:
                        userInfo[arg2][address(arg1)].field_256 = 0
                    else:
                        if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg3)
                        userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
            else:
                require ext_code.size(tcoreAddress)
                staticcall tcoreAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tcoreAddress)
                if (poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12) - userInfo[arg2][address(arg1)].field_256 <= ext_call.return_data[0]:
                    call tcoreAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), (poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12) - userInfo[arg2][address(arg1)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tcoreAddress)
                    staticcall tcoreAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor165 = ext_call.return_data[0]
                    if not stor164:
                        if not arg3:
                            if not userInfo[arg2][address(arg1)].field_0:
                                userInfo[arg2][address(arg1)].field_256 = 0
                            else:
                                if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
                        else:
                            _1334 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _1335 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1335 + 32 len 4] = unknown_0x23b872dd(?????)
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg2].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1451 = mem[_1335]
                            mem[mem[64] len floor32(mem[_1335])] = mem[_1335 + 32 len floor32(mem[_1335])]
                            mem[mem[64] + floor32(mem[_1335]) + -(mem[_1335] % 32) + 32 len mem[_1335] % 32] = mem[_1335 + floor32(mem[_1335]) + -(mem[_1335] % 32) + 64 len mem[_1335] % 32]
                            call poolInfo[arg2].field_0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1451 + _1334 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                            else:
                                _2003 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2003 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_2003 + 32]:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                            if arg3 + userInfo[arg2][address(arg1)].field_0 < userInfo[arg2][address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg2][address(arg1)].field_0 += arg3
                            if not userInfo[arg2][address(arg1)].field_0:
                                userInfo[arg2][address(arg1)].field_256 = 0
                            else:
                                if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg3)
                                userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
                    else:
                        require ext_code.size(tcoreAddress)
                        staticcall tcoreAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tcoreAddress)
                        if ext_call.return_data[0] >= stor164:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), stor164
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if not arg3:
                                if not userInfo[arg2][address(arg1)].field_0:
                                    userInfo[arg2][address(arg1)].field_256 = 0
                                else:
                                    if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
                            else:
                                _1508 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = arg3
                                _1509 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1509 + 32 len 4] = unknown_0x23b872dd(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1605 = mem[_1509]
                                mem[mem[64] len floor32(mem[_1509])] = mem[_1509 + 32 len floor32(mem[_1509])]
                                mem[mem[64] + floor32(mem[_1509]) + -(mem[_1509] % 32) + 32 len mem[_1509] % 32] = mem[_1509 + floor32(mem[_1509]) + -(mem[_1509] % 32) + 64 len mem[_1509] % 32]
                                call poolInfo[arg2].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1605 + _1508 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                                else:
                                    _2001 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2001 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2001 + 32]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                                if arg3 + userInfo[arg2][address(arg1)].field_0 < userInfo[arg2][address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg2][address(arg1)].field_0 += arg3
                                if not userInfo[arg2][address(arg1)].field_0:
                                    userInfo[arg2][address(arg1)].field_256 = 0
                                else:
                                    if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg3)
                                    userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
                        else:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if not arg3:
                                if not userInfo[arg2][address(arg1)].field_0:
                                    userInfo[arg2][address(arg1)].field_256 = 0
                                else:
                                    if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
                            else:
                                _1511 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = arg3
                                _1512 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1512 + 32 len 4] = unknown_0x23b872dd(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1609 = mem[_1512]
                                mem[mem[64] len floor32(mem[_1512])] = mem[_1512 + 32 len floor32(mem[_1512])]
                                mem[mem[64] + floor32(mem[_1512]) + -(mem[_1512] % 32) + 32 len mem[_1512] % 32] = mem[_1512 + floor32(mem[_1512]) + -(mem[_1512] % 32) + 64 len mem[_1512] % 32]
                                call poolInfo[arg2].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1609 + _1511 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                                else:
                                    _2002 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2002 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2002 + 32]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                                if arg3 + userInfo[arg2][address(arg1)].field_0 < userInfo[arg2][address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg2][address(arg1)].field_0 += arg3
                                if not userInfo[arg2][address(arg1)].field_0:
                                    userInfo[arg2][address(arg1)].field_256 = 0
                                else:
                                    if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg3)
                                    userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
                else:
                    call tcoreAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tcoreAddress)
                    staticcall tcoreAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor165 = ext_call.return_data[0]
                    if not stor164:
                        if not arg3:
                            if not userInfo[arg2][address(arg1)].field_0:
                                userInfo[arg2][address(arg1)].field_256 = 0
                            else:
                                if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
                        else:
                            _1339 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = arg3
                            _1340 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1340 + 32 len 4] = unknown_0x23b872dd(?????)
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg2].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1455 = mem[_1340]
                            mem[mem[64] len floor32(mem[_1340])] = mem[_1340 + 32 len floor32(mem[_1340])]
                            mem[mem[64] + floor32(mem[_1340]) + -(mem[_1340] % 32) + 32 len mem[_1340] % 32] = mem[_1340 + floor32(mem[_1340]) + -(mem[_1340] % 32) + 64 len mem[_1340] % 32]
                            call poolInfo[arg2].field_0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1455 + _1339 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                            else:
                                _2006 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2006 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_2006 + 32]:
                                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                            if arg3 + userInfo[arg2][address(arg1)].field_0 < userInfo[arg2][address(arg1)].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg2][address(arg1)].field_0 += arg3
                            if not userInfo[arg2][address(arg1)].field_0:
                                userInfo[arg2][address(arg1)].field_256 = 0
                            else:
                                if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg3)
                                userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
                    else:
                        require ext_code.size(tcoreAddress)
                        staticcall tcoreAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tcoreAddress)
                        if ext_call.return_data[0] >= stor164:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), stor164
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if not arg3:
                                if not userInfo[arg2][address(arg1)].field_0:
                                    userInfo[arg2][address(arg1)].field_256 = 0
                                else:
                                    if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
                            else:
                                _1520 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = arg3
                                _1521 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1521 + 32 len 4] = unknown_0x23b872dd(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1613 = mem[_1521]
                                mem[mem[64] len floor32(mem[_1521])] = mem[_1521 + 32 len floor32(mem[_1521])]
                                mem[mem[64] + floor32(mem[_1521]) + -(mem[_1521] % 32) + 32 len mem[_1521] % 32] = mem[_1521 + floor32(mem[_1521]) + -(mem[_1521] % 32) + 64 len mem[_1521] % 32]
                                call poolInfo[arg2].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1613 + _1520 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                                else:
                                    _2004 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2004 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2004 + 32]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                                if arg3 + userInfo[arg2][address(arg1)].field_0 < userInfo[arg2][address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg2][address(arg1)].field_0 += arg3
                                if not userInfo[arg2][address(arg1)].field_0:
                                    userInfo[arg2][address(arg1)].field_256 = 0
                                else:
                                    if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg3)
                                    userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
                        else:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if not arg3:
                                if not userInfo[arg2][address(arg1)].field_0:
                                    userInfo[arg2][address(arg1)].field_256 = 0
                                else:
                                    if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
                            else:
                                _1523 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = arg3
                                _1524 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1524 + 32 len 4] = unknown_0x23b872dd(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg2].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1617 = mem[_1524]
                                mem[mem[64] len floor32(mem[_1524])] = mem[_1524 + 32 len floor32(mem[_1524])]
                                mem[mem[64] + floor32(mem[_1524]) + -(mem[_1524] % 32) + 32 len mem[_1524] % 32] = mem[_1524 + floor32(mem[_1524]) + -(mem[_1524] % 32) + 64 len mem[_1524] % 32]
                                call poolInfo[arg2].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1617 + _1523 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                                else:
                                    _2005 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2005 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2005 + 32]:
                                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, Mask(176, 0, arg3)
                                if arg3 + userInfo[arg2][address(arg1)].field_0 < userInfo[arg2][address(arg1)].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg2][address(arg1)].field_0 += arg3
                                if not userInfo[arg2][address(arg1)].field_0:
                                    userInfo[arg2][address(arg1)].field_256 = 0
                                else:
                                    if poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / userInfo[arg2][address(arg1)].field_0 != poolInfo[arg2].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg3)
                                    userInfo[arg2][address(arg1)].field_256 = poolInfo[arg2].field_512 * userInfo[arg2][address(arg1)].field_0 / 10^12
    emit Deposit(arg3, arg1, arg2);
}

function depositAll(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    mem[100] = msg.sender
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    mem[0] = msg.sender
    mem[32] = sha3(arg1, 154)
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 153
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            continue 
        if not pendingRewards:
            _996 = mem[64]
            mem[64] = mem[64] + 64
            mem[_996] = 26
            mem[_996 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _996 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not 0 / totalAllocPoint:
                    _1048 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1048] = 26
                    mem[_1048 + 32] = 'SafeMath: division by zero'
                    _1077 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1077] = 30
                    mem[_1077 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > 0 / totalAllocPoint:
                        _1089 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1089 + 68] = mem[idx + _1077 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1089 + 68] = mem[_1089 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1089 + -mem[64] + 100
                    if stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    if not 0 / totalAllocPoint:
                        _1204 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1204] = 26
                        mem[_1204 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1204 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1223 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1223] = 26
                        mem[_1223 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1223 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if stor163 * 0 / totalAllocPoint / 0 / totalAllocPoint != stor163:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1055 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1055] = 26
                    mem[_1055 + 32] = 'SafeMath: division by zero'
                    _1086 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1086] = 30
                    mem[_1086 + 32] = 'SafeMath: subtraction overflow'
                    if stor163 * 0 / totalAllocPoint / 10000 > 0 / totalAllocPoint:
                        _1100 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1100 + 68] = mem[idx + _1086 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1100 + 68] = mem[_1100 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1100 + -mem[64] + 100
                    if (stor163 * 0 / totalAllocPoint / 10000) + stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    stor164 += stor163 * 0 / totalAllocPoint / 10000
                    if not (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000):
                        _1222 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1222] = 26
                        mem[_1222 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1222 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / (0 / totalAllocPoint) - (stor163 * 0 / totalAllocPoint / 10000) != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1235 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1235] = 26
                        mem[_1235 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if ((10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += (10^12 * 0 / totalAllocPoint) - (10^12 * stor163 * 0 / totalAllocPoint / 10000) / ext_call.return_data[0]
                            if 0 / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1235 + 32]
                            idx = idx + 32
                            continue 
        else:
            if poolInfo[idx].field_256 * pendingRewards / pendingRewards != poolInfo[idx].field_256:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1002 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1002] = 26
            mem[_1002 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _1002 + 32]
                    idx = idx + 32
                    continue 
            else:
                if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                    _1054 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1054] = 26
                    mem[_1054 + 32] = 'SafeMath: division by zero'
                    _1085 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1085] = 30
                    mem[_1085 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1097 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1097 + 68] = mem[idx + _1085 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1097 + 68] = mem[_1097 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1097 + -mem[64] + 100
                    if stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    if not poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1221 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1221] = 26
                        mem[_1221 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1221 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1234 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1234] = 26
                        mem[_1234 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1234 + 32]
                            idx = idx + 32
                            continue 
                else:
                    if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / poolInfo[idx].field_256 * pendingRewards / totalAllocPoint != stor163:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1062 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1062] = 26
                    mem[_1062 + 32] = 'SafeMath: division by zero'
                    _1088 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1088] = 30
                    mem[_1088 + 32] = 'SafeMath: subtraction overflow'
                    if stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000 > poolInfo[idx].field_256 * pendingRewards / totalAllocPoint:
                        _1109 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1109 + 68] = mem[idx + _1088 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1109 + 68] = mem[_1109 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1109 + -mem[64] + 100
                    if (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) + stor164 < stor164:
                        revert with 0, 'SafeMath: addition overflow'
                    stor164 += stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000
                    if not (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000):
                        _1233 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1233] = 26
                        mem[_1233 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += 0 / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1233 + 32]
                            idx = idx + 32
                            continue 
                    else:
                        if (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / (poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) != 10^12:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1251 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1251] = 26
                        mem[_1251 + 32] = 'SafeMath: division by zero'
                        if ext_call.return_data[0]:
                            if ((10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]) + poolInfo[idx].field_512 < poolInfo[idx].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_512 += (10^12 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint) - (10^12 * stor163 * poolInfo[idx].field_256 * pendingRewards / totalAllocPoint / 10000) / ext_call.return_data[0]
                            if poolInfo[idx].field_256 * pendingRewards / totalAllocPoint < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _1251 + 32]
                            idx = idx + 32
                            continue 
        revert with 0, 'SafeMath: division by zero'
    _981 = mem[64]
    mem[64] = mem[64] + 64
    mem[_981] = 30
    mem[_981 + 32] = 'SafeMath: subtraction overflow'
    if 0 > pendingRewards:
        revert with 0, 'SafeMath: subtraction overflow'
    if not userInfo[arg1][msg.sender].field_0:
        if not ext_call.return_data[0]:
            if not userInfo[arg1][msg.sender].field_0:
                userInfo[arg1][msg.sender].field_256 = 0
            else:
                if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            _999 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = ext_call.return_data[0]
            _1000 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_1000 + 32 len 4] = unknown_0x23b872dd(?????)
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(poolInfo[arg1].field_0):
                revert with 0, 'SafeERC20: call to non-contract'
            _1029 = mem[_1000]
            mem[mem[64] len floor32(mem[_1000])] = mem[_1000 + 32 len floor32(mem[_1000])]
            mem[mem[64] + floor32(mem[_1000]) + -(mem[_1000] % 32) + 32 len mem[_1000] % 32] = mem[_1000 + floor32(mem[_1000]) + -(mem[_1000] % 32) + 64 len mem[_1000] % 32]
            call poolInfo[arg1].field_0 with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1029 + _999 + -mem[64] + 128]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    ext_call.return_data[10 len 22]
            else:
                _2015 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_2015 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_2015 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    ext_call.return_data[10 len 22]
            if ext_call.return_data[0] + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][msg.sender].field_0 += ext_call.return_data[0]
            if not userInfo[arg1][msg.sender].field_0:
                userInfo[arg1][msg.sender].field_256 = 0
            else:
                if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
    else:
        if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1006 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1006] = 26
        mem[_1006 + 32] = 'SafeMath: division by zero'
        _1036 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1036] = 30
        mem[_1036 + 32] = 'SafeMath: subtraction overflow'
        if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
            if not ext_call.return_data[0]:
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                _1078 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = this.address
                mem[mem[64] + 100] = ext_call.return_data[0]
                _1079 = mem[64]
                mem[mem[64]] = 100
                mem[64] = mem[64] + 132
                mem[_1079 + 32 len 4] = unknown_0x23b872dd(?????)
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'SafeERC20: call to non-contract'
                _1135 = mem[_1079]
                mem[mem[64] len floor32(mem[_1079])] = mem[_1079 + 32 len floor32(mem[_1079])]
                mem[mem[64] + floor32(mem[_1079]) + -(mem[_1079] % 32) + 32 len mem[_1079] % 32] = mem[_1079 + floor32(mem[_1079]) + -(mem[_1079] % 32) + 64 len mem[_1079] % 32]
                call poolInfo[arg1].field_0 with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1135 + _1078 + -mem[64] + 128]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        ext_call.return_data[10 len 22]
                else:
                    _2005 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2005 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_2005 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        ext_call.return_data[10 len 22]
                if ext_call.return_data[0] + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += ext_call.return_data[0]
                if not userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
        else:
            if not (poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256:
                if not ext_call.return_data[0]:
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    _1114 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = ext_call.return_data[0]
                    _1115 = mem[64]
                    mem[mem[64]] = 100
                    mem[64] = mem[64] + 132
                    mem[_1115 + 32 len 4] = unknown_0x23b872dd(?????)
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'SafeERC20: call to non-contract'
                    _1187 = mem[_1115]
                    mem[mem[64] len floor32(mem[_1115])] = mem[_1115 + 32 len floor32(mem[_1115])]
                    mem[mem[64] + floor32(mem[_1115]) + -(mem[_1115] % 32) + 32 len mem[_1115] % 32] = mem[_1115 + floor32(mem[_1115]) + -(mem[_1115] % 32) + 64 len mem[_1115] % 32]
                    call poolInfo[arg1].field_0 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1187 + _1114 + -mem[64] + 128]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            ext_call.return_data[10 len 22]
                    else:
                        _2012 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2012 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_2012 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            ext_call.return_data[10 len 22]
                    if ext_call.return_data[0] + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender].field_0 += ext_call.return_data[0]
                    if not userInfo[arg1][msg.sender].field_0:
                        userInfo[arg1][msg.sender].field_256 = 0
                    else:
                        if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                        userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
            else:
                require ext_code.size(tcoreAddress)
                staticcall tcoreAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(tcoreAddress)
                if (poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256 <= ext_call.return_data[0]:
                    call tcoreAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tcoreAddress)
                    staticcall tcoreAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor165 = ext_call.return_data[0]
                    if not stor164:
                        if not ext_call.return_data[0]:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            _1339 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = ext_call.return_data[0]
                            _1340 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1340 + 32 len 4] = unknown_0x23b872dd(?????)
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1456 = mem[_1340]
                            mem[mem[64] len floor32(mem[_1340])] = mem[_1340 + 32 len floor32(mem[_1340])]
                            mem[mem[64] + floor32(mem[_1340]) + -(mem[_1340] % 32) + 32 len mem[_1340] % 32] = mem[_1340 + floor32(mem[_1340]) + -(mem[_1340] % 32) + 64 len mem[_1340] % 32]
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1456 + _1339 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    ext_call.return_data[10 len 22]
                            else:
                                _2008 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2008 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_2008 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    ext_call.return_data[10 len 22]
                            if ext_call.return_data[0] + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += ext_call.return_data[0]
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        require ext_code.size(tcoreAddress)
                        staticcall tcoreAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tcoreAddress)
                        if ext_call.return_data[0] >= stor164:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), stor164
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if not ext_call.return_data[0]:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                _1513 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = ext_call.return_data[0]
                                _1514 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1514 + 32 len 4] = unknown_0x23b872dd(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1610 = mem[_1514]
                                mem[mem[64] len floor32(mem[_1514])] = mem[_1514 + 32 len floor32(mem[_1514])]
                                mem[mem[64] + floor32(mem[_1514]) + -(mem[_1514] % 32) + 32 len mem[_1514] % 32] = mem[_1514 + floor32(mem[_1514]) + -(mem[_1514] % 32) + 64 len mem[_1514] % 32]
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1610 + _1513 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        ext_call.return_data[10 len 22]
                                else:
                                    _2006 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2006 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2006 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        ext_call.return_data[10 len 22]
                                if ext_call.return_data[0] + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += ext_call.return_data[0]
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if not ext_call.return_data[0]:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                _1516 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = ext_call.return_data[0]
                                _1517 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1517 + 32 len 4] = unknown_0x23b872dd(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1614 = mem[_1517]
                                mem[mem[64] len floor32(mem[_1517])] = mem[_1517 + 32 len floor32(mem[_1517])]
                                mem[mem[64] + floor32(mem[_1517]) + -(mem[_1517] % 32) + 32 len mem[_1517] % 32] = mem[_1517 + floor32(mem[_1517]) + -(mem[_1517] % 32) + 64 len mem[_1517] % 32]
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1614 + _1516 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        ext_call.return_data[10 len 22]
                                else:
                                    _2007 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2007 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2007 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        ext_call.return_data[10 len 22]
                                if ext_call.return_data[0] + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += ext_call.return_data[0]
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                else:
                    call tcoreAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(tcoreAddress)
                    staticcall tcoreAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    stor165 = ext_call.return_data[0]
                    if not stor164:
                        if not ext_call.return_data[0]:
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            _1344 = mem[64]
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = ext_call.return_data[0]
                            _1345 = mem[64]
                            mem[mem[64]] = 100
                            mem[64] = mem[64] + 132
                            mem[_1345 + 32 len 4] = unknown_0x23b872dd(?????)
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'SafeERC20: call to non-contract'
                            _1460 = mem[_1345]
                            mem[mem[64] len floor32(mem[_1345])] = mem[_1345 + 32 len floor32(mem[_1345])]
                            mem[mem[64] + floor32(mem[_1345]) + -(mem[_1345] % 32) + 32 len mem[_1345] % 32] = mem[_1345 + floor32(mem[_1345]) + -(mem[_1345] % 32) + 64 len mem[_1345] % 32]
                            call poolInfo[arg1].field_0 with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _1460 + _1344 + -mem[64] + 128]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    ext_call.return_data[10 len 22]
                            else:
                                _2011 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2011 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_2011 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    ext_call.return_data[10 len 22]
                            if ext_call.return_data[0] + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender].field_0 += ext_call.return_data[0]
                            if not userInfo[arg1][msg.sender].field_0:
                                userInfo[arg1][msg.sender].field_256 = 0
                            else:
                                if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                                userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                    else:
                        require ext_code.size(tcoreAddress)
                        staticcall tcoreAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(tcoreAddress)
                        if ext_call.return_data[0] >= stor164:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), stor164
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if not ext_call.return_data[0]:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                _1525 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = ext_call.return_data[0]
                                _1526 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1526 + 32 len 4] = unknown_0x23b872dd(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1618 = mem[_1526]
                                mem[mem[64] len floor32(mem[_1526])] = mem[_1526 + 32 len floor32(mem[_1526])]
                                mem[mem[64] + floor32(mem[_1526]) + -(mem[_1526] % 32) + 32 len mem[_1526] % 32] = mem[_1526 + floor32(mem[_1526]) + -(mem[_1526] % 32) + 64 len mem[_1526] % 32]
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1618 + _1525 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        ext_call.return_data[10 len 22]
                                else:
                                    _2009 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2009 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2009 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        ext_call.return_data[10 len 22]
                                if ext_call.return_data[0] + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += ext_call.return_data[0]
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                        else:
                            call tcoreAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(devaddr), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(tcoreAddress)
                            staticcall tcoreAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor165 = ext_call.return_data[0]
                            stor164 = 0
                            if not ext_call.return_data[0]:
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
                            else:
                                _1528 = mem[64]
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = ext_call.return_data[0]
                                _1529 = mem[64]
                                mem[mem[64]] = 100
                                mem[64] = mem[64] + 132
                                mem[_1529 + 32 len 4] = unknown_0x23b872dd(?????)
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                _1622 = mem[_1529]
                                mem[mem[64] len floor32(mem[_1529])] = mem[_1529 + 32 len floor32(mem[_1529])]
                                mem[mem[64] + floor32(mem[_1529]) + -(mem[_1529] % 32) + 32 len mem[_1529] % 32] = mem[_1529 + floor32(mem[_1529]) + -(mem[_1529] % 32) + 64 len mem[_1529] % 32]
                                call poolInfo[arg1].field_0 with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1622 + _1528 + -mem[64] + 128]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        if not mem[128]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        ext_call.return_data[10 len 22]
                                else:
                                    _2010 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2010 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[_2010 + 32]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        ext_call.return_data[10 len 22]
                                if ext_call.return_data[0] + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                userInfo[arg1][msg.sender].field_0 += ext_call.return_data[0]
                                if not userInfo[arg1][msg.sender].field_0:
                                    userInfo[arg1][msg.sender].field_256 = 0
                                else:
                                    if poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_512:
                                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                                    userInfo[arg1][msg.sender].field_256 = poolInfo[arg1].field_512 * userInfo[arg1][msg.sender].field_0 / 10^12
    emit Deposit(ext_call.return_data[0], msg.sender, arg1);
}



}
