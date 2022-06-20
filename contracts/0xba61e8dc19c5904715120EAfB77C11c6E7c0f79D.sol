contract main {




// =====================  Runtime code  =====================


#
#  - sub_5cbc3de6(?)
#  - _fallback()
#
address stor0;
array of address stor1;
array of uint8 stor18;
array of address stor19;
address stor195;
address stor370;

function receiveBonus() payable {
    require msg.sender == stor0
    require ext_code.size(stor195)
    call stor195.takerWithdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function withdrawTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == stor0
    require arg2 > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 224
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 196)] == uint8(cd[(arg4 + 196)])
    require cd[(arg4 + 228)] == uint8(cd[(arg4 + 228)])
    if cd[(arg4 + 164)] >= 32:
        revert with 0, 50
    if stor18[cd[(arg4 + 164)]] > 9:
        revert with 0, 33
    if stor18[cd[(arg4 + 164)]]:
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        if 6 == cd[(arg4 + 164)]:
            if uint8(cd[(arg4 + 196)]) >= 17:
                revert with 0, 50
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if uint8(cd[(arg4 + 228)]) >= 17:
                revert with 0, 50
            require ext_code.size(stor370)
            call stor370.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor18[cd[(arg4 + 164)]] > 9:
                revert with 0, 33
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if stor18[cd[(arg4 + 164)]] == 2:
                if uint8(cd[(arg4 + 196)]) >= 17:
                    revert with 0, 50
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if uint8(cd[(arg4 + 228)]) >= 17:
                    revert with 0, 50
                require ext_code.size(stor19[cd[(arg4 + 164)]])
                call stor19[cd[(arg4 + 164)]].exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                if stor18[cd[(arg4 + 164)]] > 9:
                    revert with 0, 33
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if stor18[cd[(arg4 + 164)]] == 3:
                    if uint8(cd[(arg4 + 196)]) >= 17:
                        revert with 0, 50
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if uint8(cd[(arg4 + 228)]) >= 17:
                        revert with 0, 50
                    require ext_code.size(stor19[cd[(arg4 + 164)]])
                    call stor19[cd[(arg4 + 164)]].exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    if stor18[cd[(arg4 + 164)]] > 9:
                        revert with 0, 33
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if stor18[cd[(arg4 + 164)]] == 4:
                        if uint8(cd[(arg4 + 196)]) >= 17:
                            revert with 0, 50
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if uint8(cd[(arg4 + 228)]) >= 17:
                            revert with 0, 50
                        require ext_code.size(stor19[cd[(arg4 + 164)]])
                        call stor19[cd[(arg4 + 164)]].swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if stor18[cd[(arg4 + 164)]] > 9:
                            revert with 0, 33
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if stor18[cd[(arg4 + 164)]] == 5:
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if stor18[cd[(arg4 + 164)]] > 9:
                                revert with 0, 33
                            if stor18[cd[(arg4 + 164)]] != 8:
                                revert with 0, 'Bad exg.'
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swap(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 128), uint128(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 128), cd[(arg4 + 100)], cd[(arg4 + 132)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        mem[96] = 2
        if uint8(cd[(arg4 + 196)]) >= 17:
            revert with 0, 50
        mem[128] = stor1[uint8(cd[(arg4 + 196)])]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[160] = stor1[uint8(cd[(arg4 + 228)])]
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = cd[(arg4 + 100)]
        mem[228] = cd[(arg4 + 132)]
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = block.timestamp
        require ext_code.size(stor19[cd[(arg4 + 164)]])
        call stor19[cd[(arg4 + 164)]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)], cd[(arg4 + 132)], Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _66 = mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 223 < return_data.size + 192
        _67 = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        require return_data.size >= _66 + (32 * _67) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _67] = mem[_66 + 224 len 32 * _67]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[(arg4 + 36)])
        mem[mem[64] + 68] = cd[(arg4 + 68)]
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _77 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_77] == bool(mem[_77])
}

function babyCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 224
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 196)] == uint8(cd[(arg4 + 196)])
    require cd[(arg4 + 228)] == uint8(cd[(arg4 + 228)])
    if cd[(arg4 + 164)] >= 32:
        revert with 0, 50
    if stor18[cd[(arg4 + 164)]] > 9:
        revert with 0, 33
    if stor18[cd[(arg4 + 164)]]:
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        if 6 == cd[(arg4 + 164)]:
            if uint8(cd[(arg4 + 196)]) >= 17:
                revert with 0, 50
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if uint8(cd[(arg4 + 228)]) >= 17:
                revert with 0, 50
            require ext_code.size(stor370)
            call stor370.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor18[cd[(arg4 + 164)]] > 9:
                revert with 0, 33
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if stor18[cd[(arg4 + 164)]] == 2:
                if uint8(cd[(arg4 + 196)]) >= 17:
                    revert with 0, 50
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if uint8(cd[(arg4 + 228)]) >= 17:
                    revert with 0, 50
                require ext_code.size(stor19[cd[(arg4 + 164)]])
                call stor19[cd[(arg4 + 164)]].exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                if stor18[cd[(arg4 + 164)]] > 9:
                    revert with 0, 33
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if stor18[cd[(arg4 + 164)]] == 3:
                    if uint8(cd[(arg4 + 196)]) >= 17:
                        revert with 0, 50
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if uint8(cd[(arg4 + 228)]) >= 17:
                        revert with 0, 50
                    require ext_code.size(stor19[cd[(arg4 + 164)]])
                    call stor19[cd[(arg4 + 164)]].exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    if stor18[cd[(arg4 + 164)]] > 9:
                        revert with 0, 33
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if stor18[cd[(arg4 + 164)]] == 4:
                        if uint8(cd[(arg4 + 196)]) >= 17:
                            revert with 0, 50
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if uint8(cd[(arg4 + 228)]) >= 17:
                            revert with 0, 50
                        require ext_code.size(stor19[cd[(arg4 + 164)]])
                        call stor19[cd[(arg4 + 164)]].swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if stor18[cd[(arg4 + 164)]] > 9:
                            revert with 0, 33
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if stor18[cd[(arg4 + 164)]] == 5:
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if stor18[cd[(arg4 + 164)]] > 9:
                                revert with 0, 33
                            if stor18[cd[(arg4 + 164)]] != 8:
                                revert with 0, 'Bad exg.'
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swap(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 128), uint128(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 128), cd[(arg4 + 100)], cd[(arg4 + 132)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        mem[96] = 2
        if uint8(cd[(arg4 + 196)]) >= 17:
            revert with 0, 50
        mem[128] = stor1[uint8(cd[(arg4 + 196)])]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[160] = stor1[uint8(cd[(arg4 + 228)])]
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = cd[(arg4 + 100)]
        mem[228] = cd[(arg4 + 132)]
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = block.timestamp
        require ext_code.size(stor19[cd[(arg4 + 164)]])
        call stor19[cd[(arg4 + 164)]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)], cd[(arg4 + 132)], Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _66 = mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 223 < return_data.size + 192
        _67 = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        require return_data.size >= _66 + (32 * _67) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _67] = mem[_66 + 224 len 32 * _67]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[(arg4 + 36)])
        mem[mem[64] + 68] = cd[(arg4 + 68)]
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _77 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_77] == bool(mem[_77])
}

function BiswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 224
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 196)] == uint8(cd[(arg4 + 196)])
    require cd[(arg4 + 228)] == uint8(cd[(arg4 + 228)])
    if cd[(arg4 + 164)] >= 32:
        revert with 0, 50
    if stor18[cd[(arg4 + 164)]] > 9:
        revert with 0, 33
    if stor18[cd[(arg4 + 164)]]:
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        if 6 == cd[(arg4 + 164)]:
            if uint8(cd[(arg4 + 196)]) >= 17:
                revert with 0, 50
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if uint8(cd[(arg4 + 228)]) >= 17:
                revert with 0, 50
            require ext_code.size(stor370)
            call stor370.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor18[cd[(arg4 + 164)]] > 9:
                revert with 0, 33
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if stor18[cd[(arg4 + 164)]] == 2:
                if uint8(cd[(arg4 + 196)]) >= 17:
                    revert with 0, 50
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if uint8(cd[(arg4 + 228)]) >= 17:
                    revert with 0, 50
                require ext_code.size(stor19[cd[(arg4 + 164)]])
                call stor19[cd[(arg4 + 164)]].exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                if stor18[cd[(arg4 + 164)]] > 9:
                    revert with 0, 33
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if stor18[cd[(arg4 + 164)]] == 3:
                    if uint8(cd[(arg4 + 196)]) >= 17:
                        revert with 0, 50
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if uint8(cd[(arg4 + 228)]) >= 17:
                        revert with 0, 50
                    require ext_code.size(stor19[cd[(arg4 + 164)]])
                    call stor19[cd[(arg4 + 164)]].exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    if stor18[cd[(arg4 + 164)]] > 9:
                        revert with 0, 33
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if stor18[cd[(arg4 + 164)]] == 4:
                        if uint8(cd[(arg4 + 196)]) >= 17:
                            revert with 0, 50
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if uint8(cd[(arg4 + 228)]) >= 17:
                            revert with 0, 50
                        require ext_code.size(stor19[cd[(arg4 + 164)]])
                        call stor19[cd[(arg4 + 164)]].swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if stor18[cd[(arg4 + 164)]] > 9:
                            revert with 0, 33
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if stor18[cd[(arg4 + 164)]] == 5:
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if stor18[cd[(arg4 + 164)]] > 9:
                                revert with 0, 33
                            if stor18[cd[(arg4 + 164)]] != 8:
                                revert with 0, 'Bad exg.'
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swap(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 128), uint128(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 128), cd[(arg4 + 100)], cd[(arg4 + 132)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        mem[96] = 2
        if uint8(cd[(arg4 + 196)]) >= 17:
            revert with 0, 50
        mem[128] = stor1[uint8(cd[(arg4 + 196)])]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[160] = stor1[uint8(cd[(arg4 + 228)])]
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = cd[(arg4 + 100)]
        mem[228] = cd[(arg4 + 132)]
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = block.timestamp
        require ext_code.size(stor19[cd[(arg4 + 164)]])
        call stor19[cd[(arg4 + 164)]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)], cd[(arg4 + 132)], Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _66 = mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 223 < return_data.size + 192
        _67 = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        require return_data.size >= _66 + (32 * _67) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _67] = mem[_66 + 224 len 32 * _67]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[(arg4 + 36)])
        mem[mem[64] + 68] = cd[(arg4 + 68)]
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _77 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_77] == bool(mem[_77])
}

function swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 224
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 196)] == uint8(cd[(arg4 + 196)])
    require cd[(arg4 + 228)] == uint8(cd[(arg4 + 228)])
    if cd[(arg4 + 164)] >= 32:
        revert with 0, 50
    if stor18[cd[(arg4 + 164)]] > 9:
        revert with 0, 33
    if stor18[cd[(arg4 + 164)]]:
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        if 6 == cd[(arg4 + 164)]:
            if uint8(cd[(arg4 + 196)]) >= 17:
                revert with 0, 50
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if uint8(cd[(arg4 + 228)]) >= 17:
                revert with 0, 50
            require ext_code.size(stor370)
            call stor370.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor18[cd[(arg4 + 164)]] > 9:
                revert with 0, 33
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if stor18[cd[(arg4 + 164)]] == 2:
                if uint8(cd[(arg4 + 196)]) >= 17:
                    revert with 0, 50
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if uint8(cd[(arg4 + 228)]) >= 17:
                    revert with 0, 50
                require ext_code.size(stor19[cd[(arg4 + 164)]])
                call stor19[cd[(arg4 + 164)]].exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                if stor18[cd[(arg4 + 164)]] > 9:
                    revert with 0, 33
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if stor18[cd[(arg4 + 164)]] == 3:
                    if uint8(cd[(arg4 + 196)]) >= 17:
                        revert with 0, 50
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if uint8(cd[(arg4 + 228)]) >= 17:
                        revert with 0, 50
                    require ext_code.size(stor19[cd[(arg4 + 164)]])
                    call stor19[cd[(arg4 + 164)]].exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    if stor18[cd[(arg4 + 164)]] > 9:
                        revert with 0, 33
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if stor18[cd[(arg4 + 164)]] == 4:
                        if uint8(cd[(arg4 + 196)]) >= 17:
                            revert with 0, 50
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if uint8(cd[(arg4 + 228)]) >= 17:
                            revert with 0, 50
                        require ext_code.size(stor19[cd[(arg4 + 164)]])
                        call stor19[cd[(arg4 + 164)]].swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if stor18[cd[(arg4 + 164)]] > 9:
                            revert with 0, 33
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if stor18[cd[(arg4 + 164)]] == 5:
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if stor18[cd[(arg4 + 164)]] > 9:
                                revert with 0, 33
                            if stor18[cd[(arg4 + 164)]] != 8:
                                revert with 0, 'Bad exg.'
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swap(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 128), uint128(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 128), cd[(arg4 + 100)], cd[(arg4 + 132)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        mem[96] = 2
        if uint8(cd[(arg4 + 196)]) >= 17:
            revert with 0, 50
        mem[128] = stor1[uint8(cd[(arg4 + 196)])]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[160] = stor1[uint8(cd[(arg4 + 228)])]
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = cd[(arg4 + 100)]
        mem[228] = cd[(arg4 + 132)]
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = block.timestamp
        require ext_code.size(stor19[cd[(arg4 + 164)]])
        call stor19[cd[(arg4 + 164)]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)], cd[(arg4 + 132)], Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _66 = mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 223 < return_data.size + 192
        _67 = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        require return_data.size >= _66 + (32 * _67) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _67] = mem[_66 + 224 len 32 * _67]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[(arg4 + 36)])
        mem[mem[64] + 68] = cd[(arg4 + 68)]
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _77 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_77] == bool(mem[_77])
}

function pantherCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 224
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 196)] == uint8(cd[(arg4 + 196)])
    require cd[(arg4 + 228)] == uint8(cd[(arg4 + 228)])
    if cd[(arg4 + 164)] >= 32:
        revert with 0, 50
    if stor18[cd[(arg4 + 164)]] > 9:
        revert with 0, 33
    if stor18[cd[(arg4 + 164)]]:
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        if 6 == cd[(arg4 + 164)]:
            if uint8(cd[(arg4 + 196)]) >= 17:
                revert with 0, 50
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if uint8(cd[(arg4 + 228)]) >= 17:
                revert with 0, 50
            require ext_code.size(stor370)
            call stor370.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor18[cd[(arg4 + 164)]] > 9:
                revert with 0, 33
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if stor18[cd[(arg4 + 164)]] == 2:
                if uint8(cd[(arg4 + 196)]) >= 17:
                    revert with 0, 50
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if uint8(cd[(arg4 + 228)]) >= 17:
                    revert with 0, 50
                require ext_code.size(stor19[cd[(arg4 + 164)]])
                call stor19[cd[(arg4 + 164)]].exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                if stor18[cd[(arg4 + 164)]] > 9:
                    revert with 0, 33
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if stor18[cd[(arg4 + 164)]] == 3:
                    if uint8(cd[(arg4 + 196)]) >= 17:
                        revert with 0, 50
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if uint8(cd[(arg4 + 228)]) >= 17:
                        revert with 0, 50
                    require ext_code.size(stor19[cd[(arg4 + 164)]])
                    call stor19[cd[(arg4 + 164)]].exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    if stor18[cd[(arg4 + 164)]] > 9:
                        revert with 0, 33
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if stor18[cd[(arg4 + 164)]] == 4:
                        if uint8(cd[(arg4 + 196)]) >= 17:
                            revert with 0, 50
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if uint8(cd[(arg4 + 228)]) >= 17:
                            revert with 0, 50
                        require ext_code.size(stor19[cd[(arg4 + 164)]])
                        call stor19[cd[(arg4 + 164)]].swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if stor18[cd[(arg4 + 164)]] > 9:
                            revert with 0, 33
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if stor18[cd[(arg4 + 164)]] == 5:
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if stor18[cd[(arg4 + 164)]] > 9:
                                revert with 0, 33
                            if stor18[cd[(arg4 + 164)]] != 8:
                                revert with 0, 'Bad exg.'
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swap(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 128), uint128(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 128), cd[(arg4 + 100)], cd[(arg4 + 132)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        mem[96] = 2
        if uint8(cd[(arg4 + 196)]) >= 17:
            revert with 0, 50
        mem[128] = stor1[uint8(cd[(arg4 + 196)])]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[160] = stor1[uint8(cd[(arg4 + 228)])]
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = cd[(arg4 + 100)]
        mem[228] = cd[(arg4 + 132)]
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = block.timestamp
        require ext_code.size(stor19[cd[(arg4 + 164)]])
        call stor19[cd[(arg4 + 164)]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)], cd[(arg4 + 132)], Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _66 = mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 223 < return_data.size + 192
        _67 = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        require return_data.size >= _66 + (32 * _67) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _67] = mem[_66 + 224 len 32 * _67]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[(arg4 + 36)])
        mem[mem[64] + 68] = cd[(arg4 + 68)]
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _77 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_77] == bool(mem[_77])
}

function jetswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 224
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 196)] == uint8(cd[(arg4 + 196)])
    require cd[(arg4 + 228)] == uint8(cd[(arg4 + 228)])
    if cd[(arg4 + 164)] >= 32:
        revert with 0, 50
    if stor18[cd[(arg4 + 164)]] > 9:
        revert with 0, 33
    if stor18[cd[(arg4 + 164)]]:
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        if 6 == cd[(arg4 + 164)]:
            if uint8(cd[(arg4 + 196)]) >= 17:
                revert with 0, 50
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if uint8(cd[(arg4 + 228)]) >= 17:
                revert with 0, 50
            require ext_code.size(stor370)
            call stor370.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor18[cd[(arg4 + 164)]] > 9:
                revert with 0, 33
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if stor18[cd[(arg4 + 164)]] == 2:
                if uint8(cd[(arg4 + 196)]) >= 17:
                    revert with 0, 50
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if uint8(cd[(arg4 + 228)]) >= 17:
                    revert with 0, 50
                require ext_code.size(stor19[cd[(arg4 + 164)]])
                call stor19[cd[(arg4 + 164)]].exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                if stor18[cd[(arg4 + 164)]] > 9:
                    revert with 0, 33
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if stor18[cd[(arg4 + 164)]] == 3:
                    if uint8(cd[(arg4 + 196)]) >= 17:
                        revert with 0, 50
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if uint8(cd[(arg4 + 228)]) >= 17:
                        revert with 0, 50
                    require ext_code.size(stor19[cd[(arg4 + 164)]])
                    call stor19[cd[(arg4 + 164)]].exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    if stor18[cd[(arg4 + 164)]] > 9:
                        revert with 0, 33
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if stor18[cd[(arg4 + 164)]] == 4:
                        if uint8(cd[(arg4 + 196)]) >= 17:
                            revert with 0, 50
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if uint8(cd[(arg4 + 228)]) >= 17:
                            revert with 0, 50
                        require ext_code.size(stor19[cd[(arg4 + 164)]])
                        call stor19[cd[(arg4 + 164)]].swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if stor18[cd[(arg4 + 164)]] > 9:
                            revert with 0, 33
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if stor18[cd[(arg4 + 164)]] == 5:
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if stor18[cd[(arg4 + 164)]] > 9:
                                revert with 0, 33
                            if stor18[cd[(arg4 + 164)]] != 8:
                                revert with 0, 'Bad exg.'
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swap(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 128), uint128(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 128), cd[(arg4 + 100)], cd[(arg4 + 132)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        mem[96] = 2
        if uint8(cd[(arg4 + 196)]) >= 17:
            revert with 0, 50
        mem[128] = stor1[uint8(cd[(arg4 + 196)])]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[160] = stor1[uint8(cd[(arg4 + 228)])]
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = cd[(arg4 + 100)]
        mem[228] = cd[(arg4 + 132)]
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = block.timestamp
        require ext_code.size(stor19[cd[(arg4 + 164)]])
        call stor19[cd[(arg4 + 164)]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)], cd[(arg4 + 132)], Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _66 = mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 223 < return_data.size + 192
        _67 = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        require return_data.size >= _66 + (32 * _67) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _67] = mem[_66 + 224 len 32 * _67]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[(arg4 + 36)])
        mem[mem[64] + 68] = cd[(arg4 + 68)]
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _77 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_77] == bool(mem[_77])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 224
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 196)] == uint8(cd[(arg4 + 196)])
    require cd[(arg4 + 228)] == uint8(cd[(arg4 + 228)])
    if cd[(arg4 + 164)] >= 32:
        revert with 0, 50
    if stor18[cd[(arg4 + 164)]] > 9:
        revert with 0, 33
    if stor18[cd[(arg4 + 164)]]:
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        if 6 == cd[(arg4 + 164)]:
            if uint8(cd[(arg4 + 196)]) >= 17:
                revert with 0, 50
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if uint8(cd[(arg4 + 228)]) >= 17:
                revert with 0, 50
            require ext_code.size(stor370)
            call stor370.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor18[cd[(arg4 + 164)]] > 9:
                revert with 0, 33
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if stor18[cd[(arg4 + 164)]] == 2:
                if uint8(cd[(arg4 + 196)]) >= 17:
                    revert with 0, 50
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if uint8(cd[(arg4 + 228)]) >= 17:
                    revert with 0, 50
                require ext_code.size(stor19[cd[(arg4 + 164)]])
                call stor19[cd[(arg4 + 164)]].exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                if stor18[cd[(arg4 + 164)]] > 9:
                    revert with 0, 33
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if stor18[cd[(arg4 + 164)]] == 3:
                    if uint8(cd[(arg4 + 196)]) >= 17:
                        revert with 0, 50
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if uint8(cd[(arg4 + 228)]) >= 17:
                        revert with 0, 50
                    require ext_code.size(stor19[cd[(arg4 + 164)]])
                    call stor19[cd[(arg4 + 164)]].exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    if stor18[cd[(arg4 + 164)]] > 9:
                        revert with 0, 33
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if stor18[cd[(arg4 + 164)]] == 4:
                        if uint8(cd[(arg4 + 196)]) >= 17:
                            revert with 0, 50
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if uint8(cd[(arg4 + 228)]) >= 17:
                            revert with 0, 50
                        require ext_code.size(stor19[cd[(arg4 + 164)]])
                        call stor19[cd[(arg4 + 164)]].swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if stor18[cd[(arg4 + 164)]] > 9:
                            revert with 0, 33
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if stor18[cd[(arg4 + 164)]] == 5:
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if stor18[cd[(arg4 + 164)]] > 9:
                                revert with 0, 33
                            if stor18[cd[(arg4 + 164)]] != 8:
                                revert with 0, 'Bad exg.'
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swap(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 128), uint128(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 128), cd[(arg4 + 100)], cd[(arg4 + 132)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        mem[96] = 2
        if uint8(cd[(arg4 + 196)]) >= 17:
            revert with 0, 50
        mem[128] = stor1[uint8(cd[(arg4 + 196)])]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[160] = stor1[uint8(cd[(arg4 + 228)])]
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = cd[(arg4 + 100)]
        mem[228] = cd[(arg4 + 132)]
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = block.timestamp
        require ext_code.size(stor19[cd[(arg4 + 164)]])
        call stor19[cd[(arg4 + 164)]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)], cd[(arg4 + 132)], Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _66 = mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 223 < return_data.size + 192
        _67 = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        require return_data.size >= _66 + (32 * _67) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _67] = mem[_66 + 224 len 32 * _67]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[(arg4 + 36)])
        mem[mem[64] + 68] = cd[(arg4 + 68)]
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _77 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_77] == bool(mem[_77])
}

function waultSwapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 224
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 196)] == uint8(cd[(arg4 + 196)])
    require cd[(arg4 + 228)] == uint8(cd[(arg4 + 228)])
    if cd[(arg4 + 164)] >= 32:
        revert with 0, 50
    if stor18[cd[(arg4 + 164)]] > 9:
        revert with 0, 33
    if stor18[cd[(arg4 + 164)]]:
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        if 6 == cd[(arg4 + 164)]:
            if uint8(cd[(arg4 + 196)]) >= 17:
                revert with 0, 50
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if uint8(cd[(arg4 + 228)]) >= 17:
                revert with 0, 50
            require ext_code.size(stor370)
            call stor370.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if stor18[cd[(arg4 + 164)]] > 9:
                revert with 0, 33
            if cd[(arg4 + 164)] >= 32:
                revert with 0, 50
            if stor18[cd[(arg4 + 164)]] == 2:
                if uint8(cd[(arg4 + 196)]) >= 17:
                    revert with 0, 50
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if uint8(cd[(arg4 + 228)]) >= 17:
                    revert with 0, 50
                require ext_code.size(stor19[cd[(arg4 + 164)]])
                call stor19[cd[(arg4 + 164)]].exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                if stor18[cd[(arg4 + 164)]] > 9:
                    revert with 0, 33
                if cd[(arg4 + 164)] >= 32:
                    revert with 0, 50
                if stor18[cd[(arg4 + 164)]] == 3:
                    if uint8(cd[(arg4 + 196)]) >= 17:
                        revert with 0, 50
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if uint8(cd[(arg4 + 228)]) >= 17:
                        revert with 0, 50
                    require ext_code.size(stor19[cd[(arg4 + 164)]])
                    call stor19[cd[(arg4 + 164)]].exchange_underlying(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args 0, uint32(('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 196, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 196)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 196, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4')))))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('cd', ('add', 228, ('param', 'arg4')))), ('name', 'stor((Mask(7, 1, cd[(arg4 + 228)]) >> 1) + (11 * cd[(arg4 + 164)]) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('cd', ('add', 228, ('param', 'arg4')))), 2), ('mul', 11, ('cd', ('add', 164, ('param', 'arg4'))))))))), cd[(arg4 + 100)], cd[(arg4 + 132)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    if stor18[cd[(arg4 + 164)]] > 9:
                        revert with 0, 33
                    if cd[(arg4 + 164)] >= 32:
                        revert with 0, 50
                    if stor18[cd[(arg4 + 164)]] == 4:
                        if uint8(cd[(arg4 + 196)]) >= 17:
                            revert with 0, 50
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if uint8(cd[(arg4 + 228)]) >= 17:
                            revert with 0, 50
                        require ext_code.size(stor19[cd[(arg4 + 164)]])
                        call stor19[cd[(arg4 + 164)]].swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                    else:
                        if stor18[cd[(arg4 + 164)]] > 9:
                            revert with 0, 33
                        if cd[(arg4 + 164)] >= 32:
                            revert with 0, 50
                        if stor18[cd[(arg4 + 164)]] == 5:
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 248), uint8(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 248), cd[(arg4 + 100)], cd[(arg4 + 132)], block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if stor18[cd[(arg4 + 164)]] > 9:
                                revert with 0, 33
                            if stor18[cd[(arg4 + 164)]] != 8:
                                revert with 0, 'Bad exg.'
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 196)]) >= 17:
                                revert with 0, 50
                            if cd[(arg4 + 164)] >= 32:
                                revert with 0, 50
                            if uint8(cd[(arg4 + 228)]) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[cd[(arg4 + 164)]])
                            call stor19[cd[(arg4 + 164)]].swap(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
                                 gas gas_remaining wei
                                args 0, uint32(stor[(uint8(cd[(arg4 + 196)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 196)]) << 7) - 128), uint128(stor[(uint8(cd[(arg4 + 228)]) / 2) + (11 * cd[(arg4 + 164)]) + 20].field_(bool(cd[(arg4 + 228)]) << 7) - 128), cd[(arg4 + 100)], cd[(arg4 + 132)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        mem[96] = 2
        if uint8(cd[(arg4 + 196)]) >= 17:
            revert with 0, 50
        mem[128] = stor1[uint8(cd[(arg4 + 196)])]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[160] = stor1[uint8(cd[(arg4 + 228)])]
        if cd[(arg4 + 164)] >= 32:
            revert with 0, 50
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = cd[(arg4 + 100)]
        mem[228] = cd[(arg4 + 132)]
        mem[260] = 160
        mem[356] = 2
        idx = 0
        s = 128
        t = 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[292] = this.address
        mem[324] = block.timestamp
        require ext_code.size(stor19[cd[(arg4 + 164)]])
        call stor19[cd[(arg4 + 164)]].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[(arg4 + 100)], cd[(arg4 + 132)], Array(len=2, data=mem[388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _66 = mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 223 < return_data.size + 192
        _67 = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[(arg4 + 100)]) >> 32 + 192]
        require return_data.size >= _66 + (32 * _67) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _67] = mem[_66 + 224 len 32 * _67]
        if uint8(cd[(arg4 + 228)]) >= 17:
            revert with 0, 50
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[(arg4 + 36)])
        mem[mem[64] + 68] = cd[(arg4 + 68)]
        require ext_code.size(stor1[uint8(cd[(arg4 + 228)])])
        call stor1[uint8(cd[(arg4 + 228)])].0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(cd[(arg4 + 36)]), cd[(arg4 + 68)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _77 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_77] == bool(mem[_77])
}

function sub_5b532083(?) {
    require calldata.size - 4 >= 192
    require arg4 == uint8(arg4)
    require arg5 == uint8(arg5)
    require msg.sender == stor0
    if arg2 >= 32:
        revert with 0, 50
    if stor18[arg2] > 9:
        revert with 0, 33
    if stor18[arg2]:
        if arg2 >= 32:
            revert with 0, 50
        if stor18[arg2] > 9:
            revert with 0, 33
        if arg2 >= 32:
            revert with 0, 50
        if stor18[arg2] == 2:
            if uint8(arg4) >= 17:
                revert with 0, 50
            if arg2 >= 32:
                revert with 0, 50
            if uint8(arg5) >= 17:
                revert with 0, 50
            mem[100] = ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg2) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg2')))))))
            mem[132] = ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg2) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg2')))))))
            mem[164] = arg1
            require ext_code.size(stor19[arg2])
            staticcall stor19[arg2].get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg2) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg2'))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg2) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg2'))))))), arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg3 >= 32:
                revert with 0, 50
            if stor18[arg3] > 9:
                revert with 0, 33
            if stor18[arg3]:
                if arg3 >= 32:
                    revert with 0, 50
                if stor18[arg3] > 9:
                    revert with 0, 33
                if arg3 >= 32:
                    revert with 0, 50
                if stor18[arg3] == 2:
                    if uint8(arg5) >= 17:
                        revert with 0, 50
                    if arg3 >= 32:
                        revert with 0, 50
                    if uint8(arg4) >= 17:
                        revert with 0, 50
                    require ext_code.size(stor19[arg3])
                    staticcall stor19[arg3].get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg3'))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg3'))))))), ext_call.return_data[0]
                else:
                    if stor18[arg3] > 9:
                        revert with 0, 33
                    if arg3 >= 32:
                        revert with 0, 50
                    if stor18[arg3] == 3:
                        if uint8(arg5) >= 17:
                            revert with 0, 50
                        if arg3 >= 32:
                            revert with 0, 50
                        if uint8(arg4) >= 17:
                            revert with 0, 50
                        require ext_code.size(stor19[arg3])
                        staticcall stor19[arg3].get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg3'))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg3'))))))), ext_call.return_data[0]
                    else:
                        if stor18[arg3] > 9:
                            revert with 0, 33
                        if arg3 >= 32:
                            revert with 0, 50
                        if stor18[arg3] == 4:
                            if uint8(arg5) >= 17:
                                revert with 0, 50
                            if arg3 >= 32:
                                revert with 0, 50
                            if uint8(arg4) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[arg3])
                            staticcall stor19[arg3].calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args uint8(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 248), uint8(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 248), ext_call.return_data[0]
                        else:
                            if stor18[arg3] > 9:
                                revert with 0, 33
                            if arg3 >= 32:
                                revert with 0, 50
                            if stor18[arg3] == 5:
                                if uint8(arg5) >= 17:
                                    revert with 0, 50
                                if arg3 >= 32:
                                    revert with 0, 50
                                if uint8(arg4) >= 17:
                                    revert with 0, 50
                                require ext_code.size(stor19[arg3])
                                staticcall stor19[arg3].calculateSwapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args uint8(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 248), uint8(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 248), ext_call.return_data[0]
                            else:
                                if stor18[arg3] > 9:
                                    revert with 0, 33
                                if stor18[arg3] != 8:
                                    revert with 0, 'Wrong Exchange'
                                if arg3 >= 32:
                                    revert with 0, 50
                                if uint8(arg5) >= 17:
                                    revert with 0, 50
                                if arg3 >= 32:
                                    revert with 0, 50
                                if uint8(arg4) >= 17:
                                    revert with 0, 50
                                require ext_code.size(stor19[arg3])
                                staticcall stor19[arg3].getSwapAmount(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args uint128(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 128), uint128(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 128), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return arg6 <= ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = 2
            if uint8(arg5) >= 17:
                revert with 0, 50
            mem[ceil32(return_data.size) + 128] = stor1[uint8(arg5)]
            if uint8(arg4) >= 17:
                revert with 0, 50
            mem[ceil32(return_data.size) + 160] = stor1[uint8(arg4)]
            if arg3 >= 32:
                revert with 0, 50
            mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 228] = 64
            mem[ceil32(return_data.size) + 260] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = ceil32(return_data.size) + 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor19[arg3])
            staticcall stor19[arg3].getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _347 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
            require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
            _353 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                revert with 0, 65
            if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
            mem[(2 * ceil32(return_data.size)) + 192] = _353
            require return_data.size >= _347 + (32 * _353) + 32
            mem[(2 * ceil32(return_data.size)) + 224 len 32 * _353] = mem[ceil32(return_data.size) + _347 + 224 len 32 * _353]
            if 1 >= _353:
                revert with 0, 50
        else:
            if stor18[arg2] > 9:
                revert with 0, 33
            if arg2 >= 32:
                revert with 0, 50
            if stor18[arg2] == 3:
                if uint8(arg4) >= 17:
                    revert with 0, 50
                if arg2 >= 32:
                    revert with 0, 50
                if uint8(arg5) >= 17:
                    revert with 0, 50
                mem[100] = ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg2) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg2')))))))
                mem[132] = ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg2) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg2')))))))
                mem[164] = arg1
                require ext_code.size(stor19[arg2])
                staticcall stor19[arg2].get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg2) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg2'))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg2) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg2'))))))), arg1
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg3 >= 32:
                    revert with 0, 50
                if stor18[arg3] > 9:
                    revert with 0, 33
                if stor18[arg3]:
                    if arg3 >= 32:
                        revert with 0, 50
                    if stor18[arg3] > 9:
                        revert with 0, 33
                    if arg3 >= 32:
                        revert with 0, 50
                    if stor18[arg3] == 2:
                        if uint8(arg5) >= 17:
                            revert with 0, 50
                        if arg3 >= 32:
                            revert with 0, 50
                        if uint8(arg4) >= 17:
                            revert with 0, 50
                        require ext_code.size(stor19[arg3])
                        staticcall stor19[arg3].get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg3'))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg3'))))))), ext_call.return_data[0]
                    else:
                        if stor18[arg3] > 9:
                            revert with 0, 33
                        if arg3 >= 32:
                            revert with 0, 50
                        if stor18[arg3] == 3:
                            if uint8(arg5) >= 17:
                                revert with 0, 50
                            if arg3 >= 32:
                                revert with 0, 50
                            if uint8(arg4) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[arg3])
                            staticcall stor19[arg3].get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg3'))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg3'))))))), ext_call.return_data[0]
                        else:
                            if stor18[arg3] > 9:
                                revert with 0, 33
                            if arg3 >= 32:
                                revert with 0, 50
                            if stor18[arg3] == 4:
                                if uint8(arg5) >= 17:
                                    revert with 0, 50
                                if arg3 >= 32:
                                    revert with 0, 50
                                if uint8(arg4) >= 17:
                                    revert with 0, 50
                                require ext_code.size(stor19[arg3])
                                staticcall stor19[arg3].calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args uint8(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 248), uint8(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 248), ext_call.return_data[0]
                            else:
                                if stor18[arg3] > 9:
                                    revert with 0, 33
                                if arg3 >= 32:
                                    revert with 0, 50
                                if stor18[arg3] == 5:
                                    if uint8(arg5) >= 17:
                                        revert with 0, 50
                                    if arg3 >= 32:
                                        revert with 0, 50
                                    if uint8(arg4) >= 17:
                                        revert with 0, 50
                                    require ext_code.size(stor19[arg3])
                                    staticcall stor19[arg3].calculateSwapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args uint8(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 248), uint8(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 248), ext_call.return_data[0]
                                else:
                                    if stor18[arg3] > 9:
                                        revert with 0, 33
                                    if stor18[arg3] != 8:
                                        revert with 0, 'Wrong Exchange'
                                    if arg3 >= 32:
                                        revert with 0, 50
                                    if uint8(arg5) >= 17:
                                        revert with 0, 50
                                    if arg3 >= 32:
                                        revert with 0, 50
                                    if uint8(arg4) >= 17:
                                        revert with 0, 50
                                    require ext_code.size(stor19[arg3])
                                    staticcall stor19[arg3].getSwapAmount(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args uint128(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 128), uint128(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 128), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return arg6 <= ext_call.return_data[0]
                mem[ceil32(return_data.size) + 96] = 2
                if uint8(arg5) >= 17:
                    revert with 0, 50
                mem[ceil32(return_data.size) + 128] = stor1[uint8(arg5)]
                if uint8(arg4) >= 17:
                    revert with 0, 50
                mem[ceil32(return_data.size) + 160] = stor1[uint8(arg4)]
                if arg3 >= 32:
                    revert with 0, 50
                mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 228] = 64
                mem[ceil32(return_data.size) + 260] = 2
                idx = 0
                s = ceil32(return_data.size) + 128
                t = ceil32(return_data.size) + 292
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor19[arg3])
                staticcall stor19[arg3].getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _346 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
                _352 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 0, 65
                if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                mem[(2 * ceil32(return_data.size)) + 192] = _352
                require return_data.size >= _346 + (32 * _352) + 32
                mem[(2 * ceil32(return_data.size)) + 224 len 32 * _352] = mem[ceil32(return_data.size) + _346 + 224 len 32 * _352]
                if 1 >= _352:
                    revert with 0, 50
            else:
                if stor18[arg2] > 9:
                    revert with 0, 33
                if arg2 >= 32:
                    revert with 0, 50
                if stor18[arg2] == 4:
                    if uint8(arg4) >= 17:
                        revert with 0, 50
                    if arg2 >= 32:
                        revert with 0, 50
                    if uint8(arg5) >= 17:
                        revert with 0, 50
                    mem[100] = uint8(stor[(uint8(arg4) / 2) + (11 * arg2) + 20].field_bool(arg4) << 7)
                    mem[132] = uint8(stor[(uint8(arg5) / 2) + (11 * arg2) + 20].field_bool(arg5) << 7)
                    mem[164] = arg1
                    require ext_code.size(stor19[arg2])
                    staticcall stor19[arg2].calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args uint8(stor[(uint8(arg4) / 2) + (11 * arg2) + 20].field_(bool(arg4) << 7) - 248), uint8(stor[(uint8(arg5) / 2) + (11 * arg2) + 20].field_(bool(arg5) << 7) - 248), arg1
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg3 >= 32:
                        revert with 0, 50
                    if stor18[arg3] > 9:
                        revert with 0, 33
                    if stor18[arg3]:
                        if arg3 >= 32:
                            revert with 0, 50
                        if stor18[arg3] > 9:
                            revert with 0, 33
                        if arg3 >= 32:
                            revert with 0, 50
                        if stor18[arg3] == 2:
                            if uint8(arg5) >= 17:
                                revert with 0, 50
                            if arg3 >= 32:
                                revert with 0, 50
                            if uint8(arg4) >= 17:
                                revert with 0, 50
                            require ext_code.size(stor19[arg3])
                            staticcall stor19[arg3].get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg3'))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg3'))))))), ext_call.return_data[0]
                        else:
                            if stor18[arg3] > 9:
                                revert with 0, 33
                            if arg3 >= 32:
                                revert with 0, 50
                            if stor18[arg3] == 3:
                                if uint8(arg5) >= 17:
                                    revert with 0, 50
                                if arg3 >= 32:
                                    revert with 0, 50
                                if uint8(arg4) >= 17:
                                    revert with 0, 50
                                require ext_code.size(stor19[arg3])
                                staticcall stor19[arg3].get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg3'))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg3'))))))), ext_call.return_data[0]
                            else:
                                if stor18[arg3] > 9:
                                    revert with 0, 33
                                if arg3 >= 32:
                                    revert with 0, 50
                                if stor18[arg3] == 4:
                                    if uint8(arg5) >= 17:
                                        revert with 0, 50
                                    if arg3 >= 32:
                                        revert with 0, 50
                                    if uint8(arg4) >= 17:
                                        revert with 0, 50
                                    require ext_code.size(stor19[arg3])
                                    staticcall stor19[arg3].calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args uint8(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 248), uint8(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 248), ext_call.return_data[0]
                                else:
                                    if stor18[arg3] > 9:
                                        revert with 0, 33
                                    if arg3 >= 32:
                                        revert with 0, 50
                                    if stor18[arg3] == 5:
                                        if uint8(arg5) >= 17:
                                            revert with 0, 50
                                        if arg3 >= 32:
                                            revert with 0, 50
                                        if uint8(arg4) >= 17:
                                            revert with 0, 50
                                        require ext_code.size(stor19[arg3])
                                        staticcall stor19[arg3].calculateSwapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args uint8(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 248), uint8(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 248), ext_call.return_data[0]
                                    else:
                                        if stor18[arg3] > 9:
                                            revert with 0, 33
                                        if stor18[arg3] != 8:
                                            revert with 0, 'Wrong Exchange'
                                        if arg3 >= 32:
                                            revert with 0, 50
                                        if uint8(arg5) >= 17:
                                            revert with 0, 50
                                        if arg3 >= 32:
                                            revert with 0, 50
                                        if uint8(arg4) >= 17:
                                            revert with 0, 50
                                        require ext_code.size(stor19[arg3])
                                        staticcall stor19[arg3].getSwapAmount(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args uint128(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 128), uint128(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 128), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return arg6 <= ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 96] = 2
                    if uint8(arg5) >= 17:
                        revert with 0, 50
                    mem[ceil32(return_data.size) + 128] = stor1[uint8(arg5)]
                    if uint8(arg4) >= 17:
                        revert with 0, 50
                    mem[ceil32(return_data.size) + 160] = stor1[uint8(arg4)]
                    if arg3 >= 32:
                        revert with 0, 50
                    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 228] = 64
                    mem[ceil32(return_data.size) + 260] = 2
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = ceil32(return_data.size) + 292
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor19[arg3])
                    staticcall stor19[arg3].getAmountsOut(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _345 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
                    _351 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(2 * ceil32(return_data.size)) + 192] = _351
                    require return_data.size >= _345 + (32 * _351) + 32
                    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _351] = mem[ceil32(return_data.size) + _345 + 224 len 32 * _351]
                    if 1 >= _351:
                        revert with 0, 50
                else:
                    if stor18[arg2] > 9:
                        revert with 0, 33
                    if arg2 >= 32:
                        revert with 0, 50
                    if stor18[arg2] == 5:
                        if uint8(arg4) >= 17:
                            revert with 0, 50
                        if arg2 >= 32:
                            revert with 0, 50
                        if uint8(arg5) >= 17:
                            revert with 0, 50
                        mem[100] = uint8(stor[(uint8(arg4) / 2) + (11 * arg2) + 20].field_bool(arg4) << 7)
                        mem[132] = uint8(stor[(uint8(arg5) / 2) + (11 * arg2) + 20].field_bool(arg5) << 7)
                        mem[164] = arg1
                        require ext_code.size(stor19[arg2])
                        staticcall stor19[arg2].calculateSwapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args uint8(stor[(uint8(arg4) / 2) + (11 * arg2) + 20].field_(bool(arg4) << 7) - 248), uint8(stor[(uint8(arg5) / 2) + (11 * arg2) + 20].field_(bool(arg5) << 7) - 248), arg1
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg3 >= 32:
                            revert with 0, 50
                        if stor18[arg3] > 9:
                            revert with 0, 33
                        if stor18[arg3]:
                            if arg3 >= 32:
                                revert with 0, 50
                            if stor18[arg3] > 9:
                                revert with 0, 33
                            if arg3 >= 32:
                                revert with 0, 50
                            if stor18[arg3] == 2:
                                if uint8(arg5) >= 17:
                                    revert with 0, 50
                                if arg3 >= 32:
                                    revert with 0, 50
                                if uint8(arg4) >= 17:
                                    revert with 0, 50
                                require ext_code.size(stor19[arg3])
                                staticcall stor19[arg3].get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg3'))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg3'))))))), ext_call.return_data[0]
                            else:
                                if stor18[arg3] > 9:
                                    revert with 0, 33
                                if arg3 >= 32:
                                    revert with 0, 50
                                if stor18[arg3] == 3:
                                    if uint8(arg5) >= 17:
                                        revert with 0, 50
                                    if arg3 >= 32:
                                        revert with 0, 50
                                    if uint8(arg4) >= 17:
                                        revert with 0, 50
                                    require ext_code.size(stor19[arg3])
                                    staticcall stor19[arg3].get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg3'))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg3'))))))), ext_call.return_data[0]
                                else:
                                    if stor18[arg3] > 9:
                                        revert with 0, 33
                                    if arg3 >= 32:
                                        revert with 0, 50
                                    if stor18[arg3] == 4:
                                        if uint8(arg5) >= 17:
                                            revert with 0, 50
                                        if arg3 >= 32:
                                            revert with 0, 50
                                        if uint8(arg4) >= 17:
                                            revert with 0, 50
                                        require ext_code.size(stor19[arg3])
                                        staticcall stor19[arg3].calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args uint8(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 248), uint8(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 248), ext_call.return_data[0]
                                    else:
                                        if stor18[arg3] > 9:
                                            revert with 0, 33
                                        if arg3 >= 32:
                                            revert with 0, 50
                                        if stor18[arg3] == 5:
                                            if uint8(arg5) >= 17:
                                                revert with 0, 50
                                            if arg3 >= 32:
                                                revert with 0, 50
                                            if uint8(arg4) >= 17:
                                                revert with 0, 50
                                            require ext_code.size(stor19[arg3])
                                            staticcall stor19[arg3].calculateSwapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args uint8(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 248), uint8(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 248), ext_call.return_data[0]
                                        else:
                                            if stor18[arg3] > 9:
                                                revert with 0, 33
                                            if stor18[arg3] != 8:
                                                revert with 0, 'Wrong Exchange'
                                            if arg3 >= 32:
                                                revert with 0, 50
                                            if uint8(arg5) >= 17:
                                                revert with 0, 50
                                            if arg3 >= 32:
                                                revert with 0, 50
                                            if uint8(arg4) >= 17:
                                                revert with 0, 50
                                            require ext_code.size(stor19[arg3])
                                            staticcall stor19[arg3].getSwapAmount(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args uint128(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 128), uint128(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 128), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return arg6 <= ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 2
                        if uint8(arg5) >= 17:
                            revert with 0, 50
                        mem[ceil32(return_data.size) + 128] = stor1[uint8(arg5)]
                        if uint8(arg4) >= 17:
                            revert with 0, 50
                        mem[ceil32(return_data.size) + 160] = stor1[uint8(arg4)]
                        if arg3 >= 32:
                            revert with 0, 50
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor19[arg3])
                        staticcall stor19[arg3].getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _344 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
                        _350 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                        mem[(2 * ceil32(return_data.size)) + 192] = _350
                        require return_data.size >= _344 + (32 * _350) + 32
                        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _350] = mem[ceil32(return_data.size) + _344 + 224 len 32 * _350]
                        if 1 >= _350:
                            revert with 0, 50
                    else:
                        if stor18[arg2] > 9:
                            revert with 0, 33
                        if stor18[arg2] != 8:
                            revert with 0, 'Wrong Exchange'
                        if arg2 >= 32:
                            revert with 0, 50
                        if uint8(arg4) >= 17:
                            revert with 0, 50
                        if arg2 >= 32:
                            revert with 0, 50
                        if uint8(arg5) >= 17:
                            revert with 0, 50
                        mem[100] = stor((Mask(7, 1, arg4) >> 1) + (11 * arg2) + 20)[uint8(arg4)]
                        mem[132] = stor((Mask(7, 1, arg5) >> 1) + (11 * arg2) + 20)[uint8(arg5)]
                        mem[164] = arg1
                        require ext_code.size(stor19[arg2])
                        staticcall stor19[arg2].getSwapAmount(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args uint128(stor[(uint8(arg4) / 2) + (11 * arg2) + 20].field_(bool(arg4) << 7) - 128), uint128(stor[(uint8(arg5) / 2) + (11 * arg2) + 20].field_(bool(arg5) << 7) - 128), arg1
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg3 >= 32:
                            revert with 0, 50
                        if stor18[arg3] > 9:
                            revert with 0, 33
                        if stor18[arg3]:
                            if arg3 >= 32:
                                revert with 0, 50
                            if stor18[arg3] > 9:
                                revert with 0, 33
                            if arg3 >= 32:
                                revert with 0, 50
                            if stor18[arg3] == 2:
                                if uint8(arg5) >= 17:
                                    revert with 0, 50
                                if arg3 >= 32:
                                    revert with 0, 50
                                if uint8(arg4) >= 17:
                                    revert with 0, 50
                                require ext_code.size(stor19[arg3])
                                staticcall stor19[arg3].get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                                        gas gas_remaining wei
                                       args ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg3'))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg3'))))))), ext_call.return_data[0]
                            else:
                                if stor18[arg3] > 9:
                                    revert with 0, 33
                                if arg3 >= 32:
                                    revert with 0, 50
                                if stor18[arg3] == 3:
                                    if uint8(arg5) >= 17:
                                        revert with 0, 50
                                    if arg3 >= 32:
                                        revert with 0, 50
                                    if uint8(arg4) >= 17:
                                        revert with 0, 50
                                    require ext_code.size(stor19[arg3])
                                    staticcall stor19[arg3].get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                                            gas gas_remaining wei
                                           args ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg3'))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg3'))))))), ext_call.return_data[0]
                                else:
                                    if stor18[arg3] > 9:
                                        revert with 0, 33
                                    if arg3 >= 32:
                                        revert with 0, 50
                                    if stor18[arg3] == 4:
                                        if uint8(arg5) >= 17:
                                            revert with 0, 50
                                        if arg3 >= 32:
                                            revert with 0, 50
                                        if uint8(arg4) >= 17:
                                            revert with 0, 50
                                        require ext_code.size(stor19[arg3])
                                        staticcall stor19[arg3].calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                                gas gas_remaining wei
                                               args uint8(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 248), uint8(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 248), ext_call.return_data[0]
                                    else:
                                        if stor18[arg3] > 9:
                                            revert with 0, 33
                                        if arg3 >= 32:
                                            revert with 0, 50
                                        if stor18[arg3] == 5:
                                            if uint8(arg5) >= 17:
                                                revert with 0, 50
                                            if arg3 >= 32:
                                                revert with 0, 50
                                            if uint8(arg4) >= 17:
                                                revert with 0, 50
                                            require ext_code.size(stor19[arg3])
                                            staticcall stor19[arg3].calculateSwapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args uint8(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 248), uint8(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 248), ext_call.return_data[0]
                                        else:
                                            if stor18[arg3] > 9:
                                                revert with 0, 33
                                            if stor18[arg3] != 8:
                                                revert with 0, 'Wrong Exchange'
                                            if arg3 >= 32:
                                                revert with 0, 50
                                            if uint8(arg5) >= 17:
                                                revert with 0, 50
                                            if arg3 >= 32:
                                                revert with 0, 50
                                            if uint8(arg4) >= 17:
                                                revert with 0, 50
                                            require ext_code.size(stor19[arg3])
                                            staticcall stor19[arg3].getSwapAmount(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                                    gas gas_remaining wei
                                                   args uint128(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 128), uint128(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 128), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return arg6 <= ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 96] = 2
                        if uint8(arg5) >= 17:
                            revert with 0, 50
                        mem[ceil32(return_data.size) + 128] = stor1[uint8(arg5)]
                        if uint8(arg4) >= 17:
                            revert with 0, 50
                        mem[ceil32(return_data.size) + 160] = stor1[uint8(arg4)]
                        if arg3 >= 32:
                            revert with 0, 50
                        mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 228] = 64
                        mem[ceil32(return_data.size) + 260] = 2
                        idx = 0
                        s = ceil32(return_data.size) + 128
                        t = ceil32(return_data.size) + 292
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor19[arg3])
                        staticcall stor19[arg3].getAmountsOut(uint256 arg1, address[] arg2) with:
                                gas gas_remaining wei
                               args ext_call.return_data[0], Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _343 = mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 223 < ceil32(return_data.size) + return_data.size + 192
                        _349 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                            revert with 0, 65
                        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                        mem[(2 * ceil32(return_data.size)) + 192] = _349
                        require return_data.size >= _343 + (32 * _349) + 32
                        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _349] = mem[ceil32(return_data.size) + _343 + 224 len 32 * _349]
                        if 1 >= _349:
                            revert with 0, 50
        mem[mem[64]] = arg6 <= mem[(2 * ceil32(return_data.size)) + 256]
    else:
        mem[96] = 2
        if uint8(arg4) >= 17:
            revert with 0, 50
        mem[128] = stor1[uint8(arg4)]
        if uint8(arg5) >= 17:
            revert with 0, 50
        mem[160] = stor1[uint8(arg5)]
        if arg2 >= 32:
            revert with 0, 50
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = 64
        mem[260] = 2
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor19[arg2])
        staticcall stor19[arg2].getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _348 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
        _354 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require return_data.size >= _348 + (32 * _354) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _354] = mem[_348 + 224 len 32 * _354]
        if 1 >= _354:
            revert with 0, 50
        _454 = mem[ceil32(return_data.size) + 256]
        if arg3 >= 32:
            revert with 0, 50
        if stor18[arg3] > 9:
            revert with 0, 33
        if stor18[arg3]:
            if arg3 >= 32:
                revert with 0, 50
            if stor18[arg3] > 9:
                revert with 0, 33
            if arg3 >= 32:
                revert with 0, 50
            if stor18[arg3] == 2:
                if uint8(arg5) >= 17:
                    revert with 0, 50
                if arg3 >= 32:
                    revert with 0, 50
                if uint8(arg4) >= 17:
                    revert with 0, 50
                mem[mem[64] + 4] = ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg3')))))))
                mem[mem[64] + 36] = ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg3')))))))
                mem[mem[64] + 68] = _454
                require ext_code.size(stor19[arg3])
                staticcall stor19[arg3].get_dy(int128 arg1, int128 arg2, uint256 arg3) with:
                        gas gas_remaining wei
                       args ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg3'))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg3'))))))), _454
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _474 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                mem[mem[64]] = arg6 <= mem[_474]
            else:
                if stor18[arg3] > 9:
                    revert with 0, 33
                if arg3 >= 32:
                    revert with 0, 50
                if stor18[arg3] == 3:
                    if uint8(arg5) >= 17:
                        revert with 0, 50
                    if arg3 >= 32:
                        revert with 0, 50
                    if uint8(arg4) >= 17:
                        revert with 0, 50
                    mem[mem[64] + 4] = ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg3')))))))
                    mem[mem[64] + 36] = ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg3')))))))
                    mem[mem[64] + 68] = _454
                    require ext_code.size(stor19[arg3])
                    staticcall stor19[arg3].get_dy_underlying(int128 arg1, int128 arg2, uint256 arg3) with:
                            gas gas_remaining wei
                           args ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg5')), ('name', 'stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg5')), 2), ('mul', 11, ('param', 'arg3'))))))), ('signextend', 15, ('stor', ('array', ('mask_shl', 8, 0, 0, ('param', 'arg4')), ('name', 'stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)', ('add', 20, ('div', ('mask', 8, 0, ('param', 'arg4')), 2), ('mul', 11, ('param', 'arg3'))))))), _454
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _480 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[mem[64]] = arg6 <= mem[_480]
                else:
                    if stor18[arg3] > 9:
                        revert with 0, 33
                    if arg3 >= 32:
                        revert with 0, 50
                    if stor18[arg3] == 4:
                        if uint8(arg5) >= 17:
                            revert with 0, 50
                        if arg3 >= 32:
                            revert with 0, 50
                        if uint8(arg4) >= 17:
                            revert with 0, 50
                        mem[mem[64] + 4] = uint8(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_bool(arg5) << 7)
                        mem[mem[64] + 36] = uint8(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_bool(arg4) << 7)
                        mem[mem[64] + 68] = _454
                        require ext_code.size(stor19[arg3])
                        staticcall stor19[arg3].calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                gas gas_remaining wei
                               args uint8(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 248), uint8(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 248), _454
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _487 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        mem[mem[64]] = arg6 <= mem[_487]
                    else:
                        if stor18[arg3] > 9:
                            revert with 0, 33
                        if arg3 >= 32:
                            revert with 0, 50
                        if stor18[arg3] == 5:
                            if uint8(arg5) >= 17:
                                revert with 0, 50
                            if arg3 >= 32:
                                revert with 0, 50
                            if uint8(arg4) >= 17:
                                revert with 0, 50
                            mem[mem[64] + 4] = uint8(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_bool(arg5) << 7)
                            mem[mem[64] + 36] = uint8(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_bool(arg4) << 7)
                            mem[mem[64] + 68] = _454
                            require ext_code.size(stor19[arg3])
                            staticcall stor19[arg3].calculateSwapUnderlying(uint8 arg1, uint8 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args uint8(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 248), uint8(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 248), _454
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _495 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64]] = arg6 <= mem[_495]
                        else:
                            if stor18[arg3] > 9:
                                revert with 0, 33
                            if stor18[arg3] != 8:
                                revert with 0, 'Wrong Exchange'
                            if arg3 >= 32:
                                revert with 0, 50
                            if uint8(arg5) >= 17:
                                revert with 0, 50
                            if arg3 >= 32:
                                revert with 0, 50
                            if uint8(arg4) >= 17:
                                revert with 0, 50
                            mem[mem[64] + 4] = stor((Mask(7, 1, arg5) >> 1) + (11 * arg3) + 20)[uint8(arg5)]
                            mem[mem[64] + 36] = stor((Mask(7, 1, arg4) >> 1) + (11 * arg3) + 20)[uint8(arg4)]
                            mem[mem[64] + 68] = _454
                            require ext_code.size(stor19[arg3])
                            staticcall stor19[arg3].getSwapAmount(uint256 arg1, uint256 arg2, uint256 arg3) with:
                                    gas gas_remaining wei
                                   args uint128(stor[(uint8(arg5) / 2) + (11 * arg3) + 20].field_(bool(arg5) << 7) - 128), uint128(stor[(uint8(arg4) / 2) + (11 * arg3) + 20].field_(bool(arg4) << 7) - 128), _454
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _501 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            mem[mem[64]] = arg6 <= mem[_501]
        else:
            _465 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            if uint8(arg5) >= 17:
                revert with 0, 50
            if not mem[_465]:
                revert with 0, 50
            mem[_465 + 32] = stor1[uint8(arg5)]
            if uint8(arg4) >= 17:
                revert with 0, 50
            if 1 >= mem[_465]:
                revert with 0, 50
            mem[_465 + 64] = stor1[uint8(arg4)]
            if arg3 >= 32:
                revert with 0, 50
            mem[_465 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_465 + 100] = _454
            mem[_465 + 132] = 64
            mem[_465 + 164] = mem[_465]
            idx = 0
            s = _465 + 32
            t = _465 + 196
            while idx < mem[_465]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor19[arg3])
            staticcall stor19[arg3].mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _465 + (32 * mem[_465]) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _515 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _516 = mem[_515]
            require mem[_515] <= test266151307()
            require _515 + mem[_515] + 31 < _515 + return_data.size
            _517 = mem[_515 + mem[_515]]
            if mem[_515 + mem[_515]] > test266151307():
                revert with 0, 65
            if _515 + ceil32(return_data.size) + ceil32(32 * mem[_515 + mem[_515]]) + 1 > test266151307() or ceil32(32 * mem[_515 + mem[_515]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _515 + ceil32(return_data.size) + ceil32(32 * mem[_515 + mem[_515]]) + 1
            mem[_515 + ceil32(return_data.size)] = _517
            require return_data.size >= _516 + (32 * _517) + 32
            mem[_515 + ceil32(return_data.size) + 32 len 32 * _517] = mem[_515 + _516 + 32 len 32 * _517]
            if 1 >= _517:
                revert with 0, 50
            mem[mem[64]] = arg6 <= mem[_515 + ceil32(return_data.size) + 64]
    return memory
      from mem[64]
       len 32
}



}
