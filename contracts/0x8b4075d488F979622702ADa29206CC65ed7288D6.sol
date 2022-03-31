contract main {




// =====================  Runtime code  =====================


address governanceAddress;
address sub_c460de5cAddress;
address usdtAddress;
uint256 sub_0390e00c;
uint256 MAX_PURCHASE;
uint256 RATE;
uint8 stor6;
mapping of uint256 purchased;

function sub_0390e00c(?) {
    return sub_0390e00c
}

function usdt() {
    return usdtAddress
}

function purchased(address arg1) {
    require calldata.size - 4 >= 32
    return purchased[arg1]
}

function governance() {
    return governanceAddress
}

function RATE() {
    return RATE
}

function MAX_PURCHASE() {
    return MAX_PURCHASE
}

function sub_72d48384(?) {
    return bool(stor6)
}

function sub_c460de5c(?) {
    return sub_c460de5cAddress
}

function _fallback() payable {
    revert
}

function startCrowdsale() {
    require msg.sender == governanceAddress
    stor6 = 1
    emit 0xd86506d6: sub_0390e00c, MAX_PURCHASE, RATE
}

function setGovernance(address arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function withdrawBnb() {
    if governanceAddress != msg.sender:
        revert with 0, 'only governance'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function usdtBalance() {
    require ext_code.size(usdtAddress)
    staticcall usdtAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_609477a3(?) {
    require ext_code.size(sub_c460de5cAddress)
    staticcall sub_c460de5cAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawUsdt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'only governance'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(usdtAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call usdtAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_3b8b636d(?) {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'only governance'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_c460de5cAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call sub_c460de5cAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function withdrawAllUsdt() {
    require ext_code.size(usdtAddress)
    staticcall usdtAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'only governance'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(usdtAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call usdtAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_4b4d0e2f(?) {
    require ext_code.size(sub_c460de5cAddress)
    staticcall sub_c460de5cAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if governanceAddress != msg.sender:
        revert with 0, 'only governance'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_c460de5cAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call sub_c460de5cAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function buyToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor6:
        revert with 0, '!started'
    if arg1 + purchased[msg.sender] < purchased[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + purchased[msg.sender] > MAX_PURCHASE:
        revert with 0, 'limited'
    if not RATE:
        revert with 0, 'SafeMath: division by zero'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
    if not ext_code.size(usdtAddress):
        revert with 0, 'Address: call to non-contract'
    mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1 / RATE) >> 32
    mem[480 len 4] = 0
    call usdtAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1 / RATE) << 480, mem[452 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 627 len 26]
        if not ext_code.size(sub_c460de5cAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        mem[ceil32(return_data.size) + 613 len 4] = 0
        call sub_c460de5cAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 585 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 553]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        if arg1 + purchased[msg.sender] < purchased[msg.sender]:
            revert with 0, 
                        'SafeMath: addition overflow',
                        mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        purchased[msg.sender] += arg1
        emit TokenPurchase(address rg1, uint256 rg2):
                           msg.sender,
                           arg1,
                           mem[(2 * ceil32(return_data.size)) + 586 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
    else:
        require return_data.size >= 32
        if not mem[388]:
            revert with 0, 
                        32,
                        42,
                        0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 467 len 22]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 627 len 26]
        if not ext_code.size(sub_c460de5cAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
        mem[ceil32(return_data.size) + 585 len 0] = 0
        call sub_c460de5cAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 585 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 553]:
                revert with 0, 
                            32,
                            42,
                            0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 632 len 22]
        if arg1 + purchased[msg.sender] < purchased[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        purchased[msg.sender] += arg1
        emit TokenPurchase(msg.sender, arg1);
}



}
