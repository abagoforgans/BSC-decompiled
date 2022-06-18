contract main {




// =====================  Runtime code  =====================


address owner;
address configAddress;
uint256 sub_ab9b1bf9;
uint256 sub_cf31b9bc;
uint256 sub_a84cf9ab;
uint256 sub_1261d347;
uint256 sub_e2772a8a;
address sub_b005bea6Address;

function sub_1261d347(?) {
    return sub_1261d347
}

function config() {
    return configAddress
}

function owner() {
    return owner
}

function sub_a84cf9ab(?) {
    return sub_a84cf9ab
}

function sub_ab9b1bf9(?) {
    return sub_ab9b1bf9
}

function sub_b005bea6(?) {
    return sub_b005bea6Address
}

function sub_cf31b9bc(?) {
    return sub_cf31b9bc
}

function sub_e2772a8a(?) {
    return sub_e2772a8a
}

function _fallback() {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_2344f7d7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_e2772a8a = arg1
    emit 0x3a0b2f39: arg1
}

function sub_2c10d3db(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_1261d347 = arg1
    emit 0x1ec87fb8: arg1
}

function sub_b71c80a4(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_b005bea6Address = arg1
    emit 0xaf4dae6c: arg1
}

function setConfig(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    configAddress = arg1
    emit 0x6ce0ffc2: arg1
}

function sub_b8f87d87(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= sub_ab9b1bf9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7253686f703a206d6178426f78206d7573742062652067726561746572207468616e20736f6c,
                    mem[202 len 26]
    sub_a84cf9ab = arg1
    emit 0xe5d5a1f4: arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_037f489c(?) {
    require ext_code.size(configAddress)
    staticcall configAddress.0x4b94f50e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.0x24f65ee7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not sub_e2772a8a:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if 10^ext_call.return_data[0] * sub_e2772a8a / sub_e2772a8a != 10^ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if ext_call.return_data[0]:
            return (10^ext_call.return_data[0] * sub_e2772a8a / ext_call.return_data[0])
    ('iszero', ('ext_call.return_data', 0, 32))
    revert
}

function sub_784e7eb0(?) {
    require ext_code.size(sub_b005bea6Address)
    staticcall sub_b005bea6Address.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_b005bea6Address):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, 10^uint8(ext_call.return_data[0])) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call sub_b005bea6Address with:
         gas gas_remaining wei
        args Mask(224, 32, 10^uint8(ext_call.return_data[0])) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 10^uint8(ext_call.return_data[0])
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(configAddress)
    staticcall configAddress.0x4494fd9f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x6a627842 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1275be62(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.0xb13685b5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Shop: not started'
    if arg1 <= 0:
        revert with 0, 'Shop: count error'
    require ext_code.size(configAddress)
    staticcall configAddress.0x1f83dcd7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[31 len 1]:
        revert with 0, 'Shop: count error'
    if sub_ab9b1bf9 + arg1 >= sub_a84cf9ab:
        revert with 0, 'Shop: out of stock'
    if msg.value < sub_1261d347 * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6453686f703a20696e73756666696369656e7420616d6f756e74206f66207472616e736665,
                    mem[201 len 27]
    require ext_code.size(configAddress)
    staticcall configAddress.0xc6253177 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < msg.value:
        revert with 0, 'Address: insufficient balance'
    call ext_call.return_data[12 len 20] with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[222 len 6]
        idx = 0
        while idx < arg1:
            require ext_code.size(configAddress)
            staticcall configAddress.0x4494fd9f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[96] = 0x6a62784200000000000000000000000000000000000000000000000000000000
            mem[100] = msg.sender
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x6a627842 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_ab9b1bf9++
            idx = idx + 1
            continue 
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[ceil32(return_data.size) + 223 len 6]
        idx = 0
        while idx < arg1:
            require ext_code.size(configAddress)
            staticcall configAddress.0x4494fd9f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 97] = 0x6a62784200000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 101] = msg.sender
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x6a627842 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_ab9b1bf9++
            idx = idx + 1
            continue 
}

function sub_811b1d2a(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.0x98ff2d91 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Shop: not started'
    require ext_code.size(configAddress)
    staticcall configAddress.0xc6253177 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.0x4b94f50e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(configAddress)
    staticcall configAddress.0x24f65ee7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_e2772a8a:
        if 10^ext_call.return_data[0] * sub_e2772a8a / sub_e2772a8a != 10^ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(configAddress)
        staticcall configAddress.0x21df0da7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), Mask(224, 32, 10^ext_call.return_data[0] * sub_e2772a8a / ext_call.return_data[0]) >> 32
        mem[416 len 4] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args Mask(224, 32, 10^ext_call.return_data[0] * sub_e2772a8a / ext_call.return_data[0]) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), 
                            msg.sender,
                            address(ext_call.return_data[0]),
                            10^ext_call.return_data[0] * sub_e2772a8a / ext_call.return_data[0]
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    else:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(configAddress)
        staticcall configAddress.0x21df0da7 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
        mem[416 len 4] = 0
        mem[388 len 0] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args Mask(224, 32, 0 / ext_call.return_data[0]) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), 0 / ext_call.return_data[0]
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(configAddress)
    staticcall configAddress.0x4494fd9f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_cf31b9bc++
}



}
