contract main {




// =====================  Runtime code  =====================


const CONTINUE_MINTING = 1

const TOKEN_NAME = 'WrappedDex'

const TOKEN_SYMBOL = 'WDEX'

const TOKEN_DECIMAL_MULTIPLIER = 100 * 10^6

const TOKEN_DECIMALS = 8

const TARGET_USER = 0x179d86bc11a0050645a33cba843f3953db1017ef

const PAUSED = 0

const TOKEN_DECIMALS_UINT8 = 8

const START_TIME = 1602878700


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint8 isFinalized; offset 160
address owner;
uint256 cap;
uint8 initialized;

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

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
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
    return (cap - weiRaised < 25 * 10^16)
}

function hasClosed() {
    require weiRaised <= cap
    if block.timestamp > closingTime:
        return (block.timestamp > closingTime)
    if weiRaised >= cap:
        return weiRaised >= cap
    return (cap - weiRaised < 25 * 10^16)
}

function setEndTime(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp < closingTime
    require arg1 > block.timestamp
    require arg1 > openingTime
    emit TimesChanged(openingTime, arg1, openingTime, closingTime);
    closingTime = arg1
}

function finalize() {
    require msg.sender == owner
    require not isFinalized
    require weiRaised <= cap
    if block.timestamp <= closingTime:
        if weiRaised < cap:
            require cap - weiRaised < 25 * 10^16
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args 0x179d86bc11a0050645a33cba843f3953db1017ef
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    isFinalized = 1
}

function init() {
    require msg.sender == owner
    require not initialized
    initialized = 1
    mem[480] = 0xd8eb5cea9b59061c18a49b064f07039dac1d5d06
    mem[512] = 0x19a9017e6397209d3631399d40d15e6386f58fba
    mem[544] = 0xf53a89e7e8f8ae9bedcb0c0b746e8f99122eb419
    mem[576] = 0x607dd66a9a7b1e09d57b7edbe7568e02e4931f28
    mem[608] = 15 * 10^10
    mem[640] = 3 * 10^11
    mem[672] = 35 * 10^10
    mem[704] = 12 * 10^11
    mem[736] = 0
    mem[768] = 0
    mem[800] = 0
    mem[832] = 0
    idx = 0
    while idx < 4:
        require idx < 4
        if not mem[(32 * idx) + 760 len 8]:
            _24 = mem[(32 * idx) + 608]
            mem[868] = mem[(32 * idx) + 492 len 20]
            mem[900] = _24
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args mem[868], _24
        else:
            _23 = mem[(32 * idx) + 608]
            _27 = mem[(32 * idx) + 736]
            mem[868] = mem[(32 * idx) + 492 len 20]
            mem[900] = _23
            mem[932] = uint64(_27)
            require ext_code.size(tokenAddress)
            call tokenAddress.mintAndFreeze(address rg1, uint256 rg2, uint64 rg3) with:
                 gas gas_remaining wei
                args mem[868], _23, uint64(_27)
        mem[864] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0x179d86bc11a0050645a33cba843f3953db1017ef);
    owner = 0x179d86bc11a0050645a33cba843f3953db1017ef
    emit Initialized()
}

function buyTokens(address arg1) payable {
    require msg.value >= 25 * 10^16
    require msg.value <= 100 * 10^18
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    mem[256] = 25 * 10^16
    mem[288] = 100 * 10^18
    mem[320] = 1602878700
    mem[352] = 1605646854
    mem[384] = 100
    s = 0
    s = 0
    idx = 0
    s = rate
    while idx < 1:
        if mem[(32 * idx) + 256] > weiRaised:
            if idx < 1:
                if mem[(32 * idx) + 344 len 8] > block.timestamp:
                    if mem[(32 * idx) + 256] > weiRaised:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 256] <= weiRaised
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(32 * idx) + 344 len 8] > block.timestamp:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 256] <= weiRaised
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < 1:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 256] <= weiRaised
                        idx = idx + 1
                        s = s + (s * mem[(32 * idx) + 384] / 1000)
                        continue 
                else:
                    if idx < 1:
                        if mem[(32 * idx) + 256] > weiRaised:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = mem[(32 * idx) + 256] <= weiRaised
                            idx = idx + 1
                            s = s
                            continue 
                        if block.timestamp >= mem[(32 * idx) + 376 len 8]:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = mem[(32 * idx) + 256] <= weiRaised
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < 1:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = mem[(32 * idx) + 256] <= weiRaised
                            idx = idx + 1
                            s = s + (s * mem[(32 * idx) + 384] / 1000)
                            continue 
        else:
            if idx < 1:
                if mem[(32 * idx) + 344 len 8] > block.timestamp:
                    if weiRaised >= mem[(32 * idx) + 288]:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 288]
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(32 * idx) + 344 len 8] > block.timestamp:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 288]
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < 1:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 288]
                        idx = idx + 1
                        s = s + (s * mem[(32 * idx) + 384] / 1000)
                        continue 
                else:
                    if idx < 1:
                        if weiRaised >= mem[(32 * idx) + 288]:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = weiRaised < mem[(32 * idx) + 288]
                            idx = idx + 1
                            s = s
                            continue 
                        if block.timestamp >= mem[(32 * idx) + 376 len 8]:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = weiRaised < mem[(32 * idx) + 288]
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < 1:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = weiRaised < mem[(32 * idx) + 288]
                            idx = idx + 1
                            s = s + (s * mem[(32 * idx) + 384] / 1000)
                            continue 
        revert
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
        require s * msg.value / msg.value == s
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), s * msg.value / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, s * msg.value / 10^18, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.value >= 25 * 10^16
    require msg.value <= 100 * 10^18
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    mem[256] = 25 * 10^16
    mem[288] = 100 * 10^18
    mem[320] = 1602878700
    mem[352] = 1605646854
    mem[384] = 100
    s = 0
    s = 0
    idx = 0
    s = rate
    while idx < 1:
        if mem[(32 * idx) + 256] > weiRaised:
            if idx < 1:
                if mem[(32 * idx) + 344 len 8] > block.timestamp:
                    if mem[(32 * idx) + 256] > weiRaised:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 256] <= weiRaised
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(32 * idx) + 344 len 8] > block.timestamp:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 256] <= weiRaised
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < 1:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = mem[(32 * idx) + 256] <= weiRaised
                        idx = idx + 1
                        s = s + (s * mem[(32 * idx) + 384] / 1000)
                        continue 
                else:
                    if idx < 1:
                        if mem[(32 * idx) + 256] > weiRaised:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = mem[(32 * idx) + 256] <= weiRaised
                            idx = idx + 1
                            s = s
                            continue 
                        if block.timestamp >= mem[(32 * idx) + 376 len 8]:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = mem[(32 * idx) + 256] <= weiRaised
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < 1:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = mem[(32 * idx) + 256] <= weiRaised
                            idx = idx + 1
                            s = s + (s * mem[(32 * idx) + 384] / 1000)
                            continue 
        else:
            if idx < 1:
                if mem[(32 * idx) + 344 len 8] > block.timestamp:
                    if weiRaised >= mem[(32 * idx) + 288]:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 288]
                        idx = idx + 1
                        s = s
                        continue 
                    if mem[(32 * idx) + 344 len 8] > block.timestamp:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 288]
                        idx = idx + 1
                        s = s
                        continue 
                    if idx < 1:
                        s = mem[(32 * idx) + 344 len 8] <= block.timestamp
                        s = weiRaised < mem[(32 * idx) + 288]
                        idx = idx + 1
                        s = s + (s * mem[(32 * idx) + 384] / 1000)
                        continue 
                else:
                    if idx < 1:
                        if weiRaised >= mem[(32 * idx) + 288]:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = weiRaised < mem[(32 * idx) + 288]
                            idx = idx + 1
                            s = s
                            continue 
                        if block.timestamp >= mem[(32 * idx) + 376 len 8]:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = weiRaised < mem[(32 * idx) + 288]
                            idx = idx + 1
                            s = s
                            continue 
                        if idx < 1:
                            s = block.timestamp < mem[(32 * idx) + 376 len 8]
                            s = weiRaised < mem[(32 * idx) + 288]
                            idx = idx + 1
                            s = s + (s * mem[(32 * idx) + 384] / 1000)
                            continue 
        revert
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
        require s * msg.value / msg.value == s
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, s * msg.value / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, s * msg.value / 10^18, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
