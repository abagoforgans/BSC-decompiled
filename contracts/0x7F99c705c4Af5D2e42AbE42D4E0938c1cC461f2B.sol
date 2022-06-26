contract main {




// =====================  Runtime code  =====================


const CONTINUE_MINTING = 1

const TOKEN_NAME = 'PredictVision'

const TOKEN_SYMBOL = 'AIDE'

const TOKEN_DECIMAL_MULTIPLIER = 100 * 10^6

const TOKEN_DECIMALS = 8

const TARGET_USER = 0x70ce39f4e4b5dcd268930c9a4d8eb36be86be0aa

const PAUSED = 1

const TOKEN_DECIMALS_UINT8 = 8

const START_TIME = (456689 * 3600)


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint8 stor6; offset 160
address owner;
uint256 cap;
uint8 stor8;

function initialized() {
    return bool(stor8)
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
    return bool(stor6)
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

function hasEnded() {
    if block.timestamp > closingTime:
        return (block.timestamp > closingTime)
    return weiRaised >= cap
}

function hasClosed() {
    if block.timestamp > closingTime:
        return (block.timestamp > closingTime)
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function finalize() {
    require msg.sender == owner
    require not stor6
    if block.timestamp <= closingTime:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args 0x70ce39f4e4b5dcd268930c9a4d8eb36be86be0aa
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    stor6 = 1
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

function buyTokens(address arg1) payable {
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
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
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
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function init() {
    require msg.sender == owner
    require not stor8
    stor8 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[576] = 0x2b0d07682be798708f469d456fdedc7142ac20cc
    mem[608] = 0x91d135fa2c66864d4f490548da44f7bbd523a4dc
    mem[640] = 0x21d6e3ce22ab5485ac7256574904a994a1dad252
    mem[672] = 0x485697e7b740d247ff639396e6318b946052c92
    mem[704] = 0xafc84dcba1b72c40db851c3d50affdf9d04ebc73
    mem[736] = 10707 * 10^11
    mem[768] = 10621 * 10^11
    mem[800] = 10621 * 10^11
    mem[832] = 10621 * 10^11
    mem[864] = 43 * 10^12
    mem[896] = 1721016001
    mem[928] = 1702616401
    mem[960] = 1684123201
    mem[992] = 1665806401
    mem[1024] = 1647316801
    idx = 0
    while idx < 5:
        require idx < 5
        if not mem[(32 * idx) + 920 len 8]:
            _26 = mem[(32 * idx) + 736]
            mem[1060] = mem[(32 * idx) + 588 len 20]
            mem[1092] = _26
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args mem[1060], _26
        else:
            _25 = mem[(32 * idx) + 736]
            _29 = mem[(32 * idx) + 896]
            mem[1060] = mem[(32 * idx) + 588 len 20]
            mem[1092] = _25
            mem[1124] = uint64(_29)
            require ext_code.size(tokenAddress)
            call tokenAddress.mintAndFreeze(address arg1, uint256 arg2, uint64 arg3) with:
                 gas gas_remaining wei
                args mem[1060], _25, uint64(_29)
        mem[1056] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0x70ce39f4e4b5dcd268930c9a4d8eb36be86be0aa);
    owner = 0x70ce39f4e4b5dcd268930c9a4d8eb36be86be0aa
    emit Initialized()
}



}
