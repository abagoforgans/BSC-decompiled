contract main {




// =====================  Runtime code  =====================


address currentOwner;
address tokenAAddress;
uint32 stor2;
address targetAddress;
uint256 stor2;
uint256 tokenAmount;
uint256 startTime;
uint256 lastTime;
uint256 oneDay;

function tokenA() payable {
    return tokenAAddress
}

function oneDay() payable {
    return oneDay
}

function targetAddress() payable {
    return address(targetAddress)
}

function CurrentOwner() payable {
    return currentOwner
}

function startTime() payable {
    return startTime
}

function lastTime() payable {
    return lastTime
}

function tokenAmount() payable {
    return tokenAmount
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if currentOwner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(currentOwner, arg1);
    currentOwner = arg1
}

function sub_f14bda2a(?) payable {
    require calldata.size - 4 >= 64
    if currentOwner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, ' Cannot stake 0'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
    call arg2 with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper: TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
    emit 0x8562729e: ext_call.return_data[0], block.timestamp, msg.sender, arg2
}

function getAmount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > arg2:
        revert with 0, 's>l'
    if arg1 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - arg1 < oneDay:
        return 0, arg2
    if arg2 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if oneDay <= 0:
        revert with 0, 'SafeMath: division by zero'
    require oneDay
    if not tokenAmount:
        if not block.timestamp - arg2 / oneDay:
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return 0, arg2
        require block.timestamp - arg2 / oneDay
        if block.timestamp - arg2 / oneDay * oneDay / block.timestamp - arg2 / oneDay != oneDay:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (block.timestamp - arg2 / oneDay * oneDay) + arg2 < block.timestamp - arg2 / oneDay * oneDay:
            revert with 0, 'SafeMath: addition overflow'
        return 0, (block.timestamp - arg2 / oneDay * oneDay) + arg2
    require tokenAmount
    if tokenAmount * block.timestamp - arg2 / oneDay / tokenAmount != block.timestamp - arg2 / oneDay:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not block.timestamp - arg2 / oneDay:
        if arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return tokenAmount * block.timestamp - arg2 / oneDay, arg2
    require block.timestamp - arg2 / oneDay
    if block.timestamp - arg2 / oneDay * oneDay / block.timestamp - arg2 / oneDay != oneDay:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (block.timestamp - arg2 / oneDay * oneDay) + arg2 < block.timestamp - arg2 / oneDay * oneDay:
        revert with 0, 'SafeMath: addition overflow'
    return tokenAmount * block.timestamp - arg2 / oneDay, (block.timestamp - arg2 / oneDay * oneDay) + arg2
}

function allocateTokens() payable {
    if startTime > lastTime:
        revert with 0, 's>l'
    if startTime > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - startTime >= oneDay:
        if lastTime > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if oneDay <= 0:
            revert with 0, 'SafeMath: division by zero'
        require oneDay
        if not tokenAmount:
            if not block.timestamp - lastTime / oneDay:
                if lastTime < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                require block.timestamp - lastTime / oneDay
                if block.timestamp - lastTime / oneDay * oneDay / block.timestamp - lastTime / oneDay != oneDay:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (block.timestamp - lastTime / oneDay * oneDay) + lastTime < block.timestamp - lastTime / oneDay * oneDay:
                    revert with 0, 'SafeMath: addition overflow'
        else:
            require tokenAmount
            if tokenAmount * block.timestamp - lastTime / oneDay / tokenAmount != block.timestamp - lastTime / oneDay:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not block.timestamp - lastTime / oneDay:
                if lastTime < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if tokenAmount * block.timestamp - lastTime / oneDay > 0:
                    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, tokenAmount * block.timestamp - lastTime / oneDay) >> 32
                    call tokenAAddress with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args Mask(224, 32, tokenAmount * block.timestamp - lastTime / oneDay) << 224, mem[260 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    emit 0xc1cb9884: tokenAmount * block.timestamp - lastTime / oneDay, block.timestamp
            else:
                require block.timestamp - lastTime / oneDay
                if block.timestamp - lastTime / oneDay * oneDay / block.timestamp - lastTime / oneDay != oneDay:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (block.timestamp - lastTime / oneDay * oneDay) + lastTime < block.timestamp - lastTime / oneDay * oneDay:
                    revert with 0, 'SafeMath: addition overflow'
                if tokenAmount * block.timestamp - lastTime / oneDay > 0:
                    lastTime += block.timestamp - lastTime / oneDay * oneDay
                    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, tokenAmount * block.timestamp - lastTime / oneDay) >> 32
                    call tokenAAddress with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args Mask(224, 32, tokenAmount * block.timestamp - lastTime / oneDay) << 224, mem[260 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    emit 0xc1cb9884: tokenAmount * block.timestamp - lastTime / oneDay, block.timestamp
}



}
