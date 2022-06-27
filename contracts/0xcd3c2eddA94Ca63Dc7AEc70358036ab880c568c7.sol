contract main {




// =====================  Runtime code  =====================


address stor0;
array of address stor2;
array of address stor3;
uint256 stor5;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;

function _fallback() payable {
    revert
}

function sub_8623acad(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Only Owner'
    stor5 = arg1
}

function sub_720da394(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Only Owner'
    address(stor6.field_0) = address(arg1)
}

function sub_d79df8fc(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Only Owner'
    Mask(96, 0, stor6.field_160) = Mask(96, 0, bool(arg1))
}

function withdrawBNB() {
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Only Owner'
    call address(stor6.field_0) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'E5'
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Only Owner'
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
        args address(stor6.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_529d8719(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor6.field_0) != msg.sender:
        revert with 0, 'Only Owner'
    if uint8(stor6.field_160):
        revert with 0, 'Trading is disabled'
    require ext_code.size(0x254246331cacbc0b2ea12bef6632e4c6075f60e2)
    staticcall 0x254246331cacbc0b2ea12bef6632e4c6075f60e2.calculatePrice() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg1
    mem[ceil32(return_data.size) + 132] = 64
    mem[ceil32(return_data.size) + 164] = stor2.length
    mem[0] = 2
    idx = 0
    s = 0
    t = ceil32(return_data.size) + 196
    while idx < stor2.length:
        mem[t] = stor2[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=stor2.length, data=mem[ceil32(return_data.size) + 196 len 32 * stor2.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _39 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _40 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _40
    require _39 + (32 * _40) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _39 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _40:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _40:
        revert with 'NH{q', 50
    _69 = mem[(2 * ceil32(return_data.size)) + 160]
    if mem[(2 * ceil32(return_data.size)) + 160] and 9975 > -1 / mem[(2 * ceil32(return_data.size)) + 160]:
        revert with 'NH{q', 17
    if 9975 * mem[(2 * ceil32(return_data.size)) + 160] / 10000 and 9975 > -1 / 9975 * mem[(2 * ceil32(return_data.size)) + 160] / 10000:
        revert with 'NH{q', 17
    if 9975 * 9975 * mem[(2 * ceil32(return_data.size)) + 160] / 10000 / 10000 and ext_call.return_data[0] > -1 / 9975 * 9975 * mem[(2 * ceil32(return_data.size)) + 160] / 10000 / 10000:
        revert with 'NH{q', 17
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 9975 * 9975 * _69 / 10000 / 10000 * ext_call.return_data[0] / 10^18
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = stor3.length
    mem[0] = 3
    idx = 0
    s = 0
    t = mem[64] + 100
    while idx < stor3.length:
        mem[t] = stor3[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 9975 * 9975 * _69 / 10000 / 10000 * ext_call.return_data[0] / 10^18, Array(len=stor3.length, data=mem[mem[64] + 100 len 32 * stor3.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _94 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _95 = mem[_94]
    require mem[_94] <= test266151307()
    require _94 + mem[_94] + 31 < _94 + return_data.size
    _96 = mem[_94 + mem[_94]]
    if mem[_94 + mem[_94]] > test266151307():
        revert with 'NH{q', 65
    if _94 + ceil32(return_data.size) + floor32(mem[_94 + mem[_94]]) + 1 > test266151307() or floor32(mem[_94 + mem[_94]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _94 + ceil32(return_data.size) + floor32(mem[_94 + mem[_94]]) + 1
    mem[_94 + ceil32(return_data.size)] = _96
    require _95 + (32 * _96) + 32 <= return_data.size
    idx = 0
    s = _94 + _95 + 32
    t = _94 + ceil32(return_data.size) + 32
    while idx < _96:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _96:
        revert with 'NH{q', 50
    _121 = mem[_94 + ceil32(return_data.size) + 64]
    mem[mem[64] + 4] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    mem[mem[64] + 36] = arg1
    require ext_code.size(stor0)
    staticcall stor0.flashFee(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _124 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _125 = mem[_124]
    require mem[_124] == mem[_124]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = stor0
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _128 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _129 = mem[_128]
    require mem[_128] == mem[_128]
    if arg1 > -_125 - 1:
        revert with 'NH{q', 17
    if mem[_128] > -arg1 + -_125 - 1:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = stor0
    mem[mem[64] + 36] = _129 + arg1 + _125
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, _129 + arg1 + _125
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _132 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_132] == bool(mem[_132])
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    mem[mem[64] + 68] = arg1
    mem[mem[64] + 100] = 128
    mem[mem[64] + 132] = 4
    mem[mem[64] + 164] = '0x00'
    require ext_code.size(stor0)
    call stor0.flashLoan(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args address(this.address), 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c, arg1, Array(len=4, data='0x00')
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _136 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_136] == bool(mem[_136])
    return _121, arg1, _125
}

function onFlashLoan(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'E1'
    if arg1 != this.address:
        revert with 0, 'E2'
    if arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg3 + arg4 > -stor5 - 1:
        revert with 'NH{q', 17
    mem[100] = this.address
    require ext_code.size(0x254246331cacbc0b2ea12bef6632e4c6075f60e2)
    staticcall 0x254246331cacbc0b2ea12bef6632e4c6075f60e2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    mem[ceil32(return_data.size) + 132] = arg3
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, arg3
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -31:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 132] = 0
    mem[(2 * ceil32(return_data.size)) + 164] = 160
    mem[(2 * ceil32(return_data.size)) + 260] = stor2.length
    idx = 0
    s = 0
    t = (2 * ceil32(return_data.size)) + 292
    while idx < stor2.length:
        mem[t] = stor2[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 196] = this.address
    mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp + 30
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, address(this.address), block.timestamp + 30, stor2.length, mem[(2 * ceil32(return_data.size)) + 292 len 32 * stor2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0x254246331cacbc0b2ea12bef6632e4c6075f60e2)
    staticcall 0x254246331cacbc0b2ea12bef6632e4c6075f60e2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x254246331cacbc0b2ea12bef6632e4c6075f60e2)
    call 0x254246331cacbc0b2ea12bef6632e4c6075f60e2.sell(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[(7 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 100] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    mem[(8 * ceil32(return_data.size)) + 132] = 0
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    call 0xe9e7cea3dedca5984780bafc599bd69add087d56.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x10ed43c718714eb63d5aa57b78b54704e256024e, 0
    mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if block.timestamp > -31:
        revert with 'NH{q', 17
    mem[(10 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(10 * ceil32(return_data.size)) + 100] = 0
    mem[(10 * ceil32(return_data.size)) + 132] = 0
    mem[(10 * ceil32(return_data.size)) + 164] = 160
    mem[(10 * ceil32(return_data.size)) + 260] = stor3.length
    mem[0] = 3
    idx = 0
    s = 0
    t = (10 * ceil32(return_data.size)) + 292
    while idx < stor3.length:
        mem[t] = stor3[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(10 * ceil32(return_data.size)) + 196] = this.address
    mem[(10 * ceil32(return_data.size)) + 228] = block.timestamp + 30
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, 160, address(this.address), block.timestamp + 30, stor3.length, mem[(10 * ceil32(return_data.size)) + 292 len 32 * stor3.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(10 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (11 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _56 = mem[(10 * ceil32(return_data.size)) + 96 len 4], 0
    require mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 <= test266151307()
    require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 127 < (10 * ceil32(return_data.size)) + return_data.size + 96
    _57 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]
    if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96] > test266151307():
        revert with 'NH{q', 65
    if (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97 > test266151307() or floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (11 * ceil32(return_data.size)) + floor32(mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 96 len 4], 0 + 96]) + 97
    mem[(11 * ceil32(return_data.size)) + 96] = _57
    require _56 + (32 * _57) + 32 <= return_data.size
    idx = 0
    s = (10 * ceil32(return_data.size)) + _56 + 128
    t = (11 * ceil32(return_data.size)) + 128
    while idx < _57:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _84 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_84] == mem[_84]
    if mem[_84] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _88 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_88] == mem[_88]
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_88]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call address(stor6.field_0) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'E4'
    return 0x439148f0bbc682ca079e46d6e2c2f0c1e3b820f1a291b069d8882abf8cf18dd9
}



}
