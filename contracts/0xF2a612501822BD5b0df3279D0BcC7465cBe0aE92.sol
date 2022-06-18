contract main {




// =====================  Runtime code  =====================


address currentOwner;
uint32 stor1;
address sub_bdd23d0fAddress;
uint256 stor1;
uint32 stor2;
address sub_8c85476fAddress;
uint256 stor2;
address tokenAAddress;
uint256 startTime;
uint256 lastTime;
uint256 oneDay;
uint256 sub_62602646;
mapping of struct sub_7393716a;

function tokenA() payable {
    return tokenAAddress
}

function oneDay() payable {
    return oneDay
}

function sub_62602646(?) payable {
    return sub_62602646
}

function sub_7393716a(?) payable {
    require calldata.size - 4 >= 32
    return sub_7393716a[arg1].field_0
}

function CurrentOwner() payable {
    return currentOwner
}

function startTime() payable {
    return startTime
}

function sub_8c85476f(?) payable {
    return address(sub_8c85476fAddress)
}

function lastTime() payable {
    return lastTime
}

function sub_bdd23d0f(?) payable {
    return address(sub_bdd23d0fAddress)
}

function _fallback() payable {
    revert
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if currentOwner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'zero address!'
    tokenAAddress = arg1
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
    if not block.timestamp - arg2 / oneDay:
        return 0, arg2
    if block.timestamp - arg2 / oneDay > 1:
        idx = 1
        s = 0
        s = 0
        while idx <= block.timestamp - arg2 / oneDay:
            if not oneDay:
                if arg2 < arg2:
                    revert with 0, 'SafeMath: addition overflow'
                if startTime > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_62602646 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_62602646
                mem[0] = arg2 - startTime / sub_62602646
                mem[32] = 8
                if s + sub_7393716a[arg2 - stor4 / stor7].field_0 < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = arg2 - startTime
                s = s + sub_7393716a[arg2 - stor4 / stor7].field_0
                continue 
            require oneDay
            if oneDay * idx / oneDay != idx:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if arg2 + (oneDay * idx) < arg2:
                revert with 0, 'SafeMath: addition overflow'
            if startTime > arg2 + (oneDay * idx):
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_62602646 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_62602646
            mem[0] = arg2 + (oneDay * idx) - startTime / sub_62602646
            mem[32] = 8
            if s + sub_7393716a[arg2 + (stor6 * idx) - stor4 / stor7].field_0 < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = arg2 + (oneDay * idx) - startTime
            s = s + sub_7393716a[arg2 + (stor6 * idx) - stor4 / stor7].field_0
            continue 
        if not block.timestamp - arg2 / oneDay:
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return s, arg2
        require block.timestamp - arg2 / oneDay
        if block.timestamp - arg2 / oneDay * oneDay / block.timestamp - arg2 / oneDay != oneDay:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (block.timestamp - arg2 / oneDay * oneDay) + arg2 < block.timestamp - arg2 / oneDay * oneDay:
            revert with 0, 'SafeMath: addition overflow'
        return s, (block.timestamp - arg2 / oneDay * oneDay) + arg2
    if arg2 + oneDay < arg2:
        revert with 0, 'SafeMath: addition overflow'
    if startTime > arg2 + oneDay:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_62602646 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_62602646
    if not block.timestamp - arg2 / oneDay:
        if arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return sub_7393716a[arg2 + stor6 - stor4 / stor7].field_0, arg2
    require block.timestamp - arg2 / oneDay
    if block.timestamp - arg2 / oneDay * oneDay / block.timestamp - arg2 / oneDay != oneDay:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (block.timestamp - arg2 / oneDay * oneDay) + arg2 < block.timestamp - arg2 / oneDay * oneDay:
        revert with 0, 'SafeMath: addition overflow'
    return sub_7393716a[arg2 + stor6 - stor4 / stor7].field_0, (block.timestamp - arg2 / oneDay * oneDay) + arg2
}

function allocateTokens() payable {
    if currentOwner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not tokenAAddress:
        revert with 0, 'token not set'
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
        if block.timestamp - lastTime / oneDay:
            if block.timestamp - lastTime / oneDay > 1:
                idx = 1
                s = 0
                s = 0
                while idx <= block.timestamp - lastTime / oneDay:
                    if not oneDay:
                        if lastTime < lastTime:
                            revert with 0, 'SafeMath: addition overflow'
                        if startTime > lastTime:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_62602646 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_62602646
                        mem[0] = lastTime - startTime / sub_62602646
                        mem[32] = 8
                        if s + sub_7393716a[stor5 - stor4 / stor7].field_0 < s:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = lastTime - startTime
                        s = s + sub_7393716a[stor5 - stor4 / stor7].field_0
                        continue 
                    require oneDay
                    if oneDay * idx / oneDay != idx:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if lastTime + (oneDay * idx) < lastTime:
                        revert with 0, 'SafeMath: addition overflow'
                    if startTime > lastTime + (oneDay * idx):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_62602646 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_62602646
                    mem[0] = lastTime + (oneDay * idx) - startTime / sub_62602646
                    mem[32] = 8
                    if s + sub_7393716a[stor5 + (stor6 * idx) - stor4 / stor7].field_0 < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = lastTime + (oneDay * idx) - startTime
                    s = s + sub_7393716a[stor5 + (stor6 * idx) - stor4 / stor7].field_0
                    continue 
                if not block.timestamp - lastTime / oneDay:
                    if lastTime < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if s > 0:
                        require ext_code.size(tokenAAddress)
                        staticcall tokenAAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if s <= ext_call.return_data[0]:
                            if not s / 100:
                                if 0 > s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0) << 256, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = 0, address(sub_bdd23d0fAddress), Mask(224, 32, s) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args s, Mask(224, 32, address(sub_bdd23d0fAddress), Mask(224, 32, s) >> 32) >> 32, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[ceil32(return_data.size) + 297 len 64] = 0, address(sub_bdd23d0fAddress), Mask(224, 32, s) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args s, Mask(224, 32, address(sub_bdd23d0fAddress), Mask(224, 32, s) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                require s / 100
                                if 5 * s / 100 / s / 100 != 5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 5 * s / 100 > s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, 5 * s / 100) >> 32
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 5 * s / 100) << 224, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = 0, address(sub_bdd23d0fAddress), Mask(224, 32, s - (5 * s / 100)) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args s - (5 * s / 100), Mask(224, 32, address(sub_bdd23d0fAddress), Mask(224, 32, s - (5 * s / 100)) >> 32) >> 32, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[ceil32(return_data.size) + 297 len 64] = 0, address(sub_bdd23d0fAddress), Mask(224, 32, s - (5 * s / 100)) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args s - (5 * s / 100), Mask(224, 32, address(sub_bdd23d0fAddress), Mask(224, 32, s - (5 * s / 100)) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            emit 0xc1cb9884: s, block.timestamp
                        else:
                            if not ext_call.return_data[0] / 100:
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args 0, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                require ext_call.return_data[0] / 100
                                if 5 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 != 5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 5 * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, 5 * ext_call.return_data[0] / 100) >> 32
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 5 * ext_call.return_data[0] / 100) << 224, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = 0, address(sub_bdd23d0fAddress), Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100), Mask(224, 32, address(sub_bdd23d0fAddress), Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) >> 32) >> 32, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[ceil32(return_data.size) + 297 len 64] = 0, address(sub_bdd23d0fAddress), Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100), Mask(224, 32, address(sub_bdd23d0fAddress), Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            emit 0xc1cb9884: ext_call.return_data[0], block.timestamp
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
                    if s > 0:
                        lastTime += block.timestamp - lastTime / oneDay * oneDay
                        require ext_code.size(tokenAAddress)
                        staticcall tokenAAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if s <= ext_call.return_data[0]:
                            if not s / 100:
                                if 0 > s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0) << 256, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = 0, address(sub_bdd23d0fAddress), Mask(224, 32, s) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args s, Mask(224, 32, address(sub_bdd23d0fAddress), Mask(224, 32, s) >> 32) >> 32, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[ceil32(return_data.size) + 297 len 64] = 0, address(sub_bdd23d0fAddress), Mask(224, 32, s) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args s, Mask(224, 32, address(sub_bdd23d0fAddress), Mask(224, 32, s) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                require s / 100
                                if 5 * s / 100 / s / 100 != 5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 5 * s / 100 > s:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, 5 * s / 100) >> 32
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 5 * s / 100) << 224, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = 0, address(sub_bdd23d0fAddress), Mask(224, 32, s - (5 * s / 100)) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args s - (5 * s / 100), Mask(224, 32, address(sub_bdd23d0fAddress), Mask(224, 32, s - (5 * s / 100)) >> 32) >> 32, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[ceil32(return_data.size) + 297 len 64] = 0, address(sub_bdd23d0fAddress), Mask(224, 32, s - (5 * s / 100)) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args s - (5 * s / 100), Mask(224, 32, address(sub_bdd23d0fAddress), Mask(224, 32, s - (5 * s / 100)) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            emit 0xc1cb9884: s, block.timestamp
                        else:
                            if not ext_call.return_data[0] / 100:
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0) << 256, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = 0, address(sub_bdd23d0fAddress), ext_call.return_data[0 len 28]
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], Mask(224, 32, address(sub_bdd23d0fAddress), ext_call.return_data[0 len 28]) >> 32, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[ceil32(return_data.size) + 297 len 64] = 0, address(sub_bdd23d0fAddress), ext_call.return_data[0 len 28]
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], Mask(224, 32, address(sub_bdd23d0fAddress), ext_call.return_data[0 len 28]) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                emit 0xc1cb9884: ext_call.return_data[0], block.timestamp
                            else:
                                require ext_call.return_data[0] / 100
                                if 5 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 != 5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 5 * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, 5 * ext_call.return_data[0] / 100) >> 32
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 5 * ext_call.return_data[0] / 100) << 224, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) << 224, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    emit 0xc1cb9884: ext_call.return_data[0], block.timestamp
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) >> 32
                                    mem[ceil32(return_data.size) + 389 len 4] = Mask(32, 64, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) >> 64
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) << 224, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        emit 0xc1cb9884: ext_call.return_data[0], block.timestamp
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'TransferHelper: TRANSFER_FAILED',
                                                        mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 
                                                            'TransferHelper: TRANSFER_FAILED',
                                                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        emit 0xc1cb9884: ext_call.return_data[0], block.timestamp, mem[(2 * ceil32(return_data.size)) + 362 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                if lastTime + oneDay < lastTime:
                    revert with 0, 'SafeMath: addition overflow'
                if startTime > lastTime + oneDay:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_62602646 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_62602646
                if not block.timestamp - lastTime / oneDay:
                    if lastTime < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 > 0:
                        require ext_code.size(tokenAAddress)
                        staticcall tokenAAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 <= ext_call.return_data[0]:
                            if not sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100:
                                if 0 > sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0) << 256, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = 0, address(sub_bdd23d0fAddress), sub_7393716a[stor5 + stor6 - stor4 / stor7].field_32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0, Mask(224, 32, address(sub_bdd23d0fAddress), sub_7393716a[stor5 + stor6 - stor4 / stor7].field_32) >> 32, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[ceil32(return_data.size) + 297 len 64] = 0, address(sub_bdd23d0fAddress), sub_7393716a[stor5 + stor6 - stor4 / stor7].field_32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0, Mask(224, 32, address(sub_bdd23d0fAddress), sub_7393716a[stor5 + stor6 - stor4 / stor7].field_32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            else:
                                require sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100
                                if 5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100 / sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100 != 5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100 > sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, 5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100) >> 32
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100) << 224, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = 0, address(sub_bdd23d0fAddress), Mask(224, 32, sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 - (5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100)) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 - (5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100), Mask(224, 32, address(sub_bdd23d0fAddress), Mask(224, 32, sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 - (5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100)) >> 32) >> 32, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[ceil32(return_data.size) + 297 len 64] = 0, address(sub_bdd23d0fAddress), Mask(224, 32, sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 - (5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100)) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 - (5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100), Mask(224, 32, address(sub_bdd23d0fAddress), Mask(224, 32, sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 - (5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100)) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                            emit 0xc1cb9884: sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0, block.timestamp
                        else:
                            if not ext_call.return_data[0] / 100:
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args 0, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    emit 0xc1cb9884: ext_call.return_data[0], block.timestamp
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
                                    mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        emit 0xc1cb9884: ext_call.return_data[0], block.timestamp
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'TransferHelper: TRANSFER_FAILED',
                                                        mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 
                                                            'TransferHelper: TRANSFER_FAILED',
                                                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        emit 0xc1cb9884: ext_call.return_data[0], block.timestamp, mem[(2 * ceil32(return_data.size)) + 362 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            else:
                                require ext_call.return_data[0] / 100
                                if 5 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 != 5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 5 * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, 5 * ext_call.return_data[0] / 100) >> 32
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 5 * ext_call.return_data[0] / 100) << 224, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) << 224, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    emit 0xc1cb9884: ext_call.return_data[0], block.timestamp
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) >> 32
                                    mem[ceil32(return_data.size) + 389 len 4] = Mask(32, 64, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) >> 64
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) << 224, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        emit 0xc1cb9884: ext_call.return_data[0], block.timestamp
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 
                                                        'TransferHelper: TRANSFER_FAILED',
                                                        mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 
                                                            'TransferHelper: TRANSFER_FAILED',
                                                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        emit 0xc1cb9884: ext_call.return_data[0], block.timestamp, mem[(2 * ceil32(return_data.size)) + 362 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                    if sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 > 0:
                        lastTime += block.timestamp - lastTime / oneDay * oneDay
                        require ext_code.size(tokenAAddress)
                        staticcall tokenAAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 > ext_call.return_data[0]:
                            if not ext_call.return_data[0] / 100:
                                if 0 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args 0, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    emit 0xc1cb9884: ext_call.return_data[0], block.timestamp
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not return_data.size:
                                        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
                                        mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
                                        call tokenAAddress with:
                                           funct uint32(stor1)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            emit 0xc1cb9884: ext_call.return_data[0], block.timestamp
                                        else:
                                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 
                                                            'TransferHelper: TRANSFER_FAILED',
                                                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 329]:
                                                    revert with 0, 
                                                                'TransferHelper: TRANSFER_FAILED',
                                                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            emit 0xc1cb9884: ext_call.return_data[0], block.timestamp, mem[(2 * ceil32(return_data.size)) + 362 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    else:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
                                        call tokenAAddress with:
                                           funct uint32(stor1)
                                             gas gas_remaining wei
                                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 329]:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        emit 0xc1cb9884: ext_call.return_data[0], block.timestamp
                            else:
                                require ext_call.return_data[0] / 100
                                if 5 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 != 5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 5 * ext_call.return_data[0] / 100 > ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, 5 * ext_call.return_data[0] / 100) >> 32
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 5 * ext_call.return_data[0] / 100) << 224, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) << 224, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    emit 0xc1cb9884: ext_call.return_data[0], block.timestamp
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not return_data.size:
                                        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) >> 32
                                        mem[ceil32(return_data.size) + 389 len 4] = Mask(32, 64, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) >> 64
                                        call tokenAAddress with:
                                           funct uint32(stor1)
                                             gas gas_remaining wei
                                            args Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) << 224, mem[ceil32(return_data.size) + 361 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            emit 0xc1cb9884: ext_call.return_data[0], block.timestamp
                                        else:
                                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 
                                                            'TransferHelper: TRANSFER_FAILED',
                                                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 329]:
                                                    revert with 0, 
                                                                'TransferHelper: TRANSFER_FAILED',
                                                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            emit 0xc1cb9884: ext_call.return_data[0], block.timestamp, mem[(2 * ceil32(return_data.size)) + 362 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    else:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) >> 32
                                        call tokenAAddress with:
                                           funct uint32(stor1)
                                             gas gas_remaining wei
                                            args Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 100)) << 224, mem[ceil32(return_data.size) + 361 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 329]:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        emit 0xc1cb9884: ext_call.return_data[0], block.timestamp
                        else:
                            if not sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100:
                                if 0 > sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), 0) << 256, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = 0, address(sub_bdd23d0fAddress), sub_7393716a[stor5 + stor6 - stor4 / stor7].field_32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0, Mask(224, 32, address(sub_bdd23d0fAddress), sub_7393716a[stor5 + stor6 - stor4 / stor7].field_32) >> 32, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[ceil32(return_data.size) + 297 len 64] = 0, address(sub_bdd23d0fAddress), sub_7393716a[stor5 + stor6 - stor4 / stor7].field_32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0, Mask(224, 32, address(sub_bdd23d0fAddress), sub_7393716a[stor5 + stor6 - stor4 / stor7].field_32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 329]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                emit 0xc1cb9884: sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0, block.timestamp
                            else:
                                require sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100
                                if 5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100 / sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100 != 5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if 5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100 > sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, 5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100) >> 32
                                call tokenAAddress with:
                                   funct uint32(stor2)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100) << 224, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    mem[296 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 - (5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100)) >> 32
                                    call tokenAAddress with:
                                       funct uint32(stor1)
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 - (5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100)) << 224, mem[360 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    else:
                                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[328]:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    emit 0xc1cb9884: sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0, block.timestamp
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                    if not return_data.size:
                                        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 - (5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100)) >> 32
                                        call tokenAAddress with:
                                           funct uint32(stor1)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 - (5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100)) << 224, mem[ceil32(return_data.size) + 361 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        else:
                                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 329]:
                                                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        emit 0xc1cb9884: sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0, block.timestamp
                                    else:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 - (5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100)) >> 32
                                        mem[ceil32(return_data.size) + 389 len 4] = Mask(32, 64, sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 - (5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100)) >> 64
                                        call tokenAAddress with:
                                           funct uint32(stor1)
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 - (5 * sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0 / 100)) << 224, mem[ceil32(return_data.size) + 361 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor2):
                                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                                            emit 0xc1cb9884: sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0, block.timestamp
                                        else:
                                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                revert with 0, 
                                                            'TransferHelper: TRANSFER_FAILED',
                                                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 329]:
                                                    revert with 0, 
                                                                'TransferHelper: TRANSFER_FAILED',
                                                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            emit 0xc1cb9884: sub_7393716a[stor5 + stor6 - stor4 / stor7].field_0, block.timestamp, mem[(2 * ceil32(return_data.size)) + 362 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}



}
