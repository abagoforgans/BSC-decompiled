contract main {




// =====================  Runtime code  =====================


address stor1;
address stor4;
address stor5;

function _fallback() payable {
    revert
}

function sub_c8f4bee1(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    mem[96 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).token0() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg3 and 998 > -1 / arg3:
        revert with 'NH{q', 17
    if 998 * arg3 / 998 != arg3:
        revert with 0, 'ds-math-mul-overflow'
    if ext_call.return_data[12 len 20] == stor1:
        if not Mask(112, 0, ext_call.return_data[32]):
            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-998 * arg3) - 1:
                revert with 'NH{q', 17
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg3) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-add-overflow'
            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg3):
                revert with 'NH{q', 18
            mem[(2 * ceil32(return_data.size)) + 128] = stor1
            mem[(2 * ceil32(return_data.size)) + 160] = address(arg1)
            if block.timestamp > -31:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 1
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            call stor4.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg3 wei
                 gas gas_remaining wei
                args 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64]), address(this.address), block.timestamp + 30
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.timestamp > -31:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 1
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (2 * ceil32(return_data.size)) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            call stor4.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg3 wei
                 gas gas_remaining wei
                args 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64]), 0xd757b7ff351da9f501daab78707378bbddecb918, block.timestamp + 30
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor5 = address(arg1)
            require ext_code.size(stor5)
            staticcall stor5.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg3), ext_call.return_data[0]
        if 998 * arg3 and Mask(112, 0, ext_call.return_data[32]) > -1 / 998 * arg3:
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        if 998 * arg3 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 998 * arg3:
            revert with 0, 'ds-math-mul-overflow'
        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-998 * arg3) - 1:
            revert with 'NH{q', 17
        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg3) < 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'ds-math-add-overflow'
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg3):
            revert with 'NH{q', 18
        mem[(2 * ceil32(return_data.size)) + 128] = stor1
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg1)
        if block.timestamp > -31:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 1
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor4)
        call stor4.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg3 wei
             gas gas_remaining wei
            args 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64]), address(this.address), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.timestamp > -31:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 1
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor4)
        call stor4.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg3 wei
             gas gas_remaining wei
            args 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64]), 0xd757b7ff351da9f501daab78707378bbddecb918, block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor5 = address(arg1)
        require ext_code.size(stor5)
        staticcall stor5.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        return 998 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (998 * arg3), 
               ext_call.return_data[0]
    if not Mask(112, 0, ext_call.return_data[0]):
        if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-998 * arg3) - 1:
            revert with 'NH{q', 17
        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg3) < 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ds-math-add-overflow'
        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg3):
            revert with 'NH{q', 18
        mem[(2 * ceil32(return_data.size)) + 128] = stor1
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg1)
        if block.timestamp > -31:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 1
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor4)
        call stor4.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg3 wei
             gas gas_remaining wei
            args 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64]), address(this.address), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.timestamp > -31:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = 1
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 356
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor4)
        call stor4.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg3 wei
             gas gas_remaining wei
            args 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64]), 0xd757b7ff351da9f501daab78707378bbddecb918, block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor5 = address(arg1)
        require ext_code.size(stor5)
        staticcall stor5.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        return 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg3), ext_call.return_data[0]
    if 998 * arg3 and Mask(112, 0, ext_call.return_data[0]) > -1 / 998 * arg3:
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    if 998 * arg3 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 998 * arg3:
        revert with 0, 'ds-math-mul-overflow'
    if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 17
    if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'ds-math-mul-overflow'
    if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-998 * arg3) - 1:
        revert with 'NH{q', 17
    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg3) < 1000 * Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 'ds-math-add-overflow'
    if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg3):
        revert with 'NH{q', 18
    mem[(2 * ceil32(return_data.size)) + 128] = stor1
    mem[(2 * ceil32(return_data.size)) + 160] = address(arg1)
    if block.timestamp > -31:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 1
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor4)
    call stor4.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg3 wei
         gas gas_remaining wei
        args 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64]), address(this.address), block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp > -31:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 1
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor4)
    call stor4.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg3 wei
         gas gas_remaining wei
        args 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 356 len 64]), 0xd757b7ff351da9f501daab78707378bbddecb918, block.timestamp + 30
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor5 = address(arg1)
    require ext_code.size(stor5)
    staticcall stor5.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return 998 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * arg3), 
           ext_call.return_data[0]
}



}
