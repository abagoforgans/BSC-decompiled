contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;
array of uint256 stor1;
address stor31;

function sub_45941ee0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0x1bc7d8f9d680dc656b4e25468b1aae65f0ac296f == msg.sender:
        mem[132] = 0, mem[132 len 28]
        delegate address(arg1).mem[132 len 4] with:
             gas gas_remaining wei
            args 
}

function bnb() {
    require ext_code.size(0xc54b0b7d61de871db47c3ad3f69feb0f2c8db0b)
    staticcall 0xc54b0b7d61de871db47c3ad3f69feb0f2c8db0b.canHarvest(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 2, 0xc1742a30b7469f49f37239b1c2905876821700e8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if block.number % 30 >= 30:
            revert with 'NH{q', 50
        stor1[block.number % 30] = 0
    else:
        require ext_code.size(0xc1742a30b7469f49f37239b1c2905876821700e8)
        call 0xc1742a30b7469f49f37239b1c2905876821700e8.compound() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 'NH{q', 17
}

function busd() {
    require ext_code.size(0xc54b0b7d61de871db47c3ad3f69feb0f2c8db0b)
    staticcall 0xc54b0b7d61de871db47c3ad3f69feb0f2c8db0b.canHarvest(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args 0, 0xf35848441017917a034589bfbec4b3783bb39cb2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if block.number % 30 >= 30:
            revert with 'NH{q', 50
        stor1[block.number % 30] = 0
    else:
        require ext_code.size(0xf35848441017917a034589bfbec4b3783bb39cb2)
        call 0xf35848441017917a034589bfbec4b3783bb39cb2.compound() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if gas_remaining < gas_remaining:
            revert with 'NH{q', 17
}

function swap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender xor stor31 <= 0x5ca42204cdaa70d5c773946e69de942b85ca6706:
        if 0x5ca42204cdaa70d5c773946e69de942b85ca6706 < msg.sender xor stor31:
            revert with 'NH{q', 17
        if -(msg.sender xor stor31) + 0x5ca42204cdaa70d5c773946e69de942b85ca6706 < 1:
            mem[128] = 0x5ca42204cdaa70d5c773946e69de942b85ca6706
            mem[160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            require ext_code.size(0x5ca42204cdaa70d5c773946e69de942b85ca6706)
            staticcall 0x5ca42204cdaa70d5c773946e69de942b85ca6706.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
            idx = 0
            s = ceil32(return_data.size) + 388
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < arg1:
                revert with 'NH{q', 17
            if eth.balance(this.address) - arg1 / 3 > !arg1:
                revert with 'NH{q', 17
            call 0x1bc7d8f9d680dc656b4e25468b1aae65f0ac296f with:
               value (eth.balance(this.address) - arg1 / 3) + arg1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0x4a710e603ea59c8ffec7f02d47b2042aa2f29f92 with:
               value eth.balance(this.address) - arg1 / 3 wei
                 gas 2300 * is_zero(value) wei
            call 0xd8569b9f343e55694cbdbcd666c381126c86892f with:
               value eth.balance(this.address) - arg1 / 3 wei
                 gas 2300 * is_zero(value) wei
            idx = 0
            while idx < 61:
                stor0.length++
                mem[0] = 0
                stor0[stor0.length] = idx
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < 30:
                stor1[idx] = 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
    else:
        if msg.sender xor stor31 < 0x5ca42204cdaa70d5c773946e69de942b85ca6706:
            revert with 'NH{q', 17
        if (msg.sender xor stor31) - 0x5ca42204cdaa70d5c773946e69de942b85ca6706 < 1:
            mem[128] = 0x5ca42204cdaa70d5c773946e69de942b85ca6706
            mem[160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            require ext_code.size(0x5ca42204cdaa70d5c773946e69de942b85ca6706)
            staticcall 0x5ca42204cdaa70d5c773946e69de942b85ca6706.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
            idx = 0
            s = ceil32(return_data.size) + 388
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < arg1:
                revert with 'NH{q', 17
            if eth.balance(this.address) - arg1 / 3 > !arg1:
                revert with 'NH{q', 17
            call 0x1bc7d8f9d680dc656b4e25468b1aae65f0ac296f with:
               value (eth.balance(this.address) - arg1 / 3) + arg1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0x4a710e603ea59c8ffec7f02d47b2042aa2f29f92 with:
               value eth.balance(this.address) - arg1 / 3 wei
                 gas 2300 * is_zero(value) wei
            call 0xd8569b9f343e55694cbdbcd666c381126c86892f with:
               value eth.balance(this.address) - arg1 / 3 wei
                 gas 2300 * is_zero(value) wei
            idx = 0
            while idx < 61:
                stor0.length++
                mem[0] = 0
                stor0[stor0.length] = idx
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < 30:
                stor1[idx] = 1
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x3ca5b234(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require ext_code.size(0xc54b0b7d61de871db47c3ad3f69feb0f2c8db0b)
            staticcall 0xc54b0b7d61de871db47c3ad3f69feb0f2c8db0b.canHarvest(uint256 arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0, 0xf35848441017917a034589bfbec4b3783bb39cb2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if block.number % 30 >= 30:
                    revert with 'NH{q', 50
                stor1[block.number % 30] = 0
            else:
                require ext_code.size(0xf35848441017917a034589bfbec4b3783bb39cb2)
                call 0xf35848441017917a034589bfbec4b3783bb39cb2.compound() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if gas_remaining < gas_remaining:
                    revert with 'NH{q', 17
        else:
            if unknown_0x45941ee0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if 0x1bc7d8f9d680dc656b4e25468b1aae65f0ac296f == msg.sender:
                    mem[164] = 0, mem[164 len 28]
                    delegate address(arg1).mem[164 len 4] with:
                         gas gas_remaining wei
                        args 
            else:
                if unknown_0x49a876e4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require ext_code.size(0xc54b0b7d61de871db47c3ad3f69feb0f2c8db0b)
                    staticcall 0xc54b0b7d61de871db47c3ad3f69feb0f2c8db0b.canHarvest(uint256 arg1, address arg2) with:
                            gas gas_remaining wei
                           args 2, 0xc1742a30b7469f49f37239b1c2905876821700e8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        if block.number % 30 >= 30:
                            revert with 'NH{q', 50
                        stor1[block.number % 30] = 0
                    else:
                        require ext_code.size(0xc1742a30b7469f49f37239b1c2905876821700e8)
                        call 0xc1742a30b7469f49f37239b1c2905876821700e8.compound() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if gas_remaining < gas_remaining:
                            revert with 'NH{q', 17
                else:
                    require unknown_0x94b918de(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if msg.sender xor stor31 <= 0x5ca42204cdaa70d5c773946e69de942b85ca6706:
                        if 0x5ca42204cdaa70d5c773946e69de942b85ca6706 < msg.sender xor stor31:
                            revert with 'NH{q', 17
                        if -(msg.sender xor stor31) + 0x5ca42204cdaa70d5c773946e69de942b85ca6706 < 1:
                            mem[160] = 0x5ca42204cdaa70d5c773946e69de942b85ca6706
                            mem[192] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                            require ext_code.size(0x5ca42204cdaa70d5c773946e69de942b85ca6706)
                            staticcall 0x5ca42204cdaa70d5c773946e69de942b85ca6706.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                            idx = 0
                            s = ceil32(return_data.size) + 420
                            t = 160
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < arg1:
                                revert with 'NH{q', 17
                            if eth.balance(this.address) - arg1 / 3 > !arg1:
                                revert with 'NH{q', 17
                            call 0x1bc7d8f9d680dc656b4e25468b1aae65f0ac296f with:
                               value (eth.balance(this.address) - arg1 / 3) + arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call 0x4a710e603ea59c8ffec7f02d47b2042aa2f29f92 with:
                               value eth.balance(this.address) - arg1 / 3 wei
                                 gas 2300 * is_zero(value) wei
                            call 0xd8569b9f343e55694cbdbcd666c381126c86892f with:
                               value eth.balance(this.address) - arg1 / 3 wei
                                 gas 2300 * is_zero(value) wei
                            idx = 0
                            while idx < 61:
                                stor0.length++
                                mem[0] = 0
                                stor0[stor0.length] = idx
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < 30:
                                stor1[idx] = 1
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                    else:
                        if msg.sender xor stor31 < 0x5ca42204cdaa70d5c773946e69de942b85ca6706:
                            revert with 'NH{q', 17
                        if (msg.sender xor stor31) - 0x5ca42204cdaa70d5c773946e69de942b85ca6706 < 1:
                            mem[160] = 0x5ca42204cdaa70d5c773946e69de942b85ca6706
                            mem[192] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                            require ext_code.size(0x5ca42204cdaa70d5c773946e69de942b85ca6706)
                            staticcall 0x5ca42204cdaa70d5c773946e69de942b85ca6706.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = ext_call.return_data[0]
                            idx = 0
                            s = ceil32(return_data.size) + 420
                            t = 160
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < arg1:
                                revert with 'NH{q', 17
                            if eth.balance(this.address) - arg1 / 3 > !arg1:
                                revert with 'NH{q', 17
                            call 0x1bc7d8f9d680dc656b4e25468b1aae65f0ac296f with:
                               value (eth.balance(this.address) - arg1 / 3) + arg1 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call 0x4a710e603ea59c8ffec7f02d47b2042aa2f29f92 with:
                               value eth.balance(this.address) - arg1 / 3 wei
                                 gas 2300 * is_zero(value) wei
                            call 0xd8569b9f343e55694cbdbcd666c381126c86892f with:
                               value eth.balance(this.address) - arg1 / 3 wei
                                 gas 2300 * is_zero(value) wei
                            idx = 0
                            while idx < 61:
                                stor0.length++
                                mem[0] = 0
                                stor0[stor0.length] = idx
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < 30:
                                stor1[idx] = 1
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
}



}
