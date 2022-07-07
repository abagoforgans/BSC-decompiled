contract main {




// =====================  Runtime code  =====================


#
#  - withdrawFunds(address arg1)
#
const ACCURACY = 10^10


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address fundTokenAddress;
address rewardTokenAddress;
address projectOwner;
address stor104;
address vestingAddress;
uint256 exchangeRate;
uint256 presalePeriod;
uint256 startTime;
uint256 serviceFee;
uint256 raiseAmount;
uint256 reservedAmount;
uint256 currentRaisedAmount;
uint256 sub_10f3ce9c;
uint8 isPresalePaused;
uint8 sub_d03cac06; offset 8
uint256 sub_c6051b7e;
uint256 sub_456e8ed6;
uint256 sub_30d18362;
mapping of uint256 sub_897e3117;
mapping of struct recipients;
array of struct stor120;
mapping of uint256 stor121;
mapping of uint8 stor122;
array of address stor64127682546947221061251623503664088023085960088242092304233942895400004410052;

function sub_10f3ce9c(?) {
    return sub_10f3ce9c
}

function isPresalePaused() {
    return bool(isPresalePaused)
}

function currentRaisedAmount() {
    return currentRaisedAmount
}

function sub_30d18362(?) {
    return sub_30d18362
}

function participantCount() {
    return stor120.length
}

function exchangeRate() {
    return exchangeRate
}

function vesting() {
    return vestingAddress
}

function sub_456e8ed6(?) {
    return sub_456e8ed6
}

function fundToken() {
    return fundTokenAddress
}

function startTime() {
    return startTime
}

function sub_897e3117(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_897e3117[arg1]
}

function serviceFee() {
    return serviceFee
}

function owner() {
    return owner
}

function projectOwner() {
    return projectOwner
}

function sub_c6051b7e(?) {
    return sub_c6051b7e
}

function sub_d03cac06(?) {
    return bool(sub_d03cac06)
}

function raiseAmount() {
    return raiseAmount
}

function presalePeriod() {
    return presalePeriod
}

function recipients(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return recipients[arg1].field_0, recipients[arg1].field_256
}

function rewardToken() {
    return rewardTokenAddress
}

function reservedAmount() {
    return reservedAmount
}

function _fallback() payable {
    revert
}

function sub_032a6514(?) {
    return block.timestamp >= startTime
}

function sub_1ec5c636(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    raiseAmount = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_5729083a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    reservedAmount = arg1
}

function updateRewardAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_10f3ce9c = arg1
}

function updateExchangeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    exchangeRate = arg1
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startTime = arg1
    emit StartTimeSet(arg1);
}

function sub_4fcf8951(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor104 = address(arg1)
}

function resumePresale() {
    if not isPresalePaused:
        revert with 0, 'Presale is not paused'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isPresalePaused = 0
    startTime = block.timestamp
    emit 0xb537f79e: block.timestamp
}

function isPresaleGoing() {
    if isPresalePaused:
        return 0
    if block.timestamp < startTime:
        return 0
    if startTime > !sub_c6051b7e:
        revert with 0, 17
    if block.timestamp < startTime:
        return block.timestamp >= startTime
    return block.timestamp <= startTime + sub_c6051b7e
}

function extendPeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if presalePeriod > !arg1:
        revert with 0, 17
    presalePeriod += arg1
    if sub_c6051b7e > !arg1:
        revert with 0, 17
    sub_c6051b7e += arg1
}

function startPresale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if startTime <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'startPresale: Presale has been already started!'
    startTime = block.timestamp
    emit 0x34743eca: block.timestamp
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function endPresale() {
    if isPresalePaused:
        revert with 0, 'Presale is not in progress'
    if block.timestamp < startTime:
        revert with 0, 'Presale is not in progress'
    if startTime > !sub_c6051b7e:
        revert with 0, 17
    if block.timestamp < startTime:
        revert with 0, 'Presale is not in progress'
    if block.timestamp > startTime + sub_c6051b7e:
        revert with 0, 'Presale is not in progress'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < startTime:
        revert with 0, 17
    sub_c6051b7e = block.timestamp - startTime
}

function sub_4b863be2(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(fundTokenAddress)
    staticcall fundTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if 10^18 * ext_call.return_data[0] and 10^10 > -1 / 10^18 * ext_call.return_data[0]:
        revert with 0, 17
    if not exchangeRate:
        revert with 0, 18
    sub_456e8ed6 = 10000000000 * 10^18 * ext_call.return_data[0] / exchangeRate / 10^18
}

function pausePresaleByEmergency() {
    if isPresalePaused:
        revert with 0, 'Presale is not in progress'
    if block.timestamp < startTime:
        revert with 0, 'Presale is not in progress'
    if startTime > !sub_c6051b7e:
        revert with 0, 17
    if block.timestamp < startTime:
        revert with 0, 'Presale is not in progress'
    if block.timestamp > startTime + sub_c6051b7e:
        revert with 0, 'Presale is not in progress'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    isPresalePaused = 1
    if startTime > !sub_c6051b7e:
        revert with 0, 17
    if startTime + sub_c6051b7e < block.timestamp:
        revert with 0, 17
    sub_c6051b7e = startTime + sub_c6051b7e - block.timestamp
    emit PresalePaused(block.timestamp);
}

function withdrawAllFund() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not fundTokenAddress:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(fundTokenAddress)
        staticcall fundTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(fundTokenAddress)
        call fundTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_ded0ed16(?) {
    require calldata.size - 4 >= 64
    mem[96] = stor120.length
    if stor120.length:
        mem[128] = address(stor120.field_0)
        if (32 * stor120.length) + 32 > 64:
            mem[160] = address(stor120.field_256)
            idx = 160
            s = 1
            while (32 * stor120.length) + 96 > idx:
                mem[idx + 32] = stor120[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    if arg2 > test266151307():
        revert with 0, 65
    mem[(32 * stor120.length) + 128] = arg2
    mem[64] = (32 * stor120.length) + (32 * arg2) + 160
    if arg2:
        mem[(32 * stor120.length) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    idx = 0
    while idx < arg2:
        if arg1 and arg2 > -1 / arg1:
            revert with 0, 17
        if arg1 * arg2 > !idx:
            revert with 0, 17
        if (arg1 * arg2) + idx >= stor120.length:
            if idx >= arg2:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor120.length) + 160] = 0
        else:
            if arg1 and arg2 > -1 / arg1:
                revert with 0, 17
            if arg1 * arg2 > !idx:
                revert with 0, 17
            if (arg1 * arg2) + idx >= stor120.length:
                revert with 0, 50
            if idx >= arg2:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor120.length) + 160] = mem[(32 * (arg1 * arg2) + idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * stor120.length) + (32 * arg2) + 160] = 32
    mem[(32 * stor120.length) + (32 * arg2) + 192] = arg2
    idx = 0
    s = mem[64] + 64
    t = (32 * stor120.length) + 160
    while idx < arg2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (32 * stor120.length) + (64 * arg2) + -mem[64] + 224
}

function sub_d7f8028a(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    u = 32 * ('cd', 4).length
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        u = cd[s]
        idx = idx + 1
        continue 
    require cd[36] == bool(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if cd[36]:
            if idx >= mem[96]:
                revert with 0, 50
            if not fundTokenAddress:
                if idx >= mem[96]:
                    revert with 0, 50
                call mem[(32 * idx) + 140 len 20] with:
                   value recipients[mem[(32 * idx) + 140 len 20]].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                _55 = mem[(32 * idx) + 128]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 119
                mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(_55)
                mem[mem[64] + 36] = recipients[mem[0]].field_0
                require ext_code.size(fundTokenAddress)
                call fundTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(_55), recipients[mem[0]].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _70 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_70] == bool(mem[_70])
            if idx >= mem[96]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 119
            recipients[mem[(32 * idx) + 140 len 20]].field_0 = 0
        if 1 > !idx:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_d500e43e(?) {
    require calldata.size - 4 >= 384
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require calldata.size - 164 >= 224
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not address(arg3):
        revert with 0, 'project owner address cannot be zero'
    if not address(arg4):
        revert with 0, 'whitelisting contract address cannot be zero'
    if arg7 <= block.timestamp:
        revert with 0, 'start time must be in the future'
    if not arg6:
        revert with 0, 'exchange rate cannot be zero'
    if arg8 <= 0:
        revert with 0, 'presale period cannot be zero'
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        fundTokenAddress = address(arg1)
        rewardTokenAddress = address(arg2)
        projectOwner = address(arg3)
        stor104 = address(arg4)
        vestingAddress = address(arg5)
        exchangeRate = arg6
        startTime = arg7
        presalePeriod = arg8
        serviceFee = arg9
        raiseAmount = arg10
        reservedAmount = arg11
        sub_10f3ce9c = arg12
        sub_c6051b7e = arg8
    else:
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            fundTokenAddress = address(arg1)
            rewardTokenAddress = address(arg2)
            projectOwner = address(arg3)
            stor104 = address(arg4)
            vestingAddress = address(arg5)
            exchangeRate = arg6
            startTime = arg7
            presalePeriod = arg8
            serviceFee = arg9
            raiseAmount = arg10
            reservedAmount = arg11
            sub_10f3ce9c = arg12
            sub_c6051b7e = arg8
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                fundTokenAddress = address(arg1)
                rewardTokenAddress = address(arg2)
                projectOwner = address(arg3)
                stor104 = address(arg4)
                vestingAddress = address(arg5)
                exchangeRate = arg6
                startTime = arg7
                presalePeriod = arg8
                serviceFee = arg9
                raiseAmount = arg10
                reservedAmount = arg11
                sub_10f3ce9c = arg12
                sub_c6051b7e = arg8
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    fundTokenAddress = address(arg1)
                    rewardTokenAddress = address(arg2)
                    projectOwner = address(arg3)
                    stor104 = address(arg4)
                    vestingAddress = address(arg5)
                    exchangeRate = arg6
                    startTime = arg7
                    presalePeriod = arg8
                    serviceFee = arg9
                    raiseAmount = arg10
                    reservedAmount = arg11
                    sub_10f3ce9c = arg12
                    sub_c6051b7e = arg8
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    fundTokenAddress = address(arg1)
                    rewardTokenAddress = address(arg2)
                    projectOwner = address(arg3)
                    stor104 = address(arg4)
                    vestingAddress = address(arg5)
                    exchangeRate = arg6
                    startTime = arg7
                    presalePeriod = arg8
                    serviceFee = arg9
                    raiseAmount = arg10
                    reservedAmount = arg11
                    sub_10f3ce9c = arg12
                    sub_c6051b7e = arg8
                    uint8(stor0.field_8) = 0
}

function deposit2(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if currentRaisedAmount > !reservedAmount:
        revert with 0, 17
    if currentRaisedAmount + reservedAmount > raiseAmount:
        revert with 0, 'Already full filled'
    if recipients[address(arg1)].field_0 > !reservedAmount:
        revert with 0, 17
    if not fundTokenAddress:
        if reservedAmount > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if 10^18 * reservedAmount and 10^10 > -1 / 10^18 * reservedAmount:
            revert with 0, 17
        if not exchangeRate:
            revert with 0, 18
        recipients[address(arg1)].field_0 += reservedAmount
        if currentRaisedAmount > !reservedAmount:
            revert with 0, 17
        currentRaisedAmount += reservedAmount
        if sub_30d18362 > !(10000000000 * 10^18 * reservedAmount / exchangeRate / 10^18):
            revert with 0, 17
        sub_30d18362 += 10000000000 * 10^18 * reservedAmount / exchangeRate / 10^18
    else:
        require ext_code.size(fundTokenAddress)
        staticcall fundTokenAddress.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            if reservedAmount > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * reservedAmount and 10^10 > -1 / 10^18 * reservedAmount:
                revert with 0, 17
            if not exchangeRate:
                revert with 0, 18
            recipients[address(arg1)].field_0 += reservedAmount
            if currentRaisedAmount > !reservedAmount:
                revert with 0, 17
            currentRaisedAmount += reservedAmount
            if sub_30d18362 > !(10000000000 * 10^18 * reservedAmount / exchangeRate):
                revert with 0, 17
            sub_30d18362 += 10000000000 * 10^18 * reservedAmount / exchangeRate
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 0, 17
                if reservedAmount > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * reservedAmount and 10^10 > -1 / 10^18 * reservedAmount:
                    revert with 0, 17
                if not exchangeRate:
                    revert with 0, 18
                if not 10^ext_call.return_data[31 len 1]:
                    revert with 0, 18
                recipients[address(arg1)].field_0 += reservedAmount
                if currentRaisedAmount > !reservedAmount:
                    revert with 0, 17
                currentRaisedAmount += reservedAmount
                if sub_30d18362 > !(10000000000 * 10^18 * reservedAmount / exchangeRate / 10^ext_call.return_data[31 len 1]):
                    revert with 0, 17
                sub_30d18362 += 10000000000 * 10^18 * reservedAmount / exchangeRate / 10^ext_call.return_data[31 len 1]
            else:
                if var43005 > 1:
                    s = var43001
                    t = var43002
                    u = var43005
                    while s <= -1 / s:
                        if not bool(u):
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = t
                                u = uint255(u) * 0.5
                                continue 
                            if t > -1 / s * s:
                                revert with 0, 17
                            if reservedAmount > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * reservedAmount and 10^10 > -1 / 10^18 * reservedAmount:
                                revert with 0, 17
                            if not exchangeRate:
                                revert with 0, 18
                            if not s * s * t:
                                revert with 0, 18
                            recipients[address(arg1)].field_0 += reservedAmount
                            if currentRaisedAmount > !reservedAmount:
                                revert with 0, 17
                            currentRaisedAmount += reservedAmount
                            if sub_30d18362 > !(10000000000 * 10^18 * reservedAmount / exchangeRate / s * s * t):
                                revert with 0, 17
                            sub_30d18362 += 10000000000 * 10^18 * reservedAmount / exchangeRate / s * s * t
                        else:
                            if uint255(u) * 0.5 > 1:
                                s = s * s
                                t = s * t
                                u = uint255(u) * 0.5
                                continue 
                            if s * t > -1 / s * s:
                                revert with 0, 17
                            if reservedAmount > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * reservedAmount and 10^10 > -1 / 10^18 * reservedAmount:
                                revert with 0, 17
                            if not exchangeRate:
                                revert with 0, 18
                            if not s * s * s * t:
                                revert with 0, 18
                            recipients[address(arg1)].field_0 += reservedAmount
                            if currentRaisedAmount > !reservedAmount:
                                revert with 0, 17
                            currentRaisedAmount += reservedAmount
                            if sub_30d18362 > !(10000000000 * 10^18 * reservedAmount / exchangeRate / s * s * s * t):
                                revert with 0, 17
                            sub_30d18362 += 10000000000 * 10^18 * reservedAmount / exchangeRate / s * s * s * t
                        if not stor122[address(arg1)]:
                            stor122[address(arg1)] = 1
                            stor121[address(arg1)] = stor120.length
                            stor120.length++
                            stor8DC6[stor120.length] = arg1
                        reservedAmount = 0
                        emit 0xc0ac20ed: recipients[address(arg1)].field_256, 0, block.timestamp, msg.sender
                    revert with 0, 17
                if var43002 > -1 / var43001:
                    revert with 0, 17
                if reservedAmount > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * reservedAmount and 10^10 > -1 / 10^18 * reservedAmount:
                    revert with 0, 17
                if not exchangeRate:
                    revert with 0, 18
                if not var43001 * var43002:
                    revert with 0, 18
                recipients[address(arg1)].field_0 += reservedAmount
                if currentRaisedAmount > !reservedAmount:
                    revert with 0, 17
                currentRaisedAmount += reservedAmount
                if sub_30d18362 > !(10000000000 * 10^18 * reservedAmount / exchangeRate / var43001 * var43002):
                    revert with 0, 17
                sub_30d18362 += 10000000000 * 10^18 * reservedAmount / exchangeRate / var43001 * var43002
    if not stor122[address(arg1)]:
        stor122[address(arg1)] = 1
        stor121[address(arg1)] = stor120.length
        stor120.length++
        stor8DC6[stor120.length] = arg1
    reservedAmount = 0
    emit 0xc0ac20ed: recipients[address(arg1)].field_256, 0, block.timestamp, msg.sender
}

function sub_d2b339ae(?) {
    require calldata.size - 4 >= 64
    mem[96] = stor120.length
    if not stor120.length:
        if arg2 > test266151307():
            revert with 0, 65
        mem[(32 * stor120.length) + 128] = arg2
        if not arg2:
            idx = 0
            while idx < arg2:
                if arg1 and arg2 > -1 / arg1:
                    revert with 0, 17
                if arg1 * arg2 > !idx:
                    revert with 0, 17
                if (arg1 * arg2) + idx >= stor120.length:
                    if idx >= arg2:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor120.length) + 160] = 0
                else:
                    if arg1 and arg2 > -1 / arg1:
                        revert with 0, 17
                    if arg1 * arg2 > !idx:
                        revert with 0, 17
                    if (arg1 * arg2) + idx >= stor120.length:
                        revert with 0, 50
                    if idx >= arg2:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor120.length) + 160] = mem[(32 * (arg1 * arg2) + idx) + 140 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg2 > test266151307():
                revert with 0, 65
            mem[(32 * stor120.length) + (32 * arg2) + 160] = arg2
            mem[64] = (32 * stor120.length) + (64 * arg2) + 192
            if not arg2:
                idx = 0
                while idx < arg2:
                    _182 = mem[64]
                    mem[64] = mem[64] + 96
                    if idx >= mem[(32 * stor120.length) + 128]:
                        revert with 0, 50
                    mem[_182] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
                    if idx >= mem[(32 * stor120.length) + 128]:
                        revert with 0, 50
                    mem[32] = 119
                    mem[_182 + 32] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_0
                    if idx >= mem[(32 * stor120.length) + 128]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
                    mem[32] = 119
                    mem[_182 + 64] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_256
                    if idx >= mem[(32 * stor120.length) + (32 * arg2) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor120.length) + (32 * arg2) + 192] = _182
                    if idx > -2:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _188 = mem[64]
                mem[mem[64]] = 32
                _195 = mem[(32 * stor120.length) + (32 * arg2) + 160]
                mem[mem[64] + 32] = mem[(32 * stor120.length) + (32 * arg2) + 160]
                idx = 0
                s = (32 * stor120.length) + (32 * arg2) + 192
                t = mem[64] + 64
                while idx < _195:
                    _345 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_345 + 32]
                    mem[t + 64] = mem[_345 + 64]
                    idx = idx + 1
                    s = s + 32
                    t = t + 96
                    continue 
                return memory
                  from mem[64]
                   len _188 + (96 * _195) + -mem[64] + 64
            mem[64] = (32 * stor120.length) + (64 * arg2) + 288
            mem[(32 * stor120.length) + (64 * arg2) + 192] = 0
            mem[(32 * stor120.length) + (64 * arg2) + 224] = 0
            mem[(32 * stor120.length) + (64 * arg2) + 256] = 0
            mem[var20001] = (32 * stor120.length) + (64 * arg2) + 192
            s = var20001
            idx = var20002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[(32 * stor120.length) + (64 * arg2) + 192] = 0
                mem[(32 * stor120.length) + (64 * arg2) + 224] = 0
                mem[(32 * stor120.length) + (64 * arg2) + 256] = 0
                mem[s + 32] = (32 * stor120.length) + (64 * arg2) + 192
                s = s + 32
                idx = idx - 1
                continue 
            _479 = mem[(32 * stor120.length) + 128]
            idx = 0
            while idx < _479:
                _483 = mem[64]
                mem[64] = mem[64] + 96
                if idx >= mem[(32 * stor120.length) + 128]:
                    revert with 0, 50
                mem[_483] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
                if idx >= mem[(32 * stor120.length) + 128]:
                    revert with 0, 50
                mem[32] = 119
                mem[_483 + 32] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_0
                if idx >= mem[(32 * stor120.length) + 128]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
                mem[32] = 119
                mem[_483 + 64] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_256
                if idx >= mem[(32 * stor120.length) + (32 * arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor120.length) + (32 * arg2) + 192] = _483
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _493 = mem[64]
            mem[mem[64]] = 32
            _505 = mem[(32 * stor120.length) + (32 * arg2) + 160]
            mem[mem[64] + 32] = mem[(32 * stor120.length) + (32 * arg2) + 160]
            idx = 0
            s = (32 * stor120.length) + (32 * arg2) + 192
            t = mem[64] + 64
            while idx < _505:
                _591 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_591 + 32]
                mem[t + 64] = mem[_591 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _493 + (96 * _505) + -mem[64] + 64
        mem[(32 * stor120.length) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        idx = 0
        while idx < arg2:
            if arg1 and arg2 > -1 / arg1:
                revert with 0, 17
            if arg1 * arg2 > !idx:
                revert with 0, 17
            if (arg1 * arg2) + idx >= stor120.length:
                if idx >= arg2:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor120.length) + 160] = 0
            else:
                if arg1 and arg2 > -1 / arg1:
                    revert with 0, 17
                if arg1 * arg2 > !idx:
                    revert with 0, 17
                if (arg1 * arg2) + idx >= stor120.length:
                    revert with 0, 50
                if idx >= arg2:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor120.length) + 160] = mem[(32 * (arg1 * arg2) + idx) + 140 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg2 > test266151307():
            revert with 0, 65
        mem[(32 * stor120.length) + (32 * arg2) + 160] = arg2
        mem[64] = (32 * stor120.length) + (64 * arg2) + 192
        if not arg2:
            idx = 0
            while idx < arg2:
                _185 = mem[64]
                mem[64] = mem[64] + 96
                if idx >= mem[(32 * stor120.length) + 128]:
                    revert with 0, 50
                mem[_185] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
                if idx >= mem[(32 * stor120.length) + 128]:
                    revert with 0, 50
                mem[32] = 119
                mem[_185 + 32] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_0
                if idx >= mem[(32 * stor120.length) + 128]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
                mem[32] = 119
                mem[_185 + 64] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_256
                if idx >= mem[(32 * stor120.length) + (32 * arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor120.length) + (32 * arg2) + 192] = _185
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _191 = mem[64]
            mem[mem[64]] = 32
            _199 = mem[(32 * stor120.length) + (32 * arg2) + 160]
            mem[mem[64] + 32] = mem[(32 * stor120.length) + (32 * arg2) + 160]
            idx = 0
            s = (32 * stor120.length) + (32 * arg2) + 192
            t = mem[64] + 64
            while idx < _199:
                _349 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_349 + 32]
                mem[t + 64] = mem[_349 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _191 + (96 * _199) + -mem[64] + 64
        mem[64] = (32 * stor120.length) + (64 * arg2) + 288
        mem[(32 * stor120.length) + (64 * arg2) + 192] = 0
        mem[(32 * stor120.length) + (64 * arg2) + 224] = 0
        mem[(32 * stor120.length) + (64 * arg2) + 256] = 0
        mem[var21001] = (32 * stor120.length) + (64 * arg2) + 192
        s = var21001
        idx = var21002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * stor120.length) + (64 * arg2) + 192] = 0
            mem[(32 * stor120.length) + (64 * arg2) + 224] = 0
            mem[(32 * stor120.length) + (64 * arg2) + 256] = 0
            mem[s + 32] = (32 * stor120.length) + (64 * arg2) + 192
            s = s + 32
            idx = idx - 1
            continue 
        _480 = mem[(32 * stor120.length) + 128]
        idx = 0
        while idx < _480:
            _485 = mem[64]
            mem[64] = mem[64] + 96
            if idx >= mem[(32 * stor120.length) + 128]:
                revert with 0, 50
            mem[_485] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
            if idx >= mem[(32 * stor120.length) + 128]:
                revert with 0, 50
            mem[32] = 119
            mem[_485 + 32] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_0
            if idx >= mem[(32 * stor120.length) + 128]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
            mem[32] = 119
            mem[_485 + 64] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_256
            if idx >= mem[(32 * stor120.length) + (32 * arg2) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor120.length) + (32 * arg2) + 192] = _485
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        _496 = mem[64]
        mem[mem[64]] = 32
        _509 = mem[(32 * stor120.length) + (32 * arg2) + 160]
        mem[mem[64] + 32] = mem[(32 * stor120.length) + (32 * arg2) + 160]
        idx = 0
        s = (32 * stor120.length) + (32 * arg2) + 192
        t = mem[64] + 64
        while idx < _509:
            _595 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_595 + 32]
            mem[t + 64] = mem[_595 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _496 + (96 * _509) + -mem[64] + 64
    mem[0] = 120
    mem[128] = address(stor120.field_0)
    idx = 128
    s = 0
    while (32 * stor120.length) + 96 > idx:
        mem[idx + 32] = stor120[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if arg2 > test266151307():
        revert with 0, 65
    mem[(32 * stor120.length) + 128] = arg2
    if not arg2:
        idx = 0
        while idx < arg2:
            if arg1 and arg2 > -1 / arg1:
                revert with 0, 17
            if arg1 * arg2 > !idx:
                revert with 0, 17
            if (arg1 * arg2) + idx >= stor120.length:
                if idx >= arg2:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor120.length) + 160] = 0
            else:
                if arg1 and arg2 > -1 / arg1:
                    revert with 0, 17
                if arg1 * arg2 > !idx:
                    revert with 0, 17
                if (arg1 * arg2) + idx >= stor120.length:
                    revert with 0, 50
                if idx >= arg2:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor120.length) + 160] = mem[(32 * (arg1 * arg2) + idx) + 140 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg2 > test266151307():
            revert with 0, 65
        mem[(32 * stor120.length) + (32 * arg2) + 160] = arg2
        mem[64] = (32 * stor120.length) + (64 * arg2) + 192
        if not arg2:
            idx = 0
            while idx < arg2:
                _487 = mem[64]
                mem[64] = mem[64] + 96
                if idx >= mem[(32 * stor120.length) + 128]:
                    revert with 0, 50
                mem[_487] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
                if idx >= mem[(32 * stor120.length) + 128]:
                    revert with 0, 50
                mem[32] = 119
                mem[_487 + 32] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_0
                if idx >= mem[(32 * stor120.length) + 128]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
                mem[32] = 119
                mem[_487 + 64] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_256
                if idx >= mem[(32 * stor120.length) + (32 * arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor120.length) + (32 * arg2) + 192] = _487
                if idx > -2:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _499 = mem[64]
            mem[mem[64]] = 32
            _513 = mem[(32 * stor120.length) + (32 * arg2) + 160]
            mem[mem[64] + 32] = mem[(32 * stor120.length) + (32 * arg2) + 160]
            idx = 0
            s = (32 * stor120.length) + (32 * arg2) + 192
            t = mem[64] + 64
            while idx < _513:
                _599 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_599 + 32]
                mem[t + 64] = mem[_599 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _499 + (96 * _513) + -mem[64] + 64
        mem[64] = (32 * stor120.length) + (64 * arg2) + 288
        mem[(32 * stor120.length) + (64 * arg2) + 192] = 0
        mem[(32 * stor120.length) + (64 * arg2) + 224] = 0
        mem[(32 * stor120.length) + (64 * arg2) + 256] = 0
        mem[var24001] = (32 * stor120.length) + (64 * arg2) + 192
        s = var24001
        idx = var24002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * stor120.length) + (64 * arg2) + 192] = 0
            mem[(32 * stor120.length) + (64 * arg2) + 224] = 0
            mem[(32 * stor120.length) + (64 * arg2) + 256] = 0
            mem[s + 32] = (32 * stor120.length) + (64 * arg2) + 192
            s = s + 32
            idx = idx - 1
            continue 
        _647 = mem[(32 * stor120.length) + 128]
        idx = 0
        while idx < _647:
            _649 = mem[64]
            mem[64] = mem[64] + 96
            if idx >= mem[(32 * stor120.length) + 128]:
                revert with 0, 50
            mem[_649] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
            if idx >= mem[(32 * stor120.length) + 128]:
                revert with 0, 50
            mem[32] = 119
            mem[_649 + 32] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_0
            if idx >= mem[(32 * stor120.length) + 128]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
            mem[32] = 119
            mem[_649 + 64] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_256
            if idx >= mem[(32 * stor120.length) + (32 * arg2) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor120.length) + (32 * arg2) + 192] = _649
            if idx > -2:
                revert with 0, 17
            _647 = mem[(32 * stor120.length) + 128]
            idx = idx + 1
            continue 
        _653 = mem[64]
        mem[mem[64]] = 32
        _659 = mem[(32 * stor120.length) + (32 * arg2) + 160]
        mem[mem[64] + 32] = mem[(32 * stor120.length) + (32 * arg2) + 160]
        idx = 0
        s = (32 * stor120.length) + (32 * arg2) + 192
        t = mem[64] + 64
        while idx < _659:
            _683 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_683 + 32]
            mem[t + 64] = mem[_683 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _653 + (96 * _659) + -mem[64] + 64
    mem[(32 * stor120.length) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    idx = 0
    while idx < arg2:
        if arg1 and arg2 > -1 / arg1:
            revert with 0, 17
        if arg1 * arg2 > !idx:
            revert with 0, 17
        if (arg1 * arg2) + idx >= stor120.length:
            if idx >= arg2:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor120.length) + 160] = 0
        else:
            if arg1 and arg2 > -1 / arg1:
                revert with 0, 17
            if arg1 * arg2 > !idx:
                revert with 0, 17
            if (arg1 * arg2) + idx >= stor120.length:
                revert with 0, 50
            if idx >= arg2:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor120.length) + 160] = mem[(32 * (arg1 * arg2) + idx) + 140 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg2 > test266151307():
        revert with 0, 65
    mem[(32 * stor120.length) + (32 * arg2) + 160] = arg2
    mem[64] = (32 * stor120.length) + (64 * arg2) + 192
    if not arg2:
        idx = 0
        while idx < arg2:
            _490 = mem[64]
            mem[64] = mem[64] + 96
            if idx >= mem[(32 * stor120.length) + 128]:
                revert with 0, 50
            mem[_490] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
            if idx >= mem[(32 * stor120.length) + 128]:
                revert with 0, 50
            mem[32] = 119
            mem[_490 + 32] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_0
            if idx >= mem[(32 * stor120.length) + 128]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
            mem[32] = 119
            mem[_490 + 64] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_256
            if idx >= mem[(32 * stor120.length) + (32 * arg2) + 160]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor120.length) + (32 * arg2) + 192] = _490
            if idx > -2:
                revert with 0, 17
            idx = idx + 1
            continue 
        _502 = mem[64]
        mem[mem[64]] = 32
        _517 = mem[(32 * stor120.length) + (32 * arg2) + 160]
        mem[mem[64] + 32] = mem[(32 * stor120.length) + (32 * arg2) + 160]
        idx = 0
        s = (32 * stor120.length) + (32 * arg2) + 192
        t = mem[64] + 64
        while idx < _517:
            _603 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_603 + 32]
            mem[t + 64] = mem[_603 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _502 + (96 * _517) + -mem[64] + 64
    mem[64] = (32 * stor120.length) + (64 * arg2) + 288
    mem[(32 * stor120.length) + (64 * arg2) + 192] = 0
    mem[(32 * stor120.length) + (64 * arg2) + 224] = 0
    mem[(32 * stor120.length) + (64 * arg2) + 256] = 0
    mem[var25001] = (32 * stor120.length) + (64 * arg2) + 192
    s = var25001
    idx = var25002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * stor120.length) + (64 * arg2) + 192] = 0
        mem[(32 * stor120.length) + (64 * arg2) + 224] = 0
        mem[(32 * stor120.length) + (64 * arg2) + 256] = 0
        mem[s + 32] = (32 * stor120.length) + (64 * arg2) + 192
        s = s + 32
        idx = idx - 1
        continue 
    _648 = mem[(32 * stor120.length) + 128]
    idx = 0
    while idx < _648:
        _651 = mem[64]
        mem[64] = mem[64] + 96
        if idx >= mem[(32 * stor120.length) + 128]:
            revert with 0, 50
        mem[_651] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
        if idx >= mem[(32 * stor120.length) + 128]:
            revert with 0, 50
        mem[32] = 119
        mem[_651 + 32] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_0
        if idx >= mem[(32 * stor120.length) + 128]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + (32 * stor120.length) + 172 len 20]
        mem[32] = 119
        mem[_651 + 64] = recipients[mem[(32 * idx) + (32 * stor120.length) + 172 len 20]].field_256
        if idx >= mem[(32 * stor120.length) + (32 * arg2) + 160]:
            revert with 0, 50
        mem[(32 * idx) + (32 * stor120.length) + (32 * arg2) + 192] = _651
        if idx > -2:
            revert with 0, 17
        _648 = mem[(32 * stor120.length) + 128]
        idx = idx + 1
        continue 
    _656 = mem[64]
    mem[mem[64]] = 32
    _663 = mem[(32 * stor120.length) + (32 * arg2) + 160]
    mem[mem[64] + 32] = mem[(32 * stor120.length) + (32 * arg2) + 160]
    idx = 0
    s = (32 * stor120.length) + (32 * arg2) + 192
    t = mem[64] + 64
    while idx < _663:
        _687 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_687 + 32]
        mem[t + 64] = mem[_687 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _656 + (96 * _663) + -mem[64] + 64
}

function sub_ead179cb(?) payable {
    require calldata.size - 4 >= 32
    if fundTokenAddress:
        if raiseAmount < reservedAmount:
            revert with 0, 17
        if currentRaisedAmount > !arg1:
            revert with 0, 17
        if currentRaisedAmount + arg1 > raiseAmount - reservedAmount:
            revert with 0, 'Already full filled'
        if block.timestamp >= startTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'depositPrivateSale: Private Sale is ended!'
        require ext_code.size(stor104)
        staticcall stor104.0x6f77926b with:
                gas gas_remaining wei
               args msg.sender
        mem[96 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == bool(ext_call.return_data[32])
        require ext_call.return_data[96] == bool(ext_call.return_data[96])
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'depositPrivateSale: Not exist on the whitelist'
        if not ext_call.return_data[32]:
            revert with 0, 'depositPrivateSale: Not passed KYC'
        if bool(ext_call.return_data[96]) != 1:
            revert with 0, 'depositPrivateSale: Not allowed to participate in private sale'
        if recipients[msg.sender].field_0 > !arg1:
            revert with 0, 17
        if ext_call.return_data[128] < recipients[msg.sender].field_0 + arg1:
            revert with 0, 'Deposit: Can't exceed the privateMaxAlloc!'
        if not fundTokenAddress:
            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                revert with 0, 17
            if not exchangeRate:
                revert with 0, 18
            recipients[msg.sender].field_0 += arg1
            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                revert with 0, 17
            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
            if sub_897e3117[address(ext_call.return_data[0])] > !arg1:
                revert with 0, 17
            sub_897e3117[address(ext_call.return_data[0])] += arg1
            if currentRaisedAmount > !arg1:
                revert with 0, 17
            currentRaisedAmount += arg1
            if not stor122[address(ext_call.return_data[0])]:
                stor122[address(ext_call.return_data[0])] = 1
                stor121[address(ext_call.return_data[0])] = stor120.length
                stor120.length++
                stor8DC6[stor120.length] = ext_call.return_data[12 len 20]
        else:
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = arg1
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(fundTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
            mem[ceil32(return_data.size) + 392] = 0
            call fundTokenAddress with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not ext_call.return_data[0]:
                    if not fundTokenAddress:
                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                            revert with 0, 17
                        if not exchangeRate:
                            revert with 0, 18
                        recipients[msg.sender].field_0 += arg1
                        if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                            revert with 0, 17
                        sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                    else:
                        require ext_code.size(fundTokenAddress)
                        staticcall fundTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                revert with 0, 17
                            if not exchangeRate:
                                revert with 0, 18
                            recipients[msg.sender].field_0 += arg1
                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                revert with 0, 17
                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not 10^ext_call.return_data[31 len 1]:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                            else:
                                if var93005 > 1:
                                    s = var93001
                                    t = var93002
                                    u = var93005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                        if sub_897e3117[address(ext_call.return_data[0])] > !arg1:
                                            revert with 0, 17
                                        sub_897e3117[address(ext_call.return_data[0])] += arg1
                                        if currentRaisedAmount > !arg1:
                                            revert with 0, 17
                                        currentRaisedAmount += arg1
                                        if not stor122[address(ext_call.return_data[0])]:
                                            stor122[address(ext_call.return_data[0])] = 1
                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                            stor120.length++
                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 1, block.timestamp, msg.sender
                                    revert with 0, 17
                                if var93002 > -1 / var93001:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not var93001 * var93002:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / var93001 * var93002):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / var93001 * var93002
                else:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not fundTokenAddress:
                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                            revert with 0, 17
                        if not exchangeRate:
                            revert with 0, 18
                        recipients[msg.sender].field_0 += arg1
                        if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                            revert with 0, 17
                        sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                    else:
                        require ext_code.size(fundTokenAddress)
                        staticcall fundTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                revert with 0, 17
                            if not exchangeRate:
                                revert with 0, 18
                            recipients[msg.sender].field_0 += arg1
                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                revert with 0, 17
                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not 10^ext_call.return_data[31 len 1]:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                            else:
                                if var100005 > 1:
                                    s = var100001
                                    t = var100002
                                    u = var100005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                        if sub_897e3117[address(ext_call.return_data[0])] > !arg1:
                                            revert with 0, 17
                                        sub_897e3117[address(ext_call.return_data[0])] += arg1
                                        if currentRaisedAmount > !arg1:
                                            revert with 0, 17
                                        currentRaisedAmount += arg1
                                        if not stor122[address(ext_call.return_data[0])]:
                                            stor122[address(ext_call.return_data[0])] = 1
                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                            stor120.length++
                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 1, block.timestamp, msg.sender
                                    revert with 0, 17
                                if var100002 > -1 / var100001:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not var100001 * var100002:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / var100001 * var100002):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / var100001 * var100002
            else:
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not fundTokenAddress:
                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                            revert with 0, 17
                        if not exchangeRate:
                            revert with 0, 18
                        recipients[msg.sender].field_0 += arg1
                        if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                            revert with 0, 17
                        sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                    else:
                        require ext_code.size(fundTokenAddress)
                        staticcall fundTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                revert with 0, 17
                            if not exchangeRate:
                                revert with 0, 18
                            recipients[msg.sender].field_0 += arg1
                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                revert with 0, 17
                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not 10^ext_call.return_data[31 len 1]:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                            else:
                                if var93005 > 1:
                                    s = var93001
                                    t = var93002
                                    u = var93005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                        if sub_897e3117[address(ext_call.return_data[0])] > !arg1:
                                            revert with 0, 17
                                        sub_897e3117[address(ext_call.return_data[0])] += arg1
                                        if currentRaisedAmount > !arg1:
                                            revert with 0, 17
                                        currentRaisedAmount += arg1
                                        if not stor122[address(ext_call.return_data[0])]:
                                            stor122[address(ext_call.return_data[0])] = 1
                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                            stor120.length++
                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 1, block.timestamp, msg.sender
                                    revert with 0, 17
                                if var93002 > -1 / var93001:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not var93001 * var93002:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / var93001 * var93002):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / var93001 * var93002
                else:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not fundTokenAddress:
                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                            revert with 0, 17
                        if not exchangeRate:
                            revert with 0, 18
                        recipients[msg.sender].field_0 += arg1
                        if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                            revert with 0, 17
                        sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                    else:
                        require ext_code.size(fundTokenAddress)
                        staticcall fundTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                revert with 0, 17
                            if not exchangeRate:
                                revert with 0, 18
                            recipients[msg.sender].field_0 += arg1
                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                revert with 0, 17
                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not 10^ext_call.return_data[31 len 1]:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                            else:
                                if var100005 > 1:
                                    s = var100001
                                    t = var100002
                                    u = var100005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                        if sub_897e3117[address(ext_call.return_data[0])] > !arg1:
                                            revert with 0, 17
                                        sub_897e3117[address(ext_call.return_data[0])] += arg1
                                        if currentRaisedAmount > !arg1:
                                            revert with 0, 17
                                        currentRaisedAmount += arg1
                                        if not stor122[address(ext_call.return_data[0])]:
                                            stor122[address(ext_call.return_data[0])] = 1
                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                            stor120.length++
                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 1, block.timestamp, msg.sender
                                    revert with 0, 17
                                if var100002 > -1 / var100001:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not var100001 * var100002:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / var100001 * var100002):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / var100001 * var100002
            if sub_897e3117[address(ext_call.return_data[0])] > !arg1:
                revert with 0, 17
            sub_897e3117[address(ext_call.return_data[0])] += arg1
            if currentRaisedAmount > !arg1:
                revert with 0, 17
            currentRaisedAmount += arg1
            if not stor122[address(ext_call.return_data[0])]:
                stor122[address(ext_call.return_data[0])] = 1
                stor121[address(ext_call.return_data[0])] = stor120.length
                stor120.length++
                stor8DC6[stor120.length] = address(ext_call.return_data[0])
    else:
        require msg.value == arg1
        if raiseAmount < reservedAmount:
            revert with 0, 17
        if currentRaisedAmount > !arg1:
            revert with 0, 17
        if currentRaisedAmount + arg1 > raiseAmount - reservedAmount:
            revert with 0, 'Already full filled'
        if block.timestamp >= startTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'depositPrivateSale: Private Sale is ended!'
        require ext_code.size(stor104)
        staticcall stor104.0x6f77926b with:
                gas gas_remaining wei
               args msg.sender
        mem[96 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == bool(ext_call.return_data[32])
        require ext_call.return_data[96] == bool(ext_call.return_data[96])
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'depositPrivateSale: Not exist on the whitelist'
        if not ext_call.return_data[32]:
            revert with 0, 'depositPrivateSale: Not passed KYC'
        if bool(ext_call.return_data[96]) != 1:
            revert with 0, 'depositPrivateSale: Not allowed to participate in private sale'
        if recipients[msg.sender].field_0 > !arg1:
            revert with 0, 17
        if ext_call.return_data[128] < recipients[msg.sender].field_0 + arg1:
            revert with 0, 'Deposit: Can't exceed the privateMaxAlloc!'
        if not fundTokenAddress:
            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                revert with 0, 17
            if not exchangeRate:
                revert with 0, 18
            recipients[msg.sender].field_0 += arg1
            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                revert with 0, 17
            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
            if sub_897e3117[address(ext_call.return_data[0])] > !arg1:
                revert with 0, 17
            sub_897e3117[address(ext_call.return_data[0])] += arg1
            if currentRaisedAmount > !arg1:
                revert with 0, 17
            currentRaisedAmount += arg1
            if not stor122[address(ext_call.return_data[0])]:
                stor122[address(ext_call.return_data[0])] = 1
                stor121[address(ext_call.return_data[0])] = stor120.length
                stor120.length++
                stor8DC6[stor120.length] = ext_call.return_data[12 len 20]
        else:
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = arg1
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(fundTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
            mem[ceil32(return_data.size) + 392] = 0
            call fundTokenAddress with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not ext_call.return_data[0]:
                    if not fundTokenAddress:
                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                            revert with 0, 17
                        if not exchangeRate:
                            revert with 0, 18
                        recipients[msg.sender].field_0 += arg1
                        if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                            revert with 0, 17
                        sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                    else:
                        require ext_code.size(fundTokenAddress)
                        staticcall fundTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                revert with 0, 17
                            if not exchangeRate:
                                revert with 0, 18
                            recipients[msg.sender].field_0 += arg1
                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                revert with 0, 17
                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not 10^ext_call.return_data[31 len 1]:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                            else:
                                if var94005 > 1:
                                    s = var94001
                                    t = var94002
                                    u = var94005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                        if sub_897e3117[address(ext_call.return_data[0])] > !arg1:
                                            revert with 0, 17
                                        sub_897e3117[address(ext_call.return_data[0])] += arg1
                                        if currentRaisedAmount > !arg1:
                                            revert with 0, 17
                                        currentRaisedAmount += arg1
                                        if not stor122[address(ext_call.return_data[0])]:
                                            stor122[address(ext_call.return_data[0])] = 1
                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                            stor120.length++
                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 1, block.timestamp, msg.sender
                                    revert with 0, 17
                                if var94002 > -1 / var94001:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not var94001 * var94002:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / var94001 * var94002):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / var94001 * var94002
                else:
                    require ext_call.return_data[0] >= 32
                    require ext_call.return_data[32] == bool(ext_call.return_data[32])
                    if not ext_call.return_data[32]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not fundTokenAddress:
                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                            revert with 0, 17
                        if not exchangeRate:
                            revert with 0, 18
                        recipients[msg.sender].field_0 += arg1
                        if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                            revert with 0, 17
                        sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                    else:
                        require ext_code.size(fundTokenAddress)
                        staticcall fundTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                revert with 0, 17
                            if not exchangeRate:
                                revert with 0, 18
                            recipients[msg.sender].field_0 += arg1
                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                revert with 0, 17
                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not 10^ext_call.return_data[31 len 1]:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                            else:
                                if var101005 > 1:
                                    s = var101001
                                    t = var101002
                                    u = var101005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                        if sub_897e3117[address(ext_call.return_data[0])] > !arg1:
                                            revert with 0, 17
                                        sub_897e3117[address(ext_call.return_data[0])] += arg1
                                        if currentRaisedAmount > !arg1:
                                            revert with 0, 17
                                        currentRaisedAmount += arg1
                                        if not stor122[address(ext_call.return_data[0])]:
                                            stor122[address(ext_call.return_data[0])] = 1
                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                            stor120.length++
                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 1, block.timestamp, msg.sender
                                    revert with 0, 17
                                if var101002 > -1 / var101001:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not var101001 * var101002:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / var101001 * var101002):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / var101001 * var101002
            else:
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if not fundTokenAddress:
                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                            revert with 0, 17
                        if not exchangeRate:
                            revert with 0, 18
                        recipients[msg.sender].field_0 += arg1
                        if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                            revert with 0, 17
                        sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                    else:
                        require ext_code.size(fundTokenAddress)
                        staticcall fundTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                revert with 0, 17
                            if not exchangeRate:
                                revert with 0, 18
                            recipients[msg.sender].field_0 += arg1
                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                revert with 0, 17
                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not 10^ext_call.return_data[31 len 1]:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                            else:
                                if var94005 > 1:
                                    s = var94001
                                    t = var94002
                                    u = var94005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                        if sub_897e3117[address(ext_call.return_data[0])] > !arg1:
                                            revert with 0, 17
                                        sub_897e3117[address(ext_call.return_data[0])] += arg1
                                        if currentRaisedAmount > !arg1:
                                            revert with 0, 17
                                        currentRaisedAmount += arg1
                                        if not stor122[address(ext_call.return_data[0])]:
                                            stor122[address(ext_call.return_data[0])] = 1
                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                            stor120.length++
                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 1, block.timestamp, msg.sender
                                    revert with 0, 17
                                if var94002 > -1 / var94001:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not var94001 * var94002:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / var94001 * var94002):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / var94001 * var94002
                else:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if not fundTokenAddress:
                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                            revert with 0, 17
                        if not exchangeRate:
                            revert with 0, 18
                        recipients[msg.sender].field_0 += arg1
                        if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                            revert with 0, 17
                        sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                    else:
                        require ext_code.size(fundTokenAddress)
                        staticcall fundTokenAddress.0x313ce567 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                        if not ext_call.return_data[31 len 1]:
                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                revert with 0, 17
                            if not exchangeRate:
                                revert with 0, 18
                            recipients[msg.sender].field_0 += arg1
                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                revert with 0, 17
                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate
                        else:
                            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                                if 10^ext_call.return_data[31 len 1] > -1:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not 10^ext_call.return_data[31 len 1]:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                            else:
                                if var101005 > 1:
                                    s = var101001
                                    t = var101002
                                    u = var101005
                                    while s <= -1 / s:
                                        if not bool(u):
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                        else:
                                            if uint255(u) * 0.5 > 1:
                                                s = s * s
                                                t = s * t
                                                u = uint255(u) * 0.5
                                                continue 
                                            if s * t > -1 / s * s:
                                                revert with 0, 17
                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                revert with 0, 17
                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                revert with 0, 17
                                            if not exchangeRate:
                                                revert with 0, 18
                                            if not s * s * s * t:
                                                revert with 0, 18
                                            recipients[msg.sender].field_0 += arg1
                                            if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                revert with 0, 17
                                            sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                        if sub_897e3117[address(ext_call.return_data[0])] > !arg1:
                                            revert with 0, 17
                                        sub_897e3117[address(ext_call.return_data[0])] += arg1
                                        if currentRaisedAmount > !arg1:
                                            revert with 0, 17
                                        currentRaisedAmount += arg1
                                        if not stor122[address(ext_call.return_data[0])]:
                                            stor122[address(ext_call.return_data[0])] = 1
                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                            stor120.length++
                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 1, block.timestamp, msg.sender
                                    revert with 0, 17
                                if var101002 > -1 / var101001:
                                    revert with 0, 17
                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 0, 17
                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                    revert with 0, 17
                                if not exchangeRate:
                                    revert with 0, 18
                                if not var101001 * var101002:
                                    revert with 0, 18
                                recipients[msg.sender].field_0 += arg1
                                if sub_456e8ed6 > !(10000000000 * 10^18 * arg1 / exchangeRate / var101001 * var101002):
                                    revert with 0, 17
                                sub_456e8ed6 += 10000000000 * 10^18 * arg1 / exchangeRate / var101001 * var101002
            if sub_897e3117[address(ext_call.return_data[0])] > !arg1:
                revert with 0, 17
            sub_897e3117[address(ext_call.return_data[0])] += arg1
            if currentRaisedAmount > !arg1:
                revert with 0, 17
            currentRaisedAmount += arg1
            if not stor122[address(ext_call.return_data[0])]:
                stor122[address(ext_call.return_data[0])] = 1
                stor121[address(ext_call.return_data[0])] = stor120.length
                stor120.length++
                stor8DC6[stor120.length] = address(ext_call.return_data[0])
    emit 0xc0ac20ed: recipients[msg.sender].field_256, 1, block.timestamp, msg.sender
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if isPresalePaused:
        revert with 0, 'Presale is not in progress'
    else:
        if block.timestamp < startTime:
            revert with 0, 'Presale is not in progress'
        else:
            if startTime > !sub_c6051b7e:
                revert with 0, 17
            else:
                if block.timestamp < startTime:
                    revert with 0, 'Presale is not in progress'
                else:
                    if block.timestamp > startTime + sub_c6051b7e:
                        revert with 0, 'Presale is not in progress'
                    else:
                        if fundTokenAddress:
                            if raiseAmount < reservedAmount:
                                revert with 0, 17
                            else:
                                if currentRaisedAmount > !arg1:
                                    revert with 0, 17
                                else:
                                    if currentRaisedAmount + arg1 > raiseAmount - reservedAmount:
                                        revert with 0, 'Already full filled'
                                    else:
                                        require ext_code.size(stor104)
                                        staticcall stor104.0x6f77926b with:
                                                gas gas_remaining wei
                                               args msg.sender
                                        mem[96 len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 160
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                            require ext_call.return_data[96] == bool(ext_call.return_data[96])
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, 'Deposit: Not exist on the whitelist'
                                            else:
                                                if not ext_call.return_data[32]:
                                                    revert with 0, 'Deposit: Not passed KYC'
                                                else:
                                                    if recipients[msg.sender].field_0 > !arg1:
                                                        revert with 0, 17
                                                    else:
                                                        if ext_call.return_data[64] > !sub_897e3117[address(ext_call.return_data[0])]:
                                                            revert with 0, 17
                                                        else:
                                                            if ext_call.return_data[64] + sub_897e3117[address(ext_call.return_data[0])] < recipients[msg.sender].field_0 + arg1:
                                                                revert with 0, 'Deposit: Can't exceed the publicMaxAlloc!'
                                                            else:
                                                                if not fundTokenAddress:
                                                                    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if not exchangeRate:
                                                                                revert with 0, 18
                                                                            else:
                                                                                recipients[msg.sender].field_0 += arg1
                                                                                if currentRaisedAmount > !arg1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    currentRaisedAmount += arg1
                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                        else:
                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                            stor120.length++
                                                                                            stor8DC6[stor120.length] = ext_call.return_data[12 len 20]
                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                else:
                                                                    mem[ceil32(return_data.size) + 132] = msg.sender
                                                                    mem[ceil32(return_data.size) + 164] = this.address
                                                                    mem[ceil32(return_data.size) + 196] = arg1
                                                                    mem[ceil32(return_data.size) + 96] = 100
                                                                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                                                                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
                                                                    mem[ceil32(return_data.size) + 228] = 32
                                                                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                                                                    if eth.balance(this.address) < 0:
                                                                        revert with 0, 'Address: insufficient balance for call'
                                                                    else:
                                                                        if not ext_code.size(fundTokenAddress):
                                                                            revert with 0, 'Address: call to non-contract'
                                                                        else:
                                                                            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
                                                                            mem[ceil32(return_data.size) + 392] = 0
                                                                            call fundTokenAddress with:
                                                                               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
                                                                                 gas gas_remaining wei
                                                                                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
                                                                            if not return_data.size:
                                                                                if not ext_call.success:
                                                                                    if ext_call.return_data[0]:
                                                                                        revert with memory
                                                                                          from 128
                                                                                           len ext_call.return_data[0]
                                                                                    else:
                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                else:
                                                                                    if not ext_call.return_data[0]:
                                                                                        if not fundTokenAddress:
                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if not exchangeRate:
                                                                                                        revert with 0, 18
                                                                                                    else:
                                                                                                        recipients[msg.sender].field_0 += arg1
                                                                                                        if currentRaisedAmount > !arg1:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            currentRaisedAmount += arg1
                                                                                                            if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                                                                                                                if stor122[address(ext_call.return_data[0])]:
                                                                                                                    emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                else:
                                                                                                                    stor122[address(ext_call.return_data[0])] = 1
                                                                                                                    stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                    stor120.length++
                                                                                                                    stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                    emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                        else:
                                                                                            require ext_code.size(fundTokenAddress)
                                                                                            staticcall fundTokenAddress.0x313ce567 with:
                                                                                                    gas gas_remaining wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                                                                if ext_call.return_data[31 len 1]:
                                                                                                    if not bool(ext_call.return_data[31 len 1] < 78) and not bool(ext_call.return_data[31 len 1] < 32):
                                                                                                        if var105005 > 1:
                                                                                                            s = var105001
                                                                                                            t = var105002
                                                                                                            u = var105005
                                                                                                            while s <= -1 / s:
                                                                                                                if not bool(u):
                                                                                                                    if uint255(u) * 0.5 > 1:
                                                                                                                        s = s * s
                                                                                                                        t = t
                                                                                                                        u = uint255(u) * 0.5
                                                                                                                        continue 
                                                                                                                    else:
                                                                                                                        if t > -1 / s * s:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if not exchangeRate:
                                                                                                                                        revert with 0, 18
                                                                                                                                    else:
                                                                                                                                        if not s * s * t:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                currentRaisedAmount += arg1
                                                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                    else:
                                                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                        stor120.length++
                                                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                else:
                                                                                                                    if uint255(u) * 0.5 > 1:
                                                                                                                        s = s * s
                                                                                                                        t = s * t
                                                                                                                        u = uint255(u) * 0.5
                                                                                                                        continue 
                                                                                                                    else:
                                                                                                                        if s * t > -1 / s * s:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if not exchangeRate:
                                                                                                                                        revert with 0, 18
                                                                                                                                    else:
                                                                                                                                        if not s * s * s * t:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                currentRaisedAmount += arg1
                                                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                    else:
                                                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                        stor120.length++
                                                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if var105002 > -1 / var105001:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if not exchangeRate:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            if not var105001 * var105002:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / var105001 * var105002):
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / var105001 * var105002
                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                        else:
                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                            stor120.length++
                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                    else:
                                                                                                        if 10^ext_call.return_data[31 len 1] > -1:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if not exchangeRate:
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if not 10^ext_call.return_data[31 len 1]:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                currentRaisedAmount += arg1
                                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                    else:
                                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                        stor120.length++
                                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                else:
                                                                                                    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if not exchangeRate:
                                                                                                                revert with 0, 18
                                                                                                            else:
                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    currentRaisedAmount += arg1
                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate
                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                        else:
                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                            stor120.length++
                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                    else:
                                                                                        require ext_call.return_data[0] >= 32
                                                                                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                                                                        if not ext_call.return_data[32]:
                                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                        else:
                                                                                            if not fundTokenAddress:
                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if not exchangeRate:
                                                                                                            revert with 0, 18
                                                                                                        else:
                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                currentRaisedAmount += arg1
                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                    else:
                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                        stor120.length++
                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                            else:
                                                                                                require ext_code.size(fundTokenAddress)
                                                                                                staticcall fundTokenAddress.0x313ce567 with:
                                                                                                        gas gas_remaining wei
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                                                                    if ext_call.return_data[31 len 1]:
                                                                                                        if not bool(ext_call.return_data[31 len 1] < 78) and not bool(ext_call.return_data[31 len 1] < 32):
                                                                                                            if var112005 > 1:
                                                                                                                s = var112001
                                                                                                                t = var112002
                                                                                                                u = var112005
                                                                                                                while s <= -1 / s:
                                                                                                                    if not bool(u):
                                                                                                                        if uint255(u) * 0.5 > 1:
                                                                                                                            s = s * s
                                                                                                                            t = t
                                                                                                                            u = uint255(u) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            if t > -1 / s * s:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if not exchangeRate:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            if not s * s * t:
                                                                                                                                                revert with 0, 18
                                                                                                                                            else:
                                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                        else:
                                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                            stor120.length++
                                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                    else:
                                                                                                                        if uint255(u) * 0.5 > 1:
                                                                                                                            s = s * s
                                                                                                                            t = s * t
                                                                                                                            u = uint255(u) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            if s * t > -1 / s * s:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if not exchangeRate:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            if not s * s * s * t:
                                                                                                                                                revert with 0, 18
                                                                                                                                            else:
                                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                        else:
                                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                            stor120.length++
                                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if var112002 > -1 / var112001:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if not exchangeRate:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                if not var112001 * var112002:
                                                                                                                                    revert with 0, 18
                                                                                                                                else:
                                                                                                                                    recipients[msg.sender].field_0 += arg1
                                                                                                                                    if currentRaisedAmount > !arg1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        currentRaisedAmount += arg1
                                                                                                                                        if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / var112001 * var112002):
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / var112001 * var112002
                                                                                                                                            if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                            else:
                                                                                                                                                stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                stor120.length++
                                                                                                                                                stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                        else:
                                                                                                            if 10^ext_call.return_data[31 len 1] > -1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if not exchangeRate:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            if not 10^ext_call.return_data[31 len 1]:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                        else:
                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                            stor120.length++
                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                    else:
                                                                                                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if not exchangeRate:
                                                                                                                    revert with 0, 18
                                                                                                                else:
                                                                                                                    recipients[msg.sender].field_0 += arg1
                                                                                                                    if currentRaisedAmount > !arg1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        currentRaisedAmount += arg1
                                                                                                                        if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate
                                                                                                                            if stor122[address(ext_call.return_data[0])]:
                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                            else:
                                                                                                                                stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                stor120.length++
                                                                                                                                stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                            else:
                                                                                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                if not ext_call.success:
                                                                                    if return_data.size:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        if not fundTokenAddress:
                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if not exchangeRate:
                                                                                                        revert with 0, 18
                                                                                                    else:
                                                                                                        recipients[msg.sender].field_0 += arg1
                                                                                                        if currentRaisedAmount > !arg1:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            currentRaisedAmount += arg1
                                                                                                            if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                                                                                                                if stor122[address(ext_call.return_data[0])]:
                                                                                                                    emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                else:
                                                                                                                    stor122[address(ext_call.return_data[0])] = 1
                                                                                                                    stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                    stor120.length++
                                                                                                                    stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                    emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                        else:
                                                                                            require ext_code.size(fundTokenAddress)
                                                                                            staticcall fundTokenAddress.0x313ce567 with:
                                                                                                    gas gas_remaining wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                                                                if ext_call.return_data[31 len 1]:
                                                                                                    if not bool(ext_call.return_data[31 len 1] < 78) and not bool(ext_call.return_data[31 len 1] < 32):
                                                                                                        if var105005 > 1:
                                                                                                            s = var105001
                                                                                                            t = var105002
                                                                                                            u = var105005
                                                                                                            while s <= -1 / s:
                                                                                                                if not bool(u):
                                                                                                                    if uint255(u) * 0.5 > 1:
                                                                                                                        s = s * s
                                                                                                                        t = t
                                                                                                                        u = uint255(u) * 0.5
                                                                                                                        continue 
                                                                                                                    else:
                                                                                                                        if t > -1 / s * s:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if not exchangeRate:
                                                                                                                                        revert with 0, 18
                                                                                                                                    else:
                                                                                                                                        if not s * s * t:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                currentRaisedAmount += arg1
                                                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                    else:
                                                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                        stor120.length++
                                                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                else:
                                                                                                                    if uint255(u) * 0.5 > 1:
                                                                                                                        s = s * s
                                                                                                                        t = s * t
                                                                                                                        u = uint255(u) * 0.5
                                                                                                                        continue 
                                                                                                                    else:
                                                                                                                        if s * t > -1 / s * s:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if not exchangeRate:
                                                                                                                                        revert with 0, 18
                                                                                                                                    else:
                                                                                                                                        if not s * s * s * t:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                currentRaisedAmount += arg1
                                                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                    else:
                                                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                        stor120.length++
                                                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if var105002 > -1 / var105001:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if not exchangeRate:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            if not var105001 * var105002:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / var105001 * var105002):
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / var105001 * var105002
                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                        else:
                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                            stor120.length++
                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                    else:
                                                                                                        if 10^ext_call.return_data[31 len 1] > -1:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if not exchangeRate:
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if not 10^ext_call.return_data[31 len 1]:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                currentRaisedAmount += arg1
                                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                    else:
                                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                        stor120.length++
                                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                else:
                                                                                                    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if not exchangeRate:
                                                                                                                revert with 0, 18
                                                                                                            else:
                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    currentRaisedAmount += arg1
                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate
                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                        else:
                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                            stor120.length++
                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                                                                        if not mem[ceil32(return_data.size) + 324]:
                                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                        else:
                                                                                            if not fundTokenAddress:
                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if not exchangeRate:
                                                                                                            revert with 0, 18
                                                                                                        else:
                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                currentRaisedAmount += arg1
                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                    else:
                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                        stor120.length++
                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                            else:
                                                                                                require ext_code.size(fundTokenAddress)
                                                                                                staticcall fundTokenAddress.0x313ce567 with:
                                                                                                        gas gas_remaining wei
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                                                                    if ext_call.return_data[31 len 1]:
                                                                                                        if not bool(ext_call.return_data[31 len 1] < 78) and not bool(ext_call.return_data[31 len 1] < 32):
                                                                                                            if var112005 > 1:
                                                                                                                s = var112001
                                                                                                                t = var112002
                                                                                                                u = var112005
                                                                                                                while s <= -1 / s:
                                                                                                                    if not bool(u):
                                                                                                                        if uint255(u) * 0.5 > 1:
                                                                                                                            s = s * s
                                                                                                                            t = t
                                                                                                                            u = uint255(u) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            if t > -1 / s * s:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if not exchangeRate:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            if not s * s * t:
                                                                                                                                                revert with 0, 18
                                                                                                                                            else:
                                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                        else:
                                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                            stor120.length++
                                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                    else:
                                                                                                                        if uint255(u) * 0.5 > 1:
                                                                                                                            s = s * s
                                                                                                                            t = s * t
                                                                                                                            u = uint255(u) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            if s * t > -1 / s * s:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if not exchangeRate:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            if not s * s * s * t:
                                                                                                                                                revert with 0, 18
                                                                                                                                            else:
                                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                        else:
                                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                            stor120.length++
                                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if var112002 > -1 / var112001:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if not exchangeRate:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                if not var112001 * var112002:
                                                                                                                                    revert with 0, 18
                                                                                                                                else:
                                                                                                                                    recipients[msg.sender].field_0 += arg1
                                                                                                                                    if currentRaisedAmount > !arg1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        currentRaisedAmount += arg1
                                                                                                                                        if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / var112001 * var112002):
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / var112001 * var112002
                                                                                                                                            if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                            else:
                                                                                                                                                stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                stor120.length++
                                                                                                                                                stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                        else:
                                                                                                            if 10^ext_call.return_data[31 len 1] > -1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if not exchangeRate:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            if not 10^ext_call.return_data[31 len 1]:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                        else:
                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                            stor120.length++
                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                    else:
                                                                                                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if not exchangeRate:
                                                                                                                    revert with 0, 18
                                                                                                                else:
                                                                                                                    recipients[msg.sender].field_0 += arg1
                                                                                                                    if currentRaisedAmount > !arg1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        currentRaisedAmount += arg1
                                                                                                                        if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate
                                                                                                                            if stor122[address(ext_call.return_data[0])]:
                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                            else:
                                                                                                                                stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                stor120.length++
                                                                                                                                stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                        else:
                            require msg.value == arg1
                            if raiseAmount < reservedAmount:
                                revert with 0, 17
                            else:
                                if currentRaisedAmount > !arg1:
                                    revert with 0, 17
                                else:
                                    if currentRaisedAmount + arg1 > raiseAmount - reservedAmount:
                                        revert with 0, 'Already full filled'
                                    else:
                                        require ext_code.size(stor104)
                                        staticcall stor104.0x6f77926b with:
                                                gas gas_remaining wei
                                               args msg.sender
                                        mem[96 len 160] = ext_call.return_data[0 len 160]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 160
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                            require ext_call.return_data[96] == bool(ext_call.return_data[96])
                                            if not ext_call.return_data[12 len 20]:
                                                revert with 0, 'Deposit: Not exist on the whitelist'
                                            else:
                                                if not ext_call.return_data[32]:
                                                    revert with 0, 'Deposit: Not passed KYC'
                                                else:
                                                    if recipients[msg.sender].field_0 > !arg1:
                                                        revert with 0, 17
                                                    else:
                                                        if ext_call.return_data[64] > !sub_897e3117[address(ext_call.return_data[0])]:
                                                            revert with 0, 17
                                                        else:
                                                            if ext_call.return_data[64] + sub_897e3117[address(ext_call.return_data[0])] < recipients[msg.sender].field_0 + arg1:
                                                                revert with 0, 'Deposit: Can't exceed the publicMaxAlloc!'
                                                            else:
                                                                if not fundTokenAddress:
                                                                    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                        revert with 0, 17
                                                                    else:
                                                                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                            revert with 0, 17
                                                                        else:
                                                                            if not exchangeRate:
                                                                                revert with 0, 18
                                                                            else:
                                                                                recipients[msg.sender].field_0 += arg1
                                                                                if currentRaisedAmount > !arg1:
                                                                                    revert with 0, 17
                                                                                else:
                                                                                    currentRaisedAmount += arg1
                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                                                                                        revert with 0, 17
                                                                                    else:
                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                        else:
                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                            stor120.length++
                                                                                            stor8DC6[stor120.length] = ext_call.return_data[12 len 20]
                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                else:
                                                                    mem[ceil32(return_data.size) + 132] = msg.sender
                                                                    mem[ceil32(return_data.size) + 164] = this.address
                                                                    mem[ceil32(return_data.size) + 196] = arg1
                                                                    mem[ceil32(return_data.size) + 96] = 100
                                                                    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                                                                    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
                                                                    mem[ceil32(return_data.size) + 228] = 32
                                                                    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                                                                    if eth.balance(this.address) < 0:
                                                                        revert with 0, 'Address: insufficient balance for call'
                                                                    else:
                                                                        if not ext_code.size(fundTokenAddress):
                                                                            revert with 0, 'Address: call to non-contract'
                                                                        else:
                                                                            mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
                                                                            mem[ceil32(return_data.size) + 392] = 0
                                                                            call fundTokenAddress with:
                                                                               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
                                                                                 gas gas_remaining wei
                                                                                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
                                                                            if not return_data.size:
                                                                                if not ext_call.success:
                                                                                    if ext_call.return_data[0]:
                                                                                        revert with memory
                                                                                          from 128
                                                                                           len ext_call.return_data[0]
                                                                                    else:
                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                else:
                                                                                    if not ext_call.return_data[0]:
                                                                                        if not fundTokenAddress:
                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if not exchangeRate:
                                                                                                        revert with 0, 18
                                                                                                    else:
                                                                                                        recipients[msg.sender].field_0 += arg1
                                                                                                        if currentRaisedAmount > !arg1:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            currentRaisedAmount += arg1
                                                                                                            if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                                                                                                                if stor122[address(ext_call.return_data[0])]:
                                                                                                                    emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                else:
                                                                                                                    stor122[address(ext_call.return_data[0])] = 1
                                                                                                                    stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                    stor120.length++
                                                                                                                    stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                    emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                        else:
                                                                                            require ext_code.size(fundTokenAddress)
                                                                                            staticcall fundTokenAddress.0x313ce567 with:
                                                                                                    gas gas_remaining wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                                                                if ext_call.return_data[31 len 1]:
                                                                                                    if not bool(ext_call.return_data[31 len 1] < 78) and not bool(ext_call.return_data[31 len 1] < 32):
                                                                                                        if var106005 > 1:
                                                                                                            s = var106001
                                                                                                            t = var106002
                                                                                                            u = var106005
                                                                                                            while s <= -1 / s:
                                                                                                                if not bool(u):
                                                                                                                    if uint255(u) * 0.5 > 1:
                                                                                                                        s = s * s
                                                                                                                        t = t
                                                                                                                        u = uint255(u) * 0.5
                                                                                                                        continue 
                                                                                                                    else:
                                                                                                                        if t > -1 / s * s:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if not exchangeRate:
                                                                                                                                        revert with 0, 18
                                                                                                                                    else:
                                                                                                                                        if not s * s * t:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                currentRaisedAmount += arg1
                                                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                    else:
                                                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                        stor120.length++
                                                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                else:
                                                                                                                    if uint255(u) * 0.5 > 1:
                                                                                                                        s = s * s
                                                                                                                        t = s * t
                                                                                                                        u = uint255(u) * 0.5
                                                                                                                        continue 
                                                                                                                    else:
                                                                                                                        if s * t > -1 / s * s:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if not exchangeRate:
                                                                                                                                        revert with 0, 18
                                                                                                                                    else:
                                                                                                                                        if not s * s * s * t:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                currentRaisedAmount += arg1
                                                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                    else:
                                                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                        stor120.length++
                                                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if var106002 > -1 / var106001:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if not exchangeRate:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            if not var106001 * var106002:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / var106001 * var106002):
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / var106001 * var106002
                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                        else:
                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                            stor120.length++
                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                    else:
                                                                                                        if 10^ext_call.return_data[31 len 1] > -1:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if not exchangeRate:
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if not 10^ext_call.return_data[31 len 1]:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                currentRaisedAmount += arg1
                                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                    else:
                                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                        stor120.length++
                                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                else:
                                                                                                    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if not exchangeRate:
                                                                                                                revert with 0, 18
                                                                                                            else:
                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    currentRaisedAmount += arg1
                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate
                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                        else:
                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                            stor120.length++
                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                    else:
                                                                                        require ext_call.return_data[0] >= 32
                                                                                        require ext_call.return_data[32] == bool(ext_call.return_data[32])
                                                                                        if not ext_call.return_data[32]:
                                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                        else:
                                                                                            if not fundTokenAddress:
                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if not exchangeRate:
                                                                                                            revert with 0, 18
                                                                                                        else:
                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                currentRaisedAmount += arg1
                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                    else:
                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                        stor120.length++
                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                            else:
                                                                                                require ext_code.size(fundTokenAddress)
                                                                                                staticcall fundTokenAddress.0x313ce567 with:
                                                                                                        gas gas_remaining wei
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                                                                    if ext_call.return_data[31 len 1]:
                                                                                                        if not bool(ext_call.return_data[31 len 1] < 78) and not bool(ext_call.return_data[31 len 1] < 32):
                                                                                                            if var113005 > 1:
                                                                                                                s = var113001
                                                                                                                t = var113002
                                                                                                                u = var113005
                                                                                                                while s <= -1 / s:
                                                                                                                    if not bool(u):
                                                                                                                        if uint255(u) * 0.5 > 1:
                                                                                                                            s = s * s
                                                                                                                            t = t
                                                                                                                            u = uint255(u) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            if t > -1 / s * s:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if not exchangeRate:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            if not s * s * t:
                                                                                                                                                revert with 0, 18
                                                                                                                                            else:
                                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                        else:
                                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                            stor120.length++
                                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                    else:
                                                                                                                        if uint255(u) * 0.5 > 1:
                                                                                                                            s = s * s
                                                                                                                            t = s * t
                                                                                                                            u = uint255(u) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            if s * t > -1 / s * s:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if not exchangeRate:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            if not s * s * s * t:
                                                                                                                                                revert with 0, 18
                                                                                                                                            else:
                                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                        else:
                                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                            stor120.length++
                                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if var113002 > -1 / var113001:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if not exchangeRate:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                if not var113001 * var113002:
                                                                                                                                    revert with 0, 18
                                                                                                                                else:
                                                                                                                                    recipients[msg.sender].field_0 += arg1
                                                                                                                                    if currentRaisedAmount > !arg1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        currentRaisedAmount += arg1
                                                                                                                                        if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / var113001 * var113002):
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / var113001 * var113002
                                                                                                                                            if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                            else:
                                                                                                                                                stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                stor120.length++
                                                                                                                                                stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                        else:
                                                                                                            if 10^ext_call.return_data[31 len 1] > -1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if not exchangeRate:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            if not 10^ext_call.return_data[31 len 1]:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                        else:
                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                            stor120.length++
                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                    else:
                                                                                                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if not exchangeRate:
                                                                                                                    revert with 0, 18
                                                                                                                else:
                                                                                                                    recipients[msg.sender].field_0 += arg1
                                                                                                                    if currentRaisedAmount > !arg1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        currentRaisedAmount += arg1
                                                                                                                        if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate
                                                                                                                            if stor122[address(ext_call.return_data[0])]:
                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                            else:
                                                                                                                                stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                stor120.length++
                                                                                                                                stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                            else:
                                                                                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                if not ext_call.success:
                                                                                    if return_data.size:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        if not fundTokenAddress:
                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                revert with 0, 17
                                                                                            else:
                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if not exchangeRate:
                                                                                                        revert with 0, 18
                                                                                                    else:
                                                                                                        recipients[msg.sender].field_0 += arg1
                                                                                                        if currentRaisedAmount > !arg1:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            currentRaisedAmount += arg1
                                                                                                            if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                                                                                                                if stor122[address(ext_call.return_data[0])]:
                                                                                                                    emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                else:
                                                                                                                    stor122[address(ext_call.return_data[0])] = 1
                                                                                                                    stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                    stor120.length++
                                                                                                                    stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                    emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                        else:
                                                                                            require ext_code.size(fundTokenAddress)
                                                                                            staticcall fundTokenAddress.0x313ce567 with:
                                                                                                    gas gas_remaining wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                                                                if ext_call.return_data[31 len 1]:
                                                                                                    if not bool(ext_call.return_data[31 len 1] < 78) and not bool(ext_call.return_data[31 len 1] < 32):
                                                                                                        if var106005 > 1:
                                                                                                            s = var106001
                                                                                                            t = var106002
                                                                                                            u = var106005
                                                                                                            while s <= -1 / s:
                                                                                                                if not bool(u):
                                                                                                                    if uint255(u) * 0.5 > 1:
                                                                                                                        s = s * s
                                                                                                                        t = t
                                                                                                                        u = uint255(u) * 0.5
                                                                                                                        continue 
                                                                                                                    else:
                                                                                                                        if t > -1 / s * s:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if not exchangeRate:
                                                                                                                                        revert with 0, 18
                                                                                                                                    else:
                                                                                                                                        if not s * s * t:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                currentRaisedAmount += arg1
                                                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                    else:
                                                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                        stor120.length++
                                                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                else:
                                                                                                                    if uint255(u) * 0.5 > 1:
                                                                                                                        s = s * s
                                                                                                                        t = s * t
                                                                                                                        u = uint255(u) * 0.5
                                                                                                                        continue 
                                                                                                                    else:
                                                                                                                        if s * t > -1 / s * s:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if not exchangeRate:
                                                                                                                                        revert with 0, 18
                                                                                                                                    else:
                                                                                                                                        if not s * s * s * t:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                                                revert with 0, 17
                                                                                                                                            else:
                                                                                                                                                currentRaisedAmount += arg1
                                                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                    else:
                                                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                        stor120.length++
                                                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if var106002 > -1 / var106001:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if not exchangeRate:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            if not var106001 * var106002:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / var106001 * var106002):
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / var106001 * var106002
                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                        else:
                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                            stor120.length++
                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                    else:
                                                                                                        if 10^ext_call.return_data[31 len 1] > -1:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if not exchangeRate:
                                                                                                                        revert with 0, 18
                                                                                                                    else:
                                                                                                                        if not 10^ext_call.return_data[31 len 1]:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                currentRaisedAmount += arg1
                                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                    else:
                                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                        stor120.length++
                                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                else:
                                                                                                    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if not exchangeRate:
                                                                                                                revert with 0, 18
                                                                                                            else:
                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    currentRaisedAmount += arg1
                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate
                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                        else:
                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                            stor120.length++
                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                                                                        if not mem[ceil32(return_data.size) + 324]:
                                                                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                                                                        else:
                                                                                            if not fundTokenAddress:
                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                    revert with 0, 17
                                                                                                else:
                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                        revert with 0, 17
                                                                                                    else:
                                                                                                        if not exchangeRate:
                                                                                                            revert with 0, 18
                                                                                                        else:
                                                                                                            recipients[msg.sender].field_0 += arg1
                                                                                                            if currentRaisedAmount > !arg1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                currentRaisedAmount += arg1
                                                                                                                if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^18):
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^18
                                                                                                                    if stor122[address(ext_call.return_data[0])]:
                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                    else:
                                                                                                                        stor122[address(ext_call.return_data[0])] = 1
                                                                                                                        stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                        stor120.length++
                                                                                                                        stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                        emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                            else:
                                                                                                require ext_code.size(fundTokenAddress)
                                                                                                staticcall fundTokenAddress.0x313ce567 with:
                                                                                                        gas gas_remaining wei
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                                                                                                    if ext_call.return_data[31 len 1]:
                                                                                                        if not bool(ext_call.return_data[31 len 1] < 78) and not bool(ext_call.return_data[31 len 1] < 32):
                                                                                                            if var113005 > 1:
                                                                                                                s = var113001
                                                                                                                t = var113002
                                                                                                                u = var113005
                                                                                                                while s <= -1 / s:
                                                                                                                    if not bool(u):
                                                                                                                        if uint255(u) * 0.5 > 1:
                                                                                                                            s = s * s
                                                                                                                            t = t
                                                                                                                            u = uint255(u) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            if t > -1 / s * s:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if not exchangeRate:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            if not s * s * t:
                                                                                                                                                revert with 0, 18
                                                                                                                                            else:
                                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * t):
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * t
                                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                        else:
                                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                            stor120.length++
                                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                    else:
                                                                                                                        if uint255(u) * 0.5 > 1:
                                                                                                                            s = s * s
                                                                                                                            t = s * t
                                                                                                                            u = uint255(u) * 0.5
                                                                                                                            continue 
                                                                                                                        else:
                                                                                                                            if s * t > -1 / s * s:
                                                                                                                                revert with 0, 17
                                                                                                                            else:
                                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        if not exchangeRate:
                                                                                                                                            revert with 0, 18
                                                                                                                                        else:
                                                                                                                                            if not s * s * s * t:
                                                                                                                                                revert with 0, 18
                                                                                                                                            else:
                                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                                    revert with 0, 17
                                                                                                                                                else:
                                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t):
                                                                                                                                                        revert with 0, 17
                                                                                                                                                    else:
                                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / s * s * s * t
                                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                                        else:
                                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                            stor120.length++
                                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if var113002 > -1 / var113001:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            if not exchangeRate:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                if not var113001 * var113002:
                                                                                                                                    revert with 0, 18
                                                                                                                                else:
                                                                                                                                    recipients[msg.sender].field_0 += arg1
                                                                                                                                    if currentRaisedAmount > !arg1:
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        currentRaisedAmount += arg1
                                                                                                                                        if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / var113001 * var113002):
                                                                                                                                            revert with 0, 17
                                                                                                                                        else:
                                                                                                                                            sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / var113001 * var113002
                                                                                                                                            if stor122[address(ext_call.return_data[0])]:
                                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                            else:
                                                                                                                                                stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                                stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                                stor120.length++
                                                                                                                                                stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                        else:
                                                                                                            if 10^ext_call.return_data[31 len 1] > -1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                                    revert with 0, 17
                                                                                                                else:
                                                                                                                    if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        if not exchangeRate:
                                                                                                                            revert with 0, 18
                                                                                                                        else:
                                                                                                                            if not 10^ext_call.return_data[31 len 1]:
                                                                                                                                revert with 0, 18
                                                                                                                            else:
                                                                                                                                recipients[msg.sender].field_0 += arg1
                                                                                                                                if currentRaisedAmount > !arg1:
                                                                                                                                    revert with 0, 17
                                                                                                                                else:
                                                                                                                                    currentRaisedAmount += arg1
                                                                                                                                    if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]):
                                                                                                                                        revert with 0, 17
                                                                                                                                    else:
                                                                                                                                        sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate / 10^ext_call.return_data[31 len 1]
                                                                                                                                        if stor122[address(ext_call.return_data[0])]:
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                                        else:
                                                                                                                                            stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                            stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                            stor120.length++
                                                                                                                                            stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                            emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                    else:
                                                                                                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                                                                            revert with 0, 17
                                                                                                        else:
                                                                                                            if 10^18 * arg1 and 10^10 > -1 / 10^18 * arg1:
                                                                                                                revert with 0, 17
                                                                                                            else:
                                                                                                                if not exchangeRate:
                                                                                                                    revert with 0, 18
                                                                                                                else:
                                                                                                                    recipients[msg.sender].field_0 += arg1
                                                                                                                    if currentRaisedAmount > !arg1:
                                                                                                                        revert with 0, 17
                                                                                                                    else:
                                                                                                                        currentRaisedAmount += arg1
                                                                                                                        if sub_30d18362 > !(10000000000 * 10^18 * arg1 / exchangeRate):
                                                                                                                            revert with 0, 17
                                                                                                                        else:
                                                                                                                            sub_30d18362 += 10000000000 * 10^18 * arg1 / exchangeRate
                                                                                                                            if stor122[address(ext_call.return_data[0])]:
                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
                                                                                                                            else:
                                                                                                                                stor122[address(ext_call.return_data[0])] = 1
                                                                                                                                stor121[address(ext_call.return_data[0])] = stor120.length
                                                                                                                                stor120.length++
                                                                                                                                stor8DC6[stor120.length] = address(ext_call.return_data[0])
                                                                                                                                emit 0xc0ac20ed: recipients[msg.sender].field_256, 0, block.timestamp, msg.sender
}



}
