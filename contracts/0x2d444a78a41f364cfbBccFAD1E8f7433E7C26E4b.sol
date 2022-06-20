contract main {




// =====================  Runtime code  =====================


address mainOwner;
mapping of uint8 stor1;

function owners(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function mainOwner() {
    return mainOwner
}

function sub_a4909422(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[msg.sender]:
        revert with 0, 'NO'
    selfdestruct(address(arg1))
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if mainOwner != msg.sender:
        revert with 0, 'NMO'
    mainOwner = arg1
    stor1[address(arg1)] = 1
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[msg.sender]:
        revert with 0, 'NO'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[msg.sender]:
        revert with 0, 'NO'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function setOwners(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if mainOwner != msg.sender:
        revert with 0, 'NMO'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_1b5fc0dc(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'NO'
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = address(arg2)
    mem[196] = 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602
    mem[228] = -1
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602, -1
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 196] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg3
    mem[(2 * ceil32(return_data.size)) + 228] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = 128
    t = (2 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _49 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
    _50 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require _49 + (32 * _50) + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _50)] = mem[(2 * ceil32(return_data.size)) + _49 + 224 len ceil32(32 * _50)]
    if 1 >= _50:
        revert with 0, 50
    _73 = mem[(4 * ceil32(return_data.size)) + 256]
    mem[0] = msg.sender
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
    call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    _94 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_94] < ext_call.return_data[0]:
        revert with 0, 17
    if _73 < mem[_94] - ext_call.return_data[0]:
        revert with 0, 17
    if _73 - mem[_94] + ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _73:
        revert with 0, 18
    if (10000 * _73) - (10000 * mem[_94]) + (10000 * ext_call.return_data[0]) / _73 >= arg4:
        revert with 0, 'STH'
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
         gas gas_remaining wei
        args ((16 * calldata.size) + 35154 / 30800)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_84ac9d80(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'NO'
    mem[96] = 2
    mem[128] = address(arg1)
    mem[160] = address(arg2)
    mem[196] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 196] = 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602
    mem[ceil32(return_data.size) + 228] = -1
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602, -1
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 228] = 64
    mem[(4 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = 128
    t = (4 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _53 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
    _54 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require _53 + (32 * _54) + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _54)] = mem[(4 * ceil32(return_data.size)) + _53 + 224 len ceil32(32 * _54)]
    if 1 >= _54:
        revert with 0, 50
    _77 = mem[(6 * ceil32(return_data.size)) + 256]
    mem[0] = msg.sender
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
    call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    _98 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_98] < ext_call.return_data[0]:
        revert with 0, 17
    if _77 < mem[_98] - ext_call.return_data[0]:
        revert with 0, 17
    if _77 - mem[_98] + ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _77:
        revert with 0, 18
    if (10000 * _77) - (10000 * mem[_98]) + (10000 * ext_call.return_data[0]) / _77 >= arg3:
        revert with 0, 'STH'
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
         gas gas_remaining wei
        args ((16 * calldata.size) + 35154 / 30800)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a0825f92(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'NO'
    mem[100] = 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602
    mem[132] = -1
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602, -1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = address(arg2)
    mem[ceil32(return_data.size) + 160] = address(arg1)
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = arg4
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
    staticcall 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg4, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _119 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 223
    _120 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    require _119 + (32 * _120) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _120)] = mem[ceil32(return_data.size) + _119 + 224 len ceil32(32 * _120)]
    if 1 >= _120:
        revert with 0, 50
    _234 = mem[(2 * ceil32(return_data.size)) + 256]
    mem[0] = msg.sender
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg4
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    call 0x0010ed43c718714eb63d5aa57b78b54704e25602.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg4, 0, 160, address(this.address), block.timestamp, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _346 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _347 = mem[_346]
    require mem[_346] <= test266151307()
    require _346 + return_data.size > _346 + mem[_346] + 31
    _348 = mem[_346 + mem[_346]]
    if mem[_346 + mem[_346]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_346 + mem[_346]]) + 1 < 0 or _346 + ceil32(return_data.size) + ceil32(32 * mem[_346 + mem[_346]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _346 + ceil32(return_data.size) + ceil32(32 * mem[_346 + mem[_346]]) + 1
    mem[_346 + ceil32(return_data.size)] = _348
    require _347 + (32 * _348) + 32 <= return_data.size
    mem[_346 + ceil32(return_data.size) + 32 len ceil32(32 * _348)] = mem[_346 + _347 + 32 len ceil32(32 * _348)]
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _452 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if _234 < mem[_452]:
        revert with 0, 17
    if _234 - mem[_452] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _234:
        revert with 0, 18
    if (10000 * _234) - (10000 * mem[_452]) / _234 >= arg5:
        revert with 0, 'BTH'
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 128] = address(arg1)
    if 1 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 160] = address(arg2)
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _460 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _461 = mem[_460]
    mem[mem[64] + 4] = 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602
    mem[mem[64] + 36] = -1
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602, -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _466 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_466] == bool(mem[_466])
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _470 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _471 = mem[_470]
    _472 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[0] = msg.sender
    mem[mem[64] + 4] = _461
    mem[mem[64] + 36] = 64
    _475 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 68] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 100
    while idx < _475:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _472 + (32 * _475) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _550 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _551 = mem[_550]
    require mem[_550] <= test266151307()
    require _550 + return_data.size > _550 + mem[_550] + 31
    _552 = mem[_550 + mem[_550]]
    if mem[_550 + mem[_550]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_550 + mem[_550]]) + 1 < 0 or _550 + ceil32(return_data.size) + ceil32(32 * mem[_550 + mem[_550]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _550 + ceil32(return_data.size) + ceil32(32 * mem[_550 + mem[_550]]) + 1
    mem[_550 + ceil32(return_data.size)] = _552
    require _551 + (32 * _552) + 32 <= return_data.size
    mem[_550 + ceil32(return_data.size) + 32 len ceil32(32 * _552)] = mem[_550 + _551 + 32 len ceil32(32 * _552)]
    if 1 >= _552:
        revert with 0, 50
    _622 = mem[_550 + ceil32(return_data.size) + 64]
    _625 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _461
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _626 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _626:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_625 + 100] = this.address
    mem[_625 + 132] = block.timestamp
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
    call 0x0010ed43c718714eb63d5aa57b78b54704e25602.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _625 + (32 * _626) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    _690 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_690] < _471:
        revert with 0, 17
    if _622 < mem[_690] - _471:
        revert with 0, 17
    if _622 - mem[_690] + _471 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _622:
        revert with 0, 18
    if (10000 * _622) - (10000 * mem[_690]) + (10000 * _471) / _622 >= arg5:
        revert with 0, 'STH'
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 128] = address(arg2)
    if 1 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 160] = address(arg1)
    _697 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 64
    _699 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 68] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 100
    while idx < _699:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _697 + (32 * _699) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _747 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _748 = mem[_747]
    require mem[_747] <= test266151307()
    require _747 + return_data.size > _747 + mem[_747] + 31
    _749 = mem[_747 + mem[_747]]
    if mem[_747 + mem[_747]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_747 + mem[_747]]) + 1 < 0 or _747 + ceil32(return_data.size) + ceil32(32 * mem[_747 + mem[_747]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _747 + ceil32(return_data.size) + ceil32(32 * mem[_747 + mem[_747]]) + 1
    mem[_747 + ceil32(return_data.size)] = _749
    require _748 + (32 * _749) + 32 <= return_data.size
    mem[_747 + ceil32(return_data.size) + 32 len ceil32(32 * _749)] = mem[_747 + _748 + 32 len ceil32(32 * _749)]
    if 1 >= _749:
        revert with 0, 50
    _792 = mem[_747 + ceil32(return_data.size) + 64]
    _795 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _796 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _796:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_795 + 100] = this.address
    mem[_795 + 132] = block.timestamp
    call 0x0010ed43c718714eb63d5aa57b78b54704e25602.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _795 + (32 * _796) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _831 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _832 = mem[_831]
    require mem[_831] <= test266151307()
    require _831 + return_data.size > _831 + mem[_831] + 31
    _833 = mem[_831 + mem[_831]]
    if mem[_831 + mem[_831]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_831 + mem[_831]]) + 1 < 0 or _831 + ceil32(return_data.size) + ceil32(32 * mem[_831 + mem[_831]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _831 + ceil32(return_data.size) + ceil32(32 * mem[_831 + mem[_831]]) + 1
    mem[_831 + ceil32(return_data.size)] = _833
    require _832 + (32 * _833) + 32 <= return_data.size
    mem[_831 + ceil32(return_data.size) + 32 len ceil32(32 * _833)] = mem[_831 + _832 + 32 len ceil32(32 * _833)]
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _864 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if _792 < mem[_864]:
        revert with 0, 17
    if _792 - mem[_864] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _792:
        revert with 0, 18
    if (10000 * _792) - (10000 * mem[_864]) / _792 >= arg5:
        revert with 0, 'BTH2'
    if arg6 >= 1:
        idx = 1
        while idx <= arg6:
            _887 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _890 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = ceil32(return_data.size) + 128
            u = mem[64] + 196
            while s < _890:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_887 + 100] = this.address
            mem[_887 + 132] = block.timestamp
            call ????????????????????????????????????????.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _887 + (32 * _890) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _904 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _905 = mem[_904]
            require mem[_904] <= test266151307()
            require _904 + return_data.size > _904 + mem[_904] + 31
            _906 = mem[_904 + mem[_904]]
            if mem[_904 + mem[_904]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_904 + mem[_904]]) + 1 < 0 or _904 + ceil32(return_data.size) + ceil32(32 * mem[_904 + mem[_904]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _904 + ceil32(return_data.size) + ceil32(32 * mem[_904 + mem[_904]]) + 1
            mem[_904 + ceil32(return_data.size)] = _906
            require _905 + (32 * _906) + 32 <= return_data.size
            t = _904 + ceil32(return_data.size) + 32
            s = _904 + _905 + 32
            while s < _904 + _905 + (32 * _906) + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
         gas gas_remaining wei
        args ((16 * calldata.size) + 35154 / 30800)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_fbd3beda(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'NO'
    mem[100] = 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602
    mem[132] = -1
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602, -1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = address(arg2)
    mem[ceil32(return_data.size) + 160] = address(arg1)
    mem[ceil32(return_data.size) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[0] = msg.sender
    mem[ceil32(return_data.size) + 196] = arg5
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
    staticcall 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg5, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _126 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
    _127 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    require _126 + (32 * _127) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _127)] = mem[ceil32(return_data.size) + _126 + 224 len ceil32(32 * _127)]
    if 0 >= _127:
        revert with 0, 50
    _238 = mem[(2 * ceil32(return_data.size)) + 224]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _241 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _242 = mem[_241]
    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[0] = msg.sender
    mem[mem[64] + 4] = arg5
    mem[mem[64] + 36] = arg3
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    call ????????????????????????????????????????.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg5, arg3, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _358 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _359 = mem[_358]
    require mem[_358] <= test266151307()
    require _358 + return_data.size > _358 + mem[_358] + 31
    _360 = mem[_358 + mem[_358]]
    if mem[_358 + mem[_358]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_358 + mem[_358]]) + 1 < 0 or _358 + ceil32(return_data.size) + ceil32(32 * mem[_358 + mem[_358]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _358 + ceil32(return_data.size) + ceil32(32 * mem[_358 + mem[_358]]) + 1
    mem[_358 + ceil32(return_data.size)] = _360
    require _359 + (32 * _360) + 32 <= return_data.size
    mem[_358 + ceil32(return_data.size) + 32 len ceil32(32 * _360)] = mem[_358 + _359 + 32 len ceil32(32 * _360)]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _469 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if _242 < mem[_469]:
        revert with 0, 17
    if _242 - mem[_469] < _238:
        revert with 0, 17
    if _242 - mem[_469] - _238 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _238:
        revert with 0, 18
    if (10000 * _242) - (10000 * mem[_469]) - (10000 * _238) / _238 >= arg6:
        revert with 0, 'BTH'
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 128] = address(arg1)
    if 1 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 160] = address(arg2)
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _477 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _478 = mem[_477]
    mem[mem[64] + 4] = 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602
    mem[mem[64] + 36] = -1
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602, -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _483 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_483] == bool(mem[_483])
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _487 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _488 = mem[_487]
    _489 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[0] = msg.sender
    mem[mem[64] + 4] = _478
    mem[mem[64] + 36] = 64
    _492 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 68] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 100
    while idx < _492:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _489 + (32 * _492) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _572 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _573 = mem[_572]
    require mem[_572] <= test266151307()
    require _572 + return_data.size > _572 + mem[_572] + 31
    _574 = mem[_572 + mem[_572]]
    if mem[_572 + mem[_572]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_572 + mem[_572]]) + 1 < 0 or _572 + ceil32(return_data.size) + ceil32(32 * mem[_572 + mem[_572]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _572 + ceil32(return_data.size) + ceil32(32 * mem[_572 + mem[_572]]) + 1
    mem[_572 + ceil32(return_data.size)] = _574
    require _573 + (32 * _574) + 32 <= return_data.size
    mem[_572 + ceil32(return_data.size) + 32 len ceil32(32 * _574)] = mem[_572 + _573 + 32 len ceil32(32 * _574)]
    if 1 >= _574:
        revert with 0, 50
    _649 = mem[_572 + ceil32(return_data.size) + 64]
    _652 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _478
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _653 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _653:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_652 + 100] = this.address
    mem[_652 + 132] = block.timestamp
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
    call 0x0010ed43c718714eb63d5aa57b78b54704e25602.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _652 + (32 * _653) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    _722 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_722] < _488:
        revert with 0, 17
    if _649 < mem[_722] - _488:
        revert with 0, 17
    if _649 - mem[_722] + _488 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _649:
        revert with 0, 18
    if (10000 * _649) - (10000 * mem[_722]) + (10000 * _488) / _649 >= arg6:
        revert with 0, 'STH'
    _725 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_725]:
        revert with 0, 50
    mem[_725 + 32] = address(arg2)
    if 1 >= mem[_725]:
        revert with 0, 50
    mem[_725 + 64] = address(arg1)
    mem[_725 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[_725 + 100] = arg4
    mem[_725 + 132] = 64
    mem[_725 + 164] = mem[_725]
    idx = 0
    s = _725 + 32
    t = _725 + 196
    while idx < mem[_725]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _725 + (32 * mem[_725]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _784 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _785 = mem[_784]
    require mem[_784] <= test266151307()
    require _784 + return_data.size > _784 + mem[_784] + 31
    _786 = mem[_784 + mem[_784]]
    if mem[_784 + mem[_784]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_784 + mem[_784]]) + 1 < 0 or _784 + ceil32(return_data.size) + ceil32(32 * mem[_784 + mem[_784]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _784 + ceil32(return_data.size) + ceil32(32 * mem[_784 + mem[_784]]) + 1
    mem[_784 + ceil32(return_data.size)] = _786
    require _785 + (32 * _786) + 32 <= return_data.size
    mem[_784 + ceil32(return_data.size) + 32 len ceil32(32 * _786)] = mem[_784 + _785 + 32 len ceil32(32 * _786)]
    if 0 >= _786:
        revert with 0, 50
    _833 = mem[_784 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _836 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _837 = mem[_836]
    _838 = mem[64]
    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg4
    mem[mem[64] + 36] = arg3
    mem[mem[64] + 68] = 160
    _841 = mem[_725]
    mem[mem[64] + 164] = mem[_725]
    idx = 0
    s = _725 + 32
    t = mem[64] + 196
    while idx < _841:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_838 + 100] = this.address
    mem[_838 + 132] = block.timestamp
    call ????????????????????????????????????????.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _838 + (32 * _841) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _876 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _877 = mem[_876]
    require mem[_876] <= test266151307()
    require _876 + return_data.size > _876 + mem[_876] + 31
    _878 = mem[_876 + mem[_876]]
    if mem[_876 + mem[_876]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_876 + mem[_876]]) + 1 < 0 or _876 + ceil32(return_data.size) + ceil32(32 * mem[_876 + mem[_876]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _876 + ceil32(return_data.size) + ceil32(32 * mem[_876 + mem[_876]]) + 1
    mem[_876 + ceil32(return_data.size)] = _878
    require _877 + (32 * _878) + 32 <= return_data.size
    mem[_876 + ceil32(return_data.size) + 32 len ceil32(32 * _878)] = mem[_876 + _877 + 32 len ceil32(32 * _878)]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _909 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if _837 < mem[_909]:
        revert with 0, 17
    if _837 - mem[_909] < _833:
        revert with 0, 17
    if _837 - mem[_909] - _833 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _833:
        revert with 0, 18
    if (10000 * _837) - (10000 * mem[_909]) - (10000 * _833) / _833 >= arg6:
        revert with 0, 'BTH2'
    if arg7 >= 1:
        idx = 1
        while idx <= arg7:
            _932 = mem[64]
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg4
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 68] = 160
            _935 = mem[_725]
            mem[mem[64] + 164] = mem[_725]
            s = 0
            t = _725 + 32
            u = mem[64] + 196
            while s < _935:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_932 + 100] = this.address
            mem[_932 + 132] = block.timestamp
            call ????????????????????????????????????????.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _932 + (32 * _935) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _949 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _950 = mem[_949]
            require mem[_949] <= test266151307()
            require _949 + return_data.size > _949 + mem[_949] + 31
            _951 = mem[_949 + mem[_949]]
            if mem[_949 + mem[_949]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_949 + mem[_949]]) + 1 < 0 or _949 + ceil32(return_data.size) + ceil32(32 * mem[_949 + mem[_949]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _949 + ceil32(return_data.size) + ceil32(32 * mem[_949 + mem[_949]]) + 1
            mem[_949 + ceil32(return_data.size)] = _951
            require _950 + (32 * _951) + 32 <= return_data.size
            t = _949 + ceil32(return_data.size) + 32
            s = _949 + _950 + 32
            while s < _949 + _950 + (32 * _951) + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeUpTo(uint256 arg1) with:
         gas gas_remaining wei
        args ((16 * calldata.size) + 35154 / 30800)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
