contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of struct sub_1f11657a;
uint8 stor3;
uint8 stor3; offset 8
uint8 stor3; offset 16
uint256 stor3; offset 16
uint256 stor3; offset 8
uint256 totalSold;
uint256 sub_17f5d96a;
uint256 sub_bfffe442;
address sub_4d085704Address;
uint256 sub_c435665d;
address reserveAddress;

function sub_17f5d96a(?) {
    return sub_17f5d96a
}

function sub_1f11657a(?) {
    require calldata.size - 4 >= 32
    return bool(sub_1f11657a[arg1].field_0), 
           bool(sub_1f11657a[arg1].field_8),
           sub_1f11657a[arg1].field_256,
           sub_1f11657a[arg1].field_512,
           sub_1f11657a[arg1].field_768
}

function sub_2866ed21(?) {
    return bool(uint8(stor3.field_16))
}

function sub_4d085704(?) {
    return sub_4d085704Address
}

function sub_802ebfa3(?) {
    return bool(uint8(stor3.field_8))
}

function owner() {
    return owner
}

function totalSold() {
    return totalSold
}

function sub_bfffe442(?) {
    return sub_bfffe442
}

function sub_c435665d(?) {
    return sub_c435665d
}

function sub_d4553043(?) {
    return bool(uint8(stor3.field_0))
}

function reserveAddress() {
    return reserveAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit 0x648be007: owner, 0
    owner = 0
}

function sub_66b2db2d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    sub_c435665d = arg1
    emit 0x5a1633e2: arg1
}

function sub_d1831651(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    sub_17f5d96a = arg1
    emit 0x70d39d8b: arg1
}

function sub_eae968a7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    sub_bfffe442 = arg1
    emit 0xefd293e9: arg1
}

function sub_6a87bdcd(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    uint8(stor3.field_0) = uint8(arg1)
    emit 0x41e50b6d: arg1
}

function sub_3e5c7a3f(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    Mask(248, 0, stor3.field_8) = Mask(248, 0, arg1)
    emit 0xcb1a924d: arg1
}

function setClaimStatus(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    Mask(240, 0, stor3.field_16) = Mask(240, 0, arg1)
    emit ClaimEnabled(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x648be007: owner, arg1
    owner = arg1
}

function setReserveAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x6c53657452657365727665416464726573733a2043616e6e6f74207570646174652077697468207a65726f20616464726573,
                    mem[214 len 14]
    reserveAddress = arg1
    emit 0x279ea638: arg1
}

function sub_99ab14c4(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    idx = 0
    while idx < ('cd', 4).length:
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x416464546f57686974656c6973743a2043616e6e6f7420616464207a65726f2061646472657300,
                        mem[203 len 25]
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        sub_1f11657a[address(cd[((32 * idx) + cd[4] + 36)])].field_8 = 1
        idx = idx + 1
        continue 
    emit 0x491ab864: Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)])
}

function sub_bbd01ba0(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    idx = 0
    while idx < ('cd', 4).length:
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x416464546f57686974656c6973743a2043616e6e6f7420616464207a65726f2061646472657300,
                        mem[203 len 25]
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        sub_1f11657a[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = 1
        idx = idx + 1
        continue 
    emit 0xf7527a9f: Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)])
}

function sub_b7aa5ec3(?) {
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not uint8(stor3.field_16):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64436c61696d55736572546f6b656e733a20436c61696d20737461747573206e6f7420656e61626c65,
                    mem[205 len 23]
    if not sub_1f11657a[msg.sender].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x64436c61696d55736572546f6b656e733a204e6f20616d6f756e7420636c61696d61626c,
                    mem[200 len 28]
    if sub_c435665d * sub_1f11657a[msg.sender].field_768 / sub_1f11657a[msg.sender].field_768 != sub_c435665d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    sub_1f11657a[msg.sender].field_768 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_4d085704Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_c435665d * sub_1f11657a[msg.sender].field_768 / 10^18) >> 32
    call sub_4d085704Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, sub_c435665d * sub_1f11657a[msg.sender].field_768 / 10^18) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, sub_c435665d * sub_1f11657a[msg.sender].field_768 / 10^18
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    stor1 = 1
}

function sub_d7e05a67(?) payable {
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not uint8(stor3.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x42496e76657374496e50686173654f6e653a205068617365204f6e652069732064697361626c65,
                    mem[203 len 25]
    if not sub_1f11657a[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x72496e76657374496e50686173654f6e653a2055736572206973206e6f742077686974656c69737465,
                    mem[205 len 23]
    if msg.value + sub_1f11657a[msg.sender].field_256 < sub_1f11657a[msg.sender].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + sub_1f11657a[msg.sender].field_256 > sub_17f5d96a:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x77496e76657374496e50686173654f6e653a20746f6b656e20616d6f756e742063617020697320726561636865,
                    mem[209 len 19]
    if not msg.value:
        if totalSold < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(sub_4d085704Address)
        staticcall sub_4d085704Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < totalSold:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x73496e76657374496e50686173654f6e653a20436f6e747261637420646f6573206e6f74206861766520656e6f7567682066756e64,
                        mem[217 len 11]
        if totalSold < totalSold:
            revert with 0, 'SafeMath: addition overflow'
        if msg.value + sub_1f11657a[msg.sender].field_256 < sub_1f11657a[msg.sender].field_256:
            revert with 0, 'SafeMath: addition overflow'
        sub_1f11657a[msg.sender].field_256 += msg.value
        if msg.value + sub_1f11657a[msg.sender].field_768 < sub_1f11657a[msg.sender].field_768:
            revert with 0, 'SafeMath: addition overflow'
        sub_1f11657a[msg.sender].field_768 += msg.value
        call reserveAddress with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x73496e76657374496e50686173654f6e653a204572726f72207768696c652073656e64696e6720424e,
                            mem[205 len 23]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            41,
                            0x73496e76657374496e50686173654f6e653a204572726f72207768696c652073656e64696e6720424e,
                            mem[ceil32(return_data.size) + 206 len 23]
        ('bool', 'ext_call.success')
        emit 0x2a41b786: msg.value, 0, msg.sender
    else:
        if sub_c435665d * msg.value / msg.value != sub_c435665d:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSold + (sub_c435665d * msg.value / 10^18) < sub_c435665d * msg.value / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(sub_4d085704Address)
        staticcall sub_4d085704Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < totalSold + (sub_c435665d * msg.value / 10^18):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0x73496e76657374496e50686173654f6e653a20436f6e747261637420646f6573206e6f74206861766520656e6f7567682066756e64,
                        mem[217 len 11]
        if (sub_c435665d * msg.value / 10^18) + totalSold < totalSold:
            revert with 0, 'SafeMath: addition overflow'
        totalSold += sub_c435665d * msg.value / 10^18
        if msg.value + sub_1f11657a[msg.sender].field_256 < sub_1f11657a[msg.sender].field_256:
            revert with 0, 'SafeMath: addition overflow'
        sub_1f11657a[msg.sender].field_256 += msg.value
        if msg.value + sub_1f11657a[msg.sender].field_768 < sub_1f11657a[msg.sender].field_768:
            revert with 0, 'SafeMath: addition overflow'
        sub_1f11657a[msg.sender].field_768 += msg.value
        call reserveAddress with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x73496e76657374496e50686173654f6e653a204572726f72207768696c652073656e64696e6720424e,
                            mem[205 len 23]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            41,
                            0x73496e76657374496e50686173654f6e653a204572726f72207768696c652073656e64696e6720424e,
                            mem[ceil32(return_data.size) + 206 len 23]
        ('bool', 'ext_call.success')
        emit 0x2a41b786: msg.value, sub_c435665d * msg.value / 10^18, msg.sender
    stor1 = 1
}

function sub_f5d42afc(?) payable {
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not uint8(stor3.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x42496e76657374496e506861736554776f3a2050686173652054776f2069732064697361626c65,
                    mem[203 len 25]
    if not sub_1f11657a[msg.sender].field_8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64496e76657374496e506861736554776f3a2055736572206973206e6f742077686974656c69737465,
                    mem[205 len 23]
    if msg.value + sub_1f11657a[msg.sender].field_512 < sub_1f11657a[msg.sender].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + sub_1f11657a[msg.sender].field_512 > sub_bfffe442:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x73496e76657374496e506861736554776f3a20746f6b656e20616d6f756e742063617020697320726561636865,
                    mem[209 len 19]
    if not msg.value:
        if totalSold < 0:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(sub_4d085704Address)
        staticcall sub_4d085704Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < totalSold:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0xe0496e76657374496e506861736554776f3a20436f6e747261637420646f6573206e6f74206861766520656e6f7567682066756e64,
                        mem[217 len 11]
        if totalSold < totalSold:
            revert with 0, 'SafeMath: addition overflow'
        if msg.value + sub_1f11657a[msg.sender].field_512 < sub_1f11657a[msg.sender].field_512:
            revert with 0, 'SafeMath: addition overflow'
        sub_1f11657a[msg.sender].field_512 += msg.value
        if msg.value + sub_1f11657a[msg.sender].field_768 < sub_1f11657a[msg.sender].field_768:
            revert with 0, 'SafeMath: addition overflow'
        sub_1f11657a[msg.sender].field_768 += msg.value
        call reserveAddress with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x73496e76657374496e506861736554776f3a204572726f72207768696c652073656e64696e6720424e,
                            mem[205 len 23]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            41,
                            0x73496e76657374496e506861736554776f3a204572726f72207768696c652073656e64696e6720424e,
                            mem[ceil32(return_data.size) + 206 len 23]
        ('bool', 'ext_call.success')
        emit 0x40e4d242: msg.value, 0, msg.sender
    else:
        if sub_c435665d * msg.value / msg.value != sub_c435665d:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSold + (sub_c435665d * msg.value / 10^18) < sub_c435665d * msg.value / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(sub_4d085704Address)
        staticcall sub_4d085704Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < totalSold + (sub_c435665d * msg.value / 10^18):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        53,
                        0xe0496e76657374496e506861736554776f3a20436f6e747261637420646f6573206e6f74206861766520656e6f7567682066756e64,
                        mem[217 len 11]
        if (sub_c435665d * msg.value / 10^18) + totalSold < totalSold:
            revert with 0, 'SafeMath: addition overflow'
        totalSold += sub_c435665d * msg.value / 10^18
        if msg.value + sub_1f11657a[msg.sender].field_512 < sub_1f11657a[msg.sender].field_512:
            revert with 0, 'SafeMath: addition overflow'
        sub_1f11657a[msg.sender].field_512 += msg.value
        if msg.value + sub_1f11657a[msg.sender].field_768 < sub_1f11657a[msg.sender].field_768:
            revert with 0, 'SafeMath: addition overflow'
        sub_1f11657a[msg.sender].field_768 += msg.value
        call reserveAddress with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x73496e76657374496e506861736554776f3a204572726f72207768696c652073656e64696e6720424e,
                            mem[205 len 23]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            41,
                            0x73496e76657374496e506861736554776f3a204572726f72207768696c652073656e64696e6720424e,
                            mem[ceil32(return_data.size) + 206 len 23]
        ('bool', 'ext_call.success')
        emit 0x40e4d242: msg.value, sub_c435665d * msg.value / 10^18, msg.sender
    stor1 = 1
}



}
