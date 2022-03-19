contract main {




// =====================  Runtime code  =====================


#
#  - getOrderByIdArray(address[] arg1)
#
uint8 stor0;
address addrAdmin; offset 8
address operatorAddress;
address oraclizeAddress;
address referralshipAddr;
address blinkPoolAddress;
address bLinkDevAddr;
uint256 mentorRate;
uint256 gasPrice;
uint256 addtionFee;
uint8 referralshipEnable;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint256 minOrderAmount;
array of uint256 maxOrderAmountArrMap;
array of uint256 winBonusArray;
uint256 gameId;
mapping of struct betOrderMap;

function maxOrderAmountArrMap(address arg1, uint256 arg2) {
    require arg2 < 98
    return maxOrderAmountArrMap[arg1][arg2]
}

function winBonusArray(uint256 arg1) {
    require arg1 < 98
    return winBonusArray[arg1]
}

function getOraclizeAddr() {
    return oraclizeAddress
}

function blinkDev() {
    return bLinkDevAddr
}

function getBLinkPoolAddr() {
    return blinkPoolAddress
}

function minOrderAmount(address arg1) {
    return minOrderAmount[arg1]
}

function getBLinkDevAddr() {
    return bLinkDevAddr
}

function referralship() {
    return referralshipAddr
}

function oraclize() {
    return oraclizeAddress
}

function supportTokenMap(address arg1) {
    return bool(stor11[arg1])
}

function getMaxOrderAmount(address arg1, uint16 arg2) {
    require arg2 < 98
    return maxOrderAmountArrMap[address(arg1)][arg2]
}

function operator() {
    return operatorAddress
}

function addtionFee() {
    return addtionFee
}

function addrOperatorMap(address arg1) {
    return bool(stor10[arg1])
}

function referralshipEnable() {
    return bool(referralshipEnable)
}

function betOrderMap(address arg1) {
    return betOrderMap[arg1].field_0, 
           betOrderMap[arg1].field_0,
           betOrderMap[arg1].field_0,
           betOrderMap[arg1].field_0,
           betOrderMap[arg1].field_224,
           betOrderMap[arg1].field_256
}

function blinkPool() {
    return blinkPoolAddress
}

function isPaused() {
    return bool(stor0)
}

function addrAdmin() {
    return addrAdmin
}

function gameId() {
    return gameId
}

function mentorRate() {
    return mentorRate
}

function getReferralshipAddr() {
    return referralshipAddr
}

function gasPrice() {
    return gasPrice
}

function getMinOrderAmount(address arg1) {
    return minOrderAmount[address(arg1)]
}

function _fallback() payable {
    revert
}

function enableToken(address arg1) {
    require msg.sender == addrAdmin
    stor11[address(arg1)] = 1
    return 1
}

function disableToken(address arg1) {
    require msg.sender == addrAdmin
    stor11[address(arg1)] = 0
    return 1
}

function setPause(bool arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    stor0 = uint8(arg1)
}

function setGameId(uint256 arg1) {
    if not stor10[address(msg.sender)]:
        require msg.sender == addrAdmin
    gameId = arg1
}

function setGasPrice(uint256 arg1) {
    if not stor10[address(msg.sender)]:
        require msg.sender == addrAdmin
    gasPrice = arg1
}

function setAddtionFee(uint256 arg1) {
    if not stor10[address(msg.sender)]:
        require msg.sender == addrAdmin
    addtionFee = arg1
}

function setMinOrderAmount(address arg1, uint256 arg2) {
    require msg.sender == addrAdmin
    minOrderAmount[address(arg1)] = arg2
    return 1
}

function setBLinkDevAddr(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    bLinkDevAddr = arg1
}

function setOraclizeAddr(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    oraclizeAddress = arg1
}

function setBLinkPoolAddr(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    blinkPoolAddress = arg1
}

function setReferralshipAddr(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    referralshipAddr = arg1
}

function setMentorRate(uint256 arg1) {
    if not stor10[address(msg.sender)]:
        require msg.sender == addrAdmin
    require arg1 <= 100
    mentorRate = arg1
}

function setOperator(address arg1, bool arg2) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    stor10[address(arg1)] = uint8(arg2)
}

function setAdmin(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    if not arg1:
        revert with 0, '_newAdmin can't be address 0'
    addrAdmin = arg1
}

function setOperator(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    if not arg1:
        revert with 0, '_addr can't be address 0'
    operatorAddress = arg1
}

function enableReferralship() {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    if not stor10[address(msg.sender)]:
        require msg.sender == addrAdmin
    referralshipEnable = 1
}

function disableReferralship() {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    if not stor10[address(msg.sender)]:
        require msg.sender == addrAdmin
    referralshipEnable = 0
}

function initWinBonus() {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    idx = 1
    while idx <= 96:
        require idx
        require idx < 98
        winBonusArray[idx] = (985000 / idx) - 10000
        idx = idx + 1
        continue 
}

function withdrawBnb(uint256 arg1) {
    require msg.sender == addrAdmin
    require arg1 > 0
    require arg1 <= eth.balance(this.address)
    call addrAdmin with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getOrder(address arg1) {
    if betOrderMap[address(arg1)].field_0 <= 0:
        return address(arg1), 0, betOrderMap[address(arg1)].field_0, 0, 0, 255, 0
    return address(arg1), 
           betOrderMap[address(arg1)].field_256,
           betOrderMap[address(arg1)].field_0,
           betOrderMap[address(arg1)].field_0,
           betOrderMap[address(arg1)].field_0,
           betOrderMap[address(arg1)].field_0,
           betOrderMap[address(arg1)].field_32
}

function initOrderMaxAmount(address arg1, uint256[98] arg2) {
    mem[96 len 3136] = call.data[36 len 3136]
    mem[3232 len 3136] = code.data[20411 len 3136]
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    idx = 1
    while idx <= 96:
        require idx < 98
        mem[(32 * idx) + 3232] = mem[(32 * idx) + 96]
        idx = idx + 1
        continue 
    s = 0
    idx = 3232
    while 6368 > idx:
        maxOrderAmountArrMap[address(arg1)][s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 98
    while 98 > idx:
        maxOrderAmountArrMap[address(arg1)][idx] = 0
        idx = idx + 1
        continue 
}

function initToken(address arg1, uint256 arg2, uint256[98] arg3) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    stor11[address(arg1)] = 1
    minOrderAmount[address(arg1)] = arg2
    mem[96 len 3136] = call.data[68 len 3136]
    mem[3232 len 3136] = code.data[20411 len 3136]
    idx = 1
    while idx <= 96:
        require idx < 98
        mem[(32 * idx) + 3232] = mem[(32 * idx) + 96]
        idx = idx + 1
        continue 
    s = 0
    idx = 3232
    while 6368 > idx:
        maxOrderAmountArrMap[address(arg1)][s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 98
    while 98 > idx:
        maxOrderAmountArrMap[address(arg1)][idx] = 0
        idx = idx + 1
        continue 
}

function rollDice(address arg1, uint256 arg2, uint16 arg3, uint16 arg4, string arg5) payable {
    require not stor0
    require stor11[address(arg1)]
    if arg1:
        require arg2 >= minOrderAmount[address(arg1)]
        if betOrderMap[address(msg.sender)].field_0 > 0:
            require betOrderMap[address(msg.sender)].field_224 < 255
        if not arg4:
            require arg3 >= 1
            require arg3 <= 95
            require arg3 < 98
            require arg2 <= maxOrderAmountArrMap[address(arg1)][arg3]
        else:
            require arg4 == 1
            require arg3 >= 4
            require arg3 <= 98
            require uint16(-arg3 + 99) < 98
            require arg2 <= maxOrderAmountArrMap[address(arg1)][uint16(-arg3 + 99)]
        if not arg1:
            call blinkPoolAddress with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, blinkPoolAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        if referralshipEnable:
            require ext_code.size(referralshipAddr)
            call referralshipAddr.getAddrByReferralCode(string rg1) with:
                 gas gas_remaining wei
                args Array(len=arg5.length, data=arg5[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require address(ext_call.return_data[0]) != msg.sender
            if address(ext_call.return_data[0]):
                require ext_code.size(referralshipAddr)
                call referralshipAddr.setReferralShip(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        betOrderMap[address(msg.sender)].field_32 = arg1
        betOrderMap[address(msg.sender)].field_0 = uint32(betOrderMap[address(msg.sender)].field_0 + 1)
        betOrderMap[address(msg.sender)].field_192 = arg4
        betOrderMap[address(msg.sender)].field_208 = arg3
        betOrderMap[address(msg.sender)].field_224 = 255
        betOrderMap[address(msg.sender)].field_232 = 0
        betOrderMap[address(msg.sender)].field_256 = arg2
        emit DiceCreate(address(arg1), arg3 << 240, arg4 << 240, arg2, betOrderMap[address(msg.sender)].field_0, msg.sender);
    else:
        require msg.value >= minOrderAmount[address(arg1)]
        if betOrderMap[address(msg.sender)].field_0 > 0:
            require betOrderMap[address(msg.sender)].field_224 < 255
        if not arg4:
            require arg3 >= 1
            require arg3 <= 95
            require arg3 < 98
            require msg.value <= maxOrderAmountArrMap[address(arg1)][arg3]
        else:
            require arg4 == 1
            require arg3 >= 4
            require arg3 <= 98
            require uint16(-arg3 + 99) < 98
            require msg.value <= maxOrderAmountArrMap[address(arg1)][uint16(-arg3 + 99)]
        if not arg1:
            call blinkPoolAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, blinkPoolAddress, msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        if referralshipEnable:
            require ext_code.size(referralshipAddr)
            call referralshipAddr.getAddrByReferralCode(string rg1) with:
                 gas gas_remaining wei
                args Array(len=arg5.length, data=arg5[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require address(ext_call.return_data[0]) != msg.sender
            if address(ext_call.return_data[0]):
                require ext_code.size(referralshipAddr)
                call referralshipAddr.setReferralShip(address rg1, address rg2) with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        betOrderMap[address(msg.sender)].field_32 = arg1
        betOrderMap[address(msg.sender)].field_0 = uint32(betOrderMap[address(msg.sender)].field_0 + 1)
        betOrderMap[address(msg.sender)].field_192 = arg4
        betOrderMap[address(msg.sender)].field_208 = arg3
        betOrderMap[address(msg.sender)].field_224 = 255
        betOrderMap[address(msg.sender)].field_232 = 0
        betOrderMap[address(msg.sender)].field_256 = msg.value
        emit DiceCreate(address(arg1), arg3 << 240, arg4 << 240, msg.value, betOrderMap[address(msg.sender)].field_0, msg.sender);
    if addtionFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(blinkPoolAddress)
    call blinkPoolAddress.transferBnb(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, addtionFee, addtionFee
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function __callback(address arg1, uint256 arg2) {
    require msg.sender == oraclizeAddress
    require ext_code.size(referralshipAddr)
    call referralshipAddr.getCustomerSeed(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    betOrderMap[address(arg1)].field_224 = uint16(sha3(ext_call.return_data[0], arg2) % 100)
    if betOrderMap[address(arg1)].field_192:
        if betOrderMap[address(arg1)].field_32:
            require ext_code.size(referralshipAddr)
            call referralshipAddr.getReferralShip(address rg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint16(sha3(ext_call.return_data[0], arg2) % 100) <= betOrderMap[address(arg1)].field_208:
                emit DiceResult(uint256 rg1, address rg2, address rg3, uint64 rg4, uint64 rg5, uint256 rg6, uint64 rg7, uint256 rg8, address rg9, uint256 rg10):
                                betOrderMap[address(arg1)].field_0,
                                betOrderMap[address(arg1)].field_0,
                                betOrderMap[address(arg1)].field_192,
                                0,
                                betOrderMap[address(arg1)].field_256,
                                sha3(ext_call.return_data[0], arg2) % 100 << 240,
                                0,
                                address(ext_call.return_data[0]),
                                0,
                                betOrderMap[address(arg1)].field_0,
                                arg1,
            else:
                if not betOrderMap[address(arg1)].field_192:
                    require betOrderMap[address(arg1)].field_208 < 98
                    if not betOrderMap[address(arg1)].field_256 / 10000:
                        if betOrderMap[address(arg1)].field_256 < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if referralshipEnable:
                            if address(ext_call.return_data[0]):
                                require ext_code.size(blinkPoolAddress)
                                call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                    else:
                        require betOrderMap[address(arg1)].field_256 / 10000
                        if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] / betOrderMap[address(arg1)].field_256 / 10000 != winBonusArray[stor113[address(arg1)].field_208]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]) < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not referralshipEnable:
                            emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                        else:
                            if not address(ext_call.return_data[0]):
                                emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                            else:
                                if not betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]:
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                                else:
                                    require betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]
                                    if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] * mentorRate / betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] != mentorRate:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] * mentorRate / 10000, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] * mentorRate / 10000, betOrderMap[address(arg1)].field_0, arg1);
                else:
                    require uint16(-betOrderMap[address(arg1)].field_208 + 99) < 98
                    if not betOrderMap[address(arg1)].field_256 / 10000:
                        if betOrderMap[address(arg1)].field_256 < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if referralshipEnable:
                            if address(ext_call.return_data[0]):
                                require ext_code.size(blinkPoolAddress)
                                call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                    else:
                        require betOrderMap[address(arg1)].field_256 / 10000
                        if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] / betOrderMap[address(arg1)].field_256 / 10000 != winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]) < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not referralshipEnable:
                            emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                        else:
                            if not address(ext_call.return_data[0]):
                                emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                            else:
                                if not betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]:
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                                else:
                                    require betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]
                                    if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] * mentorRate / betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] != mentorRate:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] * mentorRate / 10000, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] * mentorRate / 10000, betOrderMap[address(arg1)].field_0, arg1);
        else:
            require ext_code.size(bLinkDevAddr)
            call bLinkDevAddr.0x3f21072 with:
                 gas gas_remaining wei
                args gameId, address(arg1), betOrderMap[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0] > 0:
                require ext_code.size(blinkPoolAddress)
                call blinkPoolAddress.transferBLinkWithDevRelease(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0], ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if ext_call.return_data[32] > 0:
                    require ext_code.size(blinkPoolAddress)
                    call blinkPoolAddress.transferBLinkWithDevRelease(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(referralshipAddr)
            call referralshipAddr.getReferralShip(address rg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint16(sha3(ext_call.return_data[0], arg2) % 100) <= betOrderMap[address(arg1)].field_208:
                emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, sha3(ext_call.return_data[0], arg2) % 100 << 240, 0, address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
            else:
                if not betOrderMap[address(arg1)].field_192:
                    require betOrderMap[address(arg1)].field_208 < 98
                    if not betOrderMap[address(arg1)].field_256 / 10000:
                        if betOrderMap[address(arg1)].field_256 < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if referralshipEnable:
                            if address(ext_call.return_data[0]):
                                require ext_code.size(blinkPoolAddress)
                                call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                    else:
                        require betOrderMap[address(arg1)].field_256 / 10000
                        if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] / betOrderMap[address(arg1)].field_256 / 10000 != winBonusArray[stor113[address(arg1)].field_208]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]) < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not referralshipEnable:
                            emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                        else:
                            if not address(ext_call.return_data[0]):
                                emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                            else:
                                if not betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]:
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                                else:
                                    require betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]
                                    if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] * mentorRate / betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] != mentorRate:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] * mentorRate / 10000, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] * mentorRate / 10000, betOrderMap[address(arg1)].field_0, arg1);
                else:
                    require uint16(-betOrderMap[address(arg1)].field_208 + 99) < 98
                    if not betOrderMap[address(arg1)].field_256 / 10000:
                        if betOrderMap[address(arg1)].field_256 < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if referralshipEnable:
                            if address(ext_call.return_data[0]):
                                require ext_code.size(blinkPoolAddress)
                                call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                    else:
                        require betOrderMap[address(arg1)].field_256 / 10000
                        if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] / betOrderMap[address(arg1)].field_256 / 10000 != winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]) < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not referralshipEnable:
                            emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                        else:
                            if not address(ext_call.return_data[0]):
                                emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                            else:
                                if not betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]:
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                                else:
                                    require betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]
                                    if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] * mentorRate / betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] != mentorRate:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] * mentorRate / 10000, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] * mentorRate / 10000, betOrderMap[address(arg1)].field_0, arg1);
    else:
        if betOrderMap[address(arg1)].field_32:
            require ext_code.size(referralshipAddr)
            call referralshipAddr.getReferralShip(address rg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint16(sha3(ext_call.return_data[0], arg2) % 100) >= betOrderMap[address(arg1)].field_208:
                emit DiceResult(uint256 rg1, address rg2, address rg3, uint64 rg4, uint64 rg5, uint256 rg6, uint64 rg7, uint256 rg8, address rg9, uint256 rg10):
                                betOrderMap[address(arg1)].field_0,
                                betOrderMap[address(arg1)].field_0,
                                betOrderMap[address(arg1)].field_192,
                                0,
                                betOrderMap[address(arg1)].field_256,
                                sha3(ext_call.return_data[0], arg2) % 100 << 240,
                                0,
                                address(ext_call.return_data[0]),
                                0,
                                betOrderMap[address(arg1)].field_0,
                                arg1,
            else:
                if not betOrderMap[address(arg1)].field_192:
                    require betOrderMap[address(arg1)].field_208 < 98
                    if not betOrderMap[address(arg1)].field_256 / 10000:
                        if betOrderMap[address(arg1)].field_256 < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if referralshipEnable:
                            if address(ext_call.return_data[0]):
                                require ext_code.size(blinkPoolAddress)
                                call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                    else:
                        require betOrderMap[address(arg1)].field_256 / 10000
                        if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] / betOrderMap[address(arg1)].field_256 / 10000 != winBonusArray[stor113[address(arg1)].field_208]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]) < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not referralshipEnable:
                            emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                        else:
                            if not address(ext_call.return_data[0]):
                                emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                            else:
                                if not betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]:
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                                else:
                                    require betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]
                                    if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] * mentorRate / betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] != mentorRate:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] * mentorRate / 10000, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] * mentorRate / 10000, betOrderMap[address(arg1)].field_0, arg1);
                else:
                    require uint16(-betOrderMap[address(arg1)].field_208 + 99) < 98
                    if not betOrderMap[address(arg1)].field_256 / 10000:
                        if betOrderMap[address(arg1)].field_256 < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if referralshipEnable:
                            if address(ext_call.return_data[0]):
                                require ext_code.size(blinkPoolAddress)
                                call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                    else:
                        require betOrderMap[address(arg1)].field_256 / 10000
                        if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] / betOrderMap[address(arg1)].field_256 / 10000 != winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]) < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not referralshipEnable:
                            emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                        else:
                            if not address(ext_call.return_data[0]):
                                emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                            else:
                                if not betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]:
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                                else:
                                    require betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]
                                    if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] * mentorRate / betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] != mentorRate:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] * mentorRate / 10000, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] * mentorRate / 10000, betOrderMap[address(arg1)].field_0, arg1);
        else:
            require ext_code.size(bLinkDevAddr)
            call bLinkDevAddr.0x3f21072 with:
                 gas gas_remaining wei
                args gameId, address(arg1), betOrderMap[address(arg1)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[0] > 0:
                require ext_code.size(blinkPoolAddress)
                call blinkPoolAddress.transferBLinkWithDevRelease(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0], ext_call.return_data[32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if ext_call.return_data[32] > 0:
                    require ext_code.size(blinkPoolAddress)
                    call blinkPoolAddress.transferBLinkWithDevRelease(address rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args address(arg1), ext_call.return_data[0], ext_call.return_data[32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(referralshipAddr)
            call referralshipAddr.getReferralShip(address rg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if uint16(sha3(ext_call.return_data[0], arg2) % 100) >= betOrderMap[address(arg1)].field_208:
                emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, sha3(ext_call.return_data[0], arg2) % 100 << 240, 0, address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
            else:
                if not betOrderMap[address(arg1)].field_192:
                    require betOrderMap[address(arg1)].field_208 < 98
                    if not betOrderMap[address(arg1)].field_256 / 10000:
                        if betOrderMap[address(arg1)].field_256 < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if referralshipEnable:
                            if address(ext_call.return_data[0]):
                                require ext_code.size(blinkPoolAddress)
                                call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                    else:
                        require betOrderMap[address(arg1)].field_256 / 10000
                        if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] / betOrderMap[address(arg1)].field_256 / 10000 != winBonusArray[stor113[address(arg1)].field_208]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]) < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not referralshipEnable:
                            emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                        else:
                            if not address(ext_call.return_data[0]):
                                emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                            else:
                                if not betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]:
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                                else:
                                    require betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]
                                    if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] * mentorRate / betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] != mentorRate:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] * mentorRate / 10000, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208]), address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[stor113[address(arg1)].field_208] * mentorRate / 10000, betOrderMap[address(arg1)].field_0, arg1);
                else:
                    require uint16(-betOrderMap[address(arg1)].field_208 + 99) < 98
                    if not betOrderMap[address(arg1)].field_256 / 10000:
                        if betOrderMap[address(arg1)].field_256 < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if referralshipEnable:
                            if address(ext_call.return_data[0]):
                                require ext_code.size(blinkPoolAddress)
                                call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                     gas gas_remaining wei
                                    args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                        emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                    else:
                        require betOrderMap[address(arg1)].field_256 / 10000
                        if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] / betOrderMap[address(arg1)].field_256 / 10000 != winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]) < betOrderMap[address(arg1)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(blinkPoolAddress)
                        call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args betOrderMap[address(arg1)].field_0, address(arg1), betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), betOrderMap[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not referralshipEnable:
                            emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                        else:
                            if not address(ext_call.return_data[0]):
                                emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                            else:
                                if not betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]:
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), 0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), 0, betOrderMap[address(arg1)].field_0, arg1);
                                else:
                                    require betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]
                                    if betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] * mentorRate / betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] != mentorRate:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    require ext_code.size(blinkPoolAddress)
                                    call blinkPoolAddress.transferToWiner(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                         gas gas_remaining wei
                                        args betOrderMap[address(arg1)].field_0, address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] * mentorRate / 10000, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    emit DiceResult(betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256, betOrderMap[address(arg1)].field_0, betOrderMap[address(arg1)].field_256 + (betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)]), address(ext_call.return_data[0]), betOrderMap[address(arg1)].field_256 / 10000 * winBonusArray[uint16(-stor113[address(arg1)].field_208 + 99)] * mentorRate / 10000, betOrderMap[address(arg1)].field_0, arg1);
}



}
