contract main {




// =====================  Runtime code  =====================


address pcsRouterAddress;
mapping of uint256 stor2;
address stor3;

function pcsRouter() {
    return pcsRouterAddress
}

function _fallback() payable {
    revert
}

function withdraw() payable {
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    stor2[address(msg.sender)] = 0
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function getReserves(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(0x9ac64cc6e4415144c455bd8e4837fea55603e5c3)
    staticcall 0x9ac64cc6e4415144c455bd8e4837fea55603e5c3.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xb7926c0430afb07aa7defde6da862ae0bde767bc)
    staticcall 0xb7926c0430afb07aa7defde6da862ae0bde767bc.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x9ac64cc6e4415144c455bd8e4837fea55603e5c3)
    staticcall 0x9ac64cc6e4415144c455bd8e4837fea55603e5c3.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        return ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    return ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
}

function emergencySell(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 128] = arg1
        require ext_code.size(arg2)
        staticcall arg2.WETH() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(arg2)
        call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = arg2
        mem[(2 * ceil32(return_data.size)) + 132] = -1
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'FAIL TO APPROVE'
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = arg1
        require ext_code.size(arg2)
        staticcall arg2.WETH() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 228] = 0
        mem[(6 * ceil32(return_data.size)) + 260] = 160
        mem[(6 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + 388
        while idx < mem[(4 * ceil32(return_data.size)) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 292] = this.address
        mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(arg2)
        call arg2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sellToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 96] = 2
        mem[(2 * ceil32(return_data.size)) + 128] = arg1
        require ext_code.size(arg2)
        staticcall arg2.WETH() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(4 * ceil32(return_data.size)) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(arg2)
        call arg2.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _55 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
        require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
        _57 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
            revert with 'NH{q', 65
        if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
        require _55 + (32 * _57) + 32 <= return_data.size
        idx = 0
        s = (4 * ceil32(return_data.size)) + _55 + 224
        t = (6 * ceil32(return_data.size)) + 224
        while idx < _57:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[(2 * ceil32(return_data.size)) + 100] = arg2
        mem[(2 * ceil32(return_data.size)) + 132] = -1
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'FAIL TO APPROVE'
        mem[(4 * ceil32(return_data.size)) + 96] = 2
        mem[(4 * ceil32(return_data.size)) + 128] = arg1
        require ext_code.size(arg2)
        staticcall arg2.WETH() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
        if block.timestamp > -61:
            revert with 'NH{q', 17
        mem[(6 * ceil32(return_data.size)) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
        mem[(6 * ceil32(return_data.size)) + 228] = 0
        mem[(6 * ceil32(return_data.size)) + 260] = 160
        mem[(6 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (4 * ceil32(return_data.size)) + 128
        t = (6 * ceil32(return_data.size)) + 388
        while idx < mem[(4 * ceil32(return_data.size)) + 96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(6 * ceil32(return_data.size)) + 292] = this.address
        mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp + 60
        require ext_code.size(arg2)
        call arg2.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _54 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _56 = mem[_54]
        require mem[_54] <= test266151307()
        require _54 + mem[_54] + 31 < _54 + return_data.size
        _58 = mem[_54 + mem[_54]]
        if mem[_54 + mem[_54]] > test266151307():
            revert with 'NH{q', 65
        if _54 + ceil32(return_data.size) + floor32(mem[_54 + mem[_54]]) + 1 > test266151307() or floor32(mem[_54 + mem[_54]]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = _54 + ceil32(return_data.size) + floor32(mem[_54 + mem[_54]]) + 1
        mem[_54 + ceil32(return_data.size)] = _58
        require _56 + (32 * _58) + 32 <= return_data.size
        idx = 0
        s = _54 + _56 + 32
        t = _54 + ceil32(return_data.size) + 32
        while idx < _58:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
}

function sub_58e175d3(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can call this function.'
    if block.number > arg4:
        revert with 0, 'e00'
    if arg1 <= eth.balance(this.address):
        mem[100] = this.address
        mem[132] = address(arg3)
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg3)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 1:
            mem[ceil32(return_data.size) + 96] = 2
            require ext_code.size(address(arg3))
            staticcall address(arg3).WETH() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 160] = address(arg2)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 0
            mem[(2 * ceil32(return_data.size)) + 228] = 128
            mem[(2 * ceil32(return_data.size)) + 324] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = (2 * ceil32(return_data.size)) + 356
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 260] = this.address
            mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp + 60
            require ext_code.size(address(arg3))
            call address(arg3).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg1 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 60, mem[(2 * ceil32(return_data.size)) + 324 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _103 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _107 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require _103 + (32 * _107) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _103 + 224
            t = (4 * ceil32(return_data.size)) + 224
            while idx < _107:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[ceil32(return_data.size) + 100] = address(arg3)
            mem[ceil32(return_data.size) + 132] = -1
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), -1
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'FAIL TO APPROVE'
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            require ext_code.size(address(arg3))
            staticcall address(arg3).WETH() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = 0
            mem[(4 * ceil32(return_data.size)) + 228] = 128
            mem[(4 * ceil32(return_data.size)) + 324] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 260] = this.address
            mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp + 60
            require ext_code.size(address(arg3))
            call address(arg3).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg1 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 60, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _104 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _108 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require _104 + (32 * _108) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + _104 + 224
            t = (6 * ceil32(return_data.size)) + 224
            while idx < _108:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
    else:
        if eth.balance(this.address) > eth.balance(this.address):
            revert with 0, 'Not enough ETH'
        mem[100] = this.address
        mem[132] = address(arg3)
        require ext_code.size(address(arg2))
        staticcall address(arg2).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg3)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 1:
            mem[ceil32(return_data.size) + 96] = 2
            require ext_code.size(address(arg3))
            staticcall address(arg3).WETH() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 160] = address(arg2)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(2 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 196] = 0
            mem[(2 * ceil32(return_data.size)) + 228] = 128
            mem[(2 * ceil32(return_data.size)) + 324] = 2
            idx = 0
            s = ceil32(return_data.size) + 128
            t = (2 * ceil32(return_data.size)) + 356
            while idx < mem[ceil32(return_data.size) + 96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(2 * ceil32(return_data.size)) + 260] = this.address
            mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp + 60
            require ext_code.size(address(arg3))
            call address(arg3).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 60, mem[(2 * ceil32(return_data.size)) + 324 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _105 = mem[(2 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
            _109 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require _105 + (32 * _109) + 32 <= return_data.size
            idx = 0
            s = (2 * ceil32(return_data.size)) + _105 + 224
            t = (4 * ceil32(return_data.size)) + 224
            while idx < _109:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[ceil32(return_data.size) + 100] = address(arg3)
            mem[ceil32(return_data.size) + 132] = -1
            require ext_code.size(address(arg2))
            call address(arg2).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), -1
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'FAIL TO APPROVE'
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            require ext_code.size(address(arg3))
            staticcall address(arg3).WETH() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 160] = address(arg2)
            if block.timestamp > -61:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = 0
            mem[(4 * ceil32(return_data.size)) + 228] = 128
            mem[(4 * ceil32(return_data.size)) + 324] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 260] = this.address
            mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp + 60
            require ext_code.size(address(arg3))
            call address(arg3).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 60, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _106 = mem[(4 * ceil32(return_data.size)) + 192 len 4], 0
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _110 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]) + 1 < 0:
                revert with 'NH{q', 65
            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], 0 + 192]
            require _106 + (32 * _110) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + _106 + 224
            t = (6 * ceil32(return_data.size)) + 224
            while idx < _110:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
}



}
