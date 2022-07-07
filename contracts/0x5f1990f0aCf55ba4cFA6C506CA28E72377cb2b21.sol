contract main {




// =====================  Runtime code  =====================


address sub_b8711ef9Address;
uint256 startReleaseBlock;
uint256 endReleaseBlock;
uint256 totalLock;
mapping of uint256 lockOf;
mapping of uint256 released;

function totalLock() payable {
    return totalLock
}

function getStartReleaseBlock() payable {
    return startReleaseBlock
}

function lockOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return lockOf[address(arg1)]
}

function startReleaseBlock() payable {
    return startReleaseBlock
}

function released(address arg1) payable {
    require calldata.size - 4 >= 32
    return released[address(arg1)]
}

function sub_b8711ef9(?) payable {
    return sub_b8711ef9Address
}

function endReleaseBlock() payable {
    return endReleaseBlock
}

function _fallback() payable {
    revert
}

function canUnlockAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < startReleaseBlock:
        return 0
    if block.number >= endReleaseBlock:
        if released[address(arg1)] > lockOf[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (lockOf[address(arg1)] - released[address(arg1)])
    if startReleaseBlock > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if startReleaseBlock > endReleaseBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    if not lockOf[address(arg1)]:
        if endReleaseBlock - startReleaseBlock <= 0:
            revert with 0, 'SafeMath: division by zero'
        require endReleaseBlock - startReleaseBlock
        if released[address(arg1)] > 0 / endReleaseBlock - startReleaseBlock:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / endReleaseBlock - startReleaseBlock) - released[address(arg1)])
    if (block.number * lockOf[address(arg1)]) - (startReleaseBlock * lockOf[address(arg1)]) / lockOf[address(arg1)] != block.number - startReleaseBlock:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if endReleaseBlock - startReleaseBlock <= 0:
        revert with 0, 'SafeMath: division by zero'
    require endReleaseBlock - startReleaseBlock
    if released[address(arg1)] > (block.number * lockOf[address(arg1)]) - (startReleaseBlock * lockOf[address(arg1)]) / endReleaseBlock - startReleaseBlock:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((block.number * lockOf[address(arg1)]) - (startReleaseBlock * lockOf[address(arg1)]) / endReleaseBlock - startReleaseBlock) - released[address(arg1)])
}

function lock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if block.number >= startReleaseBlock:
        revert with 0, 'no more lock'
    if not arg1:
        revert with 0, 'no lock to address(0)'
    if arg2 <= 0:
        revert with 0, 'zero lock'
    require ext_code.size(sub_b8711ef9Address)
    staticcall sub_b8711ef9Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(sub_b8711ef9Address):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call sub_b8711ef9Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    require ext_code.size(sub_b8711ef9Address)
    staticcall sub_b8711ef9Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if lockOf[address(arg1)] < lockOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if totalLock < totalLock:
        revert with 0, 'SafeMath: addition overflow'
    emit Lock(arg2, 0, arg1);
}

function unlock() payable {
    if block.number <= startReleaseBlock:
        revert with 0, 'still locked'
    if lockOf[msg.sender] <= released[msg.sender]:
        revert with 0, 'no locked'
    if block.number < startReleaseBlock:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(sub_b8711ef9Address):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
        call sub_b8711ef9Address with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, 0
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        if released[msg.sender] < released[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > totalLock:
            revert with 0, 'SafeMath: subtraction overflow'
    else:
        if block.number >= endReleaseBlock:
            if released[address(msg.sender)] > lockOf[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(sub_b8711ef9Address):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, lockOf[address(msg.sender)] - released[address(msg.sender)]) >> 32
            call sub_b8711ef9Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, lockOf[address(msg.sender)] - released[address(msg.sender)]) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, lockOf[address(msg.sender)] - released[address(msg.sender)]
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            if lockOf[address(msg.sender)] - released[address(msg.sender)] + released[msg.sender] < released[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            released[msg.sender] = lockOf[address(msg.sender)] - released[address(msg.sender)] + released[msg.sender]
            if lockOf[address(msg.sender)] - released[address(msg.sender)] > totalLock:
                revert with 0, 'SafeMath: subtraction overflow'
            totalLock = totalLock - lockOf[address(msg.sender)] + released[address(msg.sender)]
        else:
            if startReleaseBlock > block.number:
                revert with 0, 'SafeMath: subtraction overflow'
            if startReleaseBlock > endReleaseBlock:
                revert with 0, 'SafeMath: subtraction overflow'
            if not lockOf[address(msg.sender)]:
                if endReleaseBlock - startReleaseBlock <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require endReleaseBlock - startReleaseBlock
                if released[address(msg.sender)] > 0 / endReleaseBlock - startReleaseBlock:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_b8711ef9Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (0 / endReleaseBlock - startReleaseBlock) - released[address(msg.sender)]) >> 32
                call sub_b8711ef9Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (0 / endReleaseBlock - startReleaseBlock) - released[address(msg.sender)]) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, (0 / endReleaseBlock - startReleaseBlock) - released[address(msg.sender)]
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                if (0 / endReleaseBlock - startReleaseBlock) - released[address(msg.sender)] + released[msg.sender] < released[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                released[msg.sender] = (0 / endReleaseBlock - startReleaseBlock) - released[address(msg.sender)] + released[msg.sender]
                if (0 / endReleaseBlock - startReleaseBlock) - released[address(msg.sender)] > totalLock:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalLock = totalLock - (0 / endReleaseBlock - startReleaseBlock) + released[address(msg.sender)]
            else:
                if (block.number * lockOf[address(msg.sender)]) - (startReleaseBlock * lockOf[address(msg.sender)]) / lockOf[address(msg.sender)] != block.number - startReleaseBlock:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if endReleaseBlock - startReleaseBlock <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require endReleaseBlock - startReleaseBlock
                if released[address(msg.sender)] > (block.number * lockOf[address(msg.sender)]) - (startReleaseBlock * lockOf[address(msg.sender)]) / endReleaseBlock - startReleaseBlock:
                    revert with 0, 'SafeMath: subtraction overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(sub_b8711ef9Address):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((block.number * lockOf[address(msg.sender)]) - (startReleaseBlock * lockOf[address(msg.sender)]) / endReleaseBlock - startReleaseBlock) - released[address(msg.sender)]) >> 32
                call sub_b8711ef9Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, ((block.number * lockOf[address(msg.sender)]) - (startReleaseBlock * lockOf[address(msg.sender)]) / endReleaseBlock - startReleaseBlock) - released[address(msg.sender)]) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), 
                                    msg.sender,
                                    ((block.number * lockOf[address(msg.sender)]) - (startReleaseBlock * lockOf[address(msg.sender)]) / endReleaseBlock - startReleaseBlock) - released[address(msg.sender)]
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                if ((block.number * lockOf[address(msg.sender)]) - (startReleaseBlock * lockOf[address(msg.sender)]) / endReleaseBlock - startReleaseBlock) - released[address(msg.sender)] + released[msg.sender] < released[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                released[msg.sender] = ((block.number * lockOf[address(msg.sender)]) - (startReleaseBlock * lockOf[address(msg.sender)]) / endReleaseBlock - startReleaseBlock) - released[address(msg.sender)] + released[msg.sender]
                if ((block.number * lockOf[address(msg.sender)]) - (startReleaseBlock * lockOf[address(msg.sender)]) / endReleaseBlock - startReleaseBlock) - released[address(msg.sender)] > totalLock:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalLock = totalLock - ((block.number * lockOf[address(msg.sender)]) - (startReleaseBlock * lockOf[address(msg.sender)]) / endReleaseBlock - startReleaseBlock) + released[address(msg.sender)]
}



}
