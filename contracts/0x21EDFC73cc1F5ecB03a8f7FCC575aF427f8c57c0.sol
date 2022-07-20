contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address tokenAddress;
address walletAddress;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint32 stor7;
address tokenWalletAddress;
uint256 stor7;
uint256 rate;

function rate() {
    return rate
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

function owner() {
    return owner
}

function openingTime() {
    return openingTime
}

function tokenWallet() {
    return address(tokenWalletAddress)
}

function token() {
    return tokenAddress
}

function isOwner() {
    return (msg.sender == owner)
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function extendTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit TimedCrowdsaleExtended(closingTime, arg1);
    closingTime = arg1
}

function remainingTokens() {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(tokenWalletAddress), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < openingTime:
        revert with 0, 'TimedCrowdsale: not open'
    if block.timestamp > closingTime:
        revert with 0, 'TimedCrowdsale: not open'
    if not uint8(stor0.field_160):
        revert with 0, 'ReentrancyGuard: reentrant call'
    Mask(96, 0, stor0.field_160) = 0
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7743726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                    mem[206 len 22]
    if not msg.value:
        revert with 0, 'Crowdsale: weiAmount is 0'
    if msg.value > 3 * 10^18:
        revert with 0, 'Can't Buy More Than 3 BNB'
    if not rate:
        if weiRaised + msg.value < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        weiRaised += msg.value
        if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor7), uint32(stor7), address(arg1), 0
        mem[352 len 4] = 0
        call tokenAddress with:
             gas gas_remaining wei
            args Mask(736, -512, unknown_0x23b872dd(?????), Mask(224, 0, stor7), uint32(stor7), address(arg1), 0) << 512, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor7):
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            0,
                            mem[356 len 4]
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        require rate
        if rate * msg.value / rate != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if weiRaised + msg.value < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        weiRaised += msg.value
        if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor7), uint32(stor7), address(arg1), Mask(224, 32, rate * msg.value) >> 32
        mem[352 len 4] = Mask(32, 64, rate * msg.value) >> 64
        call tokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, rate * msg.value) << 480, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor7):
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            Mask(32, 64, rate * msg.value) >> 64,
                            mem[356 len 4]
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
        emit TokensPurchased(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(96, 0, stor0.field_160) = 1
}

function _fallback() payable {
    if block.timestamp < openingTime:
        revert with 0, 'TimedCrowdsale: not open'
    if block.timestamp > closingTime:
        revert with 0, 'TimedCrowdsale: not open'
    if not uint8(stor0.field_160):
        revert with 0, 'ReentrancyGuard: reentrant call'
    Mask(96, 0, stor0.field_160) = 0
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7743726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                    mem[206 len 22]
    if not msg.value:
        revert with 0, 'Crowdsale: weiAmount is 0'
    if msg.value > 3 * 10^18:
        revert with 0, 'Can't Buy More Than 3 BNB'
    if not rate:
        if weiRaised + msg.value < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        weiRaised += msg.value
        if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor7), uint32(stor7), msg.sender, 0
        mem[352 len 4] = 0
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(736, -512, unknown_0x23b872dd(?????), Mask(224, 0, stor7), uint32(stor7), msg.sender, 0) << 512, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor7):
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            0,
                            mem[356 len 4]
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
    else:
        require rate
        if rate * msg.value / rate != msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if weiRaised + msg.value < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        weiRaised += msg.value
        if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor7), uint32(stor7), msg.sender, Mask(224, 32, rate * msg.value) >> 32
        mem[352 len 4] = Mask(32, 64, rate * msg.value) >> 64
        call tokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, rate * msg.value) << 480, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor7):
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[338 len 14],
                            Mask(32, 64, rate * msg.value) >> 64,
                            mem[356 len 4]
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 339 len 22]
        emit TokensPurchased(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(96, 0, stor0.field_160) = 1
}



}
