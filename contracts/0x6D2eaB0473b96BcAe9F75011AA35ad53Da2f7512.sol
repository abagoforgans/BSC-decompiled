contract main {




// =====================  Runtime code  =====================


const CONTINUE_MINTING = 1

const TOKEN_NAME = 'Lina Business'

const TOKEN_SYMBOL = 'Lina'

const TOKEN_DECIMAL_MULTIPLIER = 10^18

const TOKEN_DECIMALS = 18

const TARGET_USER = 0x1520140e4821c1ce3bc7137f45da598470329f76

const PAUSED = 1

const TOKEN_DECIMALS_UINT8 = 18

const START_TIME = 1601546520


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint8 isFinalized; offset 160
address owner;
uint256 cap;
uint256 goal;
uint8 initialized; offset 160
address vaultAddress;

function initialized() {
    return bool(initialized)
}

function rate() {
    return rate
}

function endTime() {
    return closingTime
}

function cap() {
    return cap
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function startTime() {
    return openingTime
}

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function openingTime() {
    return openingTime
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function goalReached() {
    return weiRaised >= goal
}

function hasStarted() {
    return block.timestamp >= openingTime
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function hasEnded() {
    require weiRaised <= cap
    if block.timestamp > closingTime:
        return (block.timestamp > closingTime)
    if weiRaised >= cap:
        return weiRaised >= cap
    return (cap - weiRaised < 95 * 10^16)
}

function hasClosed() {
    require weiRaised <= cap
    if block.timestamp > closingTime:
        return (block.timestamp > closingTime)
    if weiRaised >= cap:
        return weiRaised >= cap
    return (cap - weiRaised < 95 * 10^16)
}

function setStartTime(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp < openingTime
    require arg1 > openingTime
    require arg1 < closingTime
    emit TimesChanged(arg1, closingTime, openingTime, closingTime);
    openingTime = arg1
}

function setEndTime(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp < closingTime
    require arg1 > block.timestamp
    require arg1 > openingTime
    emit TimesChanged(openingTime, arg1, openingTime, closingTime);
    closingTime = arg1
}

function claimRefund() {
    require isFinalized
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTimes(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > arg1
    if openingTime == arg1:
        if closingTime != arg2:
            require closingTime > block.timestamp
            require arg2 > block.timestamp
            closingTime = arg2
            emit TimesChanged(openingTime, arg2, openingTime, closingTime);
    else:
        require arg1 > block.timestamp
        require openingTime > block.timestamp
        require arg1 > openingTime
        openingTime = arg1
        if closingTime != arg2:
            require closingTime > block.timestamp
            require arg2 > block.timestamp
            closingTime = arg2
        emit TimesChanged(openingTime, arg2, openingTime, closingTime);
}

function finalize() {
    require msg.sender == owner
    require not isFinalized
    require weiRaised <= cap
    if block.timestamp <= closingTime:
        if weiRaised < cap:
            require cap - weiRaised < 95 * 10^16
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args 0x1520140e4821c1ce3bc7137f45da598470329f76
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    isFinalized = 1
}

function buyTokens(address arg1) payable {
    require msg.value >= 95 * 10^16
    require msg.value <= 103 * 10^17
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), rate * msg.value / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, rate * msg.value / 10^18, msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.value >= 95 * 10^16
    require msg.value <= 103 * 10^17
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, rate * msg.value / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, rate * msg.value / 10^18, msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function init() {
    require msg.sender == owner
    require not initialized
    initialized = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[384] = 0x1520140e4821c1ce3bc7137f45da598470329f76
    mem[416] = 0x1520140e4821c1ce3bc7137f45da598470329f76
    mem[448] = 0x1520140e4821c1ce3bc7137f45da598470329f76
    mem[480] = 1500 * 10^18
    mem[512] = 3500 * 10^18
    mem[544] = 5000 * 10^18
    mem[576] = 0
    mem[608] = 1735678801
    mem[640] = 1893445201
    idx = 0
    while idx < 3:
        require idx < 3
        if not mem[(32 * idx) + 600 len 8]:
            _26 = mem[(32 * idx) + 480]
            mem[676] = mem[(32 * idx) + 396 len 20]
            mem[708] = _26
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args mem[676], _26
        else:
            _25 = mem[(32 * idx) + 480]
            _29 = mem[(32 * idx) + 576]
            mem[676] = mem[(32 * idx) + 396 len 20]
            mem[708] = _25
            mem[740] = uint64(_29)
            require ext_code.size(tokenAddress)
            call tokenAddress.mintAndFreeze(address rg1, uint256 rg2, uint64 rg3) with:
                 gas gas_remaining wei
                args mem[676], _25, uint64(_29)
        mem[672] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0x1520140e4821c1ce3bc7137f45da598470329f76);
    owner = 0x1520140e4821c1ce3bc7137f45da598470329f76
    emit Initialized()
}



}
