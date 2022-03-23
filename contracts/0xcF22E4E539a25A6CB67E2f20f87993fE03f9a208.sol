contract main {




// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    if stor0 != msg.sender:
        revert with 0, 'HELLO FROM THE OTHER SIDE'
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_287c87cf(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'HELLO FROM THE OTHER SIDE'
    require 0 < ('cd', 36).length
    require 0 < ('cd', 4).length
    require 0 < ('cd', 100).length
    mem[132] = msg.sender
    mem[164] = address(('cd', 4)[0])
    mem[196] = ('cd', 100)[0]
    mem[96] = 100
    mem[64] = 228
    mem[132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[128 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
    mem[228 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(('cd', 4)[0]), Mask(224, 32, ('cd', 100)[0]) >> 32
    mem[352 len 4] = Mask(32, 64, ('cd', 100)[0]) >> 64
    call address(('cd', 36)[0]) with:
         gas gas_remaining wei
        args Mask(224, 32, ('cd', 100)[0]) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        Mask(32, 64, ('cd', 100)[0]) >> 64,
                        mem[356 len 4]
        if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        36,
                        0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[332 len 20],
                        Mask(32, 64, ('cd', 100)[0]) >> 64,
                        mem[356 len 4]
        idx = 0
        while idx < ('cd', 36).length - 1:
            require idx + 1 < ('cd', 36).length
            require idx + 1 < ('cd', 100).length
            if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length - 2:
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if cd[((32 * idx) + cd[68] + 36)]:
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender
                        else:
                            _732 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_732 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_732 + 36] = 0
                            mem[_732 + 68] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[_732 + 100] = msg.sender
                            mem[_732 + 132] = 128
                            mem[_732 + 164] = mem[_732]
                            s = 0
                            while s < mem[_732]:
                                mem[_732 + s + 196] = mem[_732 + s + 32]
                                s = s + 32
                                continue 
                            if not mem[_732] % 32:
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender, 128, mem[_732 + 164 len mem[_732] + 32]
                            else:
                                mem[floor32(mem[_732]) + _732 + 196] = mem[floor32(mem[_732]) + _732 + -(mem[_732] % 32) + 228 len mem[_732] % 32]
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender, 128, mem[_732], mem[_732 + 196 len floor32(mem[_732]) + 32]
                    else:
                        require idx + 1 < ('cd', 4).length
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if cd[((32 * idx) + cd[68] + 36)]:
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)])
                        else:
                            _782 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_782 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_782 + 36] = 0
                            mem[_782 + 68] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[_782 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                            mem[_782 + 132] = 128
                            mem[_782 + 164] = mem[_782]
                            s = 0
                            while s < mem[_782]:
                                mem[_782 + s + 196] = mem[_782 + s + 32]
                                s = s + 32
                                continue 
                            if not mem[_782] % 32:
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_782 + 164 len mem[_782] + 32]
                            else:
                                mem[floor32(mem[_782]) + _782 + 196] = mem[floor32(mem[_782]) + _782 + -(mem[_782] % 32) + 228 len mem[_782] % 32]
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_782], mem[_782 + 196 len floor32(mem[_782]) + 32]
                else:
                    if idx >= ('cd', 36).length - 2:
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if cd[((32 * idx) + cd[68] + 36)]:
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender
                        else:
                            _735 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_735 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_735 + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[_735 + 68] = 0
                            mem[_735 + 100] = msg.sender
                            mem[_735 + 132] = 128
                            mem[_735 + 164] = mem[_735]
                            s = 0
                            while s < mem[_735]:
                                mem[_735 + s + 196] = mem[_735 + s + 32]
                                s = s + 32
                                continue 
                            if not mem[_735] % 32:
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender, 128, mem[_735 + 164 len mem[_735] + 32]
                            else:
                                mem[floor32(mem[_735]) + _735 + 196] = mem[floor32(mem[_735]) + _735 + -(mem[_735] % 32) + 228 len mem[_735] % 32]
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender, 128, mem[_735], mem[_735 + 196 len floor32(mem[_735]) + 32]
                    else:
                        require idx + 1 < ('cd', 4).length
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if cd[((32 * idx) + cd[68] + 36)]:
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)])
                        else:
                            _786 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_786 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_786 + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[_786 + 68] = 0
                            mem[_786 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                            mem[_786 + 132] = 128
                            mem[_786 + 164] = mem[_786]
                            s = 0
                            while s < mem[_786]:
                                mem[_786 + s + 196] = mem[_786 + s + 32]
                                s = s + 32
                                continue 
                            if not mem[_786] % 32:
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_786 + 164 len mem[_786] + 32]
                            else:
                                mem[floor32(mem[_786]) + _786 + 196] = mem[floor32(mem[_786]) + _786 + -(mem[_786] % 32) + 228 len mem[_786] % 32]
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_786], mem[_786 + 196 len floor32(mem[_786]) + 32]
            else:
                if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length - 2:
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if cd[((32 * idx) + cd[68] + 36)]:
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender
                        else:
                            _738 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_738 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_738 + 36] = 0
                            mem[_738 + 68] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[_738 + 100] = msg.sender
                            mem[_738 + 132] = 128
                            mem[_738 + 164] = mem[_738]
                            s = 0
                            while s < mem[_738]:
                                mem[_738 + s + 196] = mem[_738 + s + 32]
                                s = s + 32
                                continue 
                            if not mem[_738] % 32:
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender, 128, mem[_738 + 164 len mem[_738] + 32]
                            else:
                                mem[floor32(mem[_738]) + _738 + 196] = mem[floor32(mem[_738]) + _738 + -(mem[_738] % 32) + 228 len mem[_738] % 32]
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender, 128, mem[_738], mem[_738 + 196 len floor32(mem[_738]) + 32]
                    else:
                        require idx + 1 < ('cd', 4).length
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if cd[((32 * idx) + cd[68] + 36)]:
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)])
                        else:
                            _790 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_790 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_790 + 36] = 0
                            mem[_790 + 68] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[_790 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                            mem[_790 + 132] = 128
                            mem[_790 + 164] = mem[_790]
                            s = 0
                            while s < mem[_790]:
                                mem[_790 + s + 196] = mem[_790 + s + 32]
                                s = s + 32
                                continue 
                            if not mem[_790] % 32:
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_790 + 164 len mem[_790] + 32]
                            else:
                                mem[floor32(mem[_790]) + _790 + 196] = mem[floor32(mem[_790]) + _790 + -(mem[_790] % 32) + 228 len mem[_790] % 32]
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_790], mem[_790 + 196 len floor32(mem[_790]) + 32]
                else:
                    if idx >= ('cd', 36).length - 2:
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if cd[((32 * idx) + cd[68] + 36)]:
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = msg.sender
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender
                        else:
                            _741 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_741 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_741 + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[_741 + 68] = 0
                            mem[_741 + 100] = msg.sender
                            mem[_741 + 132] = 128
                            mem[_741 + 164] = mem[_741]
                            s = 0
                            while s < mem[_741]:
                                mem[_741 + s + 196] = mem[_741 + s + 32]
                                s = s + 32
                                continue 
                            if not mem[_741] % 32:
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender, 128, mem[_741 + 164 len mem[_741] + 32]
                            else:
                                mem[floor32(mem[_741]) + _741 + 196] = mem[floor32(mem[_741]) + _741 + -(mem[_741] % 32) + 228 len mem[_741] % 32]
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender, 128, mem[_741], mem[_741 + 196 len floor32(mem[_741]) + 32]
                    else:
                        require idx + 1 < ('cd', 4).length
                        require idx < ('cd', 68).length
                        require idx < ('cd', 4).length
                        if cd[((32 * idx) + cd[68] + 36)]:
                            mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[mem[64] + 36] = 0
                            mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                 gas gas_remaining wei
                                args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)])
                        else:
                            _794 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_794 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_794 + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                            mem[_794 + 68] = 0
                            mem[_794 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                            mem[_794 + 132] = 128
                            mem[_794 + 164] = mem[_794]
                            s = 0
                            while s < mem[_794]:
                                mem[_794 + s + 196] = mem[_794 + s + 32]
                                s = s + 32
                                continue 
                            if not mem[_794] % 32:
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_794 + 164 len mem[_794] + 32]
                            else:
                                mem[floor32(mem[_794]) + _794 + 196] = mem[floor32(mem[_794]) + _794 + -(mem[_794] % 32) + 228 len mem[_794] % 32]
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_794], mem[_794 + 196 len floor32(mem[_794]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[64] = ceil32(return_data.size) + 229
        mem[228] = return_data.size
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        36,
                        0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                        mem[ceil32(return_data.size) + 333 len 28]
        if not return_data.size:
            idx = 0
            while idx < ('cd', 36).length - 1:
                require idx + 1 < ('cd', 36).length
                require idx + 1 < ('cd', 100).length
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length - 2:
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 68] = msg.sender
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender
                            else:
                                _744 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_744 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_744 + 36] = 0
                                mem[_744 + 68] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_744 + 100] = msg.sender
                                mem[_744 + 132] = 128
                                mem[_744 + 164] = mem[_744]
                                s = 0
                                while s < mem[_744]:
                                    mem[_744 + s + 196] = mem[_744 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_744] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender, 128, mem[_744 + 164 len mem[_744] + 32]
                                else:
                                    mem[floor32(mem[_744]) + _744 + 196] = mem[floor32(mem[_744]) + _744 + -(mem[_744] % 32) + 228 len mem[_744] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender, 128, mem[_744], mem[_744 + 196 len floor32(mem[_744]) + 32]
                        else:
                            require idx + 1 < ('cd', 4).length
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)])
                            else:
                                _798 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_798 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_798 + 36] = 0
                                mem[_798 + 68] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_798 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                mem[_798 + 132] = 128
                                mem[_798 + 164] = mem[_798]
                                s = 0
                                while s < mem[_798]:
                                    mem[_798 + s + 196] = mem[_798 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_798] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_798 + 164 len mem[_798] + 32]
                                else:
                                    mem[floor32(mem[_798]) + _798 + 196] = mem[floor32(mem[_798]) + _798 + -(mem[_798] % 32) + 228 len mem[_798] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_798], mem[_798 + 196 len floor32(mem[_798]) + 32]
                    else:
                        if idx >= ('cd', 36).length - 2:
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = msg.sender
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender
                            else:
                                _747 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_747 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_747 + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_747 + 68] = 0
                                mem[_747 + 100] = msg.sender
                                mem[_747 + 132] = 128
                                mem[_747 + 164] = mem[_747]
                                s = 0
                                while s < mem[_747]:
                                    mem[_747 + s + 196] = mem[_747 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_747] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender, 128, mem[_747 + 164 len mem[_747] + 32]
                                else:
                                    mem[floor32(mem[_747]) + _747 + 196] = mem[floor32(mem[_747]) + _747 + -(mem[_747] % 32) + 228 len mem[_747] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender, 128, mem[_747], mem[_747 + 196 len floor32(mem[_747]) + 32]
                        else:
                            require idx + 1 < ('cd', 4).length
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)])
                            else:
                                _802 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_802 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_802 + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_802 + 68] = 0
                                mem[_802 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                mem[_802 + 132] = 128
                                mem[_802 + 164] = mem[_802]
                                s = 0
                                while s < mem[_802]:
                                    mem[_802 + s + 196] = mem[_802 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_802] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_802 + 164 len mem[_802] + 32]
                                else:
                                    mem[floor32(mem[_802]) + _802 + 196] = mem[floor32(mem[_802]) + _802 + -(mem[_802] % 32) + 228 len mem[_802] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_802], mem[_802 + 196 len floor32(mem[_802]) + 32]
                else:
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length - 2:
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 68] = msg.sender
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender
                            else:
                                _750 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_750 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_750 + 36] = 0
                                mem[_750 + 68] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_750 + 100] = msg.sender
                                mem[_750 + 132] = 128
                                mem[_750 + 164] = mem[_750]
                                s = 0
                                while s < mem[_750]:
                                    mem[_750 + s + 196] = mem[_750 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_750] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender, 128, mem[_750 + 164 len mem[_750] + 32]
                                else:
                                    mem[floor32(mem[_750]) + _750 + 196] = mem[floor32(mem[_750]) + _750 + -(mem[_750] % 32) + 228 len mem[_750] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender, 128, mem[_750], mem[_750 + 196 len floor32(mem[_750]) + 32]
                        else:
                            require idx + 1 < ('cd', 4).length
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)])
                            else:
                                _806 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_806 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_806 + 36] = 0
                                mem[_806 + 68] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_806 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                mem[_806 + 132] = 128
                                mem[_806 + 164] = mem[_806]
                                s = 0
                                while s < mem[_806]:
                                    mem[_806 + s + 196] = mem[_806 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_806] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_806 + 164 len mem[_806] + 32]
                                else:
                                    mem[floor32(mem[_806]) + _806 + 196] = mem[floor32(mem[_806]) + _806 + -(mem[_806] % 32) + 228 len mem[_806] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_806], mem[_806 + 196 len floor32(mem[_806]) + 32]
                    else:
                        if idx >= ('cd', 36).length - 2:
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = msg.sender
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender
                            else:
                                _753 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_753 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_753 + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_753 + 68] = 0
                                mem[_753 + 100] = msg.sender
                                mem[_753 + 132] = 128
                                mem[_753 + 164] = mem[_753]
                                s = 0
                                while s < mem[_753]:
                                    mem[_753 + s + 196] = mem[_753 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_753] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender, 128, mem[_753 + 164 len mem[_753] + 32]
                                else:
                                    mem[floor32(mem[_753]) + _753 + 196] = mem[floor32(mem[_753]) + _753 + -(mem[_753] % 32) + 228 len mem[_753] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender, 128, mem[_753], mem[_753 + 196 len floor32(mem[_753]) + 32]
                        else:
                            require idx + 1 < ('cd', 4).length
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)])
                            else:
                                _810 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_810 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_810 + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_810 + 68] = 0
                                mem[_810 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                mem[_810 + 132] = 128
                                mem[_810 + 164] = mem[_810]
                                s = 0
                                while s < mem[_810]:
                                    mem[_810 + s + 196] = mem[_810 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_810] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_810 + 164 len mem[_810] + 32]
                                else:
                                    mem[floor32(mem[_810]) + _810 + 196] = mem[floor32(mem[_810]) + _810 + -(mem[_810] % 32) + 228 len mem[_810] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_810], mem[_810 + 196 len floor32(mem[_810]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            36,
                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                            mem[ceil32(return_data.size) + 333 len 28]
            idx = 0
            while idx < ('cd', 36).length - 1:
                require idx + 1 < ('cd', 36).length
                require idx + 1 < ('cd', 100).length
                if address(cd[((32 * idx) + cd[36] + 36)]) < address(cd[((32 * idx + 1) + cd[36] + 36)]):
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length - 2:
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 68] = msg.sender
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender
                            else:
                                _756 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_756 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_756 + 36] = 0
                                mem[_756 + 68] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_756 + 100] = msg.sender
                                mem[_756 + 132] = 128
                                mem[_756 + 164] = mem[_756]
                                s = 0
                                while s < mem[_756]:
                                    mem[_756 + s + 196] = mem[_756 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_756] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender, 128, mem[_756 + 164 len mem[_756] + 32]
                                else:
                                    mem[floor32(mem[_756]) + _756 + 196] = mem[floor32(mem[_756]) + _756 + -(mem[_756] % 32) + 228 len mem[_756] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender, 128, mem[_756], mem[_756 + 196 len floor32(mem[_756]) + 32]
                        else:
                            require idx + 1 < ('cd', 4).length
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)])
                            else:
                                _814 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_814 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_814 + 36] = 0
                                mem[_814 + 68] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_814 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                mem[_814 + 132] = 128
                                mem[_814 + 164] = mem[_814]
                                s = 0
                                while s < mem[_814]:
                                    mem[_814 + s + 196] = mem[_814 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_814] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_814 + 164 len mem[_814] + 32]
                                else:
                                    mem[floor32(mem[_814]) + _814 + 196] = mem[floor32(mem[_814]) + _814 + -(mem[_814] % 32) + 228 len mem[_814] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_814], mem[_814 + 196 len floor32(mem[_814]) + 32]
                    else:
                        if idx >= ('cd', 36).length - 2:
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = msg.sender
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender
                            else:
                                _759 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_759 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_759 + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_759 + 68] = 0
                                mem[_759 + 100] = msg.sender
                                mem[_759 + 132] = 128
                                mem[_759 + 164] = mem[_759]
                                s = 0
                                while s < mem[_759]:
                                    mem[_759 + s + 196] = mem[_759 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_759] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender, 128, mem[_759 + 164 len mem[_759] + 32]
                                else:
                                    mem[floor32(mem[_759]) + _759 + 196] = mem[floor32(mem[_759]) + _759 + -(mem[_759] % 32) + 228 len mem[_759] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender, 128, mem[_759], mem[_759 + 196 len floor32(mem[_759]) + 32]
                        else:
                            require idx + 1 < ('cd', 4).length
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)])
                            else:
                                _818 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_818 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_818 + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_818 + 68] = 0
                                mem[_818 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                mem[_818 + 132] = 128
                                mem[_818 + 164] = mem[_818]
                                s = 0
                                while s < mem[_818]:
                                    mem[_818 + s + 196] = mem[_818 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_818] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_818 + 164 len mem[_818] + 32]
                                else:
                                    mem[floor32(mem[_818]) + _818 + 196] = mem[floor32(mem[_818]) + _818 + -(mem[_818] % 32) + 228 len mem[_818] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_818], mem[_818 + 196 len floor32(mem[_818]) + 32]
                else:
                    if address(cd[((32 * idx) + cd[36] + 36)]) == address(cd[((32 * idx + 1) + cd[36] + 36)]):
                        if idx >= ('cd', 36).length - 2:
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 68] = msg.sender
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender
                            else:
                                _762 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_762 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_762 + 36] = 0
                                mem[_762 + 68] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_762 + 100] = msg.sender
                                mem[_762 + 132] = 128
                                mem[_762 + 164] = mem[_762]
                                s = 0
                                while s < mem[_762]:
                                    mem[_762 + s + 196] = mem[_762 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_762] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender, 128, mem[_762 + 164 len mem[_762] + 32]
                                else:
                                    mem[floor32(mem[_762]) + _762 + 196] = mem[floor32(mem[_762]) + _762 + -(mem[_762] % 32) + 228 len mem[_762] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], msg.sender, 128, mem[_762], mem[_762 + 196 len floor32(mem[_762]) + 32]
                        else:
                            require idx + 1 < ('cd', 4).length
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)])
                            else:
                                _822 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_822 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_822 + 36] = 0
                                mem[_822 + 68] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_822 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                mem[_822 + 132] = 128
                                mem[_822 + 164] = mem[_822]
                                s = 0
                                while s < mem[_822]:
                                    mem[_822 + s + 196] = mem[_822 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_822] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_822 + 164 len mem[_822] + 32]
                                else:
                                    mem[floor32(mem[_822]) + _822 + 196] = mem[floor32(mem[_822]) + _822 + -(mem[_822] % 32) + 228 len mem[_822] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, cd[((32 * idx + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_822], mem[_822 + 196 len floor32(mem[_822]) + 32]
                    else:
                        if idx >= ('cd', 36).length - 2:
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = msg.sender
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender
                            else:
                                _765 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_765 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_765 + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_765 + 68] = 0
                                mem[_765 + 100] = msg.sender
                                mem[_765 + 132] = 128
                                mem[_765 + 164] = mem[_765]
                                s = 0
                                while s < mem[_765]:
                                    mem[_765 + s + 196] = mem[_765 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_765] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender, 128, mem[_765 + 164 len mem[_765] + 32]
                                else:
                                    mem[floor32(mem[_765]) + _765 + 196] = mem[floor32(mem[_765]) + _765 + -(mem[_765] % 32) + 228 len mem[_765] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, msg.sender, 128, mem[_765], mem[_765 + 196 len floor32(mem[_765]) + 32]
                        else:
                            require idx + 1 < ('cd', 4).length
                            require idx < ('cd', 68).length
                            require idx < ('cd', 4).length
                            if cd[((32 * idx) + cd[68] + 36)]:
                                mem[mem[64]] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3) with:
                                     gas gas_remaining wei
                                    args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)])
                            else:
                                _826 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_826 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_826 + 36] = cd[((32 * idx + 1) + cd[100] + 36)]
                                mem[_826 + 68] = 0
                                mem[_826 + 100] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                                mem[_826 + 132] = 128
                                mem[_826 + 164] = mem[_826]
                                s = 0
                                while s < mem[_826]:
                                    mem[_826 + s + 196] = mem[_826 + s + 32]
                                    s = s + 32
                                    continue 
                                if not mem[_826] % 32:
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_826 + 164 len mem[_826] + 32]
                                else:
                                    mem[floor32(mem[_826]) + _826 + 196] = mem[floor32(mem[_826]) + _826 + -(mem[_826] % 32) + 228 len mem[_826] % 32]
                                    require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                    call address(cd[((32 * idx) + cd[4] + 36)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args cd[((32 * idx + 1) + cd[100] + 36)], 0, address(cd[((32 * idx + 1) + cd[4] + 36)]), 128, mem[_826], mem[_826 + 196 len floor32(mem[_826]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
}



}
