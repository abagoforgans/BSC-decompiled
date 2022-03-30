contract main {




// =====================  Runtime code  =====================


#
#  - sub_00cb7b86(?)
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

function sub_c5a210f2(?) {
    require calldata.size - 4 >= 96
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
    _193 = mem[320 len 4], Mask(224, 32, arg2) >> 32
    require mem[320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320]
    _196 = mem[_193 + 320]
    mem[ceil32(return_data.size) + 352 len floor32(mem[_193 + 320])] = mem[_193 + 352 len floor32(mem[_193 + 320])]
    require 2 < mem[ceil32(return_data.size) + 320]
    _371 = mem[ceil32(return_data.size) + 416]
    mem[(32 * _196) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _196) + ceil32(return_data.size) + 356] = _371
    mem[(32 * _196) + ceil32(return_data.size) + 388] = 64
    mem[(32 * _196) + ceil32(return_data.size) + 420] = 2
    mem[(32 * _196) + ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(stor0)
    staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _371, Array(len=2, data=mem[(32 * _196) + ceil32(return_data.size) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _196) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _196) + (2 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _544 = mem[(32 * _196) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _371) >> 32
    require mem[(32 * _196) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _371) >> 32 <= 4294967296
    require mem[(32 * _196) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _371) >> 32 + 32 <= return_data.size
    require mem[(32 * _196) + ceil32(return_data.size) + mem[(32 * _196) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _371) >> 32 + 352] <= 4294967296 and mem[(32 * _196) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _371) >> 32 + (32 * mem[(32 * _196) + ceil32(return_data.size) + mem[(32 * _196) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _371) >> 32 + 352]) + 32 <= return_data.size
    mem[(32 * _196) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _196) + ceil32(return_data.size) + mem[(32 * _196) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _371) >> 32 + 352]
    _547 = mem[(32 * _196) + ceil32(return_data.size) + _544 + 352]
    mem[(32 * _196) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _196) + ceil32(return_data.size) + _544 + 352])] = mem[(32 * _196) + ceil32(return_data.size) + _544 + 384 len floor32(mem[(32 * _196) + ceil32(return_data.size) + _544 + 352])]
    require 1 < mem[(32 * _196) + (2 * ceil32(return_data.size)) + 352]
    if mem[(32 * _196) + (2 * ceil32(return_data.size)) + 416] - arg2 <= arg3:
        mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 384] = 2
        mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 416] = stor2
        mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 448] = arg1
        mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 484] = arg2
        mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 516] = 64
        mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 548] = 2
        mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 580 len 0] = None
        require ext_code.size(stor1)
        staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 580 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 480
        require return_data.size >= 32
        _875 = mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
        mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
        _884 = mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + _875 + 480]
        mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + _875 + 480])] = mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + _875 + 512 len floor32(mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + _875 + 480])]
        require 1 < mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 480]
        _1009 = mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544]
        mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 516] = _1009
        mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 548] = 64
        mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 580] = 2
        mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _1009, Array(len=2, data=mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 612 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 512
        require return_data.size >= 32
        _1128 = mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1009) >> 32
        require mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1009) >> 32 <= 4294967296
        require mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1009) >> 32 + 32 <= return_data.size
        require mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1009) >> 32 + 512] <= 4294967296 and mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1009) >> 32 + (32 * mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1009) >> 32 + 512]) + 32 <= return_data.size
        mem[(32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 512] = mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1009) >> 32 + 512]
        _1137 = mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + _1128 + 512]
        mem[(32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + _1128 + 512])] = mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + _1128 + 544 len floor32(mem[(32 * _884) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + _1128 + 512])]
        require 1 < mem[(32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 512]
        if mem[(32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 576] - arg2 <= arg3:
            revert with 0, 'no profit'
        require 1 < mem[(32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 512]
        if mem[(32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 576] <= arg2:
            revert with 0, 'no profit'
        require 1 < mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 480]
        _1236 = mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544]
        mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 548] = arg2
        mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 580] = _1236
        mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 644] = this.address
        mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 676] = 9999999999
        mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 612] = 160
        mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 708] = 2
        mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 740 len 0] = None
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, _1236, Array(len=2, data=mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 740 len 64]), address(this.address), 9999999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 544
        require return_data.size >= 32
        _1296 = mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 544] <= 4294967296 and mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 544]) + 32 <= return_data.size
        mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 544] = mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 544]
        _1302 = mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + _1296 + 544]
        mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + _1296 + 544])] = mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + _1296 + 576 len floor32(mem[(32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + _1296 + 544])]
        require 1 < mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 480]
        require 1 < mem[(32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 512]
        _1344 = mem[(32 * _884) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 576]
        mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 580] = mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544]
        mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 612] = _1344
        mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 676] = this.address
        mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 708] = 9999999999
        mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 644] = 160
        mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 740] = 2
        mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 772 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544], _1344, Array(len=2, data=mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 772 len 64]), address(this.address), 9999999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (8 * ceil32(return_data.size)) + 576
        require return_data.size >= 32
        require mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544 len 28] <= 4294967296
        require mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544 len 28] + 32 <= return_data.size
        require mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544 len 28] + 576] <= 4294967296 and mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544 len 28] + (32 * mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + mem[(32 * _1302) + (32 * _1137) + (32 * _884) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544 len 28] + 576]) + 32 <= return_data.size
    else:
        require 1 < mem[(32 * _196) + (2 * ceil32(return_data.size)) + 352]
        if mem[(32 * _196) + (2 * ceil32(return_data.size)) + 416] > arg2:
            require 2 < mem[ceil32(return_data.size) + 320]
            _718 = mem[ceil32(return_data.size) + 416]
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 388] = arg2
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 420] = _718
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 484] = this.address
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 516] = 9999999999
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 452] = 160
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 548] = 3
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 580 len 0] = None
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg2, _718, Array(len=3, data=mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 580 len 96]), address(this.address), 9999999999
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 384
            require return_data.size >= 32
            _879 = mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
            require mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 384] <= 4294967296 and mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 384]) + 32 <= return_data.size
            mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 384] = mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 384]
            _886 = mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + _879 + 384]
            mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + _879 + 384])] = mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + _879 + 416 len floor32(mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + _879 + 384])]
            require 2 < mem[ceil32(return_data.size) + 320]
            _1017 = mem[ceil32(return_data.size) + 416]
            require 1 < mem[(32 * _196) + (2 * ceil32(return_data.size)) + 352]
            _1019 = mem[(32 * _196) + (2 * ceil32(return_data.size)) + 416]
            mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 420] = _1017
            mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 452] = _1019
            mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 516] = this.address
            mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 548] = 9999999999
            mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 484] = 160
            mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 580] = 2
            mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 612 len 0] = None
            require ext_code.size(stor0)
            call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1017, _1019, Array(len=2, data=mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), 9999999999
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _886) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            require mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1017) >> 32 <= 4294967296
            require mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1017) >> 32 + 32 <= return_data.size
            require mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1017) >> 32 + 416] <= 4294967296 and mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1017) >> 32 + (32 * mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + mem[(32 * _886) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1017) >> 32 + 416]) + 32 <= return_data.size
        else:
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 384] = 2
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 416] = stor2
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 448] = arg1
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 484] = arg2
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 516] = 64
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 548] = 2
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 580 len 0] = None
            require ext_code.size(stor1)
            staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 580 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 480
            require return_data.size >= 32
            _877 = mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32
            require mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
            mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
            _885 = mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + _877 + 480]
            mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + _877 + 480])] = mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + _877 + 512 len floor32(mem[(32 * _547) + (32 * _196) + (2 * ceil32(return_data.size)) + _877 + 480])]
            require 1 < mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 480]
            _1013 = mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544]
            mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 516] = _1013
            mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 548] = 64
            mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 580] = 2
            mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 612 len 0] = None
            require ext_code.size(stor0)
            staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _1013, Array(len=2, data=mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 612 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 512
            require return_data.size >= 32
            _1130 = mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1013) >> 32
            require mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1013) >> 32 <= 4294967296
            require mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1013) >> 32 + 32 <= return_data.size
            require mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1013) >> 32 + 512] <= 4294967296 and mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1013) >> 32 + (32 * mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1013) >> 32 + 512]) + 32 <= return_data.size
            mem[(32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 512] = mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1013) >> 32 + 512]
            _1138 = mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + _1130 + 512]
            mem[(32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + _1130 + 512])] = mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + _1130 + 544 len floor32(mem[(32 * _885) + (32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + _1130 + 512])]
            require 1 < mem[(32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 512]
            if mem[(32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 576] - arg2 <= arg3:
                revert with 0, 'no profit'
            require 1 < mem[(32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 512]
            if mem[(32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 576] <= arg2:
                revert with 0, 'no profit'
            require 1 < mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 480]
            _1240 = mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544]
            mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 548] = arg2
            mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 580] = _1240
            mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 644] = this.address
            mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 676] = 9999999999
            mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 612] = 160
            mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 708] = 2
            mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 740 len 0] = None
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg2, _1240, Array(len=2, data=mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 740 len 64]), address(this.address), 9999999999
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 544
            require return_data.size >= 32
            _1298 = mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32
            require mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 544] <= 4294967296 and mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 544]) + 32 <= return_data.size
            mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 544] = mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, arg2) >> 32 + 544]
            _1303 = mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + _1298 + 544]
            mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + _1298 + 544])] = mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + _1298 + 576 len floor32(mem[(32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + _1298 + 544])]
            require 1 < mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 480]
            require 1 < mem[(32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 512]
            _1348 = mem[(32 * _885) + (32 * _547) + (32 * _196) + (6 * ceil32(return_data.size)) + 576]
            mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 580] = mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544]
            mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 612] = _1348
            mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 676] = this.address
            mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 708] = 9999999999
            mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 644] = 160
            mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 740] = 2
            mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 772 len 0] = None
            require ext_code.size(stor0)
            call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544], _1348, Array(len=2, data=mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 772 len 64]), address(this.address), 9999999999
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (8 * ceil32(return_data.size)) + 576
            require return_data.size >= 32
            require mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544 len 28] <= 4294967296
            require mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544 len 28] + 32 <= return_data.size
            require mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544 len 28] + 576] <= 4294967296 and mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544 len 28] + (32 * mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + mem[(32 * _1303) + (32 * _1138) + (32 * _885) + (32 * _547) + (32 * _196) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _547) + (32 * _196) + (4 * ceil32(return_data.size)) + 544 len 28] + 576]) + 32 <= return_data.size
}

function sub_29fdc55a(?) {
    require calldata.size - 4 >= 96
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
    _201 = mem[320 len 4], Mask(224, 32, arg2) >> 32
    require mem[320 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[320 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg2) >> 32 + 320]
    _204 = mem[_201 + 320]
    mem[ceil32(return_data.size) + 352 len floor32(mem[_201 + 320])] = mem[_201 + 352 len floor32(mem[_201 + 320])]
    require 2 < mem[ceil32(return_data.size) + 320]
    _387 = mem[ceil32(return_data.size) + 416]
    mem[(32 * _204) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _204) + ceil32(return_data.size) + 356] = _387
    mem[(32 * _204) + ceil32(return_data.size) + 388] = 64
    mem[(32 * _204) + ceil32(return_data.size) + 420] = 2
    mem[(32 * _204) + ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(stor1)
    staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _387, Array(len=2, data=mem[(32 * _204) + ceil32(return_data.size) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _204) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _204) + (2 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _568 = mem[(32 * _204) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _387) >> 32
    require mem[(32 * _204) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _387) >> 32 <= 4294967296
    require mem[(32 * _204) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _387) >> 32 + 32 <= return_data.size
    require mem[(32 * _204) + ceil32(return_data.size) + mem[(32 * _204) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _387) >> 32 + 352] <= 4294967296 and mem[(32 * _204) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _387) >> 32 + (32 * mem[(32 * _204) + ceil32(return_data.size) + mem[(32 * _204) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _387) >> 32 + 352]) + 32 <= return_data.size
    mem[(32 * _204) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _204) + ceil32(return_data.size) + mem[(32 * _204) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _387) >> 32 + 352]
    _571 = mem[(32 * _204) + ceil32(return_data.size) + _568 + 352]
    mem[(32 * _204) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _204) + ceil32(return_data.size) + _568 + 352])] = mem[(32 * _204) + ceil32(return_data.size) + _568 + 384 len floor32(mem[(32 * _204) + ceil32(return_data.size) + _568 + 352])]
    require 1 < mem[(32 * _204) + (2 * ceil32(return_data.size)) + 352]
    if mem[(32 * _204) + (2 * ceil32(return_data.size)) + 416] - arg2 <= arg3:
        mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 384] = 2
        mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 416] = stor2
        mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 448] = arg1
        mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 480] = 3
        mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 512] = arg1
        mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 544] = stor3
        mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 576] = stor2
        mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 612] = arg2
        mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 644] = 64
        mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 676] = 2
        mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 708 len 0] = None
        require ext_code.size(stor1)
        staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=2, data=mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 708 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 608
        require return_data.size >= 32
        _915 = mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg2) >> 32 + 608] <= 4294967296 and mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg2) >> 32 + 608]) + 32 <= return_data.size
        mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 608] = mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg2) >> 32 + 608]
        _924 = mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + _915 + 608]
        mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len floor32(mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + _915 + 608])] = mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + _915 + 640 len floor32(mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + _915 + 608])]
        require 1 < mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 608]
        _1049 = mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672]
        mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 644] = _1049
        mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 676] = 64
        mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 708] = 3
        mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 740 len 0] = None
        require ext_code.size(stor1)
        staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _1049, Array(len=3, data=mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 740 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 640
        require return_data.size >= 32
        _1168 = mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1049) >> 32
        require mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1049) >> 32 <= 4294967296
        require mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1049) >> 32 + 32 <= return_data.size
        require mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1049) >> 32 + 640] <= 4294967296 and mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1049) >> 32 + (32 * mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1049) >> 32 + 640]) + 32 <= return_data.size
        mem[(32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 640] = mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1049) >> 32 + 640]
        _1177 = mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + _1168 + 640]
        mem[(32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + _1168 + 640])] = mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + _1168 + 672 len floor32(mem[(32 * _924) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + _1168 + 640])]
        require 2 < mem[(32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 640]
        if mem[(32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 736] - arg2 <= arg3:
            revert with 0, 'no profit'
        require 2 < mem[(32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 640]
        if mem[(32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 736] <= arg2:
            revert with 0, 'no profit'
        require 1 < mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 608]
        _1276 = mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672]
        mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 676] = arg2
        mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 708] = _1276
        mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 772] = this.address
        mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 804] = 9999999999
        mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 740] = 160
        mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 836] = 2
        mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 868 len 0] = None
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, _1276, Array(len=2, data=mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 868 len 64]), address(this.address), 9999999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 672
        require return_data.size >= 32
        _1336 = mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, arg2) >> 32 + 672] <= 4294967296 and mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, arg2) >> 32 + 672]) + 32 <= return_data.size
        mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 672] = mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, arg2) >> 32 + 672]
        _1342 = mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + _1336 + 672]
        mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704 len floor32(mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + _1336 + 672])] = mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + _1336 + 704 len floor32(mem[(32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + _1336 + 672])]
        require 1 < mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 608]
        require 2 < mem[(32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 640]
        _1384 = mem[(32 * _924) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 736]
        mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 708] = mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672]
        mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 740] = _1384
        mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 804] = this.address
        mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 836] = 9999999999
        mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 772] = 160
        mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 868] = 3
        mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 900 len 0] = None
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672], _1384, Array(len=3, data=mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 900 len 96]), address(this.address), 9999999999
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (8 * ceil32(return_data.size)) + 704
        require return_data.size >= 32
        require mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672 len 28] <= 4294967296
        require mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672 len 28] + 32 <= return_data.size
        require mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672 len 28] + 704] <= 4294967296 and mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672 len 28] + (32 * mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + mem[(32 * _1342) + (32 * _1177) + (32 * _924) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672 len 28] + 704]) + 32 <= return_data.size
    else:
        require 1 < mem[(32 * _204) + (2 * ceil32(return_data.size)) + 352]
        if mem[(32 * _204) + (2 * ceil32(return_data.size)) + 416] > arg2:
            require 2 < mem[ceil32(return_data.size) + 320]
            _750 = mem[ceil32(return_data.size) + 416]
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 384] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 388] = arg2
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 420] = _750
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 484] = this.address
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 516] = 9999999999
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 452] = 160
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 548] = 3
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 580 len 0] = None
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg2, _750, Array(len=3, data=mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 580 len 96]), address(this.address), 9999999999
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 384
            require return_data.size >= 32
            _919 = mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32
            require mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 384] <= 4294967296 and mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 384]) + 32 <= return_data.size
            mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 384] = mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, arg2) >> 32 + 384]
            _926 = mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + _919 + 384]
            mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + _919 + 384])] = mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + _919 + 416 len floor32(mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + _919 + 384])]
            require 2 < mem[ceil32(return_data.size) + 320]
            _1057 = mem[ceil32(return_data.size) + 416]
            require 1 < mem[(32 * _204) + (2 * ceil32(return_data.size)) + 352]
            _1059 = mem[(32 * _204) + (2 * ceil32(return_data.size)) + 416]
            mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 420] = _1057
            mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 452] = _1059
            mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 516] = this.address
            mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 548] = 9999999999
            mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 484] = 160
            mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 580] = 2
            mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 612 len 0] = None
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1057, _1059, Array(len=2, data=mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), 9999999999
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _926) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            require mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1057) >> 32 <= 4294967296
            require mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1057) >> 32 + 32 <= return_data.size
            require mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1057) >> 32 + 416] <= 4294967296 and mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1057) >> 32 + (32 * mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + mem[(32 * _926) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1057) >> 32 + 416]) + 32 <= return_data.size
        else:
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 384] = 2
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 416] = stor2
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 448] = arg1
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 480] = 3
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 512] = arg1
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 544] = stor3
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 576] = stor2
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 612] = arg2
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 644] = 64
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 676] = 2
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 708 len 0] = None
            require ext_code.size(stor1)
            staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 708 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 608
            require return_data.size >= 32
            _917 = mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg2) >> 32
            require mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg2) >> 32 + 608] <= 4294967296 and mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg2) >> 32 + 608]) + 32 <= return_data.size
            mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 608] = mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg2) >> 32 + 608]
            _925 = mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + _917 + 608]
            mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len floor32(mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + _917 + 608])] = mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + _917 + 640 len floor32(mem[(32 * _571) + (32 * _204) + (2 * ceil32(return_data.size)) + _917 + 608])]
            require 1 < mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 608]
            _1053 = mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672]
            mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 644] = _1053
            mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 676] = 64
            mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 708] = 3
            mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 740 len 0] = None
            require ext_code.size(stor1)
            staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _1053, Array(len=3, data=mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 740 len 96])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 640
            require return_data.size >= 32
            _1170 = mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1053) >> 32
            require mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1053) >> 32 <= 4294967296
            require mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1053) >> 32 + 32 <= return_data.size
            require mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1053) >> 32 + 640] <= 4294967296 and mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1053) >> 32 + (32 * mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1053) >> 32 + 640]) + 32 <= return_data.size
            mem[(32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 640] = mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1053) >> 32 + 640]
            _1178 = mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + _1170 + 640]
            mem[(32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + _1170 + 640])] = mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + _1170 + 672 len floor32(mem[(32 * _925) + (32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + _1170 + 640])]
            require 2 < mem[(32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 640]
            if mem[(32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 736] - arg2 <= arg3:
                revert with 0, 'no profit'
            require 2 < mem[(32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 640]
            if mem[(32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 736] <= arg2:
                revert with 0, 'no profit'
            require 1 < mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 608]
            _1280 = mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672]
            mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 676] = arg2
            mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 708] = _1280
            mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 772] = this.address
            mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 804] = 9999999999
            mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 740] = 160
            mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 836] = 2
            mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 868 len 0] = None
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg2, _1280, Array(len=2, data=mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 868 len 64]), address(this.address), 9999999999
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 672
            require return_data.size >= 32
            _1338 = mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, arg2) >> 32
            require mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, arg2) >> 32 + 672] <= 4294967296 and mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, arg2) >> 32 + 672]) + 32 <= return_data.size
            mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 672] = mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, arg2) >> 32 + 672]
            _1343 = mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + _1338 + 672]
            mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704 len floor32(mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + _1338 + 672])] = mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + _1338 + 704 len floor32(mem[(32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + _1338 + 672])]
            require 1 < mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 608]
            require 2 < mem[(32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 640]
            _1388 = mem[(32 * _925) + (32 * _571) + (32 * _204) + (6 * ceil32(return_data.size)) + 736]
            mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 708] = mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672]
            mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 740] = _1388
            mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 804] = this.address
            mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 836] = 9999999999
            mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 772] = 160
            mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 868] = 3
            mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 900 len 0] = None
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672], _1388, Array(len=3, data=mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 900 len 96]), address(this.address), 9999999999
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (8 * ceil32(return_data.size)) + 704
            require return_data.size >= 32
            require mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672 len 28] <= 4294967296
            require mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672 len 28] + 32 <= return_data.size
            require mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672 len 28] + 704] <= 4294967296 and mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672 len 28] + (32 * mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + mem[(32 * _1343) + (32 * _1178) + (32 * _925) + (32 * _571) + (32 * _204) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _571) + (32 * _204) + (4 * ceil32(return_data.size)) + 672 len 28] + 704]) + 32 <= return_data.size
}



}
