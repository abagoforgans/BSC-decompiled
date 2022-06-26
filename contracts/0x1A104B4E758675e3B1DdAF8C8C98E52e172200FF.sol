contract main {




// =====================  Runtime code  =====================


#
#  - sub_5b6caa4c(?)
#  - sub_8f1b0772(?)
#  - sub_ac5cad56(?)
#  - sub_b078d9b1(?)
#  - sub_e510d6dc(?)
#  - _fallback()
#
address owner;
uint256 stor1;
address stor4;
uint256 maxFee;
uint256 sub_2946217c;
uint256 sub_e1598e4c;
uint256 sub_1f927dcb;
address stor9;
address stor10;
address stor12;

function sub_1f927dcb(?) {
    return sub_1f927dcb
}

function sub_2946217c(?) {
    return sub_2946217c
}

function owner() {
    return owner
}

function sub_e1598e4c(?) {
    return sub_e1598e4c
}

function MaxFee() {
    return maxFee
}

function sub_3a367165(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxFee = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_3ffa72b7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2946217c = arg1
}

function sub_7d946217(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1f927dcb = arg1
}

function sub_e799ffb1(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value sub_e1598e4c wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_e1598e4c = eth.balance(this.address)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_5bdcdd54(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor4 == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token In cannot be the same as Token out'
    stor9 = address(arg2)
    stor10 = address(arg2)
    stor12 = stor4
    if stor4 == stor4:
        if 100 < sub_1f927dcb:
            revert with 0, 17
        if eth.balance(this.address) < sub_e1598e4c:
            revert with 0, 17
        if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
            revert with 0, 17
        if stor4 == address(arg1):
            call msg.sender with:
               value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                 gas 2300 * is_zero(value) wei
        else:
            staticcall stor9.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[128] = ext_call.return_data[12 len 20]
            mem[160] = address(arg1)
            mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = 0
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor10)
            call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                 gas gas_remaining wei
                args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    else:
        mem[100] = this.address
        staticcall stor4.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = msg.value
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stor12):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), msg.value, 0
        mem[ceil32(return_data.size) + 392] = 0
        call stor12 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), msg.value, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), msg.value, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                if stor4 != stor4:
                    mem[ceil32(return_data.size) + 296] = this.address
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 296] = this.address
                    mem[(2 * ceil32(return_data.size)) + 328] = address(arg2)
                    staticcall stor4.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0:
                        mem[(4 * ceil32(return_data.size)) + 324] = stor4
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(4 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 392] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 324
                        t = (6 * ceil32(return_data.size)) + 584
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 584 len 64]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 296] = address(arg2)
                        mem[(4 * ceil32(return_data.size)) + 328] = stor1
                        call stor4.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 324] = stor4
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                        mem[(7 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 392] = 0
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 324
                        t = (7 * ceil32(return_data.size)) + 584
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 584 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg1):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_e1598e4c = eth.balance(this.address)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    revert with 0, 50
                if eth.balance(this.address) < ext_call.return_data[0]:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 296] = this.address
                mem[ceil32(return_data.size) + 328] = address(arg2)
                staticcall stor4.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg2)
                mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= eth.balance(this.address) - ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 292] = 2
                    mem[(2 * ceil32(return_data.size)) + 324] = stor4
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 392] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 424] = 0
                    mem[(4 * ceil32(return_data.size)) + 456] = 160
                    mem[(4 * ceil32(return_data.size)) + 552] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 324
                    t = (4 * ceil32(return_data.size)) + 584
                    while idx < mem[(2 * ceil32(return_data.size)) + 292]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 488] = this.address
                    mem[(4 * ceil32(return_data.size)) + 520] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 552 len (32 * mem[(2 * ceil32(return_data.size)) + 292]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg1):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + 484] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 484
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + 452] = address(arg1)
                        mem[(6 * ceil32(return_data.size)) + 484] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 488] = 0
                        mem[(6 * ceil32(return_data.size)) + 520] = 128
                        mem[(6 * ceil32(return_data.size)) + 616] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 648
                        while idx < 0, mem[(4 * ceil32(return_data.size)) + 392 len 28]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor10)
                        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args 0, 128, msg.sender, block.timestamp, mem[(6 * ceil32(return_data.size)) + 616 len (32 * 0, mem[(4 * ceil32(return_data.size)) + 392 len 28]) + 32]
                else:
                    mem[(2 * ceil32(return_data.size)) + 296] = address(arg2)
                    mem[(2 * ceil32(return_data.size)) + 328] = stor1
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), stor1
                    mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 324] = stor4
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 392] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 552] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 324
                    t = (6 * ceil32(return_data.size)) + 584
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 488] = this.address
                    mem[(6 * ceil32(return_data.size)) + 520] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 584 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg1):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + 484] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 484
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + 420] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + 452] = address(arg1)
                        mem[(7 * ceil32(return_data.size)) + 484] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 488] = 0
                        mem[(7 * ceil32(return_data.size)) + 520] = 128
                        mem[(7 * ceil32(return_data.size)) + 616] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 648
                        while idx < 0, mem[(6 * ceil32(return_data.size)) + 392 len 28]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor10)
                        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args 0, 128, msg.sender, block.timestamp, mem[(7 * ceil32(return_data.size)) + 616 len (32 * 0, mem[(6 * ceil32(return_data.size)) + 392 len 28]) + 32]
            else:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if stor4 != stor4:
                    mem[ceil32(return_data.size) + 296] = this.address
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 296] = this.address
                    mem[(2 * ceil32(return_data.size)) + 328] = address(arg2)
                    staticcall stor4.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0:
                        mem[(4 * ceil32(return_data.size)) + 324] = stor4
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(4 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 392] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 324
                        t = (6 * ceil32(return_data.size)) + 584
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 584 len 64]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 296] = address(arg2)
                        mem[(4 * ceil32(return_data.size)) + 328] = stor1
                        call stor4.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 324] = stor4
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                        mem[(7 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 392] = 0
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 324
                        t = (7 * ceil32(return_data.size)) + 584
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 584 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg1):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_e1598e4c = eth.balance(this.address)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    revert with 0, 50
                if eth.balance(this.address) < ext_call.return_data[0]:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 296] = this.address
                mem[ceil32(return_data.size) + 328] = address(arg2)
                staticcall stor4.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg2)
                mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= eth.balance(this.address) - ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 292] = 2
                    mem[(2 * ceil32(return_data.size)) + 324] = stor4
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 392] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 424] = 0
                    mem[(4 * ceil32(return_data.size)) + 456] = 160
                    mem[(4 * ceil32(return_data.size)) + 552] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 324
                    t = (4 * ceil32(return_data.size)) + 584
                    while idx < mem[(2 * ceil32(return_data.size)) + 292]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 488] = this.address
                    mem[(4 * ceil32(return_data.size)) + 520] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 552 len (32 * mem[(2 * ceil32(return_data.size)) + 292]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg1):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + 484] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 484
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + 452] = address(arg1)
                        mem[(6 * ceil32(return_data.size)) + 484] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 488] = 0
                        mem[(6 * ceil32(return_data.size)) + 520] = 128
                        mem[(6 * ceil32(return_data.size)) + 616] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 648
                        while idx < 0, mem[(4 * ceil32(return_data.size)) + 392 len 28]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor10)
                        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args 0, 128, msg.sender, block.timestamp, mem[(6 * ceil32(return_data.size)) + 616 len (32 * 0, mem[(4 * ceil32(return_data.size)) + 392 len 28]) + 32]
                else:
                    mem[(2 * ceil32(return_data.size)) + 296] = address(arg2)
                    mem[(2 * ceil32(return_data.size)) + 328] = stor1
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), stor1
                    mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 292] = 2
                    mem[(4 * ceil32(return_data.size)) + 324] = stor4
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 392] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 552] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 324
                    t = (6 * ceil32(return_data.size)) + 584
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 488] = this.address
                    mem[(6 * ceil32(return_data.size)) + 520] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 584 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg1):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + 484] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 484
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + 420] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + 452] = address(arg1)
                        mem[(7 * ceil32(return_data.size)) + 484] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 488] = 0
                        mem[(7 * ceil32(return_data.size)) + 520] = 128
                        mem[(7 * ceil32(return_data.size)) + 616] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 648
                        while idx < 0, mem[(6 * ceil32(return_data.size)) + 392 len 28]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + 552] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + 584] = block.timestamp
                        require ext_code.size(stor10)
                        call stor10.mem[mem[64] len 4] with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + (32 * 0, mem[(6 * ceil32(return_data.size)) + 392 len 28]) + -mem[64] + 644]
        else:
            mem[ceil32(return_data.size) + 292] = return_data.size
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if stor4 != stor4:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(arg2)
                    staticcall stor4.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor4
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg2)
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = stor1
                        call stor4.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), stor1
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor4
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                        t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                        while idx < mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len (32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg1):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_e1598e4c = eth.balance(this.address)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    revert with 0, 50
                if eth.balance(this.address) < ext_call.return_data[0]:
                    revert with 0, 17
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(arg2)
                staticcall stor4.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg2)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= eth.balance(this.address) - ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor4
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                    while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg1):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 485
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = address(arg1)
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 128
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                        while idx < mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor10)
                        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args 0, 128, msg.sender, block.timestamp, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]) + 32]
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg2)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = stor1
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), stor1
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor4
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                    t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg1):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 485
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = address(arg1)
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 128
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
                        t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                        while idx < 0, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 28]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor10)
                        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args 0, 128, msg.sender, block.timestamp, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len (32 * 0, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 28]) + 32]
            else:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if stor4 != stor4:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(arg2)
                    staticcall stor4.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg2)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor4
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg2)
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = stor1
                        call stor4.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg2), stor1
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor4
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                        t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                        while idx < mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len (32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg1):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_e1598e4c = eth.balance(this.address)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    revert with 0, 50
                if eth.balance(this.address) < ext_call.return_data[0]:
                    revert with 0, 17
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(arg2)
                staticcall stor4.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg2)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= eth.balance(this.address) - ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor4
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                    while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg1):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 485
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = address(arg1)
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 128
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                        while idx < mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor10)
                        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args 0, 128, msg.sender, block.timestamp, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]) + 32]
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg2)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = stor1
                    call stor4.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), stor1
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor4
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                    t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg1):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 485
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = address(arg1)
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 128
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
                        t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                        while idx < 0, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 28]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = block.timestamp
                        require ext_code.size(stor10)
                        call stor10.mem[mem[64] len 4] with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * 0, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 28]) + -mem[64] + 645]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_e1598e4c = eth.balance(this.address)
}

function sub_b5332d60(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if address(arg1) == address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token In cannot be the same as Token out'
    stor9 = address(arg4)
    stor10 = address(arg5)
    stor12 = address(arg1)
    if stor4 == address(arg1):
        if 100 < sub_1f927dcb:
            revert with 0, 17
        if eth.balance(this.address) < sub_e1598e4c:
            revert with 0, 17
        if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
            revert with 0, 17
        if stor4 == address(arg3):
            call msg.sender with:
               value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                 gas 2300 * is_zero(value) wei
        else:
            staticcall stor9.WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[128] = ext_call.return_data[12 len 20]
            mem[160] = address(arg3)
            mem[ceil32(return_data.size) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = 0
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor10)
            call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                 gas gas_remaining wei
                args 0, 128, msg.sender, block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    else:
        mem[100] = this.address
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = arg2
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stor12):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
        mem[ceil32(return_data.size) + 392] = 0
        call stor12 with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if not ext_call.return_data[0]:
                if stor4 != address(arg1):
                    mem[ceil32(return_data.size) + 296] = this.address
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 296] = this.address
                    mem[(2 * ceil32(return_data.size)) + 328] = address(arg4)
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg4)
                    mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0:
                        mem[(4 * ceil32(return_data.size)) + 324] = address(arg1)
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(4 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 392] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 324
                        t = (6 * ceil32(return_data.size)) + 584
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 584 len 64]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 296] = address(arg4)
                        mem[(4 * ceil32(return_data.size)) + 328] = stor1
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 324] = address(arg1)
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                        mem[(7 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 392] = 0
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 324
                        t = (7 * ceil32(return_data.size)) + 584
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 584 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg3):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_e1598e4c = eth.balance(this.address)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    revert with 0, 50
                if eth.balance(this.address) < ext_call.return_data[0]:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 296] = this.address
                mem[ceil32(return_data.size) + 328] = address(arg4)
                staticcall address(arg1).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg4)
                mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= eth.balance(this.address) - ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 292] = 2
                    mem[(2 * ceil32(return_data.size)) + 324] = address(arg1)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 392] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 424] = 0
                    mem[(4 * ceil32(return_data.size)) + 456] = 160
                    mem[(4 * ceil32(return_data.size)) + 552] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 324
                    t = (4 * ceil32(return_data.size)) + 584
                    while idx < mem[(2 * ceil32(return_data.size)) + 292]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 488] = this.address
                    mem[(4 * ceil32(return_data.size)) + 520] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 552 len (32 * mem[(2 * ceil32(return_data.size)) + 292]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg3):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + 484] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 484
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + 452] = address(arg3)
                        mem[(6 * ceil32(return_data.size)) + 484] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 488] = 0
                        mem[(6 * ceil32(return_data.size)) + 520] = 128
                        mem[(6 * ceil32(return_data.size)) + 616] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 648
                        while idx < 0, mem[(4 * ceil32(return_data.size)) + 392 len 28]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor10)
                        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args 0, 128, msg.sender, block.timestamp, mem[(6 * ceil32(return_data.size)) + 616 len (32 * 0, mem[(4 * ceil32(return_data.size)) + 392 len 28]) + 32]
                else:
                    mem[(2 * ceil32(return_data.size)) + 296] = address(arg4)
                    mem[(2 * ceil32(return_data.size)) + 328] = stor1
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg4), stor1
                    mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 324] = address(arg1)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 392] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 552] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 324
                    t = (6 * ceil32(return_data.size)) + 584
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 488] = this.address
                    mem[(6 * ceil32(return_data.size)) + 520] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 584 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg3):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + 484] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 484
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + 420] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + 452] = address(arg3)
                        mem[(7 * ceil32(return_data.size)) + 484] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 488] = 0
                        mem[(7 * ceil32(return_data.size)) + 520] = 128
                        mem[(7 * ceil32(return_data.size)) + 616] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 648
                        while idx < 0, mem[(6 * ceil32(return_data.size)) + 392 len 28]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor10)
                        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args 0, 128, msg.sender, block.timestamp, mem[(7 * ceil32(return_data.size)) + 616 len (32 * 0, mem[(6 * ceil32(return_data.size)) + 392 len 28]) + 32]
            else:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if stor4 != address(arg1):
                    mem[ceil32(return_data.size) + 296] = this.address
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 296] = this.address
                    mem[(2 * ceil32(return_data.size)) + 328] = address(arg4)
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg4)
                    mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0:
                        mem[(4 * ceil32(return_data.size)) + 324] = address(arg1)
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(4 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 392] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 324
                        t = (6 * ceil32(return_data.size)) + 584
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 584 len 64]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 296] = address(arg4)
                        mem[(4 * ceil32(return_data.size)) + 328] = stor1
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + 324] = address(arg1)
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                        mem[(7 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 392] = 0
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 324
                        t = (7 * ceil32(return_data.size)) + 584
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(7 * ceil32(return_data.size)) + 584 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg3):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_e1598e4c = eth.balance(this.address)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    revert with 0, 50
                if eth.balance(this.address) < ext_call.return_data[0]:
                    revert with 0, 17
                mem[ceil32(return_data.size) + 296] = this.address
                mem[ceil32(return_data.size) + 328] = address(arg4)
                staticcall address(arg1).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg4)
                mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= eth.balance(this.address) - ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 292] = 2
                    mem[(2 * ceil32(return_data.size)) + 324] = address(arg1)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 392] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 424] = 0
                    mem[(4 * ceil32(return_data.size)) + 456] = 160
                    mem[(4 * ceil32(return_data.size)) + 552] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + 324
                    t = (4 * ceil32(return_data.size)) + 584
                    while idx < mem[(2 * ceil32(return_data.size)) + 292]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 488] = this.address
                    mem[(4 * ceil32(return_data.size)) + 520] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 552 len (32 * mem[(2 * ceil32(return_data.size)) + 292]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg3):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + 484] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 484
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + 420] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + 452] = address(arg3)
                        mem[(6 * ceil32(return_data.size)) + 484] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + 488] = 0
                        mem[(6 * ceil32(return_data.size)) + 520] = 128
                        mem[(6 * ceil32(return_data.size)) + 616] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 420
                        t = (6 * ceil32(return_data.size)) + 648
                        while idx < 0, mem[(4 * ceil32(return_data.size)) + 392 len 28]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor10)
                        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args 0, 128, msg.sender, block.timestamp, mem[(6 * ceil32(return_data.size)) + 616 len (32 * 0, mem[(4 * ceil32(return_data.size)) + 392 len 28]) + 32]
                else:
                    mem[(2 * ceil32(return_data.size)) + 296] = address(arg4)
                    mem[(2 * ceil32(return_data.size)) + 328] = stor1
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg4), stor1
                    mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 292] = 2
                    mem[(4 * ceil32(return_data.size)) + 324] = address(arg1)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + 388] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 356] = ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + 388] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 392] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + 552] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 324
                    t = (6 * ceil32(return_data.size)) + 584
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + 488] = this.address
                    mem[(6 * ceil32(return_data.size)) + 520] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + 584 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg3):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + 484] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 484
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + 420] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + 452] = address(arg3)
                        mem[(7 * ceil32(return_data.size)) + 484] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + 488] = 0
                        mem[(7 * ceil32(return_data.size)) + 520] = 128
                        mem[(7 * ceil32(return_data.size)) + 616] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + 420
                        t = (7 * ceil32(return_data.size)) + 648
                        while idx < 0, mem[(6 * ceil32(return_data.size)) + 392 len 28]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + 552] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + 584] = block.timestamp
                        require ext_code.size(stor10)
                        call stor10.mem[mem[64] len 4] with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + (32 * 0, mem[(6 * ceil32(return_data.size)) + 392 len 28]) + -mem[64] + 644]
        else:
            mem[ceil32(return_data.size) + 292] = return_data.size
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if stor4 != address(arg1):
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(arg4)
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg4)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg4)
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = stor1
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), stor1
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                        t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                        while idx < mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len (32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg3):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_e1598e4c = eth.balance(this.address)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    revert with 0, 50
                if eth.balance(this.address) < ext_call.return_data[0]:
                    revert with 0, 17
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(arg4)
                staticcall address(arg1).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg4)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= eth.balance(this.address) - ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                    while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg3):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 485
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = address(arg3)
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 128
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                        while idx < mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor10)
                        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args 0, 128, msg.sender, block.timestamp, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]) + 32]
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg4)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = stor1
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg4), stor1
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                    t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg3):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 485
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = address(arg3)
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 128
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
                        t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                        while idx < 0, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 28]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor10)
                        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args 0, 128, msg.sender, block.timestamp, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len (32 * 0, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 28]) + 32]
            else:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if stor4 != address(arg1):
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
                    staticcall address(arg1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = this.address
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(arg4)
                    staticcall address(arg1).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(arg4)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 0:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                        while idx < 2:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
                    else:
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg4)
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = stor1
                        call address(arg1).approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), stor1
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                        t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                        while idx < mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor9)
                        call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args 0, 0, 160, address(this.address), block.timestamp, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len (32 * mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg3):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_e1598e4c = eth.balance(this.address)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    revert with 0, 50
                if eth.balance(this.address) < ext_call.return_data[0]:
                    revert with 0, 17
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = this.address
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(arg4)
                staticcall address(arg1).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(arg4)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= eth.balance(this.address) - ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 160
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
                    idx = 0
                    s = (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                    t = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                    while idx < mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 553 len (32 * mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg3):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 485
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = address(arg3)
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 128
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
                        t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                        while idx < mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(stor10)
                        call stor10.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args 0, 128, msg.sender, block.timestamp, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 617 len (32 * mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389]) + 32]
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg4)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = stor1
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg4), stor1
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 2
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = address(arg1)
                    staticcall stor9.WETH() with:
                            gas gas_remaining wei
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[12 len 20]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 389] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = eth.balance(this.address) - ext_call.return_data[0]
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                    t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = this.address
                    mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = block.timestamp
                    require ext_code.size(stor9)
                    call stor9.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args eth.balance(this.address) - ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 585 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 100 < sub_1f927dcb:
                        revert with 0, 17
                    if eth.balance(this.address) < sub_e1598e4c:
                        revert with 0, 17
                    if eth.balance(this.address) - sub_e1598e4c and -sub_1f927dcb + 100 > -1 / eth.balance(this.address) - sub_e1598e4c:
                        revert with 0, 17
                    if stor4 == address(arg3):
                        call msg.sender with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        staticcall stor9.WETH() with:
                                gas gas_remaining wei
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 485
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421] = ext_call.return_data[12 len 20]
                        if 1 >= 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32:
                            revert with 0, 50
                        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 453] = address(arg3)
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 485] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = 0
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = 128
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 617] = 0, Mask(224, 32, eth.balance(this.address) - ext_call.return_data[0]) >> 32
                        idx = 0
                        s = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 421
                        t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 649
                        while idx < 0, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 28]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = msg.sender
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 585] = block.timestamp
                        require ext_code.size(stor10)
                        call stor10.mem[mem[64] len 4] with:
                           value (100 * eth.balance(this.address)) - (sub_1f927dcb * eth.balance(this.address)) - (100 * sub_e1598e4c) + (sub_1f927dcb * sub_e1598e4c) / 100 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * 0, mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 393 len 28]) + -mem[64] + 645]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_e1598e4c = eth.balance(this.address)
}



}
