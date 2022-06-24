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
    _45 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223
    _46 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    require _45 + (32 * _46) + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _46)] = mem[(2 * ceil32(return_data.size)) + _45 + 224 len ceil32(32 * _46)]
    if 1 >= _46:
        revert with 0, 50
    _65 = mem[(4 * ceil32(return_data.size)) + 256]
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
    _82 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_82] < ext_call.return_data[0]:
        revert with 0, 17
    if _65 < mem[_82] - ext_call.return_data[0]:
        revert with 0, 17
    if _65 - mem[_82] + ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _65:
        revert with 0, 18
    if (10000 * _65) - (10000 * mem[_82]) + (10000 * ext_call.return_data[0]) / _65 >= arg4:
        revert with 0, 'STH'
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
    mem[0] = msg.sender
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
    _49 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + return_data.size + 192 > (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223
    _50 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _50
    require _49 + (32 * _50) + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _50)] = mem[(4 * ceil32(return_data.size)) + _49 + 224 len ceil32(32 * _50)]
    if 1 >= _50:
        revert with 0, 50
    _69 = mem[(6 * ceil32(return_data.size)) + 256]
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
    _86 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_86] < ext_call.return_data[0]:
        revert with 0, 17
    if _69 < mem[_86] - ext_call.return_data[0]:
        revert with 0, 17
    if _69 - mem[_86] + ext_call.return_data[0] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _69:
        revert with 0, 18
    if (10000 * _69) - (10000 * mem[_86]) + (10000 * ext_call.return_data[0]) / _69 >= arg3:
        revert with 0, 'STH'
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
    _228 = mem[(2 * ceil32(return_data.size)) + 256]
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
    _332 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _333 = mem[_332]
    require mem[_332] <= test266151307()
    require _332 + return_data.size > _332 + mem[_332] + 31
    _334 = mem[_332 + mem[_332]]
    if mem[_332 + mem[_332]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_332 + mem[_332]]) + 1 < 0 or _332 + ceil32(return_data.size) + ceil32(32 * mem[_332 + mem[_332]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _332 + ceil32(return_data.size) + ceil32(32 * mem[_332 + mem[_332]]) + 1
    mem[_332 + ceil32(return_data.size)] = _334
    require _333 + (32 * _334) + 32 <= return_data.size
    mem[_332 + ceil32(return_data.size) + 32 len ceil32(32 * _334)] = mem[_332 + _333 + 32 len ceil32(32 * _334)]
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _430 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if _228 < mem[_430]:
        revert with 0, 17
    if _228 - mem[_430] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _228:
        revert with 0, 18
    if (10000 * _228) - (10000 * mem[_430]) / _228 >= arg5:
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
    _438 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _439 = mem[_438]
    mem[mem[64] + 4] = 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602
    mem[mem[64] + 36] = -1
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602, -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _444 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_444] == bool(mem[_444])
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _448 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _449 = mem[_448]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[0] = msg.sender
    mem[mem[64] + 4] = _439
    mem[mem[64] + 36] = 64
    _453 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 68] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 100
    while idx < _453:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args _439, 64, mem[mem[64] + 68 len (32 * _453) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _520 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _521 = mem[_520]
    require mem[_520] <= test266151307()
    require _520 + return_data.size > _520 + mem[_520] + 31
    _522 = mem[_520 + mem[_520]]
    if mem[_520 + mem[_520]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_520 + mem[_520]]) + 1 < 0 or _520 + ceil32(return_data.size) + ceil32(32 * mem[_520 + mem[_520]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _520 + ceil32(return_data.size) + ceil32(32 * mem[_520 + mem[_520]]) + 1
    mem[_520 + ceil32(return_data.size)] = _522
    require _521 + (32 * _522) + 32 <= return_data.size
    mem[_520 + ceil32(return_data.size) + 32 len ceil32(32 * _522)] = mem[_520 + _521 + 32 len ceil32(32 * _522)]
    if 1 >= _522:
        revert with 0, 50
    _584 = mem[_520 + ceil32(return_data.size) + 64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _439
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _588 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _588:
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
        args _439, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _588) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    _644 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_644] < _449:
        revert with 0, 17
    if _584 < mem[_644] - _449:
        revert with 0, 17
    if _584 - mem[_644] + _449 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _584:
        revert with 0, 18
    if (10000 * _584) - (10000 * mem[_644]) + (10000 * _449) / _584 >= arg5:
        revert with 0, 'STH'
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 128] = address(arg2)
    if 1 >= mem[ceil32(return_data.size) + 96]:
        revert with 0, 50
    mem[ceil32(return_data.size) + 160] = address(arg1)
    _651 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 64
    _653 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 68] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 100
    while idx < _653:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _651 + (32 * _653) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _693 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _694 = mem[_693]
    require mem[_693] <= test266151307()
    require _693 + return_data.size > _693 + mem[_693] + 31
    _695 = mem[_693 + mem[_693]]
    if mem[_693 + mem[_693]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_693 + mem[_693]]) + 1 < 0 or _693 + ceil32(return_data.size) + ceil32(32 * mem[_693 + mem[_693]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _693 + ceil32(return_data.size) + ceil32(32 * mem[_693 + mem[_693]]) + 1
    mem[_693 + ceil32(return_data.size)] = _695
    require _694 + (32 * _695) + 32 <= return_data.size
    mem[_693 + ceil32(return_data.size) + 32 len ceil32(32 * _695)] = mem[_693 + _694 + 32 len ceil32(32 * _695)]
    if 1 >= _695:
        revert with 0, 50
    _730 = mem[_693 + ceil32(return_data.size) + 64]
    _733 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg3
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _734 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _734:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_733 + 100] = this.address
    mem[_733 + 132] = block.timestamp
    call 0x0010ed43c718714eb63d5aa57b78b54704e25602.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _733 + (32 * _734) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _761 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _762 = mem[_761]
    require mem[_761] <= test266151307()
    require _761 + return_data.size > _761 + mem[_761] + 31
    _763 = mem[_761 + mem[_761]]
    if mem[_761 + mem[_761]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_761 + mem[_761]]) + 1 < 0 or _761 + ceil32(return_data.size) + ceil32(32 * mem[_761 + mem[_761]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _761 + ceil32(return_data.size) + ceil32(32 * mem[_761 + mem[_761]]) + 1
    mem[_761 + ceil32(return_data.size)] = _763
    require _762 + (32 * _763) + 32 <= return_data.size
    mem[_761 + ceil32(return_data.size) + 32 len ceil32(32 * _763)] = mem[_761 + _762 + 32 len ceil32(32 * _763)]
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _786 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if _730 < mem[_786]:
        revert with 0, 17
    if _730 - mem[_786] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _730:
        revert with 0, 18
    if (10000 * _730) - (10000 * mem[_786]) / _730 >= arg5:
        revert with 0, 'BTH2'
    if arg6 >= 1:
        idx = 1
        while idx <= arg6:
            _801 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg3
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            _804 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
            s = 0
            t = ceil32(return_data.size) + 128
            u = mem[64] + 196
            while s < _804:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_801 + 100] = this.address
            mem[_801 + 132] = block.timestamp
            call ????????????????????????????????????????.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _801 + (32 * _804) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _814 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _815 = mem[_814]
            require mem[_814] <= test266151307()
            require _814 + return_data.size > _814 + mem[_814] + 31
            _816 = mem[_814 + mem[_814]]
            if mem[_814 + mem[_814]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_814 + mem[_814]]) + 1 < 0 or _814 + ceil32(return_data.size) + ceil32(32 * mem[_814 + mem[_814]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _814 + ceil32(return_data.size) + ceil32(32 * mem[_814 + mem[_814]]) + 1
            mem[_814 + ceil32(return_data.size)] = _816
            require _815 + (32 * _816) + 32 <= return_data.size
            t = _814 + ceil32(return_data.size) + 32
            s = _814 + _815 + 32
            while s < _814 + _815 + (32 * _816) + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
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
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
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
    staticcall 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg5, Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _122 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 192 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 223
    _123 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg5) >> 32 + 192]
    require _122 + (32 * _123) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len ceil32(32 * _123)] = mem[ceil32(return_data.size) + _122 + 224 len ceil32(32 * _123)]
    if 1 >= _123:
        revert with 0, 50
    _234 = mem[(2 * ceil32(return_data.size)) + 256]
    mem[0] = msg.sender
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg5
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
        args arg5, 0, 160, address(this.address), block.timestamp, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _343 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _344 = mem[_343]
    require mem[_343] <= test266151307()
    require _343 + return_data.size > _343 + mem[_343] + 31
    _345 = mem[_343 + mem[_343]]
    if mem[_343 + mem[_343]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_343 + mem[_343]]) + 1 < 0 or _343 + ceil32(return_data.size) + ceil32(32 * mem[_343 + mem[_343]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _343 + ceil32(return_data.size) + ceil32(32 * mem[_343 + mem[_343]]) + 1
    mem[_343 + ceil32(return_data.size)] = _345
    require _344 + (32 * _345) + 32 <= return_data.size
    mem[_343 + ceil32(return_data.size) + 32 len ceil32(32 * _345)] = mem[_343 + _344 + 32 len ceil32(32 * _345)]
    mem[mem[64] + 4] = this.address
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _446 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if _234 < mem[_446]:
        revert with 0, 17
    if _234 - mem[_446] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _234:
        revert with 0, 18
    if (10000 * _234) - (10000 * mem[_446]) / _234 >= arg6:
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
    _454 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _455 = mem[_454]
    mem[mem[64] + 4] = 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602
    mem[mem[64] + 36] = -1
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602, -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _460 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_460] == bool(mem[_460])
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _464 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _465 = mem[_464]
    _466 = mem[64]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[0] = msg.sender
    mem[mem[64] + 4] = _455
    mem[mem[64] + 36] = 64
    _469 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 68] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 100
    while idx < _469:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _466 + (32 * _469) + -mem[64] + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _541 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _542 = mem[_541]
    require mem[_541] <= test266151307()
    require _541 + return_data.size > _541 + mem[_541] + 31
    _543 = mem[_541 + mem[_541]]
    if mem[_541 + mem[_541]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_541 + mem[_541]]) + 1 < 0 or _541 + ceil32(return_data.size) + ceil32(32 * mem[_541 + mem[_541]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _541 + ceil32(return_data.size) + ceil32(32 * mem[_541 + mem[_541]]) + 1
    mem[_541 + ceil32(return_data.size)] = _543
    require _542 + (32 * _543) + 32 <= return_data.size
    mem[_541 + ceil32(return_data.size) + 32 len ceil32(32 * _543)] = mem[_541 + _542 + 32 len ceil32(32 * _543)]
    if 1 >= _543:
        revert with 0, 50
    _610 = mem[_541 + ceil32(return_data.size) + 64]
    _613 = mem[64]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _455
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _614 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _614:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_613 + 100] = this.address
    mem[_613 + 132] = block.timestamp
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e25602)
    call 0x0010ed43c718714eb63d5aa57b78b54704e25602.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _613 + (32 * _614) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    _675 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_675] < _465:
        revert with 0, 17
    if _610 < mem[_675] - _465:
        revert with 0, 17
    if _610 - mem[_675] + _465 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _610:
        revert with 0, 18
    if (10000 * _610) - (10000 * mem[_675]) + (10000 * _465) / _610 >= arg6:
        revert with 0, 'STH'
    _678 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_678]:
        revert with 0, 50
    mem[_678 + 32] = address(arg2)
    if 1 >= mem[_678]:
        revert with 0, 50
    mem[_678 + 64] = address(arg1)
    mem[_678 + 96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[_678 + 100] = arg4
    mem[_678 + 132] = 64
    mem[_678 + 164] = mem[_678]
    idx = 0
    s = _678 + 32
    t = _678 + 196
    while idx < mem[_678]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _678 + (32 * mem[_678]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _729 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _730 = mem[_729]
    require mem[_729] <= test266151307()
    require _729 + return_data.size > _729 + mem[_729] + 31
    _731 = mem[_729 + mem[_729]]
    if mem[_729 + mem[_729]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_729 + mem[_729]]) + 1 < 0 or _729 + ceil32(return_data.size) + ceil32(32 * mem[_729 + mem[_729]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _729 + ceil32(return_data.size) + ceil32(32 * mem[_729 + mem[_729]]) + 1
    mem[_729 + ceil32(return_data.size)] = _731
    require _730 + (32 * _731) + 32 <= return_data.size
    mem[_729 + ceil32(return_data.size) + 32 len ceil32(32 * _731)] = mem[_729 + _730 + 32 len ceil32(32 * _731)]
    if 0 >= _731:
        revert with 0, 50
    _770 = mem[_729 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _773 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _774 = mem[_773]
    _775 = mem[64]
    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg4
    mem[mem[64] + 36] = arg3
    mem[mem[64] + 68] = 160
    _778 = mem[_678]
    mem[mem[64] + 164] = mem[_678]
    idx = 0
    s = _678 + 32
    t = mem[64] + 196
    while idx < _778:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_775 + 100] = this.address
    mem[_775 + 132] = block.timestamp
    call ????????????????????????????????????????.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _775 + (32 * _778) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _805 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _806 = mem[_805]
    require mem[_805] <= test266151307()
    require _805 + return_data.size > _805 + mem[_805] + 31
    _807 = mem[_805 + mem[_805]]
    if mem[_805 + mem[_805]] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[_805 + mem[_805]]) + 1 < 0 or _805 + ceil32(return_data.size) + ceil32(32 * mem[_805 + mem[_805]]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = _805 + ceil32(return_data.size) + ceil32(32 * mem[_805 + mem[_805]]) + 1
    mem[_805 + ceil32(return_data.size)] = _807
    require _806 + (32 * _807) + 32 <= return_data.size
    mem[_805 + ceil32(return_data.size) + 32 len ceil32(32 * _807)] = mem[_805 + _806 + 32 len ceil32(32 * _807)]
    mem[mem[64] + 4] = this.address
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _830 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if _774 < mem[_830]:
        revert with 0, 17
    if _774 - mem[_830] < _770:
        revert with 0, 17
    if _774 - mem[_830] - _770 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not _770:
        revert with 0, 18
    if (10000 * _774) - (10000 * mem[_830]) - (10000 * _770) / _770 >= arg6:
        revert with 0, 'BTH2'
    if arg7 >= 1:
        idx = 1
        while idx <= arg7:
            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg4
            mem[mem[64] + 36] = arg3
            mem[mem[64] + 68] = 160
            _848 = mem[_678]
            mem[mem[64] + 164] = mem[_678]
            s = 0
            t = _678 + 32
            u = mem[64] + 196
            while s < _848:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = this.address
            mem[mem[64] + 132] = block.timestamp
            call ????????????????????????????????????????.swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg4, arg3, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _848) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _858 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _859 = mem[_858]
            require mem[_858] <= test266151307()
            require _858 + return_data.size > _858 + mem[_858] + 31
            _860 = mem[_858 + mem[_858]]
            if mem[_858 + mem[_858]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_858 + mem[_858]]) + 1 < 0 or _858 + ceil32(return_data.size) + ceil32(32 * mem[_858 + mem[_858]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _858 + ceil32(return_data.size) + ceil32(32 * mem[_858 + mem[_858]]) + 1
            mem[_858 + ceil32(return_data.size)] = _860
            require _859 + (32 * _860) + 32 <= return_data.size
            t = _858 + ceil32(return_data.size) + 32
            s = _858 + _859 + 32
            while s < _858 + _859 + (32 * _860) + 32:
                mem[t] = mem[s]
                t = t + 32
                s = s + 32
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
