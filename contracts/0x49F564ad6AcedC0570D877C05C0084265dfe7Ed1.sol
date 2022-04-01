contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address owner; offset 8
address _tokenAddress;
address _walletAddress;
uint256 _usdwei;
uint256 _tokenprice_in_cents;
uint256 weiRaised;
uint32 stor6;
address stor6;
uint256 stor6;

function _tokenprice_in_cents() {
    return _tokenprice_in_cents
}

function weiRaised() {
    return weiRaised
}

function _wallet() {
    return _walletAddress
}

function owner() {
    return owner
}

function _usdwei() {
    return _usdwei
}

function _token() {
    return _tokenAddress
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function updateUSDWeiRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    _usdwei = arg1
}

function updateTokenSalePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    _tokenprice_in_cents = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isSaleActive() {
    require ext_code.size(_tokenAddress)
    staticcall _tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(stor0.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > 0)
}

function remainingTokens() {
    require ext_code.size(_tokenAddress)
    staticcall _tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(stor6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(_tokenAddress)
    staticcall _tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(stor6), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function _getTokenAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if _usdwei:
        require _tokenprice_in_cents * _usdwei / _usdwei == _tokenprice_in_cents
        if arg1:
            require 10^18 * arg1 / arg1 == 10^18
            require _tokenprice_in_cents * _usdwei / 100 > 0
            require _tokenprice_in_cents * _usdwei / 100
            if 10^18 * arg1 / _tokenprice_in_cents * _usdwei / 100 / 10^18 <= 0:
                revert with 0, 'Less than minimum amount paid'
            else:
                return (10^18 * arg1 / _tokenprice_in_cents * _usdwei / 100 / 10^18)
        else:
            require _tokenprice_in_cents * _usdwei / 100 > 0
            require _tokenprice_in_cents * _usdwei / 100
            if 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18 <= 0:
                revert with 0, 'Less than minimum amount paid'
            else:
                return (0 / _tokenprice_in_cents * _usdwei / 100 / 10^18)
    else:
        require arg1
        require 10^18 * arg1 / arg1 != 10^18
        revert
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_0):
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        uint8(stor0.field_0) = 0
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0xfe43726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                        mem[206 len 22]
        else:
            if not msg.value:
                revert with 0, 'Crowdsale: weiAmount is 0'
            else:
                if _usdwei:
                    require _tokenprice_in_cents * _usdwei / _usdwei == _tokenprice_in_cents
                    if msg.value:
                        require 10^18 * msg.value / msg.value == 10^18
                        require _tokenprice_in_cents * _usdwei / 100 > 0
                        require _tokenprice_in_cents * _usdwei / 100
                        if 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18 <= 0:
                            revert with 0, 'Less than minimum amount paid'
                        else:
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor6), uint32(stor6), address(arg1), Mask(224, 32, 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18) >> 32
                            mem[352 len 4] = Mask(32, 64, 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18) >> 64
                            call _tokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18) << 480, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                else:
                                    if not unknown_0x23b872dd(?????), Mask(224, 0, stor6):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[338 len 14],
                                                    Mask(32, 64, 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18) >> 64,
                                                    mem[356 len 4]
                                    else:
                                        emit TokensPurchased(msg.value, 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18, msg.sender, arg1);
                                        call _walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            uint8(stor0.field_0) = 1
                            else:
                                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                else:
                                    if not return_data.size:
                                        emit TokensPurchased(msg.value, 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18, msg.sender, arg1);
                                        call _walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            uint8(stor0.field_0) = 1
                                    else:
                                        require return_data.size >= 32
                                        if not mem[260]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 339 len 22]
                                        else:
                                            emit TokensPurchased(msg.value, 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18, msg.sender, arg1);
                                            call _walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                uint8(stor0.field_0) = 1
                    else:
                        require _tokenprice_in_cents * _usdwei / 100 > 0
                        require _tokenprice_in_cents * _usdwei / 100
                        if 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18 <= 0:
                            revert with 0, 'Less than minimum amount paid'
                        else:
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor6), uint32(stor6), address(arg1), Mask(224, 32, 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18) >> 32
                            mem[352 len 4] = Mask(32, 64, 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18) >> 64
                            call _tokenAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18) << 480, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                else:
                                    if not unknown_0x23b872dd(?????), Mask(224, 0, stor6):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[338 len 14],
                                                    Mask(32, 64, 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18) >> 64,
                                                    mem[356 len 4]
                                    else:
                                        emit TokensPurchased(msg.value, 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18, msg.sender, arg1);
                                        call _walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            uint8(stor0.field_0) = 1
                            else:
                                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                else:
                                    if not return_data.size:
                                        emit TokensPurchased(msg.value, 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18, msg.sender, arg1);
                                        call _walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            uint8(stor0.field_0) = 1
                                    else:
                                        require return_data.size >= 32
                                        if not mem[260]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 339 len 22]
                                        else:
                                            emit TokensPurchased(msg.value, 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18, msg.sender, arg1);
                                            call _walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                uint8(stor0.field_0) = 1
                else:
                    require msg.value
                    require 10^18 * msg.value / msg.value != 10^18
                    revert
}

function _fallback() payable {
    if not uint8(stor0.field_0):
        revert with 0, 'ReentrancyGuard: reentrant call'
    else:
        uint8(stor0.field_0) = 0
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0xfe43726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                        mem[206 len 22]
        else:
            if not msg.value:
                revert with 0, 'Crowdsale: weiAmount is 0'
            else:
                if _usdwei:
                    require _tokenprice_in_cents * _usdwei / _usdwei == _tokenprice_in_cents
                    if msg.value:
                        require 10^18 * msg.value / msg.value == 10^18
                        require _tokenprice_in_cents * _usdwei / 100 > 0
                        require _tokenprice_in_cents * _usdwei / 100
                        if 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18 <= 0:
                            revert with 0, 'Less than minimum amount paid'
                        else:
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor6), uint32(stor6), msg.sender, Mask(224, 32, 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18) >> 32
                            mem[352 len 4] = Mask(32, 64, 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18) >> 64
                            call _tokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18) << 480, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                else:
                                    if not unknown_0x23b872dd(?????), Mask(224, 0, stor6):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[338 len 14],
                                                    Mask(32, 64, 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18) >> 64,
                                                    mem[356 len 4]
                                    else:
                                        emit TokensPurchased(msg.value, 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18, msg.sender, msg.sender);
                                        call _walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            uint8(stor0.field_0) = 1
                            else:
                                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                else:
                                    if not return_data.size:
                                        emit TokensPurchased(msg.value, 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18, msg.sender, msg.sender);
                                        call _walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            uint8(stor0.field_0) = 1
                                    else:
                                        require return_data.size >= 32
                                        if not mem[260]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 339 len 22]
                                        else:
                                            emit TokensPurchased(msg.value, 10^18 * msg.value / _tokenprice_in_cents * _usdwei / 100 / 10^18, msg.sender, msg.sender);
                                            call _walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                uint8(stor0.field_0) = 1
                    else:
                        require _tokenprice_in_cents * _usdwei / 100 > 0
                        require _tokenprice_in_cents * _usdwei / 100
                        if 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18 <= 0:
                            revert with 0, 'Less than minimum amount paid'
                        else:
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor6), uint32(stor6), msg.sender, Mask(224, 32, 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18) >> 32
                            mem[352 len 4] = Mask(32, 64, 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18) >> 64
                            call _tokenAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18) << 480, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                else:
                                    if not unknown_0x23b872dd(?????), Mask(224, 0, stor6):
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[338 len 14],
                                                    Mask(32, 64, 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18) >> 64,
                                                    mem[356 len 4]
                                    else:
                                        emit TokensPurchased(msg.value, 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18, msg.sender, msg.sender);
                                        call _walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            uint8(stor0.field_0) = 1
                            else:
                                mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                else:
                                    if not return_data.size:
                                        emit TokensPurchased(msg.value, 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18, msg.sender, msg.sender);
                                        call _walletAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            uint8(stor0.field_0) = 1
                                    else:
                                        require return_data.size >= 32
                                        if not mem[260]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 339 len 22]
                                        else:
                                            emit TokensPurchased(msg.value, 0 / _tokenprice_in_cents * _usdwei / 100 / 10^18, msg.sender, msg.sender);
                                            call _walletAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                uint8(stor0.field_0) = 1
                else:
                    require msg.value
                    require 10^18 * msg.value / msg.value != 10^18
                    revert
}



}
