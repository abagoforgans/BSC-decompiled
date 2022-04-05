contract main {




// =====================  Runtime code  =====================


array of uint256 tokenReleaseLength;
mapping of uint8 stor2;
array of address lockedTokens;
uint256 feeNumerator;
uint256 feeDenominator;
address feeReserveAddress;
address owner;

function feeDenominator() {
    return feeDenominator
}

function lockedTokensLength() {
    return lockedTokens.length
}

function getTokenReleaseLength(address arg1) {
    require calldata.size - 4 >= 32
    return tokenReleaseLength[address(arg1)]
}

function owner() {
    return owner
}

function feeReserveAddress() {
    return feeReserveAddress
}

function lockedTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < lockedTokens.length
    return lockedTokens[arg1]
}

function getUserTokenInfo(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return userTokenInfo[address(arg1)][address(arg2)].field_0, 
           userTokenInfo[address(arg1)][address(arg2)].field_256,
           userTokenInfo[address(arg1)][address(arg2)].field_512
}

function feeNumerator() {
    return feeNumerator
}

function lockedTokenLookup(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function getTokenReleaseAtIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 < tokenReleaseLength[address(arg1)]
    return tokenReleaseLength[address(arg1)][arg2], tokenReleaseLength[address(arg1)][1][tokenReleaseLength[address(arg1)][arg2]]
}

function _fallback() payable {
    revert
}

function updateFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'You are not the owner'
    feeNumerator = arg1
    feeDenominator = arg2
}

function getUserVestingAtIndex(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 < userTokenInfo[address(arg1)][address(arg2)].field_512
    return stor[(2 * arg3) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_0, 
           stor[(2 * arg3) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_256
}

function calculateFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 < feeDenominator:
        revert with 0, 'Deposit is too small'
    if feeNumerator > feeDenominator:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        if feeDenominator <= 0:
            revert with 0, 'SafeMath: division by zero'
        require feeDenominator
        if 0 / feeDenominator > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        return (arg1 - (0 / feeDenominator))
    require arg1
    if (feeDenominator * arg1) - (feeNumerator * arg1) / arg1 != feeDenominator - feeNumerator:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if feeDenominator <= 0:
        revert with 0, 'SafeMath: division by zero'
    require feeDenominator
    if (feeDenominator * arg1) - (feeNumerator * arg1) / feeDenominator > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 - ((feeDenominator * arg1) - (feeNumerator * arg1) / feeDenominator))
}

function getWithdrawableBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while idx < userTokenInfo[address(arg1)][address(arg2)].field_512:
        mem[0] = sha3(address(arg2), sha3(address(arg1), 0)) + 2
        if stor[(2 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_0 >= block.timestamp:
            idx = idx + 1
            s = s
            continue 
        if s + stor[(2 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + stor[(2 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_256
        continue 
    if userTokenInfo[address(arg1)][address(arg2)].field_256 > s:
        revert with 0, 'SafeMath: subtraction overflow'
    return (s - userTokenInfo[address(arg1)][address(arg2)].field_256)
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x77596f757220617474656d7074696e6720746f207769746864726177203020746f6b656e,
                    mem[200 len 28]
    idx = 0
    s = 0
    while idx < userTokenInfo[address(arg1)][address(msg.sender)].field_512:
        mem[0] = sha3(address(msg.sender), sha3(address(arg1), 0)) + 2
        if stor[(2 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_0 >= block.timestamp:
            idx = idx + 1
            s = s
            continue 
        if s + stor[(2 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + stor[(2 * idx) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_256
        continue 
    if userTokenInfo[address(arg1)][address(msg.sender)].field_256 > s:
        revert with 0, 'SafeMath: subtraction overflow'
    if userTokenInfo[address(arg1)][address(msg.sender)].field_256 + arg2 < userTokenInfo[address(arg1)][address(msg.sender)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    userTokenInfo[address(arg1)][address(msg.sender)].field_256 += arg2
    if arg2 > s - userTokenInfo[address(arg1)][address(msg.sender)].field_256:
        revert with 0, 
                    32,
                    56,
                    0x73596f757220617474656d7074696e6720746f207769746864726177206d6f7265207468616e20796f75206861766520617661696c61626c,
                    mem[284 len 8]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
    emit onWithdraw(address(arg1), arg2);
}

function depositToken(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 >= 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe456e74657220616e20756e69782074696d657374616d7020696e207365636f6e64732c206e6f74206d696c697365636f6e64,
                    mem[215 len 13]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73596f757220617474656d7074696e6720746f2074726173666572203020746f6b656e,
                    mem[199 len 29]
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x73596f75206e65656420746f2073657420612068696768657220616c6c6f77616e63,
                    mem[198 len 30]
    if arg2 < feeDenominator:
        revert with 0, 'Deposit is too small'
    if feeNumerator > feeDenominator:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2:
        if feeDenominator <= 0:
            revert with 0, 'SafeMath: division by zero'
        require feeDenominator
        if 0 / feeDenominator > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 - (0 / feeDenominator) > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0 / feeDenominator
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, feeReserveAddress, arg2 - (0 / feeDenominator)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        if not stor2[address(arg1)]:
            lockedTokens.length++
            lockedTokens[lockedTokens.length] = arg1
            stor2[address(arg1)] = 1
        if tokenReleaseLength[address(arg1)][1][arg3] > 0:
            if tokenReleaseLength[address(arg1)][1][arg3] + (0 / feeDenominator) < tokenReleaseLength[address(arg1)][1][arg3]:
                revert with 0, 'SafeMath: addition overflow'
            tokenReleaseLength[address(arg1)][1][arg3] += 0 / feeDenominator
        else:
            tokenReleaseLength[address(arg1)]++
            tokenReleaseLength[address(arg1)][tokenReleaseLength[address(arg1)]] = arg3
            tokenReleaseLength[address(arg1)][1][arg3] = 0 / feeDenominator
        if userTokenInfo[address(arg1)][address(msg.sender)].field_0 + (0 / feeDenominator) < userTokenInfo[address(arg1)][address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        userTokenInfo[address(arg1)][address(msg.sender)].field_0 += 0 / feeDenominator
        userTokenInfo[address(arg1)][address(msg.sender)].field_512++
        stor[(2 * userTokenInfo[address(arg1)][address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_0 = arg3
        stor[(2 * userTokenInfo[address(arg1)][address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_256 = 0 / feeDenominator
    else:
        require arg2
        if (feeDenominator * arg2) - (feeNumerator * arg2) / arg2 != feeDenominator - feeNumerator:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if feeDenominator <= 0:
            revert with 0, 'SafeMath: division by zero'
        require feeDenominator
        if (feeDenominator * arg2) - (feeNumerator * arg2) / feeDenominator > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 - ((feeDenominator * arg2) - (feeNumerator * arg2) / feeDenominator) > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), (feeDenominator * arg2) - (feeNumerator * arg2) / feeDenominator
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, feeReserveAddress, arg2 - ((feeDenominator * arg2) - (feeNumerator * arg2) / feeDenominator)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        if not stor2[address(arg1)]:
            lockedTokens.length++
            lockedTokens[lockedTokens.length] = arg1
            stor2[address(arg1)] = 1
        if tokenReleaseLength[address(arg1)][1][arg3] > 0:
            if tokenReleaseLength[address(arg1)][1][arg3] + ((feeDenominator * arg2) - (feeNumerator * arg2) / feeDenominator) < tokenReleaseLength[address(arg1)][1][arg3]:
                revert with 0, 'SafeMath: addition overflow'
            tokenReleaseLength[address(arg1)][1][arg3] += (feeDenominator * arg2) - (feeNumerator * arg2) / feeDenominator
        else:
            tokenReleaseLength[address(arg1)]++
            tokenReleaseLength[address(arg1)][tokenReleaseLength[address(arg1)]] = arg3
            tokenReleaseLength[address(arg1)][1][arg3] = (feeDenominator * arg2) - (feeNumerator * arg2) / feeDenominator
        if userTokenInfo[address(arg1)][address(msg.sender)].field_0 + ((feeDenominator * arg2) - (feeNumerator * arg2) / feeDenominator) < userTokenInfo[address(arg1)][address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        userTokenInfo[address(arg1)][address(msg.sender)].field_0 += (feeDenominator * arg2) - (feeNumerator * arg2) / feeDenominator
        userTokenInfo[address(arg1)][address(msg.sender)].field_512++
        stor[(2 * userTokenInfo[address(arg1)][address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_0 = arg3
        stor[(2 * userTokenInfo[address(arg1)][address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_256 = (feeDenominator * arg2) - (feeNumerator * arg2) / feeDenominator
    emit 0xd6bbc989: address(arg1), arg2, arg3
}

function depositTokenMultipleEpochs(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0
    if arg2.length != arg3.length:
        revert with 0, 
                    32,
                    45,
                    0x65416d6f756e7420616e64206461746520617272617973206861766520646966666572696e67206c656e677468,
                    mem[(32 * arg2.length) + (32 * arg3.length) + 273 len 19]
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _226 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg2.length) + 128]
        _228 = mem[(32 * idx) + (32 * arg2.length) + 160]
        if mem[(32 * idx) + (32 * arg2.length) + 160] >= 10^10:
            revert with 0, 
                        32,
                        51,
                        0xfe456e74657220616e20756e69782074696d657374616d7020696e207365636f6e64732c206e6f74206d696c697365636f6e64,
                        mem[mem[64] + 119 len 13]
        if mem[(32 * idx) + 128] <= 0:
            revert with 0, 32, 35, 0x73596f757220617474656d7074696e6720746f2074726173666572203020746f6b656e, mem[mem[64] + 103 len 29]
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < mem[(32 * idx) + 128]:
            revert with 0, 32, 34, 0x73596f75206e65656420746f2073657420612068696768657220616c6c6f77616e63, mem[mem[64] + 102 len 30]
        if mem[(32 * idx) + 128] < feeDenominator:
            revert with 0, 'Deposit is too small'
        _241 = mem[64]
        mem[64] = mem[64] + 64
        mem[_241] = 30
        mem[_241 + 32] = 'SafeMath: subtraction overflow'
        if feeNumerator > feeDenominator:
            _242 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_242 + idx + 68] = mem[_241 + idx + 32]
                idx = idx + 32
                continue 
            mem[_242 + 68] = mem[_242 + 70 len 30]
            revert with memory
              from mem[64]
               len _242 + -mem[64] + 100
        if not _226:
            _251 = mem[64]
            mem[64] = mem[64] + 64
            mem[_251] = 26
            mem[_251 + 32] = 'SafeMath: division by zero'
            if feeDenominator <= 0:
                _253 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_253 + idx + 68] = mem[_251 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_253 + 68] = mem[_253 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _253 + -mem[64] + 100
            require feeDenominator
            _263 = mem[64]
            mem[64] = mem[64] + 64
            mem[_263] = 30
            mem[_263 + 32] = 'SafeMath: subtraction overflow'
            if 0 / feeDenominator > _226:
                _269 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_269 + idx + 68] = mem[_263 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_269 + 68] = mem[_269 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _269 + -mem[64] + 100
            _279 = mem[64]
            mem[64] = mem[64] + 64
            mem[_279] = 30
            mem[_279 + 32] = 'SafeMath: subtraction overflow'
            if _226 - (0 / feeDenominator) > _226:
                _285 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_285 + idx + 68] = mem[_279 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_285 + 68] = mem[_285 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _285 + -mem[64] + 100
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 0 / feeDenominator
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            mem[mem[64] + 68] = _226 - (0 / feeDenominator)
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, feeReserveAddress, _226 - (0 / feeDenominator)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            if stor2[address(arg1)]:
                if tokenReleaseLength[address(arg1)][1][_228] > 0:
                    if tokenReleaseLength[address(arg1)][1][_228] + (0 / feeDenominator) < tokenReleaseLength[address(arg1)][1][_228]:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenReleaseLength[address(arg1)][1][_228] += 0 / feeDenominator
                    mem[0] = msg.sender
                    mem[32] = sha3(address(arg1), 0)
                    if userTokenInfo[address(arg1)][address(msg.sender)].field_0 + (0 / feeDenominator) < userTokenInfo[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userTokenInfo[address(arg1)][address(msg.sender)].field_0 += 0 / feeDenominator
                    _411 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_411] = _228
                    mem[_411 + 32] = 0 / feeDenominator
                else:
                    tokenReleaseLength[address(arg1)]++
                    tokenReleaseLength[address(arg1)][tokenReleaseLength[address(arg1)]] = _228
                    tokenReleaseLength[address(arg1)][1][_228] = 0 / feeDenominator
                    mem[0] = msg.sender
                    mem[32] = sha3(address(arg1), 0)
                    if userTokenInfo[address(arg1)][address(msg.sender)].field_0 + (0 / feeDenominator) < userTokenInfo[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userTokenInfo[address(arg1)][address(msg.sender)].field_0 += 0 / feeDenominator
                    _366 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_366] = _228
                    mem[_366 + 32] = 0 / feeDenominator
            else:
                lockedTokens.length++
                lockedTokens[lockedTokens.length] = arg1
                stor2[address(arg1)] = 1
                if tokenReleaseLength[address(arg1)][1][_228] > 0:
                    if tokenReleaseLength[address(arg1)][1][_228] + (0 / feeDenominator) < tokenReleaseLength[address(arg1)][1][_228]:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenReleaseLength[address(arg1)][1][_228] += 0 / feeDenominator
                    mem[0] = msg.sender
                    mem[32] = sha3(address(arg1), 0)
                    if userTokenInfo[address(arg1)][address(msg.sender)].field_0 + (0 / feeDenominator) < userTokenInfo[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userTokenInfo[address(arg1)][address(msg.sender)].field_0 += 0 / feeDenominator
                    _421 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_421] = _228
                    mem[_421 + 32] = 0 / feeDenominator
                else:
                    tokenReleaseLength[address(arg1)]++
                    tokenReleaseLength[address(arg1)][tokenReleaseLength[address(arg1)]] = _228
                    tokenReleaseLength[address(arg1)][1][_228] = 0 / feeDenominator
                    mem[0] = msg.sender
                    mem[32] = sha3(address(arg1), 0)
                    if userTokenInfo[address(arg1)][address(msg.sender)].field_0 + (0 / feeDenominator) < userTokenInfo[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userTokenInfo[address(arg1)][address(msg.sender)].field_0 += 0 / feeDenominator
                    _382 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_382] = _228
                    mem[_382 + 32] = 0 / feeDenominator
            userTokenInfo[address(arg1)][address(msg.sender)].field_512++
            mem[0] = sha3(address(msg.sender), sha3(address(arg1), 0)) + 2
            stor[(2 * userTokenInfo[address(arg1)][address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_0 = _228
            stor[(2 * userTokenInfo[address(arg1)][address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_256 = 0 / feeDenominator
        else:
            require _226
            if (feeDenominator * _226) - (feeNumerator * _226) / _226 != feeDenominator - feeNumerator:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _252 = mem[64]
            mem[64] = mem[64] + 64
            mem[_252] = 26
            mem[_252 + 32] = 'SafeMath: division by zero'
            if feeDenominator <= 0:
                _256 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_256 + idx + 68] = mem[_252 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_256 + 68] = mem[_256 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _256 + -mem[64] + 100
            require feeDenominator
            _267 = mem[64]
            mem[64] = mem[64] + 64
            mem[_267] = 30
            mem[_267 + 32] = 'SafeMath: subtraction overflow'
            if (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator > _226:
                _272 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_272 + idx + 68] = mem[_267 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_272 + 68] = mem[_272 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _272 + -mem[64] + 100
            _283 = mem[64]
            mem[64] = mem[64] + 64
            mem[_283] = 30
            mem[_283 + 32] = 'SafeMath: subtraction overflow'
            if _226 - ((feeDenominator * _226) - (feeNumerator * _226) / feeDenominator) > _226:
                _288 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_288 + idx + 68] = mem[_283 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_288 + 68] = mem[_288 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _288 + -mem[64] + 100
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            mem[mem[64] + 68] = _226 - ((feeDenominator * _226) - (feeNumerator * _226) / feeDenominator)
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, feeReserveAddress, _226 - ((feeDenominator * _226) - (feeNumerator * _226) / feeDenominator)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            if stor2[address(arg1)]:
                if tokenReleaseLength[address(arg1)][1][_228] > 0:
                    if tokenReleaseLength[address(arg1)][1][_228] + ((feeDenominator * _226) - (feeNumerator * _226) / feeDenominator) < tokenReleaseLength[address(arg1)][1][_228]:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenReleaseLength[address(arg1)][1][_228] += (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator
                    mem[0] = msg.sender
                    mem[32] = sha3(address(arg1), 0)
                    if userTokenInfo[address(arg1)][address(msg.sender)].field_0 + ((feeDenominator * _226) - (feeNumerator * _226) / feeDenominator) < userTokenInfo[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userTokenInfo[address(arg1)][address(msg.sender)].field_0 += (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator
                    _427 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_427] = _228
                    mem[_427 + 32] = (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator
                else:
                    tokenReleaseLength[address(arg1)]++
                    tokenReleaseLength[address(arg1)][tokenReleaseLength[address(arg1)]] = _228
                    tokenReleaseLength[address(arg1)][1][_228] = (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator
                    mem[0] = msg.sender
                    mem[32] = sha3(address(arg1), 0)
                    if userTokenInfo[address(arg1)][address(msg.sender)].field_0 + ((feeDenominator * _226) - (feeNumerator * _226) / feeDenominator) < userTokenInfo[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userTokenInfo[address(arg1)][address(msg.sender)].field_0 += (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator
                    _390 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_390] = _228
                    mem[_390 + 32] = (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator
            else:
                lockedTokens.length++
                lockedTokens[lockedTokens.length] = arg1
                stor2[address(arg1)] = 1
                if tokenReleaseLength[address(arg1)][1][_228] > 0:
                    if tokenReleaseLength[address(arg1)][1][_228] + ((feeDenominator * _226) - (feeNumerator * _226) / feeDenominator) < tokenReleaseLength[address(arg1)][1][_228]:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenReleaseLength[address(arg1)][1][_228] += (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator
                    mem[0] = msg.sender
                    mem[32] = sha3(address(arg1), 0)
                    if userTokenInfo[address(arg1)][address(msg.sender)].field_0 + ((feeDenominator * _226) - (feeNumerator * _226) / feeDenominator) < userTokenInfo[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userTokenInfo[address(arg1)][address(msg.sender)].field_0 += (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator
                    _435 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_435] = _228
                    mem[_435 + 32] = (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator
                else:
                    tokenReleaseLength[address(arg1)]++
                    tokenReleaseLength[address(arg1)][tokenReleaseLength[address(arg1)]] = _228
                    tokenReleaseLength[address(arg1)][1][_228] = (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator
                    mem[0] = msg.sender
                    mem[32] = sha3(address(arg1), 0)
                    if userTokenInfo[address(arg1)][address(msg.sender)].field_0 + ((feeDenominator * _226) - (feeNumerator * _226) / feeDenominator) < userTokenInfo[address(arg1)][address(msg.sender)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    userTokenInfo[address(arg1)][address(msg.sender)].field_0 += (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator
                    _403 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_403] = _228
                    mem[_403 + 32] = (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator
            userTokenInfo[address(arg1)][address(msg.sender)].field_512++
            mem[0] = sha3(address(msg.sender), sha3(address(arg1), 0)) + 2
            stor[(2 * userTokenInfo[address(arg1)][address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_0 = _228
            stor[(2 * userTokenInfo[address(arg1)][address(msg.sender)].field_512) + ('array', 2, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'userTokenInfo', 0))))].field_256 = (feeDenominator * _226) - (feeNumerator * _226) / feeDenominator
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = _226
        mem[mem[64] + 64] = _228
        emit 0xd6bbc989: address(arg1), _226, _228
        idx = idx + 1
        continue 
}



}
