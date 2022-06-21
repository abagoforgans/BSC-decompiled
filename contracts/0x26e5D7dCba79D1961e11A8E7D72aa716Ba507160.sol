contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function sub_8d8db560(?) {
    if not eth.balance(this.address):
        revert with 0, 'bnb amount eq 0'
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'invalid amount'
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c4d8cb49(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor2 != msg.sender:
        revert with 0, 'not u'
    if msg.value <= 0:
        revert with 0, 'err no bnb send'
    if msg.value < msg.value / 2:
        revert with 0, 17
    mem[128] = stor1
    mem[160] = address(arg2)
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    mem[324] = 2
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260] = this.address
    mem[292] = block.timestamp
    require ext_code.size(stor0)
    call stor0.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value / 2 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, '385 not big than 0'
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 260] = 0
    mem[(2 * ceil32(return_data.size)) + 292] = 0
    mem[(2 * ceil32(return_data.size)) + 324] = this.address
    mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
    mem[(2 * ceil32(return_data.size)) + 388] = 0
    call address(arg1).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, uint256 arg7) with:
       value msg.value - (msg.value / 2) wei
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0], 0, 0, this.address, block.timestamp, 0
    mem[(2 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[64] <= 0:
        revert with 0, '389 not have '
    staticcall address(arg1).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args stor1, address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(7 * ceil32(return_data.size)) + 228] = ext_call.return_data[64]
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(8 * ceil32(return_data.size)) + 196] = address(arg2)
    mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[64]
    mem[(8 * ceil32(return_data.size)) + 260] = 0
    mem[(8 * ceil32(return_data.size)) + 292] = 0
    mem[(8 * ceil32(return_data.size)) + 324] = this.address
    mem[(8 * ceil32(return_data.size)) + 356] = block.timestamp
    call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[64], 0, 0, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(10 * ceil32(return_data.size)) + 224] = address(arg2)
    mem[(10 * ceil32(return_data.size)) + 256] = stor1
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(10 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    mem[(11 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(13 * ceil32(return_data.size)) + 288] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[(13 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
    idx = 0
    s = (10 * ceil32(return_data.size)) + 224
    t = (13 * ceil32(return_data.size)) + 484
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor0)
    call stor0.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, stor2, block.timestamp, 2, mem[(13 * ceil32(return_data.size)) + 484 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if eth.balance(this.address):
            call stor2 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if unknown_0x51cff8d9(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            staticcall address(arg1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                revert with 0, 'invalid amount'
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args stor2, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x8d8db560(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if not eth.balance(this.address):
                    revert with 0, 'bnb amount eq 0'
                call stor2 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            else:
                require unknown_0xc4d8cb49(?????) == uint32(call.func_hash) >> 224
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if stor2 != msg.sender:
                    revert with 0, 'not u'
                if msg.value <= 0:
                    revert with 0, 'err no bnb send'
                if msg.value < msg.value / 2:
                    revert with 0, 17
                mem[160] = stor1
                mem[192] = address(arg2)
                mem[224] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
                mem[228] = 0
                mem[356] = 2
                idx = 0
                s = 160
                t = 388
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[292] = this.address
                mem[324] = block.timestamp
                require ext_code.size(stor0)
                call stor0.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                   value msg.value / 2 wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, 2, mem[388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, '385 not big than 0'
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(2 * ceil32(return_data.size)) + 292] = 0
                mem[(2 * ceil32(return_data.size)) + 324] = 0
                mem[(2 * ceil32(return_data.size)) + 356] = this.address
                mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp
                mem[(2 * ceil32(return_data.size)) + 420] = 0
                call address(arg1).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6, uint256 arg7) with:
                   value msg.value - (msg.value / 2) wei
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[0], 0, 0, this.address, block.timestamp, 0
                mem[(2 * ceil32(return_data.size)) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if ext_call.return_data[64] <= 0:
                    revert with 0, '389 not have '
                staticcall address(arg1).factory() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor1, address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(7 * ceil32(return_data.size)) + 260] = ext_call.return_data[64]
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), ext_call.return_data[64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 228] = address(arg2)
                mem[(8 * ceil32(return_data.size)) + 260] = ext_call.return_data[64]
                mem[(8 * ceil32(return_data.size)) + 292] = 0
                mem[(8 * ceil32(return_data.size)) + 324] = 0
                mem[(8 * ceil32(return_data.size)) + 356] = this.address
                mem[(8 * ceil32(return_data.size)) + 388] = block.timestamp
                call address(arg1).removeLiquidityETHSupportingFeeOnTransferTokens(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args address(arg2), ext_call.return_data[64], 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(10 * ceil32(return_data.size)) + 256] = address(arg2)
                mem[(10 * ceil32(return_data.size)) + 288] = stor1
                staticcall address(arg2).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(10 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call address(arg2).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor0, ext_call.return_data[0]
                mem[(11 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(13 * ceil32(return_data.size)) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[(13 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                idx = 0
                s = (10 * ceil32(return_data.size)) + 256
                t = (13 * ceil32(return_data.size)) + 516
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor0)
                call stor0.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, stor2, block.timestamp, 2, mem[(13 * ceil32(return_data.size)) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
