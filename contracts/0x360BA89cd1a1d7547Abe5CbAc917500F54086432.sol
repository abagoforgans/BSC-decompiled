contract main {




// =====================  Runtime code  =====================


address owner;
uint256 startTime;
uint256 endTime;
mapping of uint256 checkOwnerShare;
array of address stor4;
uint256 majorOwnerShares;
uint256 minorOwnerShares;
uint256 coinPercentage;
uint256 rate;
uint256 weiRaised;
uint8 isCrowdsaleStopped;
uint8 isCrowdsalePaused; offset 8
address tokenAddress; offset 16
uint256 stor10; offset 8

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function isCrowdsaleStopped() {
    return bool(isCrowdsaleStopped)
}

function coinPercentage() {
    return coinPercentage
}

function checkOwnerShare(address arg1) {
    require msg.sender == owner
    return checkOwnerShare[address(arg1)]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function minorOwnerShares() {
    return minorOwnerShares
}

function isCrowdsalePaused() {
    return bool(isCrowdsalePaused)
}

function ownerAddresses(address arg1) {
    return checkOwnerShare[arg1]
}

function majorOwnerShares() {
    return majorOwnerShares
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function pauseCrowdsale() {
    require msg.sender == owner
    stor10 = 1
    return 0
}

function resumeCrowdsale() {
    require msg.sender == owner
    stor10 = 0
    return 0
}

function stopCrowdsale() {
    require msg.sender == owner
    isCrowdsaleStopped = 1
    return 0
}

function setPriceRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
    return 0
}

function changePartnerCoinPercentage(uint256 arg1) {
    require msg.sender == owner
    coinPercentage = arg1
}

function setEndDate(uint256 arg1) {
    require msg.sender == owner
    endTime = block.timestamp + (24 * 3600 * arg1)
    return 0
}

function startCrowdsale() {
    require msg.sender == owner
    isCrowdsaleStopped = 0
    startTime = block.timestamp
    return 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function removePartner(address arg1) {
    require msg.sender == owner
    require arg1
    require checkOwnerShare[address(arg1)] > 0
    require checkOwnerShare[stor0] <= 90
    checkOwnerShare[address(arg1)] = 0
    require checkOwnerShare[stor0] + 10 >= checkOwnerShare[stor0]
    checkOwnerShare[stor0] += 10
}

function showMyTokenBalance(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addPartner(address arg1) {
    require msg.sender == owner
    require arg1
    require checkOwnerShare[stor0] >= 20
    require not checkOwnerShare[address(arg1)]
    stor4.length++
    stor4[stor4.length] = arg1
    checkOwnerShare[address(arg1)] = 10
    require 10 <= checkOwnerShare[stor0]
    checkOwnerShare[stor0] -= 10
}

function tokensRemainingForSale(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function buy(address arg1) payable {
    require bool(isCrowdsaleStopped) != 1
    require bool(isCrowdsalePaused) != 1
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value * rate:
        require msg.value * rate
        require msg.value * rate * coinPercentage / msg.value * rate == coinPercentage
    require msg.value * rate * coinPercentage == (100 * msg.value * rate * coinPercentage / 100) + (msg.value * rate * coinPercentage % 100)
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    s = 0
    s = 0
    idx = 0
    while idx < stor4.length:
        mem[32] = 3
        if msg.value:
            require msg.value
            require msg.value * checkOwnerShare[stor4[idx]] / msg.value == checkOwnerShare[stor4[idx]]
        require msg.value * checkOwnerShare[stor4[idx]] == (100 * msg.value * checkOwnerShare[stor4[idx]] / 100) + (msg.value * checkOwnerShare[stor4[idx]] % 100)
        require idx < stor4.length
        call stor4[idx] with:
           value msg.value * checkOwnerShare[stor4[idx]] / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < stor4.length
        mem[0] = 4
        if stor4[idx] != owner:
            require idx < stor4.length
            mem[0] = stor4[idx]
            mem[32] = 3
            if checkOwnerShare[stor4[idx]] > 0:
                require idx < stor4.length
                mem[0] = 4
                mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[100] = stor4[idx]
                mem[132] = msg.value * rate * coinPercentage / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor4[idx], msg.value * rate * coinPercentage / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        s = msg.value * checkOwnerShare[stor4[idx]] / 100
        s = checkOwnerShare[stor4[idx]]
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require bool(isCrowdsaleStopped) != 1
    require bool(isCrowdsalePaused) != 1
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value * rate:
        require msg.value * rate
        require msg.value * rate * coinPercentage / msg.value * rate == coinPercentage
    require msg.value * rate * coinPercentage == (100 * msg.value * rate * coinPercentage / 100) + (msg.value * rate * coinPercentage % 100)
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    s = 0
    s = 0
    idx = 0
    while idx < stor4.length:
        mem[32] = 3
        if msg.value:
            require msg.value
            require msg.value * checkOwnerShare[stor4[idx]] / msg.value == checkOwnerShare[stor4[idx]]
        require msg.value * checkOwnerShare[stor4[idx]] == (100 * msg.value * checkOwnerShare[stor4[idx]] / 100) + (msg.value * checkOwnerShare[stor4[idx]] % 100)
        require idx < stor4.length
        call stor4[idx] with:
           value msg.value * checkOwnerShare[stor4[idx]] / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require idx < stor4.length
        mem[0] = 4
        if stor4[idx] != owner:
            require idx < stor4.length
            mem[0] = stor4[idx]
            mem[32] = 3
            if checkOwnerShare[stor4[idx]] > 0:
                require idx < stor4.length
                mem[0] = 4
                mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[100] = stor4[idx]
                mem[132] = msg.value * rate * coinPercentage / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor4[idx], msg.value * rate * coinPercentage / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        s = msg.value * checkOwnerShare[stor4[idx]] / 100
        s = checkOwnerShare[stor4[idx]]
        idx = idx + 1
        continue 
}



}
