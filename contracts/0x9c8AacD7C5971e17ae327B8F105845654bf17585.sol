contract main {




// =====================  Runtime code  =====================


const getPoolBnbCount = (eth.balance(this.address) / 10^18)


uint8 isPaused;
address addrAdmin; offset 8
address operatorAddress;
address addrFinance;
address addrTokenDev;
address addrBurner;
address addrDivider;
address addrWinkDivider;
address bLinkTokenAddr;
address bLinkMinePoolAddress;
uint256 safeWaterLevel;
uint256 totalCacheBalance;
uint256 blinkDevCache;
uint256 winkRate;
mapping of uint8 stor13;
mapping of uint256 playerBLinkCache;
mapping of uint256 tokenOriginalAmountMap;

function getDevCacheBalance() {
    return blinkDevCache
}

function playerBLinkCache(address arg1) {
    return playerBLinkCache[arg1]
}

function getTokenDevAddr() {
    return addrTokenDev
}

function safeBetContracts(address arg1) {
    return bool(stor13[arg1])
}

function getSafeContract(address arg1) {
    return bool(stor13[address(arg1)])
}

function operator() {
    return operatorAddress
}

function winkRate() {
    return winkRate
}

function tokenOriginalAmountMap(address arg1) {
    return tokenOriginalAmountMap[arg1]
}

function safeWaterLevel() {
    return safeWaterLevel
}

function addrFinance() {
    return addrFinance
}

function blinkTotalCache() {
    return totalCacheBalance
}

function blinkDevCache() {
    return blinkDevCache
}

function isPaused() {
    return bool(isPaused)
}

function addrAdmin() {
    return addrAdmin
}

function getTotalCacheBalance() {
    return totalCacheBalance
}

function addrTokenDev() {
    return addrTokenDev
}

function addrWinkDivider() {
    return addrWinkDivider
}

function addrDivider() {
    return addrDivider
}

function getBLinkTokenAddr() {
    return bLinkTokenAddr
}

function addrBurner() {
    return addrBurner
}

function getBLinkMinePool() {
    return bLinkMinePoolAddress
}

function _fallback() payable {
  stop
}

function setPause(bool arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    isPaused = uint8(arg1)
}

function setBurner(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    addrBurner = arg1
}

function setAddrDivider(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    addrDivider = arg1
}

function setTokenDevAddr(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    addrTokenDev = arg1
}

function setWinkDivider(address arg1) {
    if arg1 != msg.sender:
        require msg.sender == addrAdmin
    require arg1
    addrWinkDivider = arg1
}

function setBLinkTokenAddr(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    bLinkTokenAddr = arg1
}

function setSafeWaterLevel(uint256 arg1) {
    require stor13[address(msg.sender)]
    require arg1 > 0
    require arg1 <= 5000
    safeWaterLevel = arg1
}

function setBLinkMinePool(address arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1
    bLinkMinePoolAddress = arg1
}

function setSafeContract(address arg1, bool arg2) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    stor13[address(arg1)] = uint8(arg2)
}

function setWinkRate(uint256 arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require arg1 > 0
    require arg1 < 100
    winkRate = arg1
}

function setFinance(address arg1) {
    if addrFinance != msg.sender:
        revert with 0, 'not finance'
    if not arg1:
        revert with 0, '_addr is 0'
    addrFinance = arg1
}

function setTokenOriginalAmount(address arg1, uint256 arg2) {
    if not stor13[address(msg.sender)]:
        require msg.sender == addrAdmin
    tokenOriginalAmountMap[address(arg1)] = arg2
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

function transferBnb(address arg1, uint256 arg2, uint256 arg3) {
    require not isPaused
    require stor13[address(msg.sender)]
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function withdrawProfit(uint256 arg1) {
    if addrFinance != msg.sender:
        require msg.sender == addrAdmin
    require arg1 > 0
    require arg1 <= eth.balance(this.address)
    call addrFinance with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPoolBLinkBalance() {
    require ext_code.size(bLinkTokenAddr)
    call bLinkTokenAddr.balanceOf(address rg1) with:
         gas gas_remaining wei
        args bLinkMinePoolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < totalCacheBalance:
        return 0
    return (ext_call.return_data[0] - totalCacheBalance)
}

function releaseDevBLink() {
    if addrFinance != msg.sender:
        if addrAdmin != msg.sender:
            require msg.sender == addrTokenDev
    require blinkDevCache > 0
    require totalCacheBalance >= blinkDevCache
    blinkDevCache = 0
    require ext_code.size(bLinkMinePoolAddress)
    call bLinkMinePoolAddress.0xa67b23a1 with:
         gas gas_remaining wei
        args addrTokenDev, blinkDevCache
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function releaseBLinkSelf() {
    require playerBLinkCache[address(msg.sender)] > 1
    require playerBLinkCache[address(msg.sender)] <= totalCacheBalance
    if playerBLinkCache[address(msg.sender)] - 1 > totalCacheBalance:
        revert with 0, 'SafeMath: subtraction overflow'
    totalCacheBalance = totalCacheBalance + -playerBLinkCache[address(msg.sender)] + 1
    playerBLinkCache[address(msg.sender)] = 1
    require ext_code.size(bLinkMinePoolAddress)
    call bLinkMinePoolAddress.0xa67b23a1 with:
         gas gas_remaining wei
        args msg.sender, playerBLinkCache[address(msg.sender)] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function releaseBLink(address arg1) {
    if operatorAddress != msg.sender:
        if addrAdmin != msg.sender:
            require stor13[address(msg.sender)]
    require arg1
    require playerBLinkCache[address(arg1)] > 1
    require playerBLinkCache[address(arg1)] <= totalCacheBalance
    if playerBLinkCache[address(arg1)] - 1 > totalCacheBalance:
        revert with 0, 'SafeMath: subtraction overflow'
    totalCacheBalance = totalCacheBalance + -playerBLinkCache[address(arg1)] + 1
    playerBLinkCache[address(arg1)] = 1
    require ext_code.size(bLinkMinePoolAddress)
    call bLinkMinePoolAddress.0xa67b23a1 with:
         gas gas_remaining wei
        args address(arg1), playerBLinkCache[address(arg1)] - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    require ext_code.size(arg1)
    call arg1.balanceOf(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if arg2 <= ext_call.return_data[0]:
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args addrFinance, arg2
    else:
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args addrFinance, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function burnToken(address arg1) {
    if addrBurner != msg.sender:
        require msg.sender == addrAdmin
    require ext_code.size(arg1)
    call arg1.balanceOf(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if tokenOriginalAmountMap[address(arg1)] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_call.return_data[0] > ext_call.return_data[0] - tokenOriginalAmountMap[address(arg1)]
    if ext_call.return_data[0] - tokenOriginalAmountMap[address(arg1)] <= 0:
        return 0
    require ext_code.size(arg1)
    call arg1.burn(uint256 rg1) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] - tokenOriginalAmountMap[address(arg1)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenBurn((ext_call.return_data[0] - tokenOriginalAmountMap[address(arg1)]), this.address, arg1);
    return (ext_call.return_data[0] - tokenOriginalAmountMap[address(arg1)])
}

function transferBLinkWithDevRelease(address arg1, uint256 arg2, uint256 arg3) {
    require not isPaused
    require stor13[address(msg.sender)]
    require arg1
    require ext_code.size(bLinkTokenAddr)
    call bLinkTokenAddr.balanceOf(address rg1) with:
         gas gas_remaining wei
        args bLinkMinePoolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalCacheBalance > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 + arg3 < arg2:
        revert with 0, 'SafeMath: addition overflow'
    require ext_call.return_data[0] - totalCacheBalance >= arg2 + arg3
    if arg2 > 0:
        if playerBLinkCache[address(arg1)] + arg2 < playerBLinkCache[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        playerBLinkCache[address(arg1)] += arg2
    if totalCacheBalance + arg2 + arg3 < totalCacheBalance:
        revert with 0, 'SafeMath: addition overflow'
    totalCacheBalance = totalCacheBalance + arg2 + arg3
    if blinkDevCache + arg3 < blinkDevCache:
        revert with 0, 'SafeMath: addition overflow'
    blinkDevCache += arg3
}

function transferToken(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require not isPaused
    require stor13[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.balanceOf(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] / 10000:
        if arg4 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        require arg3 - arg4 <= 0
    else:
        require ext_call.return_data[0] / 10000
        if ext_call.return_data[0] / 10000 * safeWaterLevel / ext_call.return_data[0] / 10000 != safeWaterLevel:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg4 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        require arg3 - arg4 <= ext_call.return_data[0] / 10000 * safeWaterLevel
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferToWiner(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require not isPaused
    require stor13[address(msg.sender)]
    if not arg1:
        if arg4 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        require arg3 - arg4 <= eth.balance(this.address) / 10000 * safeWaterLevel
        call arg2 with:
           value arg3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.balanceOf(address rg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0] / 10000:
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            require arg3 - arg4 <= 0
        else:
            require ext_call.return_data[0] / 10000
            if ext_call.return_data[0] / 10000 * safeWaterLevel / ext_call.return_data[0] / 10000 != safeWaterLevel:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            require arg3 - arg4 <= ext_call.return_data[0] / 10000 * safeWaterLevel
        require ext_code.size(arg1)
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return 1
}

function updateVersion(address[] arg1) {
    if addrAdmin != msg.sender:
        revert with 0, 'not admin'
    if not addrFinance:
        revert with 0, 'finance is 0'
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        require 0 < arg1.length
        mem[(32 * arg1.length) + 160] = eth.balance(this.address)
        s = 0
        s = 0
        idx = 1
        while idx < arg1.length:
            require idx < arg1.length
            _63 = mem[(32 * idx) + 128]
            mem[(64 * arg1.length) + 164] = this.address
            require ext_code.size(address(_63))
            call address(_63).balanceOf(address rg1) with:
                 gas gas_remaining wei
                args this.address
            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            s = ext_call.return_data[0]
            s = _63
            idx = idx + 1
            continue 
        mem[(64 * arg1.length) + 160] = arg1.length
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        if not addrFinance:
            revert with 0, '_addr is 0'
        idx = 0
        s = 0
        s = 0
        while idx < mem[(32 * arg1.length) + 128]:
            require idx < mem[(32 * arg1.length) + 128]
            _112 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            _116 = mem[(32 * idx) + (64 * arg1.length) + 192]
            if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                idx = idx + 1
                s = mem[(32 * idx) + (64 * arg1.length) + 192]
                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                continue 
            if not mem[(32 * idx) + (64 * arg1.length) + 204 len 20]:
                call addrFinance with:
                   value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * arg1.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit TransferBnb(mem[(98 * arg1.length) + 192], addrFinance);
            else:
                mem[(98 * arg1.length) + 196] = addrFinance
                mem[(98 * arg1.length) + 228] = _112
                require ext_code.size(address(_116))
                call address(_116).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args addrFinance, _112
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(98 * arg1.length) + 192] = _112
                emit 0x52a1ece0: _112, addrFinance, address(_116)
            idx = idx + 1
            s = _116
            s = _112
            continue 
    else:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[20042 len 32 * arg1.length]
        require 0 < arg1.length
        mem[(32 * arg1.length) + 160] = eth.balance(this.address)
        s = 0
        s = 0
        idx = 1
        while idx < arg1.length:
            require idx < arg1.length
            _67 = mem[(32 * idx) + 128]
            mem[(64 * arg1.length) + 164] = this.address
            require ext_code.size(address(_67))
            call address(_67).balanceOf(address rg1) with:
                 gas gas_remaining wei
                args this.address
            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            s = ext_call.return_data[0]
            s = _67
            idx = idx + 1
            continue 
        mem[(64 * arg1.length) + 160] = arg1.length
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        if not addrFinance:
            revert with 0, '_addr is 0'
        idx = 0
        s = 0
        s = 0
        while idx < mem[(32 * arg1.length) + 128]:
            require idx < mem[(32 * arg1.length) + 128]
            _114 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg1.length
            _117 = mem[(32 * idx) + (64 * arg1.length) + 192]
            if mem[(32 * idx) + (32 * arg1.length) + 160] <= 0:
                idx = idx + 1
                s = mem[(32 * idx) + (64 * arg1.length) + 192]
                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                continue 
            if not mem[(32 * idx) + (64 * arg1.length) + 204 len 20]:
                call addrFinance with:
                   value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(98 * arg1.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + 160]
                emit TransferBnb(mem[(98 * arg1.length) + 192], addrFinance);
            else:
                mem[(98 * arg1.length) + 196] = addrFinance
                mem[(98 * arg1.length) + 228] = _114
                require ext_code.size(address(_117))
                call address(_117).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args addrFinance, _114
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(98 * arg1.length) + 192] = _114
                emit 0x52a1ece0: _114, addrFinance, address(_117)
            idx = idx + 1
            s = _117
            s = _114
            continue 
}

function transferToDivide(address[] arg1) payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == operatorAddress:
        idx = 0
        while idx < arg1.length:
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 15
            require tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] > 0
            if not address(cd[((32 * idx) + arg1 + 36)]):
                if eth.balance(this.address) <= tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]:
                    mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64] + 32] = 0
                    emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), 0, block.timestamp);
                else:
                    if not eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]:
                        _278 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_278] = 26
                        mem[_278 + 32] = 'SafeMath: division by zero'
                        if not address(cd[((32 * idx) + arg1 + 36)]):
                            call addrWinkDivider with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call addrDivider with:
                               value eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require ext_code.size(0)
                            call 0x0.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args addrWinkDivider, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 36] = eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                            require ext_code.size(0)
                            call 0x0.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args addrDivider, eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64] + 32] = eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                        emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])], block.timestamp);
                    else:
                        require eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                        if (eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] != winkRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _283 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_283] = 26
                        mem[_283 + 32] = 'SafeMath: division by zero'
                        if not address(cd[((32 * idx) + arg1 + 36)]):
                            call addrWinkDivider with:
                               value (eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call addrDivider with:
                               value eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require ext_code.size(0)
                            call 0x0.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args addrWinkDivider, (eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 36] = eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                            require ext_code.size(0)
                            call 0x0.transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args addrDivider, eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64] + 32] = eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                        emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100), block.timestamp);
            else:
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                call address(cd[((32 * idx) + arg1 + 36)]).balanceOf(address rg1) with:
                     gas gas_remaining wei
                    args address(this.address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]:
                    mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                    mem[mem[64] + 32] = 0
                    emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), 0, block.timestamp);
                else:
                    if not ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]:
                        _290 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_290] = 26
                        mem[_290 + 32] = 'SafeMath: division by zero'
                        if not address(cd[((32 * idx) + arg1 + 36)]):
                            call addrWinkDivider with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call addrDivider with:
                               value ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            call address(cd[((32 * idx) + arg1 + 36)]).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args addrWinkDivider, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 36] = ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            call address(cd[((32 * idx) + arg1 + 36)]).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args addrDivider, ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64] + 32] = ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                        emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])], block.timestamp);
                    else:
                        require ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                        if (ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] != winkRate:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _293 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_293] = 26
                        mem[_293 + 32] = 'SafeMath: division by zero'
                        if not address(cd[((32 * idx) + arg1 + 36)]):
                            call addrWinkDivider with:
                               value (ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call addrDivider with:
                               value ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100) wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            call address(cd[((32 * idx) + arg1 + 36)]).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args addrWinkDivider, (ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[mem[64] + 36] = ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                            call address(cd[((32 * idx) + arg1 + 36)]).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args addrDivider, ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64] + 32] = ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                        emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100), block.timestamp);
            idx = idx + 1
            continue 
    else:
        if stor13[address(msg.sender)]:
            idx = 0
            while idx < arg1.length:
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 15
                require tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] > 0
                if not address(cd[((32 * idx) + arg1 + 36)]):
                    if eth.balance(this.address) <= tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]:
                        mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64] + 32] = 0
                        emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), 0, block.timestamp);
                    else:
                        if not eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]:
                            _279 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_279] = 26
                            mem[_279 + 32] = 'SafeMath: division by zero'
                            if not address(cd[((32 * idx) + arg1 + 36)]):
                                call addrWinkDivider with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call addrDivider with:
                                   value eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(0)
                                call 0x0.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrWinkDivider, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 36] = eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                                require ext_code.size(0)
                                call 0x0.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrDivider, eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                            emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])], block.timestamp);
                        else:
                            require eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                            if (eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] != winkRate:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _286 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_286] = 26
                            mem[_286 + 32] = 'SafeMath: division by zero'
                            if not address(cd[((32 * idx) + arg1 + 36)]):
                                call addrWinkDivider with:
                                   value (eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call addrDivider with:
                                   value eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100) wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(0)
                                call 0x0.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrWinkDivider, (eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 36] = eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                                require ext_code.size(0)
                                call 0x0.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrDivider, eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                            emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100), block.timestamp);
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    call address(cd[((32 * idx) + arg1 + 36)]).balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]:
                        mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64] + 32] = 0
                        emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), 0, block.timestamp);
                    else:
                        if not ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]:
                            _291 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_291] = 26
                            mem[_291 + 32] = 'SafeMath: division by zero'
                            if not address(cd[((32 * idx) + arg1 + 36)]):
                                call addrWinkDivider with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call addrDivider with:
                                   value ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                call address(cd[((32 * idx) + arg1 + 36)]).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrWinkDivider, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 36] = ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                call address(cd[((32 * idx) + arg1 + 36)]).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrDivider, ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                            emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])], block.timestamp);
                        else:
                            require ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                            if (ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] != winkRate:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _294 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_294] = 26
                            mem[_294 + 32] = 'SafeMath: division by zero'
                            if not address(cd[((32 * idx) + arg1 + 36)]):
                                call addrWinkDivider with:
                                   value (ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call addrDivider with:
                                   value ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100) wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                call address(cd[((32 * idx) + arg1 + 36)]).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrWinkDivider, (ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 36] = ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                call address(cd[((32 * idx) + arg1 + 36)]).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrDivider, ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                            emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100), block.timestamp);
                idx = idx + 1
                continue 
        else:
            require msg.sender == addrAdmin
            idx = 0
            while idx < arg1.length:
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 15
                require tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] > 0
                if not address(cd[((32 * idx) + arg1 + 36)]):
                    if eth.balance(this.address) <= tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]:
                        mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64] + 32] = 0
                        emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), 0, block.timestamp);
                    else:
                        if not eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]:
                            _280 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_280] = 26
                            mem[_280 + 32] = 'SafeMath: division by zero'
                            if not address(cd[((32 * idx) + arg1 + 36)]):
                                call addrWinkDivider with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call addrDivider with:
                                   value eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(0)
                                call 0x0.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrWinkDivider, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 36] = eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                                require ext_code.size(0)
                                call 0x0.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrDivider, eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                            emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])], block.timestamp);
                        else:
                            require eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                            if (eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] != winkRate:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _289 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_289] = 26
                            mem[_289 + 32] = 'SafeMath: division by zero'
                            if not address(cd[((32 * idx) + arg1 + 36)]):
                                call addrWinkDivider with:
                                   value (eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call addrDivider with:
                                   value eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100) wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(0)
                                call 0x0.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrWinkDivider, (eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 36] = eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                                require ext_code.size(0)
                                call 0x0.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrDivider, eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                            emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), eth.balance(this.address) - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((eth.balance(this.address) * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100), block.timestamp);
                else:
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    call address(cd[((32 * idx) + arg1 + 36)]).balanceOf(address rg1) with:
                         gas gas_remaining wei
                        args address(this.address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]:
                        mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                        mem[mem[64] + 32] = 0
                        emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), 0, block.timestamp);
                    else:
                        if not ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]:
                            _292 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_292] = 26
                            mem[_292 + 32] = 'SafeMath: division by zero'
                            if not address(cd[((32 * idx) + arg1 + 36)]):
                                call addrWinkDivider with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call addrDivider with:
                                   value ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                call address(cd[((32 * idx) + arg1 + 36)]).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrWinkDivider, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 36] = ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                call address(cd[((32 * idx) + arg1 + 36)]).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrDivider, ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                            emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])], block.timestamp);
                        else:
                            require ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])]
                            if (ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] != winkRate:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _295 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_295] = 26
                            mem[_295 + 32] = 'SafeMath: division by zero'
                            if not address(cd[((32 * idx) + arg1 + 36)]):
                                call addrWinkDivider with:
                                   value (ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call addrDivider with:
                                   value ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100) wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                call address(cd[((32 * idx) + arg1 + 36)]).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrWinkDivider, (ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[mem[64] + 36] = ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                                call address(cd[((32 * idx) + arg1 + 36)]).transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args addrDivider, ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            mem[mem[64]] = address(cd[((32 * idx) + arg1 + 36)])
                            mem[mem[64] + 32] = ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100)
                            emit TokenDivide(address(cd[((32 * idx) + arg1 + 36)]), ext_call.return_data[0] - tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] - ((ext_call.return_data[0] * winkRate) - (tokenOriginalAmountMap[address(cd[((32 * idx) + arg1 + 36)])] * winkRate) / 100), block.timestamp);
                idx = idx + 1
                continue 
}



}
