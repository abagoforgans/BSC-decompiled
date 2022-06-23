contract main {




// =====================  Runtime code  =====================


address sub_04750053Address;
address sub_37f478beAddress;
address sub_9e0d0977Address;
address sub_b2185f7fAddress;
uint256 tokenRate;
uint8 sub_8670bfed;
uint8 sub_e66d92d9; offset 8
mapping of uint256 sub_ff9c7a7c;
mapping of address referrers;
mapping of uint256 refAmount;
uint8 stor9;

function sub_04750053(?) payable {
    return sub_04750053Address
}

function sub_0703f123(?) payable {
    return bool(stor9)
}

function tokenRate() payable {
    return tokenRate
}

function sub_37f478be(?) payable {
    return sub_37f478beAddress
}

function referrers(address arg1) payable {
    require calldata.size - 4 >= 32
    return referrers[arg1]
}

function sub_8670bfed(?) payable {
    return sub_8670bfed
}

function sub_9e0d0977(?) payable {
    return sub_9e0d0977Address
}

function refAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return refAmount[arg1]
}

function sub_b2185f7f(?) payable {
    return sub_b2185f7fAddress
}

function sub_e66d92d9(?) payable {
    return sub_e66d92d9
}

function sub_ff9c7a7c(?) payable {
    require calldata.size - 4 >= 32
    return sub_ff9c7a7c[arg1]
}

function _fallback() payable {
    revert
}

function updateRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_04750053Address != msg.sender:
        revert with 0, 'INVALID ICO ADMIN'
    tokenRate = arg1
}

function updateEnable(bool arg1) payable {
    require calldata.size - 4 >= 32
    if sub_04750053Address != msg.sender:
        revert with 0, 'INVALID ICO ADMIN'
    stor9 = uint8(arg1)
}

function updateOldSellContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_04750053Address != msg.sender:
        revert with 0, 'INVALID ICO ADMIN'
    sub_b2185f7fAddress = arg1
}

function updateLock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_04750053Address != msg.sender:
        revert with 0, 'INVALID ICO ADMIN'
    sub_ff9c7a7c[address(arg1)] += arg2
}

function updateRateRef(uint8 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_04750053Address != msg.sender:
        revert with 0, 'INVALID ICO ADMIN'
    sub_8670bfed = arg1
    sub_e66d92d9 = arg2
}

function withdrawBNB(address arg1) payable {
    require calldata.size - 4 >= 32
    if sub_04750053Address != msg.sender:
        revert with 0, 'INVALID ICO ADMIN'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'BNB_TRANSFER_FAILED'
}

function withdrawToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if sub_04750053Address != msg.sender:
        revert with 0, 'INVALID ICO ADMIN'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawToken1(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if sub_04750053Address != msg.sender:
        revert with 0, 'INVALID ICO ADMIN'
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function receivedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor9:
        return 0
    require ext_code.size(sub_b2185f7fAddress)
    staticcall sub_b2185f7fAddress.receivedAmount(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if refAmount[address(arg1)] + sub_ff9c7a7c[address(arg1)] < sub_ff9c7a7c[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (ext_call.return_data[0] + refAmount[address(arg1)] + sub_ff9c7a7c[address(arg1)])
}

function sendAirdrop(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if sub_04750053Address != msg.sender:
        revert with 0, 'INVALID ICO ADMIN'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 6
        sub_ff9c7a7c[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        require idx < arg2.length
        mem[100] = address(cd[((32 * idx) + arg1 + 36)])
        mem[132] = cd[((32 * idx) + arg2 + 36)]
        require ext_code.size(sub_37f478beAddress)
        call sub_37f478beAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_daf3e148(?) payable {
    require calldata.size - 4 >= 96
    if not referrers[msg.sender]:
        if arg3:
            if arg3 != msg.sender:
                if referrers[address(arg3)] != msg.sender:
                    referrers[msg.sender] = arg3
                    emit NewReferral(arg3, msg.sender, 1);
                    if referrers[address(arg3)]:
                        emit NewReferral(referrers[address(arg3)], msg.sender, 2);
    require ext_code.size(sub_9e0d0977Address)
    call sub_9e0d0977Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require tokenRate
    sub_ff9c7a7c[address(arg1)] += 10^18 * arg2 / tokenRate
    require ext_code.size(sub_37f478beAddress)
    call sub_37f478beAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), 10^18 * arg2 / tokenRate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xc3507032: msg.sender, 10^18 * arg2 / tokenRate, arg2
    if not referrers[msg.sender]:
        if referrers[referrers[msg.sender]]:
            if not 10^18 * arg2 / tokenRate:
                require ext_code.size(sub_37f478beAddress)
                call sub_37f478beAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args referrers[referrers[msg.sender]], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit RefReward(referrers[referrers[msg.sender]], 0, 2);
            else:
                if sub_e66d92d9 * 10^18 * arg2 / tokenRate / 10^18 * arg2 / tokenRate != sub_e66d92d9:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(sub_37f478beAddress)
                call sub_37f478beAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args referrers[referrers[msg.sender]], sub_e66d92d9 * 10^18 * arg2 / tokenRate / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                refAmount[stor7[stor7[msg.sender]]] += sub_e66d92d9 * 10^18 * arg2 / tokenRate / 100
                emit RefReward(referrers[referrers[msg.sender]], sub_e66d92d9 * 10^18 * arg2 / tokenRate / 100, 2);
    else:
        if not 10^18 * arg2 / tokenRate:
            require ext_code.size(sub_37f478beAddress)
            call sub_37f478beAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args referrers[msg.sender], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit RefReward(referrers[msg.sender], 0, 1);
        else:
            if sub_8670bfed * 10^18 * arg2 / tokenRate / 10^18 * arg2 / tokenRate != sub_8670bfed:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(sub_37f478beAddress)
            call sub_37f478beAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args referrers[msg.sender], sub_8670bfed * 10^18 * arg2 / tokenRate / 100
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            refAmount[stor7[msg.sender]] += sub_8670bfed * 10^18 * arg2 / tokenRate / 100
            emit RefReward(referrers[msg.sender], sub_8670bfed * 10^18 * arg2 / tokenRate / 100, 1);
        if referrers[referrers[msg.sender]]:
            if not 10^18 * arg2 / tokenRate:
                require ext_code.size(sub_37f478beAddress)
                call sub_37f478beAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args referrers[referrers[msg.sender]], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit RefReward(referrers[referrers[msg.sender]], 0, 2);
            else:
                if sub_e66d92d9 * 10^18 * arg2 / tokenRate / 10^18 * arg2 / tokenRate != sub_e66d92d9:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                require ext_code.size(sub_37f478beAddress)
                call sub_37f478beAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args referrers[referrers[msg.sender]], sub_e66d92d9 * 10^18 * arg2 / tokenRate / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                refAmount[stor7[stor7[msg.sender]]] += sub_e66d92d9 * 10^18 * arg2 / tokenRate / 100
                emit RefReward(referrers[referrers[msg.sender]], sub_e66d92d9 * 10^18 * arg2 / tokenRate / 100, 2);
    return (10^18 * arg2 / tokenRate)
}



}
