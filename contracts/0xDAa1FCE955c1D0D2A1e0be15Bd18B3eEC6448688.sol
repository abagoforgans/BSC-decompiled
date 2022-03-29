contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address tokenAddress; offset 8
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;
address stor10;
address stor11;
uint256 stor12;
uint256 stor13;

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

function openingTime() {
    return openingTime
}

function token() {
    return tokenAddress
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 0
    if block.timestamp < openingTime:
        revert with 0, 'TimedCrowdsale: not open'
    if block.timestamp > closingTime:
        revert with 0, 'TimedCrowdsale: not open'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7743726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                    mem[206 len 22]
    if not msg.value:
        revert with 0, 'Crowdsale: weiAmount is 0'
    if block.timestamp <= openingTime + stor6:
        if not msg.value:
            if weiRaised + msg.value < weiRaised:
                revert with 0, 'SafeMath: addition overflow'
            weiRaised += msg.value
            if block.timestamp <= openingTime + stor6:
                require ext_code.size(stor9)
                call stor9.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'NagaCrowdsale: cap exceeded'
            else:
                if block.timestamp <= stor7 + stor6:
                    require ext_code.size(stor10)
                    call stor10.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                else:
                    if stor13 < stor13:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor13 > stor12:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                    if stor13 < stor13:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_code.hash(stor11) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(stor11):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, 0
                    call stor11 with:
                         gas gas_remaining wei
                        args 0, mem[260 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 307 len 22]
            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
        else:
            require msg.value
            if 750 * msg.value / msg.value != 750:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if weiRaised + msg.value < weiRaised:
                revert with 0, 'SafeMath: addition overflow'
            weiRaised += msg.value
            if block.timestamp <= openingTime + stor6:
                require ext_code.size(stor9)
                call stor9.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(arg1), 750 * msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'NagaCrowdsale: cap exceeded'
            else:
                if block.timestamp <= stor7 + stor6:
                    require ext_code.size(stor10)
                    call stor10.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 750 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                else:
                    if stor13 + (750 * msg.value) < stor13:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor13 + (750 * msg.value) > stor12:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                    if stor13 + (750 * msg.value) < stor13:
                        revert with 0, 'SafeMath: addition overflow'
                    stor13 += 750 * msg.value
                    if ext_code.hash(stor11) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(stor11):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, 750 * msg.value) >> 32
                    call stor11 with:
                         gas gas_remaining wei
                        args Mask(224, 32, 750 * msg.value) << 224, mem[260 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 307 len 22]
            emit TokensPurchased(msg.value, 750 * msg.value, msg.sender, arg1);
    else:
        if block.timestamp < stor7:
            revert with 0, 'NagaCrowdsale: not open'
        if block.timestamp <= stor7 + stor6:
            if not msg.value:
                if weiRaised + msg.value < weiRaised:
                    revert with 0, 'SafeMath: addition overflow'
                weiRaised += msg.value
                if block.timestamp <= openingTime + stor6:
                    require ext_code.size(stor9)
                    call stor9.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                else:
                    if block.timestamp <= stor7 + stor6:
                        require ext_code.size(stor10)
                        call stor10.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                    else:
                        if stor13 < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor13 > stor12:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                        if stor13 < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_code.hash(stor11) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(stor11):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, 0
                        call stor11 with:
                             gas gas_remaining wei
                            args 0, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
            else:
                require msg.value
                if 500 * msg.value / msg.value != 500:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if weiRaised + msg.value < weiRaised:
                    revert with 0, 'SafeMath: addition overflow'
                weiRaised += msg.value
                if block.timestamp <= openingTime + stor6:
                    require ext_code.size(stor9)
                    call stor9.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 500 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                else:
                    if block.timestamp <= stor7 + stor6:
                        require ext_code.size(stor10)
                        call stor10.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 500 * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                    else:
                        if stor13 + (500 * msg.value) < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor13 + (500 * msg.value) > stor12:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                        if stor13 + (500 * msg.value) < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        stor13 += 500 * msg.value
                        if ext_code.hash(stor11) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(stor11):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, 500 * msg.value) >> 32
                        call stor11 with:
                             gas gas_remaining wei
                            args Mask(224, 32, 500 * msg.value) << 224, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
                emit TokensPurchased(msg.value, 500 * msg.value, msg.sender, arg1);
        else:
            if block.timestamp < stor8:
                revert with 0, 'NagaCrowdsale: not open'
            if not msg.value:
                if weiRaised + msg.value < weiRaised:
                    revert with 0, 'SafeMath: addition overflow'
                weiRaised += msg.value
                if block.timestamp <= openingTime + stor6:
                    require ext_code.size(stor9)
                    call stor9.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                else:
                    if block.timestamp <= stor7 + stor6:
                        require ext_code.size(stor10)
                        call stor10.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                    else:
                        if stor13 < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor13 > stor12:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                        if stor13 < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_code.hash(stor11) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(stor11):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, 0
                        call stor11 with:
                             gas gas_remaining wei
                            args 0, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
            else:
                require msg.value
                if 375 * msg.value / msg.value != 375:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if weiRaised + msg.value < weiRaised:
                    revert with 0, 'SafeMath: addition overflow'
                weiRaised += msg.value
                if block.timestamp <= openingTime + stor6:
                    require ext_code.size(stor9)
                    call stor9.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(arg1), 375 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                else:
                    if block.timestamp <= stor7 + stor6:
                        require ext_code.size(stor10)
                        call stor10.0x40c10f19 with:
                             gas gas_remaining wei
                            args address(arg1), 375 * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                    else:
                        if stor13 + (375 * msg.value) < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor13 + (375 * msg.value) > stor12:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                        if stor13 + (375 * msg.value) < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        stor13 += 375 * msg.value
                        if ext_code.hash(stor11) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(stor11):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, 375 * msg.value) >> 32
                        call stor11 with:
                             gas gas_remaining wei
                            args Mask(224, 32, 375 * msg.value) << 224, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
                emit TokensPurchased(msg.value, 375 * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function _fallback() payable {
    if not stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 0
    if block.timestamp < openingTime:
        revert with 0, 'TimedCrowdsale: not open'
    if block.timestamp > closingTime:
        revert with 0, 'TimedCrowdsale: not open'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7743726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                    mem[206 len 22]
    if not msg.value:
        revert with 0, 'Crowdsale: weiAmount is 0'
    if block.timestamp <= openingTime + stor6:
        if not msg.value:
            if weiRaised + msg.value < weiRaised:
                revert with 0, 'SafeMath: addition overflow'
            weiRaised += msg.value
            if block.timestamp <= openingTime + stor6:
                require ext_code.size(stor9)
                call stor9.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'NagaCrowdsale: cap exceeded'
            else:
                if block.timestamp <= stor7 + stor6:
                    require ext_code.size(stor10)
                    call stor10.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                else:
                    if stor13 < stor13:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor13 > stor12:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                    if stor13 < stor13:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_code.hash(stor11) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(stor11):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call stor11 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[260 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 307 len 22]
            emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
        else:
            require msg.value
            if 750 * msg.value / msg.value != 750:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if weiRaised + msg.value < weiRaised:
                revert with 0, 'SafeMath: addition overflow'
            weiRaised += msg.value
            if block.timestamp <= openingTime + stor6:
                require ext_code.size(stor9)
                call stor9.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, 750 * msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'NagaCrowdsale: cap exceeded'
            else:
                if block.timestamp <= stor7 + stor6:
                    require ext_code.size(stor10)
                    call stor10.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 750 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                else:
                    if stor13 + (750 * msg.value) < stor13:
                        revert with 0, 'SafeMath: addition overflow'
                    if stor13 + (750 * msg.value) > stor12:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                    if stor13 + (750 * msg.value) < stor13:
                        revert with 0, 'SafeMath: addition overflow'
                    stor13 += 750 * msg.value
                    if ext_code.hash(stor11) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(stor11):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 750 * msg.value) >> 32
                    call stor11 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 750 * msg.value) << 224, mem[260 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 307 len 22]
            emit TokensPurchased(msg.value, 750 * msg.value, msg.sender, msg.sender);
    else:
        if block.timestamp < stor7:
            revert with 0, 'NagaCrowdsale: not open'
        if block.timestamp <= stor7 + stor6:
            if not msg.value:
                if weiRaised + msg.value < weiRaised:
                    revert with 0, 'SafeMath: addition overflow'
                weiRaised += msg.value
                if block.timestamp <= openingTime + stor6:
                    require ext_code.size(stor9)
                    call stor9.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                else:
                    if block.timestamp <= stor7 + stor6:
                        require ext_code.size(stor10)
                        call stor10.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                    else:
                        if stor13 < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor13 > stor12:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                        if stor13 < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_code.hash(stor11) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(stor11):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                        call stor11 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
            else:
                require msg.value
                if 500 * msg.value / msg.value != 500:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if weiRaised + msg.value < weiRaised:
                    revert with 0, 'SafeMath: addition overflow'
                weiRaised += msg.value
                if block.timestamp <= openingTime + stor6:
                    require ext_code.size(stor9)
                    call stor9.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 500 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                else:
                    if block.timestamp <= stor7 + stor6:
                        require ext_code.size(stor10)
                        call stor10.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 500 * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                    else:
                        if stor13 + (500 * msg.value) < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor13 + (500 * msg.value) > stor12:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                        if stor13 + (500 * msg.value) < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        stor13 += 500 * msg.value
                        if ext_code.hash(stor11) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(stor11):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 500 * msg.value) >> 32
                        call stor11 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 500 * msg.value) << 224, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
                emit TokensPurchased(msg.value, 500 * msg.value, msg.sender, msg.sender);
        else:
            if block.timestamp < stor8:
                revert with 0, 'NagaCrowdsale: not open'
            if not msg.value:
                if weiRaised + msg.value < weiRaised:
                    revert with 0, 'SafeMath: addition overflow'
                weiRaised += msg.value
                if block.timestamp <= openingTime + stor6:
                    require ext_code.size(stor9)
                    call stor9.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                else:
                    if block.timestamp <= stor7 + stor6:
                        require ext_code.size(stor10)
                        call stor10.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                    else:
                        if stor13 < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor13 > stor12:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                        if stor13 < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_code.hash(stor11) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(stor11):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                        call stor11 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
                emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
            else:
                require msg.value
                if 375 * msg.value / msg.value != 375:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if weiRaised + msg.value < weiRaised:
                    revert with 0, 'SafeMath: addition overflow'
                weiRaised += msg.value
                if block.timestamp <= openingTime + stor6:
                    require ext_code.size(stor9)
                    call stor9.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, 375 * msg.value
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'NagaCrowdsale: cap exceeded'
                else:
                    if block.timestamp <= stor7 + stor6:
                        require ext_code.size(stor10)
                        call stor10.0x40c10f19 with:
                             gas gas_remaining wei
                            args msg.sender, 375 * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                    else:
                        if stor13 + (375 * msg.value) < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        if stor13 + (375 * msg.value) > stor12:
                            revert with 0, 'NagaCrowdsale: cap exceeded'
                        if stor13 + (375 * msg.value) < stor13:
                            revert with 0, 'SafeMath: addition overflow'
                        stor13 += 375 * msg.value
                        if ext_code.hash(stor11) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(stor11):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 375 * msg.value) >> 32
                        call stor11 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 375 * msg.value) << 224, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
                emit TokensPurchased(msg.value, 375 * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}



}
