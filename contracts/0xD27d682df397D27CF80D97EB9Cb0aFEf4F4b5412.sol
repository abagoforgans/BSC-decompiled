contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;
address stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    revert
}

function updateWallets(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor3 != msg.sender:
        revert with 0, 'Owner is Allowed'
    stor8 = arg1
    stor9 = arg2
    stor10 = arg3
}

function sub_d272fd1c(?) {
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function updateFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor3 != msg.sender:
        revert with 0, 'Owner is Allowed'
    stor4 = arg1
    stor5 = arg2
    stor6 = arg3
    stor7 = arg4
    if arg1 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg3 > -arg2 - 1:
        revert with 'NH{q', 17
    stor11 = arg1 + arg3 + arg2
    if arg1 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    stor12 = arg1 + arg3 + arg4
}

function sub_b7aaaf68(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    call stor0.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and stor4 > -1 / arg1:
        revert with 'NH{q', 17
    if not arg2:
        if not stor12:
            revert with 'NH{q', 18
        if arg1 and stor6 > -1 / arg1:
            revert with 'NH{q', 17
        if not stor12:
            revert with 'NH{q', 18
        if arg1 < arg1 * stor6 / stor12:
            revert with 'NH{q', 17
        if arg1 - (arg1 * stor6 / stor12) < arg1 * stor4 / stor12:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = stor0
        staticcall stor1.WETH() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
        if Mask(255, 1, arg1 * stor4 / stor12) and 2 > -1 / arg1 * stor4 / stor12 / 2:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 196] = stor1
        mem[(2 * ceil32(return_data.size)) + 228] = Mask(255, 1, arg1 * stor4 / stor12)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg1 * stor4 / stor12 / 2
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(stor1)
        call stor1.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, arg1 * stor4 / stor12), 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 * stor4 / stor12 < arg1 * stor4 / stor12 / 2:
            revert with 'NH{q', 17
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 196] = stor1
        mem[(4 * ceil32(return_data.size)) + 228] = (arg1 * stor4 / stor12) - (arg1 * stor4 / stor12 / 2)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, (arg1 * stor4 / stor12) - (arg1 * stor4 / stor12 / 2)
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 260] = 0
        mem[(6 * ceil32(return_data.size)) + 292] = 0
        mem[(6 * ceil32(return_data.size)) + 324] = stor3
        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp
        call stor1.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args stor0, (arg1 * stor4 / stor12) - (arg1 * stor4 / stor12 / 2), 0, 0, stor3, block.timestamp
        mem[(6 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        mem[(7 * ceil32(return_data.size)) + 192] = 3
        mem[(7 * ceil32(return_data.size)) + 224] = stor0
        staticcall stor1.WETH() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(7 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
        mem[(7 * ceil32(return_data.size)) + 288] = stor2
        mem[(8 * ceil32(return_data.size)) + 324] = stor1
        mem[(8 * ceil32(return_data.size)) + 356] = arg1 * stor6 / stor12
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, arg1 * stor6 / stor12
        mem[(8 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 320] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 324] = arg1 * stor6 / stor12
        mem[(10 * ceil32(return_data.size)) + 356] = 0
        mem[(10 * ceil32(return_data.size)) + 388] = 160
        mem[(10 * ceil32(return_data.size)) + 484] = 3
        idx = 0
        s = (7 * ceil32(return_data.size)) + 224
        t = (10 * ceil32(return_data.size)) + 516
        while idx < mem[(7 * ceil32(return_data.size)) + 192]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(10 * ceil32(return_data.size)) + 420] = stor8
        mem[(10 * ceil32(return_data.size)) + 452] = block.timestamp
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1 * stor6 / stor12, 0, 160, stor8, block.timestamp, mem[(10 * ceil32(return_data.size)) + 484 len (32 * mem[(7 * ceil32(return_data.size)) + 192]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args stor10, arg1 - (arg1 * stor6 / stor12) - (arg1 * stor4 / stor12), mem[(10 * ceil32(return_data.size)) + 388 len 5 * ceil32(return_data.size)]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    else:
        if not stor11:
            revert with 'NH{q', 18
        if arg1 and stor6 > -1 / arg1:
            revert with 'NH{q', 17
        if not stor11:
            revert with 'NH{q', 18
        if arg1 < arg1 * stor6 / stor11:
            revert with 'NH{q', 17
        if arg1 - (arg1 * stor6 / stor11) < arg1 * stor4 / stor11:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = stor0
        staticcall stor1.WETH() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
        if Mask(255, 1, arg1 * stor4 / stor11) and 2 > -1 / arg1 * stor4 / stor11 / 2:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 196] = stor1
        mem[(2 * ceil32(return_data.size)) + 228] = Mask(255, 1, arg1 * stor4 / stor11)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg1 * stor4 / stor11 / 2
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(stor1)
        call stor1.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args Mask(255, 1, arg1 * stor4 / stor11), 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 * stor4 / stor11 < arg1 * stor4 / stor11 / 2:
            revert with 'NH{q', 17
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 196] = stor1
        mem[(4 * ceil32(return_data.size)) + 228] = (arg1 * stor4 / stor11) - (arg1 * stor4 / stor11 / 2)
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, (arg1 * stor4 / stor11) - (arg1 * stor4 / stor11 / 2)
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(6 * ceil32(return_data.size)) + 260] = 0
        mem[(6 * ceil32(return_data.size)) + 292] = 0
        mem[(6 * ceil32(return_data.size)) + 324] = stor3
        mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp
        call stor1.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args stor0, (arg1 * stor4 / stor11) - (arg1 * stor4 / stor11 / 2), 0, 0, stor3, block.timestamp
        mem[(6 * ceil32(return_data.size)) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        mem[(7 * ceil32(return_data.size)) + 192] = 3
        mem[(7 * ceil32(return_data.size)) + 224] = stor0
        staticcall stor1.WETH() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(7 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
        mem[(7 * ceil32(return_data.size)) + 288] = stor2
        mem[(8 * ceil32(return_data.size)) + 324] = stor1
        mem[(8 * ceil32(return_data.size)) + 356] = arg1 * stor6 / stor11
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, arg1 * stor6 / stor11
        mem[(8 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (10 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 320] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 324] = arg1 * stor6 / stor11
        mem[(10 * ceil32(return_data.size)) + 356] = 0
        mem[(10 * ceil32(return_data.size)) + 388] = 160
        mem[(10 * ceil32(return_data.size)) + 484] = 3
        idx = 0
        s = (7 * ceil32(return_data.size)) + 224
        t = (10 * ceil32(return_data.size)) + 516
        while idx < mem[(7 * ceil32(return_data.size)) + 192]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1 * stor6 / stor11, 0, 160, stor8, block.timestamp, mem[(10 * ceil32(return_data.size)) + 484 len (32 * mem[(7 * ceil32(return_data.size)) + 192]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 352] = stor0
        staticcall stor1.WETH() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(10 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
        mem[(10 * ceil32(return_data.size)) + 416] = stor2
        call stor0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor1, arg1 - (arg1 * stor6 / stor11) - (arg1 * stor4 / stor11)
        mem[(11 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(13 * ceil32(return_data.size)) + 448] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[(13 * ceil32(return_data.size)) + 452] = arg1 - (arg1 * stor6 / stor11) - (arg1 * stor4 / stor11)
        idx = 0
        s = (10 * ceil32(return_data.size)) + 352
        t = (13 * ceil32(return_data.size)) + 644
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1 - (arg1 * stor6 / stor11) - (arg1 * stor4 / stor11), 0, 160, stor9, block.timestamp, 3, mem[(13 * ceil32(return_data.size)) + 644 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
