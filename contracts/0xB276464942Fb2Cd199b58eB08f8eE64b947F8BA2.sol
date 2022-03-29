contract main {




// =====================  Runtime code  =====================


address nyaTokenAddress;
address sub_e76e1cf5Address;
address fortuneAddress;
address sub_e033324cAddress;
uint32 stor4;
address sub_8c6db0d2Address;
uint256 stor5; offset 32
uint256 sub_e36e72ef;
big736 stor5;
uint256 stor6; offset 32
uint256 sub_5c070267;
big736 stor6;
uint256 sub_5eefd738;
uint256 sub_30e6c732;
mapping of uint256 sub_d168e111;

function fortune() payable {
    return fortuneAddress
}

function sub_30e6c732(?) payable {
    return sub_30e6c732
}

function sub_5c070267(?) payable {
    return sub_5c070267
}

function sub_5eefd738(?) payable {
    return sub_5eefd738
}

function nyaToken() payable {
    return nyaTokenAddress
}

function sub_8c6db0d2(?) payable {
    return address(sub_8c6db0d2Address)
}

function sub_d168e111(?) payable {
    require calldata.size - 4 >= 32
    return sub_d168e111[arg1]
}

function sub_e033324c(?) payable {
    return sub_e033324cAddress
}

function sub_e36e72ef(?) payable {
    return sub_e36e72ef
}

function sub_e76e1cf5(?) payable {
    return sub_e76e1cf5Address
}

function _fallback() payable {
    revert
}

function sub_3b296301(?) payable {
    require calldata.size - 4 >= 32
    if sub_e033324cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x4e4e79616e73776f70536872696e653a3a736574466f7274756e6550726963653a20464f524249444445,
                    mem[206 len 22]
    sub_5c070267 = arg1
}

function sub_44aa3465(?) payable {
    require calldata.size - 4 >= 32
    if sub_e033324cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x4e4e79616e73776f70536872696e653a3a736574536872696e654d616964656e3a20464f524249444445,
                    mem[206 len 22]
    sub_e033324cAddress = arg1
}

function sub_782316d8(?) payable {
    require calldata.size - 4 >= 32
    if sub_e033324cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x734e79616e73776f70536872696e653a3a736574536872696e65546f6b656e50726963653a20464f524249444445,
                    mem[210 len 18]
    sub_e36e72ef = arg1
}

function sub_6cb58671(?) payable {
    require calldata.size - 4 >= 32
    if sub_e033324cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x4e4e79616e73776f70536872696e653a3a736574536872696e6546756e643a20464f524249444445,
                    mem[204 len 24]
    address(sub_8c6db0d2Address) = arg1
}

function sub_cd5702f6(?) payable {
    require calldata.size - 4 >= 32
    if sub_e033324cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x4e4e79616e73776f70536872696e653a3a736574466f7274756e654475726174696f6e3a20464f524249444445,
                    mem[209 len 19]
    sub_30e6c732 = 24 * 3600 * arg1
}

function sub_f1ef809c(?) payable {
    require calldata.size - 4 >= 32
    if sub_e033324cAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x744e79616e73776f70536872696e653a3a736574536872696e65546f6b656e45786368616e676554696d654265747765656e3a20464f524249444445,
                    mem[224 len 4]
    sub_5eefd738 = 3600 * arg1
}

function drawFortune() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x4e4e79616e73776f70536872696e653a3a64726177466f7274756e653a2063616e6e6f7420647261772066726f6d207a65726f20616464726573,
                    mem[222 len 6]
    if sub_30e6c732 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_code.size(sub_e76e1cf5Address):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(sub_8c6db0d2Address), Mask(224, 0, stor6.field_32)
    mem[416 len 4] = 0
    call sub_e76e1cf5Address with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(736, 0, stor6.field_0), mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(sub_8c6db0d2Address), sub_5c070267
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x4e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            0x4e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(fortuneAddress)
    call fortuneAddress.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, sub_30e6c732 + block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x52ce7148: 1, sub_30e6c732 + block.timestamp, msg.sender
}

function sub_41d781c4(?) payable {
    if sub_5eefd738 + sub_d168e111[msg.sender] < sub_d168e111[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= sub_5eefd738 + sub_d168e111[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x734e79616e73776f70536872696e653a3a65786368616e6765536872696e65546f6b656e3a2065786368616e6765206e6f7420616c6c6f776564207965,
                    mem[225 len 3]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    70,
                    0xfe4e79616e73776f70536872696e653a3a65786368616e6765536872696e65546f6b656e3a2063616e6e6f742065786368616e67652066726f6d207a65726f20616464726573,
                    mem[234 len 26]
    sub_d168e111[msg.sender] = block.timestamp
    if not ext_code.size(nyaTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(sub_8c6db0d2Address), Mask(224, 0, stor5.field_32)
    mem[416 len 4] = 0
    call nyaTokenAddress with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(736, 0, stor5.field_0), mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(sub_8c6db0d2Address), sub_e36e72ef
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x4e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            0x4e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(sub_e76e1cf5Address)
    call sub_e76e1cf5Address.0x40c10f19 with:
         gas gas_remaining wei
        args msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x95b1d0d2: 1, sub_e36e72ef, msg.sender
}



}
