contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address tokenAddress;
address _walletAddress;
uint256 rate;
uint256 weiRaised;
mapping of uint8 stor5;
uint8 stor6;
uint8 stor6; offset 8
uint32 stor6;
address stor6;
address sub_dce12abdAddress; offset 16
uint256 stor6;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor5[address(arg1)])
}

function wallet() {
    return _walletAddress
}

function paused() {
    return bool(uint8(stor6.field_8))
}

function _wallet() {
    return _walletAddress
}

function tokenWallet() {
    return sub_dce12abdAddress
}

function sub_dce12abd(?) {
    return sub_dce12abdAddress
}

function _token() {
    return tokenAddress
}

function token() {
    return tokenAddress
}

function renouncePauser() {
    require msg.sender
    require stor5[address(msg.sender)]
    stor5[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function unpause() {
    require msg.sender
    require stor5[address(msg.sender)]
    require uint8(stor6.field_8)
    require uint8(stor6.field_0)
    uint8(stor6.field_8) = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor5[address(msg.sender)]
    require not uint8(stor6.field_8)
    require uint8(stor6.field_0)
    uint8(stor6.field_8) = 1
    emit Paused(msg.sender);
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor5[address(msg.sender)]
    require arg1
    require not stor5[address(arg1)]
    stor5[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function remainingTokens() {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_dce12abdAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(stor6.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function _fallback() payable {
    stor0++
    require not uint8(stor6.field_8)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x6c4372797374616d6f6e5072697661746553616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                    mem[217 len 11]
    if not msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4372797374616d6f6e5072697661746553616c653a20776569416d6f756e7420697320,
                    mem[200 len 28]
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    if not ext_code.hash(tokenAddress):
        revert with 0, 32, 39, 0x645365637572654372797374616d6f6e32303a2063616c6c20746f206e6f6e2d636f6e74726163, mem[335 len 25]
    if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 32, 39, 0x645365637572654372797374616d6f6e32303a2063616c6c20746f206e6f6e2d636f6e74726163, mem[335 len 25]
    mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), msg.sender, Mask(224, 32, rate * msg.value) >> 32
    mem[352 len 4] = Mask(32, 64, rate * msg.value) >> 64
    call tokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, rate * msg.value) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        40,
                        0x305365637572654372797374616d6f6e32303a206c6f772d6c6576656c2063616c6c206661696c65,
                        mem[336 len 16],
                        Mask(32, 64, rate * msg.value) >> 64,
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), Mask(224, 0, stor6.field_0):
            revert with 0, 
                        32,
                        50,
                        0x645365637572654372797374616d6f6e32303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[346 len 6],
                        Mask(32, 64, rate * msg.value) >> 64,
                        mem[356 len 4]
        emit TokensPurchased(msg.value, rate * msg.value, msg.sender, msg.sender);
        call _walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor0 + 1 != stor0:
            revert with 0, 
                        32,
                        44,
                        0x744372797374616d6f6e5072697661746553616c654661696c736166653a207265656e7472616e742063616c,
                        mem[340 len 12],
                        Mask(32, 64, rate * msg.value) >> 64,
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        40,
                        0x305365637572654372797374616d6f6e32303a206c6f772d6c6576656c2063616c6c206661696c65,
                        mem[ceil32(return_data.size) + 337 len 24]
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            50,
                            0x645365637572654372797374616d6f6e32303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 347 len 14]
        emit TokensPurchased(msg.value, rate * msg.value, msg.sender, msg.sender);
        call _walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor0 + 1 != stor0:
            revert with 0, 
                        32,
                        44,
                        0x744372797374616d6f6e5072697661746553616c654661696c736166653a207265656e7472616e742063616c,
                        mem[ceil32(return_data.size) + 341 len 20]
    ('eq', ('add', 1, ('stor', ('name', 'stor0', 0))), ('stor', ('name', 'stor0', 0)))
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    require not uint8(stor6.field_8)
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x6c4372797374616d6f6e5072697661746553616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                    mem[217 len 11]
    if not msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe4372797374616d6f6e5072697661746553616c653a20776569416d6f756e7420697320,
                    mem[200 len 28]
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    if not ext_code.hash(tokenAddress):
        revert with 0, 32, 39, 0x645365637572654372797374616d6f6e32303a2063616c6c20746f206e6f6e2d636f6e74726163, mem[335 len 25]
    if ext_code.hash(tokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 32, 39, 0x645365637572654372797374616d6f6e32303a2063616c6c20746f206e6f6e2d636f6e74726163, mem[335 len 25]
    mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), address(arg1), Mask(224, 32, rate * msg.value) >> 32
    mem[352 len 4] = Mask(32, 64, rate * msg.value) >> 64
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, rate * msg.value) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        40,
                        0x305365637572654372797374616d6f6e32303a206c6f772d6c6576656c2063616c6c206661696c65,
                        mem[336 len 16],
                        Mask(32, 64, rate * msg.value) >> 64,
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), Mask(224, 0, stor6.field_0):
            revert with 0, 
                        32,
                        50,
                        0x645365637572654372797374616d6f6e32303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[346 len 6],
                        Mask(32, 64, rate * msg.value) >> 64,
                        mem[356 len 4]
        emit TokensPurchased(msg.value, rate * msg.value, msg.sender, arg1);
        call _walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor0 + 1 != stor0:
            revert with 0, 
                        32,
                        44,
                        0x744372797374616d6f6e5072697661746553616c654661696c736166653a207265656e7472616e742063616c,
                        mem[340 len 12],
                        Mask(32, 64, rate * msg.value) >> 64,
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        40,
                        0x305365637572654372797374616d6f6e32303a206c6f772d6c6576656c2063616c6c206661696c65,
                        mem[ceil32(return_data.size) + 337 len 24]
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            50,
                            0x645365637572654372797374616d6f6e32303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 347 len 14]
        emit TokensPurchased(msg.value, rate * msg.value, msg.sender, arg1);
        call _walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor0 + 1 != stor0:
            revert with 0, 
                        32,
                        44,
                        0x744372797374616d6f6e5072697661746553616c654661696c736166653a207265656e7472616e742063616c,
                        mem[ceil32(return_data.size) + 341 len 20]
    ('eq', ('add', 1, ('stor', ('name', 'stor0', 0))), ('stor', ('name', 'stor0', 0)))
}



}
