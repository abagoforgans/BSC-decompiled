contract main {




// =====================  Runtime code  =====================


uint256 depositId;
array of uint256 depositsByWithdrawal;
mapping of struct lockedToken;
mapping of uint256 walletTokenBalance;

function depositsByWithdrawalAddress(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < depositsByWithdrawal[arg1]
    return depositsByWithdrawal[arg1][arg2]
}

function depositId() payable {
    return depositId
}

function walletTokenBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return walletTokenBalance[arg1][arg2]
}

function lockedToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return lockedToken[arg1].field_0, 
           lockedToken[arg1].field_256,
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           lockedToken[arg1].field_1024,
           lockedToken[arg1].field_1280
}

function _fallback() payable {
    revert
}

function totalTokenBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function extendLockDuration(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6461646474696f6e616c54696d65206d757374206265206d6f7265207468616e207a6572,
                    mem[200 len 28]
    if lockedToken[arg1].field_256 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x776f6e6c79207769746864726177616c20616464726573732063616e20657874656e,
                    mem[198 len 30]
    if block.timestamp >= lockedToken[arg1].field_768:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6c6d75737420626520657874656e646564206f6e6c79206265666f72652072656c656173652074696d,
                    mem[205 len 23]
    if arg2 + lockedToken[arg1].field_768 < lockedToken[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    lockedToken[arg1].field_768 += arg2
}

function lockTokens(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg3 <= 0:
        revert with 0, 'amount must be more than zero'
    if arg4 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x65756e6c6f636b2074696d65206d75737420626520616865616420696e20746865206675747572,
                    mem[203 len 25]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    depositId++
    lockedToken[stor0 + 1].field_0 = arg1
    lockedToken[stor0 + 1].field_256 = arg2
    lockedToken[stor0 + 1].field_768 = arg4
    lockedToken[stor0 + 1].field_1024 = 0
    lockedToken[stor0 + 1].field_1280 = 0
    depositsByWithdrawal[address(arg2)]++
    depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)]] = depositId + 1
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 'transfer may have failed'
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    lockedToken[stor0 + 1].field_512 = 0
    if walletTokenBalance[address(arg1)][address(arg2)] < walletTokenBalance[address(arg1)][address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    emit 0x8ed99739: 0, depositId + 1, arg1, arg2
    return (depositId + 1)
}

function tokenAvailableToWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < lockedToken[arg1].field_768:
        return 0
    if lockedToken[arg1].field_1024:
        if lockedToken[arg1].field_1024 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 > 12:
            if lockedToken[arg1].field_1280 > lockedToken[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            return (lockedToken[arg1].field_512 - lockedToken[arg1].field_1280)
        if not block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600:
            return 0
        if lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 != lockedToken[arg1].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12:
            return 0
        if lockedToken[arg1].field_1280 > lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12) - lockedToken[arg1].field_1280)
    if lockedToken[arg1].field_768 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600) + 1 < block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600:
        revert with 0, 'SafeMath: addition overflow'
    if (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600) + 1 > 12:
        if lockedToken[arg1].field_1280 > lockedToken[arg1].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        return (lockedToken[arg1].field_512 - lockedToken[arg1].field_1280)
    if not (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600) + 1:
        if lockedToken[arg1].field_1280 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -lockedToken[arg1].field_1280
    if lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600) + 1 != lockedToken[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if lockedToken[arg1].field_1280 > lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12) - lockedToken[arg1].field_1280)
}

function withdrawTokens(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if block.timestamp < lockedToken[arg1].field_768:
        revert with 0, 'token still locked'
    if lockedToken[arg1].field_256 != msg.sender:
        revert with 0, 'cannot withdraw others' token'
    if block.timestamp < lockedToken[arg1].field_768:
        revert with 0, 'not allowed to withdraw'
    if lockedToken[arg1].field_1024:
        if lockedToken[arg1].field_1024 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 > 12:
            if lockedToken[arg1].field_1280 > lockedToken[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            if lockedToken[arg1].field_512 - lockedToken[arg1].field_1280 <= 0:
                revert with 0, 'not allowed to withdraw'
            if lockedToken[arg1].field_512 - lockedToken[arg1].field_1280 > walletTokenBalance[stor2[arg1].field_0][msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            walletTokenBalance[stor2[arg1].field_0][msg.sender] = walletTokenBalance[stor2[arg1].field_0][msg.sender] - lockedToken[arg1].field_512 + lockedToken[arg1].field_1280
            if lockedToken[arg1].field_512 < lockedToken[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            lockedToken[arg1].field_1280 = lockedToken[arg1].field_512
            lockedToken[arg1].field_1024 = block.timestamp
            if lockedToken[arg1].field_512 > lockedToken[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[0] = lockedToken[arg1].field_256
            mem[32] = 1
            idx = 0
            while idx < depositsByWithdrawal[stor2[arg1].field_256]:
                mem[32] = 1
                require idx < depositsByWithdrawal[stor2[arg1].field_256]
                mem[0] = sha3(lockedToken[arg1].field_256, 1)
                if depositsByWithdrawal[stor2[arg1].field_256][idx] != arg1:
                    idx = idx + 1
                    continue 
                require depositsByWithdrawal[stor2[arg1].field_256] - 1 < depositsByWithdrawal[stor2[arg1].field_256]
                require idx < depositsByWithdrawal[stor2[arg1].field_256]
                depositsByWithdrawal[stor2[arg1].field_256][idx] = depositsByWithdrawal[stor2[arg1].field_256][depositsByWithdrawal[stor2[arg1].field_256]]
                require depositsByWithdrawal[stor2[arg1].field_256]
                depositsByWithdrawal[stor2[arg1].field_256][depositsByWithdrawal[stor2[arg1].field_256]] = 0
                depositsByWithdrawal[stor2[arg1].field_256]--
                mem[132] = msg.sender
                mem[164] = lockedToken[arg1].field_512 - lockedToken[arg1].field_1280
                mem[128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[196] = 32
                mem[228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(lockedToken[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                s = 128
                t = 260
                idx = 68
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[324] = 0 or Mask(224, 32, mem[324])
                call lockedToken[arg1].field_0.mem[260 len 4] with:
                     gas gas_remaining wei
                    args mem[264 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32, 
                                    uint32(msg.sender),
                                    lockedToken[arg1].field_512 - lockedToken[arg1].field_1280
                    if False and not Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[260] = return_data.size
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 265] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + ceil32(return_data.size) + 329] = mem[idx + 228]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[ceil32(return_data.size) + 329]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit Withdrawal(msg.sender, lockedToken[arg1].field_512 - lockedToken[arg1].field_1280, arg1);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(lockedToken[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, lockedToken[arg1].field_512 - lockedToken[arg1].field_1280) >> 32
            call lockedToken[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, lockedToken[arg1].field_512 - lockedToken[arg1].field_1280) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, lockedToken[arg1].field_512 - lockedToken[arg1].field_1280
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            emit Withdrawal(msg.sender, lockedToken[arg1].field_512 - lockedToken[arg1].field_1280, arg1);
        else:
            if not block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600:
                revert with 0, 'not allowed to withdraw'
            if lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 != lockedToken[arg1].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12:
                revert with 0, 'not allowed to withdraw'
            if lockedToken[arg1].field_1280 > lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12) - lockedToken[arg1].field_1280 <= 0:
                revert with 0, 'not allowed to withdraw'
            if (lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12) - lockedToken[arg1].field_1280 > walletTokenBalance[stor2[arg1].field_0][msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            walletTokenBalance[stor2[arg1].field_0][msg.sender] = walletTokenBalance[stor2[arg1].field_0][msg.sender] - (lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12) + lockedToken[arg1].field_1280
            if lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12 < lockedToken[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            lockedToken[arg1].field_1280 = lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12
            lockedToken[arg1].field_1024 = block.timestamp
            if lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12 > lockedToken[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            if not lockedToken[arg1].field_512 - (lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12):
                mem[0] = lockedToken[arg1].field_256
                mem[32] = 1
                idx = 0
                while idx < depositsByWithdrawal[stor2[arg1].field_256]:
                    mem[32] = 1
                    require idx < depositsByWithdrawal[stor2[arg1].field_256]
                    mem[0] = sha3(lockedToken[arg1].field_256, 1)
                    if depositsByWithdrawal[stor2[arg1].field_256][idx] != arg1:
                        idx = idx + 1
                        continue 
                    require depositsByWithdrawal[stor2[arg1].field_256] - 1 < depositsByWithdrawal[stor2[arg1].field_256]
                    require idx < depositsByWithdrawal[stor2[arg1].field_256]
                    depositsByWithdrawal[stor2[arg1].field_256][idx] = depositsByWithdrawal[stor2[arg1].field_256][depositsByWithdrawal[stor2[arg1].field_256]]
                    require depositsByWithdrawal[stor2[arg1].field_256]
                    depositsByWithdrawal[stor2[arg1].field_256][depositsByWithdrawal[stor2[arg1].field_256]] = 0
                    depositsByWithdrawal[stor2[arg1].field_256]--
                    mem[132] = msg.sender
                    mem[164] = (lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12) - lockedToken[arg1].field_1280
                    mem[128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                    mem[196] = 32
                    mem[228] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(lockedToken[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    s = 128
                    t = 260
                    idx = 68
                    while idx >= 32:
                        mem[t] = mem[s]
                        s = s + 32
                        t = t + 32
                        idx = idx - 32
                        continue 
                    mem[324] = 0 or Mask(224, 32, mem[324])
                    call lockedToken[arg1].field_0.mem[260 len 4] with:
                         gas gas_remaining wei
                        args mem[264 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32, 
                                        uint32(msg.sender),
                                        (lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12) - lockedToken[arg1].field_1280
                        if False and not Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[260] = return_data.size
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 265] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + ceil32(return_data.size) + 329] = mem[idx + 228]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[ceil32(return_data.size) + 329]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit Withdrawal(msg.sender, (lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12) - lockedToken[arg1].field_1280, arg1);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(lockedToken[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12) - lockedToken[arg1].field_1280) >> 32
            call lockedToken[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, (lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12) - lockedToken[arg1].field_1280) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), 
                                msg.sender,
                                (lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12) - lockedToken[arg1].field_1280
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            emit Withdrawal(msg.sender, (lockedToken[arg1].field_512 * block.timestamp - lockedToken[arg1].field_1024 / 720 * 24 * 3600 / 12) - lockedToken[arg1].field_1280, arg1);
    else:
        if lockedToken[arg1].field_768 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600) + 1 < block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600:
            revert with 0, 'SafeMath: addition overflow'
        if (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600) + 1 > 12:
            if lockedToken[arg1].field_1280 > lockedToken[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            if lockedToken[arg1].field_512 - lockedToken[arg1].field_1280 <= 0:
                revert with 0, 'not allowed to withdraw'
            if lockedToken[arg1].field_512 - lockedToken[arg1].field_1280 > walletTokenBalance[stor2[arg1].field_0][msg.sender]:
                revert with 0, 'SafeMath: subtraction overflow'
            walletTokenBalance[stor2[arg1].field_0][msg.sender] = walletTokenBalance[stor2[arg1].field_0][msg.sender] - lockedToken[arg1].field_512 + lockedToken[arg1].field_1280
            if lockedToken[arg1].field_512 < lockedToken[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            lockedToken[arg1].field_1280 = lockedToken[arg1].field_512
            lockedToken[arg1].field_1024 = block.timestamp
            if lockedToken[arg1].field_512 > lockedToken[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[0] = lockedToken[arg1].field_256
            mem[32] = 1
            idx = 0
            while idx < depositsByWithdrawal[stor2[arg1].field_256]:
                mem[32] = 1
                require idx < depositsByWithdrawal[stor2[arg1].field_256]
                mem[0] = sha3(lockedToken[arg1].field_256, 1)
                if depositsByWithdrawal[stor2[arg1].field_256][idx] != arg1:
                    idx = idx + 1
                    continue 
                require depositsByWithdrawal[stor2[arg1].field_256] - 1 < depositsByWithdrawal[stor2[arg1].field_256]
                require idx < depositsByWithdrawal[stor2[arg1].field_256]
                depositsByWithdrawal[stor2[arg1].field_256][idx] = depositsByWithdrawal[stor2[arg1].field_256][depositsByWithdrawal[stor2[arg1].field_256]]
                require depositsByWithdrawal[stor2[arg1].field_256]
                depositsByWithdrawal[stor2[arg1].field_256][depositsByWithdrawal[stor2[arg1].field_256]] = 0
                depositsByWithdrawal[stor2[arg1].field_256]--
                mem[132] = msg.sender
                mem[164] = lockedToken[arg1].field_512 - lockedToken[arg1].field_1280
                mem[128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                mem[196] = 32
                mem[228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(lockedToken[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                s = 128
                t = 260
                idx = 68
                while idx >= 32:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx - 32
                    continue 
                mem[324] = 0 or Mask(224, 32, mem[324])
                call lockedToken[arg1].field_0.mem[260 len 4] with:
                     gas gas_remaining wei
                    args mem[264 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32, 
                                    uint32(msg.sender),
                                    lockedToken[arg1].field_512 - lockedToken[arg1].field_1280
                    if False and not Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[260] = return_data.size
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 265] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + ceil32(return_data.size) + 329] = mem[idx + 228]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[ceil32(return_data.size) + 329]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit Withdrawal(msg.sender, lockedToken[arg1].field_512 - lockedToken[arg1].field_1280, arg1);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(lockedToken[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, lockedToken[arg1].field_512 - lockedToken[arg1].field_1280) >> 32
            mem[324 len 0] = 0
            call lockedToken[arg1].field_0 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, lockedToken[arg1].field_512 - lockedToken[arg1].field_1280) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, lockedToken[arg1].field_512 - lockedToken[arg1].field_1280
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            emit Withdrawal(msg.sender, lockedToken[arg1].field_512 - lockedToken[arg1].field_1280, arg1);
        else:
            if (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600) + 1:
                if lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600) + 1 != lockedToken[arg1].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if lockedToken[arg1].field_1280 > lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12) - lockedToken[arg1].field_1280 <= 0:
                    revert with 0, 'not allowed to withdraw'
                if (lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12) - lockedToken[arg1].field_1280 > walletTokenBalance[stor2[arg1].field_0][msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                walletTokenBalance[stor2[arg1].field_0][msg.sender] = walletTokenBalance[stor2[arg1].field_0][msg.sender] - (lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12) + lockedToken[arg1].field_1280
                if lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12 < lockedToken[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                lockedToken[arg1].field_1280 = lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12
                lockedToken[arg1].field_1024 = block.timestamp
                if lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12 > lockedToken[arg1].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not lockedToken[arg1].field_512 - (lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12):
                    mem[0] = lockedToken[arg1].field_256
                    mem[32] = 1
                    idx = 0
                    while idx < depositsByWithdrawal[stor2[arg1].field_256]:
                        mem[32] = 1
                        require idx < depositsByWithdrawal[stor2[arg1].field_256]
                        mem[0] = sha3(lockedToken[arg1].field_256, 1)
                        if depositsByWithdrawal[stor2[arg1].field_256][idx] != arg1:
                            idx = idx + 1
                            continue 
                        require depositsByWithdrawal[stor2[arg1].field_256] - 1 < depositsByWithdrawal[stor2[arg1].field_256]
                        require idx < depositsByWithdrawal[stor2[arg1].field_256]
                        depositsByWithdrawal[stor2[arg1].field_256][idx] = depositsByWithdrawal[stor2[arg1].field_256][depositsByWithdrawal[stor2[arg1].field_256]]
                        require depositsByWithdrawal[stor2[arg1].field_256]
                        depositsByWithdrawal[stor2[arg1].field_256][depositsByWithdrawal[stor2[arg1].field_256]] = 0
                        depositsByWithdrawal[stor2[arg1].field_256]--
                        mem[132] = msg.sender
                        mem[164] = (lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12) - lockedToken[arg1].field_1280
                        mem[128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                        mem[196] = 32
                        mem[228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(lockedToken[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        s = 128
                        t = 260
                        idx = 68
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[324] = 0 or Mask(224, 32, mem[324])
                        call lockedToken[arg1].field_0.mem[260 len 4] with:
                             gas gas_remaining wei
                            args mem[264 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32, 
                                            uint32(msg.sender),
                                            (lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12) - lockedToken[arg1].field_1280
                            if False and not Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[260] = return_data.size
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 265] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + ceil32(return_data.size) + 329] = mem[idx + 228]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[ceil32(return_data.size) + 329]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit Withdrawal(msg.sender, (lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12) - lockedToken[arg1].field_1280, arg1);
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(lockedToken[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12) - lockedToken[arg1].field_1280) >> 32
                call lockedToken[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12) - lockedToken[arg1].field_1280) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    msg.sender,
                                    (lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12) - lockedToken[arg1].field_1280
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit Withdrawal(msg.sender, (lockedToken[arg1].field_512 + (block.timestamp - lockedToken[arg1].field_768 / 720 * 24 * 3600 * lockedToken[arg1].field_512) / 12) - lockedToken[arg1].field_1280, arg1);
            else:
                if lockedToken[arg1].field_1280 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -lockedToken[arg1].field_1280 <= 0:
                    revert with 0, 'not allowed to withdraw'
                if -lockedToken[arg1].field_1280 > walletTokenBalance[stor2[arg1].field_0][msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                walletTokenBalance[stor2[arg1].field_0][msg.sender] += lockedToken[arg1].field_1280
                if 0 < lockedToken[arg1].field_1280:
                    revert with 0, 'SafeMath: addition overflow'
                lockedToken[arg1].field_1280 = 0
                lockedToken[arg1].field_1024 = block.timestamp
                if 0 > lockedToken[arg1].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if lockedToken[arg1].field_512:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(lockedToken[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -lockedToken[arg1].field_1280) >> 32
                else:
                    mem[0] = lockedToken[arg1].field_256
                    mem[32] = 1
                    idx = 0
                    while idx < depositsByWithdrawal[stor2[arg1].field_256]:
                        mem[32] = 1
                        require idx < depositsByWithdrawal[stor2[arg1].field_256]
                        mem[0] = sha3(lockedToken[arg1].field_256, 1)
                        if depositsByWithdrawal[stor2[arg1].field_256][idx] != arg1:
                            idx = idx + 1
                            continue 
                        require depositsByWithdrawal[stor2[arg1].field_256] - 1 < depositsByWithdrawal[stor2[arg1].field_256]
                        require idx < depositsByWithdrawal[stor2[arg1].field_256]
                        depositsByWithdrawal[stor2[arg1].field_256][idx] = depositsByWithdrawal[stor2[arg1].field_256][depositsByWithdrawal[stor2[arg1].field_256]]
                        require depositsByWithdrawal[stor2[arg1].field_256]
                        depositsByWithdrawal[stor2[arg1].field_256][depositsByWithdrawal[stor2[arg1].field_256]] = 0
                        depositsByWithdrawal[stor2[arg1].field_256]--
                        mem[132] = msg.sender
                        mem[164] = -lockedToken[arg1].field_1280
                        mem[128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32
                        mem[196] = 32
                        mem[228] = 'SafeERC20: low-level call failed'
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(lockedToken[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        s = 128
                        t = 260
                        idx = 68
                        while idx >= 32:
                            mem[t] = mem[s]
                            s = s + 32
                            t = t + 32
                            idx = idx - 32
                            continue 
                        mem[324] = 0 or Mask(224, 32, mem[324])
                        call lockedToken[arg1].field_0.mem[260 len 4] with:
                             gas gas_remaining wei
                            args mem[264 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or Mask(224, 32, msg.sender) >> 32, 
                                            uint32(msg.sender),
                                            -lockedToken[arg1].field_1280
                            if False and not Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[260] = return_data.size
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 265] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + ceil32(return_data.size) + 329] = mem[idx + 228]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[ceil32(return_data.size) + 329]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit Withdrawal(msg.sender, -lockedToken[arg1].field_1280, arg1);
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(lockedToken[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, -lockedToken[arg1].field_1280) >> 32
                    mem[324 len 0] = 0
                call lockedToken[arg1].field_0 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, -lockedToken[arg1].field_1280) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, -lockedToken[arg1].field_1280
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x6f5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit Withdrawal(msg.sender, -lockedToken[arg1].field_1280, arg1);
}



}
