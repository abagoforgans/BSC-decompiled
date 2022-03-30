contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 totalBalance;
address tokenAddress;
address sub_f48e9c02Address;
uint32 stor4;
address feeAddress;
uint256 stor4;
address operatorAddress;
uint256 sub_2ea69943;
uint256 sub_17d1b714;
uint256 sub_72d6f98d;
uint256 sub_141f0434;
mapping of uint256 sub_b7468958;
mapping of uint256 balance;

function getBalance() payable {
    return balance[msg.sender]
}

function sub_141f0434(?) payable {
    return sub_141f0434
}

function sub_17d1b714(?) payable {
    return sub_17d1b714
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balance[arg1]
}

function sub_2ea69943(?) payable {
    return sub_2ea69943
}

function feeAddress() payable {
    return address(feeAddress)
}

function operator() payable {
    return operatorAddress
}

function sub_72d6f98d(?) payable {
    return sub_72d6f98d
}

function tokenAddress() payable {
    return tokenAddress
}

function totalBalance() payable {
    return totalBalance
}

function sub_b7468958(?) payable {
    return sub_b7468958[msg.sender]
}

function sub_f48e9c02(?) payable {
    return sub_f48e9c02Address
}

function _fallback() payable {
    revert
}

function sub_ee8aa9d9(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    sub_141f0434 = arg1
}

function sub_214a60cb(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    require arg1
    sub_f48e9c02Address = arg1
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    require arg1
    address(feeAddress) = arg1
}

function updateOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require arg1
    operatorAddress = arg1
    stor0 = 1
}

function updateTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require arg1
    tokenAddress = arg1
    stor0 = 1
}

function sub_c3ccd28f(?) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x654f6e6c79206f70657261746f722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[201 len 27]
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require arg1 > block.timestamp
    require arg2 > 0
    sub_2ea69943 = arg1
    sub_17d1b714 = arg2
    sub_72d6f98d = 0
    stor0 = 1
}

function sub_05daacb2(?) payable {
    require totalBalance > 0
    if not sub_17d1b714:
        if totalBalance <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalBalance:
            return 0 / totalBalance, sub_b7468958[msg.sender]
    else:
        if balance[msg.sender] * sub_17d1b714 / sub_17d1b714 != balance[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalBalance <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalBalance:
            return balance[msg.sender] * sub_17d1b714 / totalBalance, sub_b7468958[msg.sender]
    ('iszero', ('stor', ('name', 'totalBalance', 1)))
    revert
}

function sub_2b1026c7(?) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require arg1
    if block.timestamp <= sub_2ea69943 + sub_141f0434:
        if block.timestamp >= sub_2ea69943:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x2e596f752063616e206e6f7420776974686472617720647572696e672074616b696e67206469766964656e742074696d,
                        mem[212 len 16]
    if arg1 > balance[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x596f7572206465706f7369742062616c616e6365206973206e6f7420656e6f756700,
                    mem[198 len 30]
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call tokenAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    if arg1 > balance[msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    balance[msg.sender] -= arg1
    if arg1 > totalBalance:
        revert with 0, 'SafeMath: subtraction overflow'
    totalBalance -= arg1
    stor0 = 1
}

function sub_3401a0e4(?) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    require arg1
    if block.timestamp <= sub_2ea69943 + sub_141f0434:
        if block.timestamp >= sub_2ea69943:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x77596f752063616e206e6f74206465706f73697420647572696e672074616b696e67206469766964656e742074696d,
                        mem[211 len 17]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Your balance is not enough'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Your allowance is not enough'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[352 len 4] = uint32(arg1)
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg1),
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        36,
                        0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        uint32(arg1),
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 333 len 28]
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            36,
                            0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
    if arg1 + balance[msg.sender] < balance[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balance[msg.sender] += arg1
    if arg1 + totalBalance < totalBalance:
        revert with 0, 'SafeMath: addition overflow'
    totalBalance += arg1
    stor0 = 1
}

function sub_0a9927cf(?) payable {
    if stor0 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor0 = 2
    if block.timestamp > sub_2ea69943 + sub_141f0434:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6847657474696e67206469766964656e7473206e6f74207374617274206f72206974277320616c726561647920656e,
                    mem[211 len 17]
    if block.timestamp < sub_2ea69943:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6847657474696e67206469766964656e7473206e6f74207374617274206f72206974277320616c726561647920656e,
                    mem[211 len 17]
    if sub_b7468958[msg.sender] >= sub_2ea69943:
        revert with 0, 'You have got dividents already'
    require totalBalance > 0
    if not sub_17d1b714:
        if totalBalance <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalBalance
        require ext_code.size(sub_f48e9c02Address)
        staticcall sub_f48e9c02Address.0xdd62ed3e with:
                gas gas_remaining wei
               args address(feeAddress), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0 / totalBalance:
            revert with 0, 'Allowance not enough'
        mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor4), uint32(stor4), msg.sender, Mask(224, 32, 0 / totalBalance) >> 32
        mem[352 len 4] = Mask(32, 64, 0 / totalBalance) >> 64
        call sub_f48e9c02Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, 0 / totalBalance) << 480, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[332 len 20],
                            Mask(32, 64, 0 / totalBalance) >> 64,
                            mem[356 len 4]
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor4):
                revert with 0, 
                            32,
                            36,
                            0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[332 len 20],
                            Mask(32, 64, 0 / totalBalance) >> 64,
                            mem[356 len 4]
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                36,
                                0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(return_data.size) + 333 len 28]
        if (0 / totalBalance) + sub_72d6f98d < sub_72d6f98d:
            revert with 0, 'SafeMath: addition overflow'
        sub_72d6f98d += 0 / totalBalance
        sub_b7468958[msg.sender] = block.timestamp
        emit 0x282046e7: msg.sender, 0 / totalBalance, block.timestamp
    else:
        if balance[msg.sender] * sub_17d1b714 / sub_17d1b714 != balance[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalBalance <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalBalance
        require ext_code.size(sub_f48e9c02Address)
        staticcall sub_f48e9c02Address.0xdd62ed3e with:
                gas gas_remaining wei
               args address(feeAddress), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < balance[msg.sender] * sub_17d1b714 / totalBalance:
            revert with 0, 'Allowance not enough'
        mem[228 len 96] = unknown_0x23b872dd(?????), Mask(224, 0, stor4), uint32(stor4), msg.sender, Mask(224, 32, balance[msg.sender] * sub_17d1b714 / totalBalance) >> 32
        mem[352 len 4] = Mask(32, 64, balance[msg.sender] * sub_17d1b714 / totalBalance) >> 64
        call sub_f48e9c02Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, balance[msg.sender] * sub_17d1b714 / totalBalance) << 480, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[332 len 20],
                            Mask(32, 64, balance[msg.sender] * sub_17d1b714 / totalBalance) >> 64,
                            mem[356 len 4]
            if not unknown_0x23b872dd(?????), Mask(224, 0, stor4):
                revert with 0, 
                            32,
                            36,
                            0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[332 len 20],
                            Mask(32, 64, balance[msg.sender] * sub_17d1b714 / totalBalance) >> 64,
                            mem[356 len 4]
        else:
            mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            36,
                            0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
            if return_data.size:
                require return_data.size >= 32
                if not mem[260]:
                    revert with 0, 
                                32,
                                36,
                                0x655472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                mem[ceil32(return_data.size) + 333 len 28]
        if (balance[msg.sender] * sub_17d1b714 / totalBalance) + sub_72d6f98d < sub_72d6f98d:
            revert with 0, 'SafeMath: addition overflow'
        sub_72d6f98d += balance[msg.sender] * sub_17d1b714 / totalBalance
        sub_b7468958[msg.sender] = block.timestamp
        emit 0x282046e7: msg.sender, balance[msg.sender] * sub_17d1b714 / totalBalance, block.timestamp
    stor0 = 1
}



}
