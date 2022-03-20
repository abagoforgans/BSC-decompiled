contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_cd886009(?) payable {
    require calldata.size - 4 >= 32
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0xaf99c0a61132583168ef6868898641126d93be18 != msg.sender:
                if 0x6b2615470a606dbc879e63d1cd212282504b6c8c != msg.sender:
                    revert with 0, 'E1'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_887e092b(?) {
    require calldata.size - 4 >= 64
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0xaf99c0a61132583168ef6868898641126d93be18 != msg.sender:
                if 0x6b2615470a606dbc879e63d1cd212282504b6c8c != msg.sender:
                    revert with 0, 'E1'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'fail to approve'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'fail to send token'
}

function sub_066df279(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7 != msg.sender:
        if 0xdc86c8e21e1e2301214652cef352c990a81c5a60 != msg.sender:
            if 0xaf99c0a61132583168ef6868898641126d93be18 != msg.sender:
                if 0x6b2615470a606dbc879e63d1cd212282504b6c8c != msg.sender:
                    revert with 0, 'E1'
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
}

function sub_e1a34d21(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if msg.sender == 0xe8dd23472f9cb963fdaee7c1fc3b6900c47c73f7:
        idx = 0
        while uint8(idx) < ('cd', 36).length:
            _1130 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            require uint8(idx) < ('cd', 36).length
            require uint8(idx) < ('cd', 36).length
            if Mask(4, 8, cd[((32 * uint8(idx)) + cd[36] + 36)]):
                require Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 12 < ('cd', 68).length
                require 0 < mem[_1130]
                mem[_1130 + 32] = address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)])
                require uint8(idx) < ('cd', 36).length
                require Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 16 < ('cd', 68).length
                require 1 < mem[_1130]
                mem[_1130 + 64] = address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)])
                require uint8(idx) < ('cd', 36).length
                require uint8(idx) < ('cd', 36).length
                if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 != 1:
                    if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 == 2:
                        require uint8(idx) < ('cd', 36).length
                        require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                        require 0 < mem[_1130]
                        if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            mem[_1130 + 96] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
                            mem[_1130 + 100] = 0
                            mem[_1130 + 164] = this.address
                            mem[_1130 + 196] = block.timestamp
                            mem[_1130 + 132] = 128
                            mem[_1130 + 228] = mem[_1130]
                            s = 0
                            while s < 32 * mem[_1130]:
                                mem[_1130 + s + 260] = mem[_1130 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                            call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x9cf68911 with:
                               value cd[4] wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp, mem[_1130 + 228 len (32 * mem[_1130]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1130 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _2527 = mem[_1130 + 96 len 4], 0
                            require mem[_1130 + 96 len 4], 0 <= 4294967296
                            require mem[_1130 + 96 len 4], 0 + 32 <= return_data.size
                            require mem[mem[_1130 + 96 len 4], 0 + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], 0 + (32 * mem[mem[_1130 + 96 len 4], 0 + _1130 + 96]) + 32 <= return_data.size
                            mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], 0 + _1130 + 96]
                            _2669 = mem[_2527 + _1130 + 96]
                            s = 0
                            while s < 32 * _2669:
                                mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2527 + _1130 + s + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2669) + _1130 + ceil32(return_data.size) + 128
                        else:
                            require 0 < mem[_1130]
                            require uint8(idx) < ('cd', 36).length
                            require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                            require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                            call address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'approve failed.'
                            require 1 < mem[_1130]
                            require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                            staticcall address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                mem[_1130 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1130 + 100] = ext_call.return_data[0]
                                mem[_1130 + 132] = 0
                                mem[_1130 + 196] = this.address
                                mem[_1130 + 228] = block.timestamp
                                mem[_1130 + 164] = 160
                                mem[_1130 + 260] = mem[_1130]
                                s = 0
                                while s < 32 * mem[_1130]:
                                    mem[_1130 + s + 292] = mem[_1130 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1130 + 260 len (32 * mem[_1130]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1130 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2523 = mem[_1130 + 96 len 4], ext_call.return_data[0 len 28]
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]) + 32 <= return_data.size
                                mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]
                                _2667 = mem[_2523 + _1130 + 96]
                                s = 0
                                while s < 32 * _2667:
                                    mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2523 + _1130 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2667) + _1130 + ceil32(return_data.size) + 128
                            else:
                                mem[_1130 + 96] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                                mem[_1130 + 100] = ext_call.return_data[0]
                                mem[_1130 + 132] = 0
                                mem[_1130 + 196] = this.address
                                mem[_1130 + 228] = block.timestamp
                                mem[_1130 + 164] = 160
                                mem[_1130 + 260] = mem[_1130]
                                s = 0
                                while s < 32 * mem[_1130]:
                                    mem[_1130 + s + 292] = mem[_1130 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x5d616c5b with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1130 + 260 len (32 * mem[_1130]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1130 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2525 = mem[_1130 + 96 len 4], ext_call.return_data[0 len 28]
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]) + 32 <= return_data.size
                                mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]
                                _2668 = mem[_2525 + _1130 + 96]
                                s = 0
                                while s < 32 * _2668:
                                    mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2525 + _1130 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2668) + _1130 + ceil32(return_data.size) + 128
                else:
                    require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                    require 0 < mem[_1130]
                    if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                        mem[_1130 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[_1130 + 100] = 0
                        mem[_1130 + 164] = this.address
                        mem[_1130 + 196] = block.timestamp
                        mem[_1130 + 132] = 128
                        mem[_1130 + 228] = mem[_1130]
                        s = 0
                        while s < 32 * mem[_1130]:
                            mem[_1130 + s + 260] = mem[_1130 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                           value cd[4] wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp, mem[_1130 + 228 len (32 * mem[_1130]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1130 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2529 = mem[_1130 + 96 len 4], 0
                        require mem[_1130 + 96 len 4], 0 <= 4294967296
                        require mem[_1130 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[mem[_1130 + 96 len 4], 0 + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], 0 + (32 * mem[mem[_1130 + 96 len 4], 0 + _1130 + 96]) + 32 <= return_data.size
                        mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], 0 + _1130 + 96]
                        _2670 = mem[_2529 + _1130 + 96]
                        s = 0
                        while s < 32 * _2670:
                            mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2529 + _1130 + s + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2670) + _1130 + ceil32(return_data.size) + 128
                    else:
                        require 0 < mem[_1130]
                        if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            mem[_1130 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_1130 + 100] = 0
                            mem[_1130 + 164] = this.address
                            mem[_1130 + 196] = block.timestamp
                            mem[_1130 + 132] = 128
                            mem[_1130 + 228] = mem[_1130]
                            s = 0
                            while s < 32 * mem[_1130]:
                                mem[_1130 + s + 260] = mem[_1130 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                            call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                               value cd[4] wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp, mem[_1130 + 228 len (32 * mem[_1130]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1130 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _2537 = mem[_1130 + 96 len 4], 0
                            require mem[_1130 + 96 len 4], 0 <= 4294967296
                            require mem[_1130 + 96 len 4], 0 + 32 <= return_data.size
                            require mem[mem[_1130 + 96 len 4], 0 + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], 0 + (32 * mem[mem[_1130 + 96 len 4], 0 + _1130 + 96]) + 32 <= return_data.size
                            mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], 0 + _1130 + 96]
                            _2674 = mem[_2537 + _1130 + 96]
                            s = 0
                            while s < 32 * _2674:
                                mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2537 + _1130 + s + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2674) + _1130 + ceil32(return_data.size) + 128
                            s = floor32(_2674) + 1
                            continue 
                        require 0 < mem[_1130]
                        require uint8(idx) < ('cd', 36).length
                        require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                        require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                        call address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'approve failed.'
                        require 1 < mem[_1130]
                        if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                            require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                            staticcall address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1130 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[_1130 + 100] = ext_call.return_data[0]
                            mem[_1130 + 132] = 0
                            mem[_1130 + 196] = this.address
                            mem[_1130 + 228] = block.timestamp
                            mem[_1130 + 164] = 160
                            mem[_1130 + 260] = mem[_1130]
                            s = 0
                            while s < 32 * mem[_1130]:
                                mem[_1130 + s + 292] = mem[_1130 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                            call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1130 + 260 len (32 * mem[_1130]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1130 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _2531 = mem[_1130 + 96 len 4], ext_call.return_data[0 len 28]
                            require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]) + 32 <= return_data.size
                            mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]
                            _2671 = mem[_2531 + _1130 + 96]
                            s = 0
                            while s < 32 * _2671:
                                mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2531 + _1130 + s + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2671) + _1130 + ceil32(return_data.size) + 128
                        else:
                            require 1 < mem[_1130]
                            require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                            staticcall address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                mem[_1130 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1130 + 100] = ext_call.return_data[0]
                                mem[_1130 + 132] = 0
                                mem[_1130 + 196] = this.address
                                mem[_1130 + 228] = block.timestamp
                                mem[_1130 + 164] = 160
                                mem[_1130 + 260] = mem[_1130]
                                s = 0
                                while s < 32 * mem[_1130]:
                                    mem[_1130 + s + 292] = mem[_1130 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1130 + 260 len (32 * mem[_1130]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1130 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2533 = mem[_1130 + 96 len 4], ext_call.return_data[0 len 28]
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]) + 32 <= return_data.size
                                mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]
                                _2672 = mem[_2533 + _1130 + 96]
                                s = 0
                                while s < 32 * _2672:
                                    mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2533 + _1130 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2672) + _1130 + ceil32(return_data.size) + 128
                            else:
                                mem[_1130 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[_1130 + 100] = ext_call.return_data[0]
                                mem[_1130 + 132] = 0
                                mem[_1130 + 196] = this.address
                                mem[_1130 + 228] = block.timestamp
                                mem[_1130 + 164] = 160
                                mem[_1130 + 260] = mem[_1130]
                                s = 0
                                while s < 32 * mem[_1130]:
                                    mem[_1130 + s + 292] = mem[_1130 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1130 + 260 len (32 * mem[_1130]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1130 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2535 = mem[_1130 + 96 len 4], ext_call.return_data[0 len 28]
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]) + 32 <= return_data.size
                                mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]
                                _2673 = mem[_2535 + _1130 + 96]
                                s = 0
                                while s < 32 * _2673:
                                    mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2535 + _1130 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2673) + _1130 + ceil32(return_data.size) + 128
            else:
                require Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 16 < ('cd', 68).length
                require 0 < mem[_1130]
                mem[_1130 + 32] = address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)])
                require uint8(idx) < ('cd', 36).length
                require Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 12 < ('cd', 68).length
                require 1 < mem[_1130]
                mem[_1130 + 64] = address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)])
                require uint8(idx) < ('cd', 36).length
                require uint8(idx) < ('cd', 36).length
                if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 != 1:
                    if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 == 2:
                        require uint8(idx) < ('cd', 36).length
                        require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                        require 0 < mem[_1130]
                        if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            mem[_1130 + 96] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
                            mem[_1130 + 100] = 0
                            mem[_1130 + 164] = this.address
                            mem[_1130 + 196] = block.timestamp
                            mem[_1130 + 132] = 128
                            mem[_1130 + 228] = mem[_1130]
                            s = 0
                            while s < 32 * mem[_1130]:
                                mem[_1130 + s + 260] = mem[_1130 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                            call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x9cf68911 with:
                               value cd[4] wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp, mem[_1130 + 228 len (32 * mem[_1130]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1130 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _2543 = mem[_1130 + 96 len 4], 0
                            require mem[_1130 + 96 len 4], 0 <= 4294967296
                            require mem[_1130 + 96 len 4], 0 + 32 <= return_data.size
                            require mem[mem[_1130 + 96 len 4], 0 + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], 0 + (32 * mem[mem[_1130 + 96 len 4], 0 + _1130 + 96]) + 32 <= return_data.size
                            mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], 0 + _1130 + 96]
                            _2677 = mem[_2543 + _1130 + 96]
                            s = 0
                            while s < 32 * _2677:
                                mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2543 + _1130 + s + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2677) + _1130 + ceil32(return_data.size) + 128
                        else:
                            require 0 < mem[_1130]
                            require uint8(idx) < ('cd', 36).length
                            require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                            require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                            call address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'approve failed.'
                            require 1 < mem[_1130]
                            require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                            staticcall address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                mem[_1130 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1130 + 100] = ext_call.return_data[0]
                                mem[_1130 + 132] = 0
                                mem[_1130 + 196] = this.address
                                mem[_1130 + 228] = block.timestamp
                                mem[_1130 + 164] = 160
                                mem[_1130 + 260] = mem[_1130]
                                s = 0
                                while s < 32 * mem[_1130]:
                                    mem[_1130 + s + 292] = mem[_1130 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1130 + 260 len (32 * mem[_1130]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1130 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2539 = mem[_1130 + 96 len 4], ext_call.return_data[0 len 28]
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]) + 32 <= return_data.size
                                mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]
                                _2675 = mem[_2539 + _1130 + 96]
                                s = 0
                                while s < 32 * _2675:
                                    mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2539 + _1130 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2675) + _1130 + ceil32(return_data.size) + 128
                            else:
                                mem[_1130 + 96] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                                mem[_1130 + 100] = ext_call.return_data[0]
                                mem[_1130 + 132] = 0
                                mem[_1130 + 196] = this.address
                                mem[_1130 + 228] = block.timestamp
                                mem[_1130 + 164] = 160
                                mem[_1130 + 260] = mem[_1130]
                                s = 0
                                while s < 32 * mem[_1130]:
                                    mem[_1130 + s + 292] = mem[_1130 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x5d616c5b with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1130 + 260 len (32 * mem[_1130]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1130 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2541 = mem[_1130 + 96 len 4], ext_call.return_data[0 len 28]
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]) + 32 <= return_data.size
                                mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]
                                _2676 = mem[_2541 + _1130 + 96]
                                s = 0
                                while s < 32 * _2676:
                                    mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2541 + _1130 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2676) + _1130 + ceil32(return_data.size) + 128
                else:
                    require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                    require 0 < mem[_1130]
                    if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                        mem[_1130 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                        mem[_1130 + 100] = 0
                        mem[_1130 + 164] = this.address
                        mem[_1130 + 196] = block.timestamp
                        mem[_1130 + 132] = 128
                        mem[_1130 + 228] = mem[_1130]
                        s = 0
                        while s < 32 * mem[_1130]:
                            mem[_1130 + s + 260] = mem[_1130 + s + 32]
                            s = s + 32
                            continue 
                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                           value cd[4] wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp, mem[_1130 + 228 len (32 * mem[_1130]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1130 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        _2545 = mem[_1130 + 96 len 4], 0
                        require mem[_1130 + 96 len 4], 0 <= 4294967296
                        require mem[_1130 + 96 len 4], 0 + 32 <= return_data.size
                        require mem[mem[_1130 + 96 len 4], 0 + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], 0 + (32 * mem[mem[_1130 + 96 len 4], 0 + _1130 + 96]) + 32 <= return_data.size
                        mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], 0 + _1130 + 96]
                        _2678 = mem[_2545 + _1130 + 96]
                        s = 0
                        while s < 32 * _2678:
                            mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2545 + _1130 + s + 128]
                            s = s + 32
                            continue 
                        mem[64] = (32 * _2678) + _1130 + ceil32(return_data.size) + 128
                    else:
                        require 0 < mem[_1130]
                        if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                            mem[_1130 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_1130 + 100] = 0
                            mem[_1130 + 164] = this.address
                            mem[_1130 + 196] = block.timestamp
                            mem[_1130 + 132] = 128
                            mem[_1130 + 228] = mem[_1130]
                            s = 0
                            while s < 32 * mem[_1130]:
                                mem[_1130 + s + 260] = mem[_1130 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                            call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                               value cd[4] wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp, mem[_1130 + 228 len (32 * mem[_1130]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1130 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _2553 = mem[_1130 + 96 len 4], 0
                            require mem[_1130 + 96 len 4], 0 <= 4294967296
                            require mem[_1130 + 96 len 4], 0 + 32 <= return_data.size
                            require mem[mem[_1130 + 96 len 4], 0 + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], 0 + (32 * mem[mem[_1130 + 96 len 4], 0 + _1130 + 96]) + 32 <= return_data.size
                            mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], 0 + _1130 + 96]
                            _2682 = mem[_2553 + _1130 + 96]
                            s = 0
                            while s < 32 * _2682:
                                mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2553 + _1130 + s + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2682) + _1130 + ceil32(return_data.size) + 128
                            s = floor32(_2682) + 1
                            continue 
                        require 0 < mem[_1130]
                        require uint8(idx) < ('cd', 36).length
                        require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                        require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                        call address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'approve failed.'
                        require 1 < mem[_1130]
                        if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                            require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                            staticcall address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_1130 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                            mem[_1130 + 100] = ext_call.return_data[0]
                            mem[_1130 + 132] = 0
                            mem[_1130 + 196] = this.address
                            mem[_1130 + 228] = block.timestamp
                            mem[_1130 + 164] = 160
                            mem[_1130 + 260] = mem[_1130]
                            s = 0
                            while s < 32 * mem[_1130]:
                                mem[_1130 + s + 292] = mem[_1130 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                            call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1130 + 260 len (32 * mem[_1130]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1130 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _2547 = mem[_1130 + 96 len 4], ext_call.return_data[0 len 28]
                            require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]) + 32 <= return_data.size
                            mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]
                            _2679 = mem[_2547 + _1130 + 96]
                            s = 0
                            while s < 32 * _2679:
                                mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2547 + _1130 + s + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2679) + _1130 + ceil32(return_data.size) + 128
                        else:
                            require 1 < mem[_1130]
                            require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                            staticcall address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                mem[_1130 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1130 + 100] = ext_call.return_data[0]
                                mem[_1130 + 132] = 0
                                mem[_1130 + 196] = this.address
                                mem[_1130 + 228] = block.timestamp
                                mem[_1130 + 164] = 160
                                mem[_1130 + 260] = mem[_1130]
                                s = 0
                                while s < 32 * mem[_1130]:
                                    mem[_1130 + s + 292] = mem[_1130 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1130 + 260 len (32 * mem[_1130]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1130 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2549 = mem[_1130 + 96 len 4], ext_call.return_data[0 len 28]
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]) + 32 <= return_data.size
                                mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]
                                _2680 = mem[_2549 + _1130 + 96]
                                s = 0
                                while s < 32 * _2680:
                                    mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2549 + _1130 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2680) + _1130 + ceil32(return_data.size) + 128
                            else:
                                mem[_1130 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[_1130 + 100] = ext_call.return_data[0]
                                mem[_1130 + 132] = 0
                                mem[_1130 + 196] = this.address
                                mem[_1130 + 228] = block.timestamp
                                mem[_1130 + 164] = 160
                                mem[_1130 + 260] = mem[_1130]
                                s = 0
                                while s < 32 * mem[_1130]:
                                    mem[_1130 + s + 292] = mem[_1130 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1130 + 260 len (32 * mem[_1130]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1130 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1130 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2551 = mem[_1130 + 96 len 4], ext_call.return_data[0 len 28]
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96] <= 4294967296 and mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]) + 32 <= return_data.size
                                mem[_1130 + ceil32(return_data.size) + 96] = mem[mem[_1130 + 96 len 4], ext_call.return_data[0 len 28] + _1130 + 96]
                                _2681 = mem[_2551 + _1130 + 96]
                                s = 0
                                while s < 32 * _2681:
                                    mem[_1130 + ceil32(return_data.size) + s + 128] = mem[_2551 + _1130 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2681) + _1130 + ceil32(return_data.size) + 128
            idx = idx + 1
            continue 
    else:
        if msg.sender == 0xdc86c8e21e1e2301214652cef352c990a81c5a60:
            idx = 0
            while uint8(idx) < ('cd', 36).length:
                _1127 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                require uint8(idx) < ('cd', 36).length
                require uint8(idx) < ('cd', 36).length
                if Mask(4, 8, cd[((32 * uint8(idx)) + cd[36] + 36)]):
                    require Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 12 < ('cd', 68).length
                    require 0 < mem[_1127]
                    mem[_1127 + 32] = address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)])
                    require uint8(idx) < ('cd', 36).length
                    require Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 16 < ('cd', 68).length
                    require 1 < mem[_1127]
                    mem[_1127 + 64] = address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)])
                    require uint8(idx) < ('cd', 36).length
                    require uint8(idx) < ('cd', 36).length
                    if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 != 1:
                        if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 == 2:
                            require uint8(idx) < ('cd', 36).length
                            require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                            require 0 < mem[_1127]
                            if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                mem[_1127 + 96] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
                                mem[_1127 + 100] = 0
                                mem[_1127 + 164] = this.address
                                mem[_1127 + 196] = block.timestamp
                                mem[_1127 + 132] = 128
                                mem[_1127 + 228] = mem[_1127]
                                s = 0
                                while s < 32 * mem[_1127]:
                                    mem[_1127 + s + 260] = mem[_1127 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x9cf68911 with:
                                   value cd[4] wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp, mem[_1127 + 228 len (32 * mem[_1127]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1127 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2495 = mem[_1127 + 96 len 4], 0
                                require mem[_1127 + 96 len 4], 0 <= 4294967296
                                require mem[_1127 + 96 len 4], 0 + 32 <= return_data.size
                                require mem[mem[_1127 + 96 len 4], 0 + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], 0 + (32 * mem[mem[_1127 + 96 len 4], 0 + _1127 + 96]) + 32 <= return_data.size
                                mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], 0 + _1127 + 96]
                                _2653 = mem[_2495 + _1127 + 96]
                                s = 0
                                while s < 32 * _2653:
                                    mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2495 + _1127 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2653) + _1127 + ceil32(return_data.size) + 128
                            else:
                                require 0 < mem[_1127]
                                require uint8(idx) < ('cd', 36).length
                                require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                                require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'approve failed.'
                                require 1 < mem[_1127]
                                require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                                staticcall address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    mem[_1127 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1127 + 100] = ext_call.return_data[0]
                                    mem[_1127 + 132] = 0
                                    mem[_1127 + 196] = this.address
                                    mem[_1127 + 228] = block.timestamp
                                    mem[_1127 + 164] = 160
                                    mem[_1127 + 260] = mem[_1127]
                                    s = 0
                                    while s < 32 * mem[_1127]:
                                        mem[_1127 + s + 292] = mem[_1127 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1127 + 260 len (32 * mem[_1127]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1127 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2491 = mem[_1127 + 96 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]) + 32 <= return_data.size
                                    mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]
                                    _2651 = mem[_2491 + _1127 + 96]
                                    s = 0
                                    while s < 32 * _2651:
                                        mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2491 + _1127 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2651) + _1127 + ceil32(return_data.size) + 128
                                else:
                                    mem[_1127 + 96] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                                    mem[_1127 + 100] = ext_call.return_data[0]
                                    mem[_1127 + 132] = 0
                                    mem[_1127 + 196] = this.address
                                    mem[_1127 + 228] = block.timestamp
                                    mem[_1127 + 164] = 160
                                    mem[_1127 + 260] = mem[_1127]
                                    s = 0
                                    while s < 32 * mem[_1127]:
                                        mem[_1127 + s + 292] = mem[_1127 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x5d616c5b with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1127 + 260 len (32 * mem[_1127]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1127 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2493 = mem[_1127 + 96 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]) + 32 <= return_data.size
                                    mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]
                                    _2652 = mem[_2493 + _1127 + 96]
                                    s = 0
                                    while s < 32 * _2652:
                                        mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2493 + _1127 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2652) + _1127 + ceil32(return_data.size) + 128
                    else:
                        require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                        require 0 < mem[_1127]
                        if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                            mem[_1127 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_1127 + 100] = 0
                            mem[_1127 + 164] = this.address
                            mem[_1127 + 196] = block.timestamp
                            mem[_1127 + 132] = 128
                            mem[_1127 + 228] = mem[_1127]
                            s = 0
                            while s < 32 * mem[_1127]:
                                mem[_1127 + s + 260] = mem[_1127 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                            call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                               value cd[4] wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp, mem[_1127 + 228 len (32 * mem[_1127]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1127 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _2497 = mem[_1127 + 96 len 4], 0
                            require mem[_1127 + 96 len 4], 0 <= 4294967296
                            require mem[_1127 + 96 len 4], 0 + 32 <= return_data.size
                            require mem[mem[_1127 + 96 len 4], 0 + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], 0 + (32 * mem[mem[_1127 + 96 len 4], 0 + _1127 + 96]) + 32 <= return_data.size
                            mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], 0 + _1127 + 96]
                            _2654 = mem[_2497 + _1127 + 96]
                            s = 0
                            while s < 32 * _2654:
                                mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2497 + _1127 + s + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2654) + _1127 + ceil32(return_data.size) + 128
                        else:
                            require 0 < mem[_1127]
                            if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                mem[_1127 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_1127 + 100] = 0
                                mem[_1127 + 164] = this.address
                                mem[_1127 + 196] = block.timestamp
                                mem[_1127 + 132] = 128
                                mem[_1127 + 228] = mem[_1127]
                                s = 0
                                while s < 32 * mem[_1127]:
                                    mem[_1127 + s + 260] = mem[_1127 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value cd[4] wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp, mem[_1127 + 228 len (32 * mem[_1127]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1127 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2505 = mem[_1127 + 96 len 4], 0
                                require mem[_1127 + 96 len 4], 0 <= 4294967296
                                require mem[_1127 + 96 len 4], 0 + 32 <= return_data.size
                                require mem[mem[_1127 + 96 len 4], 0 + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], 0 + (32 * mem[mem[_1127 + 96 len 4], 0 + _1127 + 96]) + 32 <= return_data.size
                                mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], 0 + _1127 + 96]
                                _2658 = mem[_2505 + _1127 + 96]
                                s = 0
                                while s < 32 * _2658:
                                    mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2505 + _1127 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2658) + _1127 + ceil32(return_data.size) + 128
                                s = floor32(_2658) + 1
                                continue 
                            require 0 < mem[_1127]
                            require uint8(idx) < ('cd', 36).length
                            require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                            require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                            call address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'approve failed.'
                            require 1 < mem[_1127]
                            if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                                staticcall address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_1127 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[_1127 + 100] = ext_call.return_data[0]
                                mem[_1127 + 132] = 0
                                mem[_1127 + 196] = this.address
                                mem[_1127 + 228] = block.timestamp
                                mem[_1127 + 164] = 160
                                mem[_1127 + 260] = mem[_1127]
                                s = 0
                                while s < 32 * mem[_1127]:
                                    mem[_1127 + s + 292] = mem[_1127 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1127 + 260 len (32 * mem[_1127]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1127 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2499 = mem[_1127 + 96 len 4], ext_call.return_data[0 len 28]
                                require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]) + 32 <= return_data.size
                                mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]
                                _2655 = mem[_2499 + _1127 + 96]
                                s = 0
                                while s < 32 * _2655:
                                    mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2499 + _1127 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2655) + _1127 + ceil32(return_data.size) + 128
                            else:
                                require 1 < mem[_1127]
                                require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                                staticcall address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    mem[_1127 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1127 + 100] = ext_call.return_data[0]
                                    mem[_1127 + 132] = 0
                                    mem[_1127 + 196] = this.address
                                    mem[_1127 + 228] = block.timestamp
                                    mem[_1127 + 164] = 160
                                    mem[_1127 + 260] = mem[_1127]
                                    s = 0
                                    while s < 32 * mem[_1127]:
                                        mem[_1127 + s + 292] = mem[_1127 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1127 + 260 len (32 * mem[_1127]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1127 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2501 = mem[_1127 + 96 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]) + 32 <= return_data.size
                                    mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]
                                    _2656 = mem[_2501 + _1127 + 96]
                                    s = 0
                                    while s < 32 * _2656:
                                        mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2501 + _1127 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2656) + _1127 + ceil32(return_data.size) + 128
                                else:
                                    mem[_1127 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[_1127 + 100] = ext_call.return_data[0]
                                    mem[_1127 + 132] = 0
                                    mem[_1127 + 196] = this.address
                                    mem[_1127 + 228] = block.timestamp
                                    mem[_1127 + 164] = 160
                                    mem[_1127 + 260] = mem[_1127]
                                    s = 0
                                    while s < 32 * mem[_1127]:
                                        mem[_1127 + s + 292] = mem[_1127 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1127 + 260 len (32 * mem[_1127]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1127 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2503 = mem[_1127 + 96 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]) + 32 <= return_data.size
                                    mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]
                                    _2657 = mem[_2503 + _1127 + 96]
                                    s = 0
                                    while s < 32 * _2657:
                                        mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2503 + _1127 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2657) + _1127 + ceil32(return_data.size) + 128
                else:
                    require Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 16 < ('cd', 68).length
                    require 0 < mem[_1127]
                    mem[_1127 + 32] = address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)])
                    require uint8(idx) < ('cd', 36).length
                    require Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 12 < ('cd', 68).length
                    require 1 < mem[_1127]
                    mem[_1127 + 64] = address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)])
                    require uint8(idx) < ('cd', 36).length
                    require uint8(idx) < ('cd', 36).length
                    if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 != 1:
                        if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 == 2:
                            require uint8(idx) < ('cd', 36).length
                            require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                            require 0 < mem[_1127]
                            if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                mem[_1127 + 96] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
                                mem[_1127 + 100] = 0
                                mem[_1127 + 164] = this.address
                                mem[_1127 + 196] = block.timestamp
                                mem[_1127 + 132] = 128
                                mem[_1127 + 228] = mem[_1127]
                                s = 0
                                while s < 32 * mem[_1127]:
                                    mem[_1127 + s + 260] = mem[_1127 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x9cf68911 with:
                                   value cd[4] wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp, mem[_1127 + 228 len (32 * mem[_1127]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1127 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2511 = mem[_1127 + 96 len 4], 0
                                require mem[_1127 + 96 len 4], 0 <= 4294967296
                                require mem[_1127 + 96 len 4], 0 + 32 <= return_data.size
                                require mem[mem[_1127 + 96 len 4], 0 + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], 0 + (32 * mem[mem[_1127 + 96 len 4], 0 + _1127 + 96]) + 32 <= return_data.size
                                mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], 0 + _1127 + 96]
                                _2661 = mem[_2511 + _1127 + 96]
                                s = 0
                                while s < 32 * _2661:
                                    mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2511 + _1127 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2661) + _1127 + ceil32(return_data.size) + 128
                            else:
                                require 0 < mem[_1127]
                                require uint8(idx) < ('cd', 36).length
                                require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                                require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'approve failed.'
                                require 1 < mem[_1127]
                                require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                                staticcall address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    mem[_1127 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1127 + 100] = ext_call.return_data[0]
                                    mem[_1127 + 132] = 0
                                    mem[_1127 + 196] = this.address
                                    mem[_1127 + 228] = block.timestamp
                                    mem[_1127 + 164] = 160
                                    mem[_1127 + 260] = mem[_1127]
                                    s = 0
                                    while s < 32 * mem[_1127]:
                                        mem[_1127 + s + 292] = mem[_1127 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1127 + 260 len (32 * mem[_1127]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1127 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2507 = mem[_1127 + 96 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]) + 32 <= return_data.size
                                    mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]
                                    _2659 = mem[_2507 + _1127 + 96]
                                    s = 0
                                    while s < 32 * _2659:
                                        mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2507 + _1127 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2659) + _1127 + ceil32(return_data.size) + 128
                                else:
                                    mem[_1127 + 96] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                                    mem[_1127 + 100] = ext_call.return_data[0]
                                    mem[_1127 + 132] = 0
                                    mem[_1127 + 196] = this.address
                                    mem[_1127 + 228] = block.timestamp
                                    mem[_1127 + 164] = 160
                                    mem[_1127 + 260] = mem[_1127]
                                    s = 0
                                    while s < 32 * mem[_1127]:
                                        mem[_1127 + s + 292] = mem[_1127 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x5d616c5b with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1127 + 260 len (32 * mem[_1127]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1127 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2509 = mem[_1127 + 96 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]) + 32 <= return_data.size
                                    mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]
                                    _2660 = mem[_2509 + _1127 + 96]
                                    s = 0
                                    while s < 32 * _2660:
                                        mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2509 + _1127 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2660) + _1127 + ceil32(return_data.size) + 128
                    else:
                        require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                        require 0 < mem[_1127]
                        if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                            mem[_1127 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                            mem[_1127 + 100] = 0
                            mem[_1127 + 164] = this.address
                            mem[_1127 + 196] = block.timestamp
                            mem[_1127 + 132] = 128
                            mem[_1127 + 228] = mem[_1127]
                            s = 0
                            while s < 32 * mem[_1127]:
                                mem[_1127 + s + 260] = mem[_1127 + s + 32]
                                s = s + 32
                                continue 
                            require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                            call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                               value cd[4] wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp, mem[_1127 + 228 len (32 * mem[_1127]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _1127 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            _2513 = mem[_1127 + 96 len 4], 0
                            require mem[_1127 + 96 len 4], 0 <= 4294967296
                            require mem[_1127 + 96 len 4], 0 + 32 <= return_data.size
                            require mem[mem[_1127 + 96 len 4], 0 + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], 0 + (32 * mem[mem[_1127 + 96 len 4], 0 + _1127 + 96]) + 32 <= return_data.size
                            mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], 0 + _1127 + 96]
                            _2662 = mem[_2513 + _1127 + 96]
                            s = 0
                            while s < 32 * _2662:
                                mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2513 + _1127 + s + 128]
                                s = s + 32
                                continue 
                            mem[64] = (32 * _2662) + _1127 + ceil32(return_data.size) + 128
                        else:
                            require 0 < mem[_1127]
                            if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                mem[_1127 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_1127 + 100] = 0
                                mem[_1127 + 164] = this.address
                                mem[_1127 + 196] = block.timestamp
                                mem[_1127 + 132] = 128
                                mem[_1127 + 228] = mem[_1127]
                                s = 0
                                while s < 32 * mem[_1127]:
                                    mem[_1127 + s + 260] = mem[_1127 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value cd[4] wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp, mem[_1127 + 228 len (32 * mem[_1127]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1127 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2521 = mem[_1127 + 96 len 4], 0
                                require mem[_1127 + 96 len 4], 0 <= 4294967296
                                require mem[_1127 + 96 len 4], 0 + 32 <= return_data.size
                                require mem[mem[_1127 + 96 len 4], 0 + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], 0 + (32 * mem[mem[_1127 + 96 len 4], 0 + _1127 + 96]) + 32 <= return_data.size
                                mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], 0 + _1127 + 96]
                                _2666 = mem[_2521 + _1127 + 96]
                                s = 0
                                while s < 32 * _2666:
                                    mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2521 + _1127 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2666) + _1127 + ceil32(return_data.size) + 128
                                s = floor32(_2666) + 1
                                continue 
                            require 0 < mem[_1127]
                            require uint8(idx) < ('cd', 36).length
                            require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                            require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                            call address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'approve failed.'
                            require 1 < mem[_1127]
                            if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                                staticcall address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_1127 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                mem[_1127 + 100] = ext_call.return_data[0]
                                mem[_1127 + 132] = 0
                                mem[_1127 + 196] = this.address
                                mem[_1127 + 228] = block.timestamp
                                mem[_1127 + 164] = 160
                                mem[_1127 + 260] = mem[_1127]
                                s = 0
                                while s < 32 * mem[_1127]:
                                    mem[_1127 + s + 292] = mem[_1127 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1127 + 260 len (32 * mem[_1127]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1127 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2515 = mem[_1127 + 96 len 4], ext_call.return_data[0 len 28]
                                require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]) + 32 <= return_data.size
                                mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]
                                _2663 = mem[_2515 + _1127 + 96]
                                s = 0
                                while s < 32 * _2663:
                                    mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2515 + _1127 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2663) + _1127 + ceil32(return_data.size) + 128
                            else:
                                require 1 < mem[_1127]
                                require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                                staticcall address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    mem[_1127 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1127 + 100] = ext_call.return_data[0]
                                    mem[_1127 + 132] = 0
                                    mem[_1127 + 196] = this.address
                                    mem[_1127 + 228] = block.timestamp
                                    mem[_1127 + 164] = 160
                                    mem[_1127 + 260] = mem[_1127]
                                    s = 0
                                    while s < 32 * mem[_1127]:
                                        mem[_1127 + s + 292] = mem[_1127 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1127 + 260 len (32 * mem[_1127]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1127 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2517 = mem[_1127 + 96 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]) + 32 <= return_data.size
                                    mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]
                                    _2664 = mem[_2517 + _1127 + 96]
                                    s = 0
                                    while s < 32 * _2664:
                                        mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2517 + _1127 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2664) + _1127 + ceil32(return_data.size) + 128
                                else:
                                    mem[_1127 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[_1127 + 100] = ext_call.return_data[0]
                                    mem[_1127 + 132] = 0
                                    mem[_1127 + 196] = this.address
                                    mem[_1127 + 228] = block.timestamp
                                    mem[_1127 + 164] = 160
                                    mem[_1127 + 260] = mem[_1127]
                                    s = 0
                                    while s < 32 * mem[_1127]:
                                        mem[_1127 + s + 292] = mem[_1127 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1127 + 260 len (32 * mem[_1127]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1127 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1127 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2519 = mem[_1127 + 96 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96] <= 4294967296 and mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]) + 32 <= return_data.size
                                    mem[_1127 + ceil32(return_data.size) + 96] = mem[mem[_1127 + 96 len 4], ext_call.return_data[0 len 28] + _1127 + 96]
                                    _2665 = mem[_2519 + _1127 + 96]
                                    s = 0
                                    while s < 32 * _2665:
                                        mem[_1127 + ceil32(return_data.size) + s + 128] = mem[_2519 + _1127 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2665) + _1127 + ceil32(return_data.size) + 128
                idx = idx + 1
                continue 
        else:
            if msg.sender == 0xaf99c0a61132583168ef6868898641126d93be18:
                idx = 0
                while uint8(idx) < ('cd', 36).length:
                    _1124 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require uint8(idx) < ('cd', 36).length
                    require uint8(idx) < ('cd', 36).length
                    if Mask(4, 8, cd[((32 * uint8(idx)) + cd[36] + 36)]):
                        require Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 12 < ('cd', 68).length
                        require 0 < mem[_1124]
                        mem[_1124 + 32] = address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)])
                        require uint8(idx) < ('cd', 36).length
                        require Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 16 < ('cd', 68).length
                        require 1 < mem[_1124]
                        mem[_1124 + 64] = address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)])
                        require uint8(idx) < ('cd', 36).length
                        require uint8(idx) < ('cd', 36).length
                        if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 != 1:
                            if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 == 2:
                                require uint8(idx) < ('cd', 36).length
                                require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                                require 0 < mem[_1124]
                                if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    mem[_1124 + 96] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
                                    mem[_1124 + 100] = 0
                                    mem[_1124 + 164] = this.address
                                    mem[_1124 + 196] = block.timestamp
                                    mem[_1124 + 132] = 128
                                    mem[_1124 + 228] = mem[_1124]
                                    s = 0
                                    while s < 32 * mem[_1124]:
                                        mem[_1124 + s + 260] = mem[_1124 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x9cf68911 with:
                                       value cd[4] wei
                                         gas gas_remaining wei
                                        args 0, 128, address(this.address), block.timestamp, mem[_1124 + 228 len (32 * mem[_1124]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1124 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2463 = mem[_1124 + 96 len 4], 0
                                    require mem[_1124 + 96 len 4], 0 <= 4294967296
                                    require mem[_1124 + 96 len 4], 0 + 32 <= return_data.size
                                    require mem[mem[_1124 + 96 len 4], 0 + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], 0 + (32 * mem[mem[_1124 + 96 len 4], 0 + _1124 + 96]) + 32 <= return_data.size
                                    mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], 0 + _1124 + 96]
                                    _2637 = mem[_2463 + _1124 + 96]
                                    s = 0
                                    while s < 32 * _2637:
                                        mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2463 + _1124 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2637) + _1124 + ceil32(return_data.size) + 128
                                else:
                                    require 0 < mem[_1124]
                                    require uint8(idx) < ('cd', 36).length
                                    require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                                    require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'approve failed.'
                                    require 1 < mem[_1124]
                                    require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                                    staticcall address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                        mem[_1124 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1124 + 100] = ext_call.return_data[0]
                                        mem[_1124 + 132] = 0
                                        mem[_1124 + 196] = this.address
                                        mem[_1124 + 228] = block.timestamp
                                        mem[_1124 + 164] = 160
                                        mem[_1124 + 260] = mem[_1124]
                                        s = 0
                                        while s < 32 * mem[_1124]:
                                            mem[_1124 + s + 292] = mem[_1124 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1124 + 260 len (32 * mem[_1124]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1124 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2459 = mem[_1124 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]) + 32 <= return_data.size
                                        mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]
                                        _2635 = mem[_2459 + _1124 + 96]
                                        s = 0
                                        while s < 32 * _2635:
                                            mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2459 + _1124 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2635) + _1124 + ceil32(return_data.size) + 128
                                    else:
                                        mem[_1124 + 96] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                                        mem[_1124 + 100] = ext_call.return_data[0]
                                        mem[_1124 + 132] = 0
                                        mem[_1124 + 196] = this.address
                                        mem[_1124 + 228] = block.timestamp
                                        mem[_1124 + 164] = 160
                                        mem[_1124 + 260] = mem[_1124]
                                        s = 0
                                        while s < 32 * mem[_1124]:
                                            mem[_1124 + s + 292] = mem[_1124 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x5d616c5b with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1124 + 260 len (32 * mem[_1124]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1124 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2461 = mem[_1124 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]) + 32 <= return_data.size
                                        mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]
                                        _2636 = mem[_2461 + _1124 + 96]
                                        s = 0
                                        while s < 32 * _2636:
                                            mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2461 + _1124 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2636) + _1124 + ceil32(return_data.size) + 128
                        else:
                            require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                            require 0 < mem[_1124]
                            if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                mem[_1124 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_1124 + 100] = 0
                                mem[_1124 + 164] = this.address
                                mem[_1124 + 196] = block.timestamp
                                mem[_1124 + 132] = 128
                                mem[_1124 + 228] = mem[_1124]
                                s = 0
                                while s < 32 * mem[_1124]:
                                    mem[_1124 + s + 260] = mem[_1124 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value cd[4] wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp, mem[_1124 + 228 len (32 * mem[_1124]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1124 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2465 = mem[_1124 + 96 len 4], 0
                                require mem[_1124 + 96 len 4], 0 <= 4294967296
                                require mem[_1124 + 96 len 4], 0 + 32 <= return_data.size
                                require mem[mem[_1124 + 96 len 4], 0 + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], 0 + (32 * mem[mem[_1124 + 96 len 4], 0 + _1124 + 96]) + 32 <= return_data.size
                                mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], 0 + _1124 + 96]
                                _2638 = mem[_2465 + _1124 + 96]
                                s = 0
                                while s < 32 * _2638:
                                    mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2465 + _1124 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2638) + _1124 + ceil32(return_data.size) + 128
                            else:
                                require 0 < mem[_1124]
                                if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    mem[_1124 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                    mem[_1124 + 100] = 0
                                    mem[_1124 + 164] = this.address
                                    mem[_1124 + 196] = block.timestamp
                                    mem[_1124 + 132] = 128
                                    mem[_1124 + 228] = mem[_1124]
                                    s = 0
                                    while s < 32 * mem[_1124]:
                                        mem[_1124 + s + 260] = mem[_1124 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value cd[4] wei
                                         gas gas_remaining wei
                                        args 0, 128, address(this.address), block.timestamp, mem[_1124 + 228 len (32 * mem[_1124]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1124 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2473 = mem[_1124 + 96 len 4], 0
                                    require mem[_1124 + 96 len 4], 0 <= 4294967296
                                    require mem[_1124 + 96 len 4], 0 + 32 <= return_data.size
                                    require mem[mem[_1124 + 96 len 4], 0 + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], 0 + (32 * mem[mem[_1124 + 96 len 4], 0 + _1124 + 96]) + 32 <= return_data.size
                                    mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], 0 + _1124 + 96]
                                    _2642 = mem[_2473 + _1124 + 96]
                                    s = 0
                                    while s < 32 * _2642:
                                        mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2473 + _1124 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2642) + _1124 + ceil32(return_data.size) + 128
                                    s = floor32(_2642) + 1
                                    continue 
                                require 0 < mem[_1124]
                                require uint8(idx) < ('cd', 36).length
                                require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                                require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'approve failed.'
                                require 1 < mem[_1124]
                                if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                    require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                                    staticcall address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_1124 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[_1124 + 100] = ext_call.return_data[0]
                                    mem[_1124 + 132] = 0
                                    mem[_1124 + 196] = this.address
                                    mem[_1124 + 228] = block.timestamp
                                    mem[_1124 + 164] = 160
                                    mem[_1124 + 260] = mem[_1124]
                                    s = 0
                                    while s < 32 * mem[_1124]:
                                        mem[_1124 + s + 292] = mem[_1124 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1124 + 260 len (32 * mem[_1124]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1124 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2467 = mem[_1124 + 96 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]) + 32 <= return_data.size
                                    mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]
                                    _2639 = mem[_2467 + _1124 + 96]
                                    s = 0
                                    while s < 32 * _2639:
                                        mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2467 + _1124 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2639) + _1124 + ceil32(return_data.size) + 128
                                else:
                                    require 1 < mem[_1124]
                                    require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                                    staticcall address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                        mem[_1124 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1124 + 100] = ext_call.return_data[0]
                                        mem[_1124 + 132] = 0
                                        mem[_1124 + 196] = this.address
                                        mem[_1124 + 228] = block.timestamp
                                        mem[_1124 + 164] = 160
                                        mem[_1124 + 260] = mem[_1124]
                                        s = 0
                                        while s < 32 * mem[_1124]:
                                            mem[_1124 + s + 292] = mem[_1124 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1124 + 260 len (32 * mem[_1124]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1124 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2469 = mem[_1124 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]) + 32 <= return_data.size
                                        mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]
                                        _2640 = mem[_2469 + _1124 + 96]
                                        s = 0
                                        while s < 32 * _2640:
                                            mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2469 + _1124 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2640) + _1124 + ceil32(return_data.size) + 128
                                    else:
                                        mem[_1124 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[_1124 + 100] = ext_call.return_data[0]
                                        mem[_1124 + 132] = 0
                                        mem[_1124 + 196] = this.address
                                        mem[_1124 + 228] = block.timestamp
                                        mem[_1124 + 164] = 160
                                        mem[_1124 + 260] = mem[_1124]
                                        s = 0
                                        while s < 32 * mem[_1124]:
                                            mem[_1124 + s + 292] = mem[_1124 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1124 + 260 len (32 * mem[_1124]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1124 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2471 = mem[_1124 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]) + 32 <= return_data.size
                                        mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]
                                        _2641 = mem[_2471 + _1124 + 96]
                                        s = 0
                                        while s < 32 * _2641:
                                            mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2471 + _1124 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2641) + _1124 + ceil32(return_data.size) + 128
                    else:
                        require Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 16 < ('cd', 68).length
                        require 0 < mem[_1124]
                        mem[_1124 + 32] = address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)])
                        require uint8(idx) < ('cd', 36).length
                        require Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 12 < ('cd', 68).length
                        require 1 < mem[_1124]
                        mem[_1124 + 64] = address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)])
                        require uint8(idx) < ('cd', 36).length
                        require uint8(idx) < ('cd', 36).length
                        if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 != 1:
                            if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 == 2:
                                require uint8(idx) < ('cd', 36).length
                                require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                                require 0 < mem[_1124]
                                if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    mem[_1124 + 96] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
                                    mem[_1124 + 100] = 0
                                    mem[_1124 + 164] = this.address
                                    mem[_1124 + 196] = block.timestamp
                                    mem[_1124 + 132] = 128
                                    mem[_1124 + 228] = mem[_1124]
                                    s = 0
                                    while s < 32 * mem[_1124]:
                                        mem[_1124 + s + 260] = mem[_1124 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x9cf68911 with:
                                       value cd[4] wei
                                         gas gas_remaining wei
                                        args 0, 128, address(this.address), block.timestamp, mem[_1124 + 228 len (32 * mem[_1124]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1124 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2479 = mem[_1124 + 96 len 4], 0
                                    require mem[_1124 + 96 len 4], 0 <= 4294967296
                                    require mem[_1124 + 96 len 4], 0 + 32 <= return_data.size
                                    require mem[mem[_1124 + 96 len 4], 0 + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], 0 + (32 * mem[mem[_1124 + 96 len 4], 0 + _1124 + 96]) + 32 <= return_data.size
                                    mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], 0 + _1124 + 96]
                                    _2645 = mem[_2479 + _1124 + 96]
                                    s = 0
                                    while s < 32 * _2645:
                                        mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2479 + _1124 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2645) + _1124 + ceil32(return_data.size) + 128
                                else:
                                    require 0 < mem[_1124]
                                    require uint8(idx) < ('cd', 36).length
                                    require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                                    require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'approve failed.'
                                    require 1 < mem[_1124]
                                    require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                                    staticcall address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                        mem[_1124 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1124 + 100] = ext_call.return_data[0]
                                        mem[_1124 + 132] = 0
                                        mem[_1124 + 196] = this.address
                                        mem[_1124 + 228] = block.timestamp
                                        mem[_1124 + 164] = 160
                                        mem[_1124 + 260] = mem[_1124]
                                        s = 0
                                        while s < 32 * mem[_1124]:
                                            mem[_1124 + s + 292] = mem[_1124 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1124 + 260 len (32 * mem[_1124]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1124 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2475 = mem[_1124 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]) + 32 <= return_data.size
                                        mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]
                                        _2643 = mem[_2475 + _1124 + 96]
                                        s = 0
                                        while s < 32 * _2643:
                                            mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2475 + _1124 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2643) + _1124 + ceil32(return_data.size) + 128
                                    else:
                                        mem[_1124 + 96] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                                        mem[_1124 + 100] = ext_call.return_data[0]
                                        mem[_1124 + 132] = 0
                                        mem[_1124 + 196] = this.address
                                        mem[_1124 + 228] = block.timestamp
                                        mem[_1124 + 164] = 160
                                        mem[_1124 + 260] = mem[_1124]
                                        s = 0
                                        while s < 32 * mem[_1124]:
                                            mem[_1124 + s + 292] = mem[_1124 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x5d616c5b with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1124 + 260 len (32 * mem[_1124]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1124 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2477 = mem[_1124 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]) + 32 <= return_data.size
                                        mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]
                                        _2644 = mem[_2477 + _1124 + 96]
                                        s = 0
                                        while s < 32 * _2644:
                                            mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2477 + _1124 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2644) + _1124 + ceil32(return_data.size) + 128
                        else:
                            require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                            require 0 < mem[_1124]
                            if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                mem[_1124 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_1124 + 100] = 0
                                mem[_1124 + 164] = this.address
                                mem[_1124 + 196] = block.timestamp
                                mem[_1124 + 132] = 128
                                mem[_1124 + 228] = mem[_1124]
                                s = 0
                                while s < 32 * mem[_1124]:
                                    mem[_1124 + s + 260] = mem[_1124 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value cd[4] wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp, mem[_1124 + 228 len (32 * mem[_1124]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1124 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2481 = mem[_1124 + 96 len 4], 0
                                require mem[_1124 + 96 len 4], 0 <= 4294967296
                                require mem[_1124 + 96 len 4], 0 + 32 <= return_data.size
                                require mem[mem[_1124 + 96 len 4], 0 + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], 0 + (32 * mem[mem[_1124 + 96 len 4], 0 + _1124 + 96]) + 32 <= return_data.size
                                mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], 0 + _1124 + 96]
                                _2646 = mem[_2481 + _1124 + 96]
                                s = 0
                                while s < 32 * _2646:
                                    mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2481 + _1124 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2646) + _1124 + ceil32(return_data.size) + 128
                            else:
                                require 0 < mem[_1124]
                                if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    mem[_1124 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                    mem[_1124 + 100] = 0
                                    mem[_1124 + 164] = this.address
                                    mem[_1124 + 196] = block.timestamp
                                    mem[_1124 + 132] = 128
                                    mem[_1124 + 228] = mem[_1124]
                                    s = 0
                                    while s < 32 * mem[_1124]:
                                        mem[_1124 + s + 260] = mem[_1124 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value cd[4] wei
                                         gas gas_remaining wei
                                        args 0, 128, address(this.address), block.timestamp, mem[_1124 + 228 len (32 * mem[_1124]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1124 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2489 = mem[_1124 + 96 len 4], 0
                                    require mem[_1124 + 96 len 4], 0 <= 4294967296
                                    require mem[_1124 + 96 len 4], 0 + 32 <= return_data.size
                                    require mem[mem[_1124 + 96 len 4], 0 + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], 0 + (32 * mem[mem[_1124 + 96 len 4], 0 + _1124 + 96]) + 32 <= return_data.size
                                    mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], 0 + _1124 + 96]
                                    _2650 = mem[_2489 + _1124 + 96]
                                    s = 0
                                    while s < 32 * _2650:
                                        mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2489 + _1124 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2650) + _1124 + ceil32(return_data.size) + 128
                                    s = floor32(_2650) + 1
                                    continue 
                                require 0 < mem[_1124]
                                require uint8(idx) < ('cd', 36).length
                                require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                                require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'approve failed.'
                                require 1 < mem[_1124]
                                if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                    require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                                    staticcall address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_1124 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[_1124 + 100] = ext_call.return_data[0]
                                    mem[_1124 + 132] = 0
                                    mem[_1124 + 196] = this.address
                                    mem[_1124 + 228] = block.timestamp
                                    mem[_1124 + 164] = 160
                                    mem[_1124 + 260] = mem[_1124]
                                    s = 0
                                    while s < 32 * mem[_1124]:
                                        mem[_1124 + s + 292] = mem[_1124 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1124 + 260 len (32 * mem[_1124]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1124 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2483 = mem[_1124 + 96 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]) + 32 <= return_data.size
                                    mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]
                                    _2647 = mem[_2483 + _1124 + 96]
                                    s = 0
                                    while s < 32 * _2647:
                                        mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2483 + _1124 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2647) + _1124 + ceil32(return_data.size) + 128
                                else:
                                    require 1 < mem[_1124]
                                    require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                                    staticcall address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                        mem[_1124 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1124 + 100] = ext_call.return_data[0]
                                        mem[_1124 + 132] = 0
                                        mem[_1124 + 196] = this.address
                                        mem[_1124 + 228] = block.timestamp
                                        mem[_1124 + 164] = 160
                                        mem[_1124 + 260] = mem[_1124]
                                        s = 0
                                        while s < 32 * mem[_1124]:
                                            mem[_1124 + s + 292] = mem[_1124 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1124 + 260 len (32 * mem[_1124]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1124 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2485 = mem[_1124 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]) + 32 <= return_data.size
                                        mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]
                                        _2648 = mem[_2485 + _1124 + 96]
                                        s = 0
                                        while s < 32 * _2648:
                                            mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2485 + _1124 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2648) + _1124 + ceil32(return_data.size) + 128
                                    else:
                                        mem[_1124 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[_1124 + 100] = ext_call.return_data[0]
                                        mem[_1124 + 132] = 0
                                        mem[_1124 + 196] = this.address
                                        mem[_1124 + 228] = block.timestamp
                                        mem[_1124 + 164] = 160
                                        mem[_1124 + 260] = mem[_1124]
                                        s = 0
                                        while s < 32 * mem[_1124]:
                                            mem[_1124 + s + 292] = mem[_1124 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1124 + 260 len (32 * mem[_1124]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1124 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1124 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2487 = mem[_1124 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96] <= 4294967296 and mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]) + 32 <= return_data.size
                                        mem[_1124 + ceil32(return_data.size) + 96] = mem[mem[_1124 + 96 len 4], ext_call.return_data[0 len 28] + _1124 + 96]
                                        _2649 = mem[_2487 + _1124 + 96]
                                        s = 0
                                        while s < 32 * _2649:
                                            mem[_1124 + ceil32(return_data.size) + s + 128] = mem[_2487 + _1124 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2649) + _1124 + ceil32(return_data.size) + 128
                    idx = idx + 1
                    continue 
            else:
                if 0x6b2615470a606dbc879e63d1cd212282504b6c8c != msg.sender:
                    revert with 0, 'E1'
                idx = 0
                while uint8(idx) < ('cd', 36).length:
                    _1121 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    require uint8(idx) < ('cd', 36).length
                    require uint8(idx) < ('cd', 36).length
                    if Mask(4, 8, cd[((32 * uint8(idx)) + cd[36] + 36)]):
                        require Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 12 < ('cd', 68).length
                        require 0 < mem[_1121]
                        mem[_1121 + 32] = address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)])
                        require uint8(idx) < ('cd', 36).length
                        require Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 16 < ('cd', 68).length
                        require 1 < mem[_1121]
                        mem[_1121 + 64] = address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)])
                        require uint8(idx) < ('cd', 36).length
                        require uint8(idx) < ('cd', 36).length
                        if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 != 1:
                            if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 == 2:
                                require uint8(idx) < ('cd', 36).length
                                require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                                require 0 < mem[_1121]
                                if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    mem[_1121 + 96] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
                                    mem[_1121 + 100] = 0
                                    mem[_1121 + 164] = this.address
                                    mem[_1121 + 196] = block.timestamp
                                    mem[_1121 + 132] = 128
                                    mem[_1121 + 228] = mem[_1121]
                                    s = 0
                                    while s < 32 * mem[_1121]:
                                        mem[_1121 + s + 260] = mem[_1121 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x9cf68911 with:
                                       value cd[4] wei
                                         gas gas_remaining wei
                                        args 0, 128, address(this.address), block.timestamp, mem[_1121 + 228 len (32 * mem[_1121]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1121 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2431 = mem[_1121 + 96 len 4], 0
                                    require mem[_1121 + 96 len 4], 0 <= 4294967296
                                    require mem[_1121 + 96 len 4], 0 + 32 <= return_data.size
                                    require mem[mem[_1121 + 96 len 4], 0 + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], 0 + (32 * mem[mem[_1121 + 96 len 4], 0 + _1121 + 96]) + 32 <= return_data.size
                                    mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], 0 + _1121 + 96]
                                    _2621 = mem[_2431 + _1121 + 96]
                                    s = 0
                                    while s < 32 * _2621:
                                        mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2431 + _1121 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2621) + _1121 + ceil32(return_data.size) + 128
                                else:
                                    require 0 < mem[_1121]
                                    require uint8(idx) < ('cd', 36).length
                                    require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                                    require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'approve failed.'
                                    require 1 < mem[_1121]
                                    require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                                    staticcall address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                        mem[_1121 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1121 + 100] = ext_call.return_data[0]
                                        mem[_1121 + 132] = 0
                                        mem[_1121 + 196] = this.address
                                        mem[_1121 + 228] = block.timestamp
                                        mem[_1121 + 164] = 160
                                        mem[_1121 + 260] = mem[_1121]
                                        s = 0
                                        while s < 32 * mem[_1121]:
                                            mem[_1121 + s + 292] = mem[_1121 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1121 + 260 len (32 * mem[_1121]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1121 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2427 = mem[_1121 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]) + 32 <= return_data.size
                                        mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]
                                        _2619 = mem[_2427 + _1121 + 96]
                                        s = 0
                                        while s < 32 * _2619:
                                            mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2427 + _1121 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2619) + _1121 + ceil32(return_data.size) + 128
                                    else:
                                        mem[_1121 + 96] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                                        mem[_1121 + 100] = ext_call.return_data[0]
                                        mem[_1121 + 132] = 0
                                        mem[_1121 + 196] = this.address
                                        mem[_1121 + 228] = block.timestamp
                                        mem[_1121 + 164] = 160
                                        mem[_1121 + 260] = mem[_1121]
                                        s = 0
                                        while s < 32 * mem[_1121]:
                                            mem[_1121 + s + 292] = mem[_1121 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x5d616c5b with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1121 + 260 len (32 * mem[_1121]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1121 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2429 = mem[_1121 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]) + 32 <= return_data.size
                                        mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]
                                        _2620 = mem[_2429 + _1121 + 96]
                                        s = 0
                                        while s < 32 * _2620:
                                            mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2429 + _1121 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2620) + _1121 + ceil32(return_data.size) + 128
                        else:
                            require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                            require 0 < mem[_1121]
                            if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                mem[_1121 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_1121 + 100] = 0
                                mem[_1121 + 164] = this.address
                                mem[_1121 + 196] = block.timestamp
                                mem[_1121 + 132] = 128
                                mem[_1121 + 228] = mem[_1121]
                                s = 0
                                while s < 32 * mem[_1121]:
                                    mem[_1121 + s + 260] = mem[_1121 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value cd[4] wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp, mem[_1121 + 228 len (32 * mem[_1121]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1121 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2433 = mem[_1121 + 96 len 4], 0
                                require mem[_1121 + 96 len 4], 0 <= 4294967296
                                require mem[_1121 + 96 len 4], 0 + 32 <= return_data.size
                                require mem[mem[_1121 + 96 len 4], 0 + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], 0 + (32 * mem[mem[_1121 + 96 len 4], 0 + _1121 + 96]) + 32 <= return_data.size
                                mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], 0 + _1121 + 96]
                                _2622 = mem[_2433 + _1121 + 96]
                                s = 0
                                while s < 32 * _2622:
                                    mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2433 + _1121 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2622) + _1121 + ceil32(return_data.size) + 128
                            else:
                                require 0 < mem[_1121]
                                if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    mem[_1121 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                    mem[_1121 + 100] = 0
                                    mem[_1121 + 164] = this.address
                                    mem[_1121 + 196] = block.timestamp
                                    mem[_1121 + 132] = 128
                                    mem[_1121 + 228] = mem[_1121]
                                    s = 0
                                    while s < 32 * mem[_1121]:
                                        mem[_1121 + s + 260] = mem[_1121 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value cd[4] wei
                                         gas gas_remaining wei
                                        args 0, 128, address(this.address), block.timestamp, mem[_1121 + 228 len (32 * mem[_1121]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1121 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2441 = mem[_1121 + 96 len 4], 0
                                    require mem[_1121 + 96 len 4], 0 <= 4294967296
                                    require mem[_1121 + 96 len 4], 0 + 32 <= return_data.size
                                    require mem[mem[_1121 + 96 len 4], 0 + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], 0 + (32 * mem[mem[_1121 + 96 len 4], 0 + _1121 + 96]) + 32 <= return_data.size
                                    mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], 0 + _1121 + 96]
                                    _2626 = mem[_2441 + _1121 + 96]
                                    s = 0
                                    while s < 32 * _2626:
                                        mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2441 + _1121 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2626) + _1121 + ceil32(return_data.size) + 128
                                    s = floor32(_2626) + 1
                                    continue 
                                require 0 < mem[_1121]
                                require uint8(idx) < ('cd', 36).length
                                require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                                require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'approve failed.'
                                require 1 < mem[_1121]
                                if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                    require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                                    staticcall address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_1121 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[_1121 + 100] = ext_call.return_data[0]
                                    mem[_1121 + 132] = 0
                                    mem[_1121 + 196] = this.address
                                    mem[_1121 + 228] = block.timestamp
                                    mem[_1121 + 164] = 160
                                    mem[_1121 + 260] = mem[_1121]
                                    s = 0
                                    while s < 32 * mem[_1121]:
                                        mem[_1121 + s + 292] = mem[_1121 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1121 + 260 len (32 * mem[_1121]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1121 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2435 = mem[_1121 + 96 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]) + 32 <= return_data.size
                                    mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]
                                    _2623 = mem[_2435 + _1121 + 96]
                                    s = 0
                                    while s < 32 * _2623:
                                        mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2435 + _1121 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2623) + _1121 + ceil32(return_data.size) + 128
                                else:
                                    require 1 < mem[_1121]
                                    require ext_code.size(address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]))
                                    staticcall address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                        mem[_1121 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1121 + 100] = ext_call.return_data[0]
                                        mem[_1121 + 132] = 0
                                        mem[_1121 + 196] = this.address
                                        mem[_1121 + 228] = block.timestamp
                                        mem[_1121 + 164] = 160
                                        mem[_1121 + 260] = mem[_1121]
                                        s = 0
                                        while s < 32 * mem[_1121]:
                                            mem[_1121 + s + 292] = mem[_1121 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1121 + 260 len (32 * mem[_1121]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1121 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2437 = mem[_1121 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]) + 32 <= return_data.size
                                        mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]
                                        _2624 = mem[_2437 + _1121 + 96]
                                        s = 0
                                        while s < 32 * _2624:
                                            mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2437 + _1121 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2624) + _1121 + ceil32(return_data.size) + 128
                                    else:
                                        mem[_1121 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[_1121 + 100] = ext_call.return_data[0]
                                        mem[_1121 + 132] = 0
                                        mem[_1121 + 196] = this.address
                                        mem[_1121 + 228] = block.timestamp
                                        mem[_1121 + 164] = 160
                                        mem[_1121 + 260] = mem[_1121]
                                        s = 0
                                        while s < 32 * mem[_1121]:
                                            mem[_1121 + s + 292] = mem[_1121 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1121 + 260 len (32 * mem[_1121]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1121 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2439 = mem[_1121 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]) + 32 <= return_data.size
                                        mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]
                                        _2625 = mem[_2439 + _1121 + 96]
                                        s = 0
                                        while s < 32 * _2625:
                                            mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2439 + _1121 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2625) + _1121 + ceil32(return_data.size) + 128
                    else:
                        require Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 16 < ('cd', 68).length
                        require 0 < mem[_1121]
                        mem[_1121 + 32] = address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)])
                        require uint8(idx) < ('cd', 36).length
                        require Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 12 < ('cd', 68).length
                        require 1 < mem[_1121]
                        mem[_1121 + 64] = address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)])
                        require uint8(idx) < ('cd', 36).length
                        require uint8(idx) < ('cd', 36).length
                        if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 != 1:
                            if Mask(8, 24, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 24 == 2:
                                require uint8(idx) < ('cd', 36).length
                                require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                                require 0 < mem[_1121]
                                if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    mem[_1121 + 96] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
                                    mem[_1121 + 100] = 0
                                    mem[_1121 + 164] = this.address
                                    mem[_1121 + 196] = block.timestamp
                                    mem[_1121 + 132] = 128
                                    mem[_1121 + 228] = mem[_1121]
                                    s = 0
                                    while s < 32 * mem[_1121]:
                                        mem[_1121 + s + 260] = mem[_1121 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x9cf68911 with:
                                       value cd[4] wei
                                         gas gas_remaining wei
                                        args 0, 128, address(this.address), block.timestamp, mem[_1121 + 228 len (32 * mem[_1121]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1121 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2447 = mem[_1121 + 96 len 4], 0
                                    require mem[_1121 + 96 len 4], 0 <= 4294967296
                                    require mem[_1121 + 96 len 4], 0 + 32 <= return_data.size
                                    require mem[mem[_1121 + 96 len 4], 0 + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], 0 + (32 * mem[mem[_1121 + 96 len 4], 0 + _1121 + 96]) + 32 <= return_data.size
                                    mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], 0 + _1121 + 96]
                                    _2629 = mem[_2447 + _1121 + 96]
                                    s = 0
                                    while s < 32 * _2629:
                                        mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2447 + _1121 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2629) + _1121 + ceil32(return_data.size) + 128
                                else:
                                    require 0 < mem[_1121]
                                    require uint8(idx) < ('cd', 36).length
                                    require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                                    require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'approve failed.'
                                    require 1 < mem[_1121]
                                    require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                                    staticcall address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                        mem[_1121 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1121 + 100] = ext_call.return_data[0]
                                        mem[_1121 + 132] = 0
                                        mem[_1121 + 196] = this.address
                                        mem[_1121 + 228] = block.timestamp
                                        mem[_1121 + 164] = 160
                                        mem[_1121 + 260] = mem[_1121]
                                        s = 0
                                        while s < 32 * mem[_1121]:
                                            mem[_1121 + s + 292] = mem[_1121 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1121 + 260 len (32 * mem[_1121]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1121 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2443 = mem[_1121 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]) + 32 <= return_data.size
                                        mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]
                                        _2627 = mem[_2443 + _1121 + 96]
                                        s = 0
                                        while s < 32 * _2627:
                                            mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2443 + _1121 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2627) + _1121 + ceil32(return_data.size) + 128
                                    else:
                                        mem[_1121 + 96] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                                        mem[_1121 + 100] = ext_call.return_data[0]
                                        mem[_1121 + 132] = 0
                                        mem[_1121 + 196] = this.address
                                        mem[_1121 + 228] = block.timestamp
                                        mem[_1121 + 164] = 160
                                        mem[_1121 + 260] = mem[_1121]
                                        s = 0
                                        while s < 32 * mem[_1121]:
                                            mem[_1121 + s + 292] = mem[_1121 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).0x5d616c5b with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1121 + 260 len (32 * mem[_1121]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1121 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2445 = mem[_1121 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]) + 32 <= return_data.size
                                        mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]
                                        _2628 = mem[_2445 + _1121 + 96]
                                        s = 0
                                        while s < 32 * _2628:
                                            mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2445 + _1121 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2628) + _1121 + ceil32(return_data.size) + 128
                        else:
                            require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                            require 0 < mem[_1121]
                            if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                mem[_1121 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                mem[_1121 + 100] = 0
                                mem[_1121 + 164] = this.address
                                mem[_1121 + 196] = block.timestamp
                                mem[_1121 + 132] = 128
                                mem[_1121 + 228] = mem[_1121]
                                s = 0
                                while s < 32 * mem[_1121]:
                                    mem[_1121 + s + 260] = mem[_1121 + s + 32]
                                    s = s + 32
                                    continue 
                                require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                   value cd[4] wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp, mem[_1121 + 228 len (32 * mem[_1121]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1121 + ceil32(return_data.size) + 96
                                require return_data.size >= 32
                                _2449 = mem[_1121 + 96 len 4], 0
                                require mem[_1121 + 96 len 4], 0 <= 4294967296
                                require mem[_1121 + 96 len 4], 0 + 32 <= return_data.size
                                require mem[mem[_1121 + 96 len 4], 0 + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], 0 + (32 * mem[mem[_1121 + 96 len 4], 0 + _1121 + 96]) + 32 <= return_data.size
                                mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], 0 + _1121 + 96]
                                _2630 = mem[_2449 + _1121 + 96]
                                s = 0
                                while s < 32 * _2630:
                                    mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2449 + _1121 + s + 128]
                                    s = s + 32
                                    continue 
                                mem[64] = (32 * _2630) + _1121 + ceil32(return_data.size) + 128
                            else:
                                require 0 < mem[_1121]
                                if address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]) == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                    mem[_1121 + 96] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                                    mem[_1121 + 100] = 0
                                    mem[_1121 + 164] = this.address
                                    mem[_1121 + 196] = block.timestamp
                                    mem[_1121 + 132] = 128
                                    mem[_1121 + 228] = mem[_1121]
                                    s = 0
                                    while s < 32 * mem[_1121]:
                                        mem[_1121 + s + 260] = mem[_1121 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                                       value cd[4] wei
                                         gas gas_remaining wei
                                        args 0, 128, address(this.address), block.timestamp, mem[_1121 + 228 len (32 * mem[_1121]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1121 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2457 = mem[_1121 + 96 len 4], 0
                                    require mem[_1121 + 96 len 4], 0 <= 4294967296
                                    require mem[_1121 + 96 len 4], 0 + 32 <= return_data.size
                                    require mem[mem[_1121 + 96 len 4], 0 + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], 0 + (32 * mem[mem[_1121 + 96 len 4], 0 + _1121 + 96]) + 32 <= return_data.size
                                    mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], 0 + _1121 + 96]
                                    _2634 = mem[_2457 + _1121 + 96]
                                    s = 0
                                    while s < 32 * _2634:
                                        mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2457 + _1121 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2634) + _1121 + ceil32(return_data.size) + 128
                                    s = floor32(_2634) + 1
                                    continue 
                                require 0 < mem[_1121]
                                require uint8(idx) < ('cd', 36).length
                                require Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 20 < ('cd', 68).length
                                require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                                call address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]), -1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'approve failed.'
                                require 1 < mem[_1121]
                                if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
                                    require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                                    staticcall address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_1121 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[_1121 + 100] = ext_call.return_data[0]
                                    mem[_1121 + 132] = 0
                                    mem[_1121 + 196] = this.address
                                    mem[_1121 + 228] = block.timestamp
                                    mem[_1121 + 164] = 160
                                    mem[_1121 + 260] = mem[_1121]
                                    s = 0
                                    while s < 32 * mem[_1121]:
                                        mem[_1121 + s + 292] = mem[_1121 + s + 32]
                                        s = s + 32
                                        continue 
                                    require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                    call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1121 + 260 len (32 * mem[_1121]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1121 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    _2451 = mem[_1121 + 96 len 4], ext_call.return_data[0 len 28]
                                    require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]) + 32 <= return_data.size
                                    mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]
                                    _2631 = mem[_2451 + _1121 + 96]
                                    s = 0
                                    while s < 32 * _2631:
                                        mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2451 + _1121 + s + 128]
                                        s = s + 32
                                        continue 
                                    mem[64] = (32 * _2631) + _1121 + ceil32(return_data.size) + 128
                                else:
                                    require 1 < mem[_1121]
                                    require ext_code.size(address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]))
                                    staticcall address(cd[((Mask(4, 16, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 11) + cd[68] + 36)]).0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if address(cd[((Mask(4, 12, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 7) + cd[68] + 36)]) != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
                                        mem[_1121 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1121 + 100] = ext_call.return_data[0]
                                        mem[_1121 + 132] = 0
                                        mem[_1121 + 196] = this.address
                                        mem[_1121 + 228] = block.timestamp
                                        mem[_1121 + 164] = 160
                                        mem[_1121 + 260] = mem[_1121]
                                        s = 0
                                        while s < 32 * mem[_1121]:
                                            mem[_1121 + s + 292] = mem[_1121 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1121 + 260 len (32 * mem[_1121]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1121 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2453 = mem[_1121 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]) + 32 <= return_data.size
                                        mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]
                                        _2632 = mem[_2453 + _1121 + 96]
                                        s = 0
                                        while s < 32 * _2632:
                                            mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2453 + _1121 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2632) + _1121 + ceil32(return_data.size) + 128
                                    else:
                                        mem[_1121 + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[_1121 + 100] = ext_call.return_data[0]
                                        mem[_1121 + 132] = 0
                                        mem[_1121 + 196] = this.address
                                        mem[_1121 + 228] = block.timestamp
                                        mem[_1121 + 164] = 160
                                        mem[_1121 + 260] = mem[_1121]
                                        s = 0
                                        while s < 32 * mem[_1121]:
                                            mem[_1121 + s + 292] = mem[_1121 + s + 32]
                                            s = s + 32
                                            continue 
                                        require ext_code.size(address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]))
                                        call address(cd[((Mask(4, 20, cd[((32 * uint8(idx)) + cd[36] + 36)]) >> 15) + cd[68] + 36)]).swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[_1121 + 260 len (32 * mem[_1121]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1121 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1121 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        _2455 = mem[_1121 + 96 len 4], ext_call.return_data[0 len 28]
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                        require mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                        require mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96] <= 4294967296 and mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]) + 32 <= return_data.size
                                        mem[_1121 + ceil32(return_data.size) + 96] = mem[mem[_1121 + 96 len 4], ext_call.return_data[0 len 28] + _1121 + 96]
                                        _2633 = mem[_2455 + _1121 + 96]
                                        s = 0
                                        while s < 32 * _2633:
                                            mem[_1121 + ceil32(return_data.size) + s + 128] = mem[_2455 + _1121 + s + 128]
                                            s = s + 32
                                            continue 
                                        mem[64] = (32 * _2633) + _1121 + ceil32(return_data.size) + 128
                    idx = idx + 1
                    continue 
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'E2'
}



}
