contract main {




// =====================  Runtime code  =====================


#
#  - sub_21b63863(?)
#
address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == stor4
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor1, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor4
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_fb3ac427(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _15 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = stor1
        mem[(32 * arg1.length) + 164] = -1
        require ext_code.size(address(_15))
        call address(_15).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor1, -1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = stor0
        mem[(32 * arg1.length) + 164] = -1
        require ext_code.size(address(_20))
        call address(_20).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor0, -1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_fc3ed34e(?) {
    require calldata.size - 4 >= 64
    mem[96] = 3
    mem[128] = stor2
    mem[160] = stor3
    mem[192] = arg1
    mem[224] = 2
    mem[256] = arg1
    mem[288] = stor2
    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[324] = arg2
    mem[356] = 64
    mem[388] = 3
    mem[420 len 0] = None
    require ext_code.size(stor0)
    staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg2, Array(len=3, data=mem[420 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 320
    require return_data.size >= 32
    _114 = mem[320 len 4], Mask(224, 32, arg2) >> 32
    require mem[320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320]
    _117 = mem[_114 + 320]
    mem[ceil32(return_data.size) + 352 len floor32(mem[_114 + 320])] = mem[_114 + 352 len floor32(mem[_114 + 320])]
    require 1 < mem[ceil32(return_data.size) + 320]
    _213 = mem[ceil32(return_data.size) + 384]
    mem[(32 * _117) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _117) + ceil32(return_data.size) + 356] = _213
    mem[(32 * _117) + ceil32(return_data.size) + 388] = 64
    mem[(32 * _117) + ceil32(return_data.size) + 420] = 2
    mem[(32 * _117) + ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(stor1)
    staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _213, Array(len=2, data=mem[(32 * _117) + ceil32(return_data.size) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _117) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _117) + (2 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _307 = mem[(32 * _117) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _213) >> 32
    require mem[(32 * _117) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _213) >> 32 <= 4294967296
    require mem[(32 * _117) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _213) >> 32 + 32 <= return_data.size
    require mem[(32 * _117) + ceil32(return_data.size) + mem[(32 * _117) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _213) >> 32 + 352] <= 4294967296 and mem[(32 * _117) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _213) >> 32 + (32 * mem[(32 * _117) + ceil32(return_data.size) + mem[(32 * _117) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _213) >> 32 + 352]) + 32 <= return_data.size
    mem[(32 * _117) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _117) + ceil32(return_data.size) + mem[(32 * _117) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _213) >> 32 + 352]
    _310 = mem[(32 * _117) + ceil32(return_data.size) + _307 + 352]
    mem[(32 * _117) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _117) + ceil32(return_data.size) + _307 + 352])] = mem[(32 * _117) + ceil32(return_data.size) + _307 + 384 len floor32(mem[(32 * _117) + ceil32(return_data.size) + _307 + 352])]
    require 1 < mem[(32 * _117) + (2 * ceil32(return_data.size)) + 352]
    if mem[(32 * _117) + (2 * ceil32(return_data.size)) + 416] > arg2:
        require 1 < mem[ceil32(return_data.size) + 320]
        _397 = mem[ceil32(return_data.size) + 384]
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 388] = arg2
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 420] = _397
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 484] = this.address
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 516] = 9999999999
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 452] = 160
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 548] = 3
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 580 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, _397, Array(len=3, data=mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 580 len 96]), address(this.address), 9999999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _479 = mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 384] <= 4294967296 and mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 384]) + 32 <= return_data.size
        mem[(32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 384] = mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 384]
        _484 = mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + _479 + 384]
        mem[(32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + _479 + 384])] = mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + _479 + 416 len floor32(mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + _479 + 384])]
        require 1 < mem[ceil32(return_data.size) + 320]
        require 2 < mem[(32 * _117) + (2 * ceil32(return_data.size)) + 352]
        _544 = mem[(32 * _117) + (2 * ceil32(return_data.size)) + 448]
        mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 420] = mem[ceil32(return_data.size) + 384]
        mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 452] = _544
        mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 516] = this.address
        mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 548] = 9999999999
        mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 484] = 160
        mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 580] = 2
        mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 384], _544, Array(len=2, data=mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), 9999999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _484) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        require mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 416 len 4], mem[ceil32(return_data.size) + 384 len 28] <= 4294967296
        require mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 416 len 4], mem[ceil32(return_data.size) + 384 len 28] + 32 <= return_data.size
        require mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 416 len 4], mem[ceil32(return_data.size) + 384 len 28] + 416] <= 4294967296 and mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 416 len 4], mem[ceil32(return_data.size) + 384 len 28] + (32 * mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + mem[(32 * _484) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 416 len 4], mem[ceil32(return_data.size) + 384 len 28] + 416]) + 32 <= return_data.size
    else:
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 384] = 3
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 416] = arg1
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 448] = stor3
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 480] = stor2
        require 1 < mem[ceil32(return_data.size) + 320]
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 516] = mem[ceil32(return_data.size) + 384]
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 548] = 64
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 580] = 3
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor1)
        staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args mem[ceil32(return_data.size) + 384], Array(len=3, data=mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 612 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 512
        require return_data.size >= 32
        _477 = mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 512 len 4], mem[ceil32(return_data.size) + 384 len 28]
        require mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 512 len 4], mem[ceil32(return_data.size) + 384 len 28] <= 4294967296
        require mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 512 len 4], mem[ceil32(return_data.size) + 384 len 28] + 32 <= return_data.size
        require mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 512 len 4], mem[ceil32(return_data.size) + 384 len 28] + 512] <= 4294967296 and mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 512 len 4], mem[ceil32(return_data.size) + 384 len 28] + (32 * mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 512 len 4], mem[ceil32(return_data.size) + 384 len 28] + 512]) + 32 <= return_data.size
        mem[(32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 512] = mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + 512 len 4], mem[ceil32(return_data.size) + 384 len 28] + 512]
        _483 = mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + _477 + 512]
        mem[(32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + _477 + 512])] = mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + _477 + 544 len floor32(mem[(32 * _310) + (32 * _117) + (2 * ceil32(return_data.size)) + _477 + 512])]
        require 2 < mem[(32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 512]
        if mem[(32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 608] <= arg2:
            revert with 0, 'no profit'
        require 1 < mem[ceil32(return_data.size) + 320]
        mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 544] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 548] = arg2
        mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 580] = mem[ceil32(return_data.size) + 384]
        mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 644] = this.address
        mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 676] = 9999999999
        mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 612] = 160
        mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 708] = 3
        mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 740 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, mem[ceil32(return_data.size) + 384], Array(len=3, data=mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 740 len 96]), address(this.address), 9999999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 544
        require return_data.size >= 32
        _589 = mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 544] <= 4294967296 and mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 544]) + 32 <= return_data.size
        mem[(32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 544] = mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 544]
        _595 = mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + _589 + 544]
        mem[(32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + _589 + 544])] = mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + _589 + 576 len floor32(mem[(32 * _483) + (32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + _589 + 544])]
        require 1 < mem[ceil32(return_data.size) + 320]
        require 1 < mem[(32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 512]
        _619 = mem[(32 * _310) + (32 * _117) + (4 * ceil32(return_data.size)) + 576]
        mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 576] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 580] = mem[ceil32(return_data.size) + 384]
        mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 612] = _619
        mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 676] = this.address
        mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 708] = 9999999999
        mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 644] = 160
        mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 740] = 2
        mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 772 len 0] = None
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 384], _619, Array(len=2, data=mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 772 len 64]), address(this.address), 9999999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (7 * ceil32(return_data.size)) + 576
        require return_data.size >= 32
        require mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 576 len 4], mem[ceil32(return_data.size) + 384 len 28] <= 4294967296
        require mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 576 len 4], mem[ceil32(return_data.size) + 384 len 28] + 32 <= return_data.size
        require mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 576 len 4], mem[ceil32(return_data.size) + 384 len 28] + 576] <= 4294967296 and mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 576 len 4], mem[ceil32(return_data.size) + 384 len 28] + (32 * mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + mem[(32 * _595) + (32 * _483) + (32 * _310) + (32 * _117) + (6 * ceil32(return_data.size)) + 576 len 4], mem[ceil32(return_data.size) + 384 len 28] + 576]) + 32 <= return_data.size
}

function sub_61d057f6(?) {
    require calldata.size - 4 >= 64
    mem[96] = 3
    mem[128] = stor2
    mem[160] = stor3
    mem[192] = arg1
    mem[224] = 2
    mem[256] = arg1
    mem[288] = stor2
    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[324] = arg2
    mem[356] = 64
    mem[388] = 3
    mem[420 len 0] = None
    require ext_code.size(stor1)
    staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg2, Array(len=3, data=mem[420 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 320
    require return_data.size >= 32
    _124 = mem[320 len 4], Mask(224, 32, arg2) >> 32
    require mem[320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320]
    _127 = mem[_124 + 320]
    mem[ceil32(return_data.size) + 352 len floor32(mem[_124 + 320])] = mem[_124 + 352 len floor32(mem[_124 + 320])]
    require 2 < mem[ceil32(return_data.size) + 320]
    _233 = mem[ceil32(return_data.size) + 416]
    mem[(32 * _127) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _127) + ceil32(return_data.size) + 356] = _233
    mem[(32 * _127) + ceil32(return_data.size) + 388] = 64
    mem[(32 * _127) + ceil32(return_data.size) + 420] = 2
    mem[(32 * _127) + ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(stor0)
    staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _233, Array(len=2, data=mem[(32 * _127) + ceil32(return_data.size) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _127) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _127) + (2 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _337 = mem[(32 * _127) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _233) >> 32
    require mem[(32 * _127) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _233) >> 32 <= 4294967296
    require mem[(32 * _127) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _233) >> 32 + 32 <= return_data.size
    require mem[(32 * _127) + ceil32(return_data.size) + mem[(32 * _127) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _233) >> 32 + 352] <= 4294967296 and mem[(32 * _127) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _233) >> 32 + (32 * mem[(32 * _127) + ceil32(return_data.size) + mem[(32 * _127) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _233) >> 32 + 352]) + 32 <= return_data.size
    mem[(32 * _127) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _127) + ceil32(return_data.size) + mem[(32 * _127) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _233) >> 32 + 352]
    _340 = mem[(32 * _127) + ceil32(return_data.size) + _337 + 352]
    mem[(32 * _127) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _127) + ceil32(return_data.size) + _337 + 352])] = mem[(32 * _127) + ceil32(return_data.size) + _337 + 384 len floor32(mem[(32 * _127) + ceil32(return_data.size) + _337 + 352])]
    require 1 < mem[(32 * _127) + (2 * ceil32(return_data.size)) + 352]
    if mem[(32 * _127) + (2 * ceil32(return_data.size)) + 416] > arg2:
        require 2 < mem[ceil32(return_data.size) + 320]
        _437 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 388] = arg2
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 420] = _437
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 484] = this.address
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 516] = 9999999999
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 452] = 160
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 548] = 3
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 580 len 0] = None
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, _437, Array(len=3, data=mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 580 len 96]), address(this.address), 9999999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _529 = mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 384] <= 4294967296 and mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 384]) + 32 <= return_data.size
        mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 384] = mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 384]
        _534 = mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + _529 + 384]
        mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + _529 + 384])] = mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + _529 + 416 len floor32(mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + _529 + 384])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _605 = mem[ceil32(return_data.size) + 416]
        require 1 < mem[(32 * _127) + (2 * ceil32(return_data.size)) + 352]
        _607 = mem[(32 * _127) + (2 * ceil32(return_data.size)) + 416]
        mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 420] = _605
        mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 452] = _607
        mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 516] = this.address
        mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 548] = 9999999999
        mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 484] = 160
        mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 580] = 2
        mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _605, _607, Array(len=2, data=mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), 9999999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _534) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        require mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _605) >> 32 <= 4294967296
        require mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _605) >> 32 + 32 <= return_data.size
        require mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _605) >> 32 + 416] <= 4294967296 and mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _605) >> 32 + (32 * mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + mem[(32 * _534) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _605) >> 32 + 416]) + 32 <= return_data.size
    else:
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 384] = 2
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 416] = stor2
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 448] = arg1
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 484] = arg2
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 516] = 64
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 548] = 2
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 580 len 0] = None
        require ext_code.size(stor1)
        staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 580 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 480
        require return_data.size >= 32
        _527 = mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
        mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
        _533 = mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + _527 + 480]
        mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + _527 + 480])] = mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + _527 + 512 len floor32(mem[(32 * _340) + (32 * _127) + (2 * ceil32(return_data.size)) + _527 + 480])]
        require 1 < mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 480]
        _601 = mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 544]
        mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 516] = _601
        mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 548] = 64
        mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 580] = 2
        mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _601, Array(len=2, data=mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 612 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 512
        require return_data.size >= 32
        _665 = mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _601) >> 32
        require mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _601) >> 32 <= 4294967296
        require mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _601) >> 32 + 32 <= return_data.size
        require mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _601) >> 32 + 512] <= 4294967296 and mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _601) >> 32 + (32 * mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _601) >> 32 + 512]) + 32 <= return_data.size
        mem[(32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 512] = mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _601) >> 32 + 512]
        _671 = mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + _665 + 512]
        mem[(32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + _665 + 512])] = mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + _665 + 544 len floor32(mem[(32 * _533) + (32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + _665 + 512])]
        require 1 < mem[(32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 512]
        if mem[(32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 576] <= arg2:
            revert with 0, 'no profit'
        require 1 < mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 480]
        _714 = mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 544]
        mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 544] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 548] = arg2
        mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 580] = _714
        mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 644] = this.address
        mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 676] = 9999999999
        mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 612] = 160
        mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 708] = 2
        mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 740 len 0] = None
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, _714, Array(len=2, data=mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 740 len 64]), address(this.address), 9999999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 544
        require return_data.size >= 32
        _744 = mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 544] <= 4294967296 and mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 544]) + 32 <= return_data.size
        mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 544] = mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 544]
        _747 = mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + _744 + 544]
        mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + _744 + 544])] = mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + _744 + 576 len floor32(mem[(32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + _744 + 544])]
        require 1 < mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 480]
        require 1 < mem[(32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 512]
        _768 = mem[(32 * _533) + (32 * _340) + (32 * _127) + (6 * ceil32(return_data.size)) + 576]
        mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 576] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 580] = mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 544]
        mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 612] = _768
        mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 676] = this.address
        mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 708] = 9999999999
        mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 644] = 160
        mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 740] = 2
        mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 772 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 544], _768, Array(len=2, data=mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 772 len 64]), address(this.address), 9999999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (8 * ceil32(return_data.size)) + 576
        require return_data.size >= 32
        require mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 544 len 28] <= 4294967296
        require mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 544 len 28] + 32 <= return_data.size
        require mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 544 len 28] + 576] <= 4294967296 and mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 544 len 28] + (32 * mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + mem[(32 * _747) + (32 * _671) + (32 * _533) + (32 * _340) + (32 * _127) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _340) + (32 * _127) + (4 * ceil32(return_data.size)) + 544 len 28] + 576]) + 32 <= return_data.size
}



}
