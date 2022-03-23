contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

function approve() {
  stop
}

function _fallback() payable {
    revert
}

function sub_0ced824e(?) {
    require calldata.size - 4 >= 32
    mem[288 len 0] = None
    return Array(len=3, data=mem[288 len 96])
}

function sub_400a3b3b(?) {
    require calldata.size - 4 >= 32
    mem[256 len 0] = None
    return Array(len=2, data=mem[256 len 64])
}

function sub_8ee82e4a(?) {
    require calldata.size - 4 >= 32
    mem[288 len 0] = None
    return Array(len=3, data=mem[288 len 96])
}

function sub_d293266b(?) {
    require calldata.size - 4 >= 32
    mem[256 len 0] = None
    return Array(len=2, data=mem[256 len 64])
}

function transferBNB(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor3
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function swapETH(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    mem[96] = 3
    mem[128] = stor1
    mem[160] = stor2
    mem[192] = arg1
    mem[224] = 2
    mem[256] = arg1
    mem[288] = stor1
    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[324] = msg.value
    mem[356] = 64
    mem[388] = 3
    mem[420 len 0] = None
    require ext_code.size(stor0)
    staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args msg.value, Array(len=3, data=mem[420 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 320
    require return_data.size >= 32
    _134 = mem[320 len 4], Mask(224, 32, msg.value) >> 32
    require mem[320 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
    require mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
    require mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]
    _137 = mem[_134 + 320]
    mem[ceil32(return_data.size) + 352 len floor32(mem[_134 + 320])] = mem[_134 + 352 len floor32(mem[_134 + 320])]
    require 2 < mem[ceil32(return_data.size) + 320]
    _253 = mem[ceil32(return_data.size) + 416]
    mem[(32 * _137) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _137) + ceil32(return_data.size) + 356] = _253
    mem[(32 * _137) + ceil32(return_data.size) + 388] = 64
    mem[(32 * _137) + ceil32(return_data.size) + 420] = 2
    mem[(32 * _137) + ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(stor0)
    staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _253, Array(len=2, data=mem[(32 * _137) + ceil32(return_data.size) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _137) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _137) + (2 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _367 = mem[(32 * _137) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _253) >> 32
    require mem[(32 * _137) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _253) >> 32 <= 4294967296
    require mem[(32 * _137) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _253) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _137) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _253) >> 32 + (32 * _137) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _137) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _253) >> 32 + (32 * mem[mem[(32 * _137) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _253) >> 32 + (32 * _137) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
    mem[(32 * _137) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _137) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _253) >> 32 + (32 * _137) + ceil32(return_data.size) + 352]
    _370 = mem[_367 + (32 * _137) + ceil32(return_data.size) + 352]
    mem[(32 * _137) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_367 + (32 * _137) + ceil32(return_data.size) + 352])] = mem[_367 + (32 * _137) + ceil32(return_data.size) + 384 len floor32(mem[_367 + (32 * _137) + ceil32(return_data.size) + 352])]
    require 1 < mem[(32 * _137) + (2 * ceil32(return_data.size)) + 352]
    if mem[(32 * _137) + (2 * ceil32(return_data.size)) + 416] > msg.value:
        require 2 < mem[ceil32(return_data.size) + 320]
        _475 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 388] = _475
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 452] = msg.sender
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 484] = arg2
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 420] = 128
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 516] = 3
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 548 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value msg.value wei
             gas gas_remaining wei
            args _475, Array(len=3, data=mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 548 len 96]), msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _579 = mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _475) >> 32
        require mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _475) >> 32 <= 4294967296
        require mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _475) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _475) >> 32 + (32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _475) >> 32 + (32 * mem[mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _475) >> 32 + (32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
        mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _475) >> 32 + (32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384]
        _584 = mem[_579 + (32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384]
        mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_579 + (32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384])] = mem[_579 + (32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_579 + (32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _661 = mem[ceil32(return_data.size) + 416]
        require 1 < mem[(32 * _137) + (2 * ceil32(return_data.size)) + 352]
        _663 = mem[(32 * _137) + (2 * ceil32(return_data.size)) + 416]
        mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 416] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 420] = _661
        mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 452] = _663
        mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 516] = msg.sender
        mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 548] = arg2
        mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 484] = 160
        mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 580] = 2
        mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _661, _663, Array(len=2, data=mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 612 len 64]), msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _584) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        require mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _661) >> 32 <= 4294967296
        require mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _661) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _661) >> 32 + (32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _661) >> 32 + (32 * mem[mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _661) >> 32 + (32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
        mem[(32 * _584) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _661) >> 32 + (32 * _584) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 416]
        require 1 < mem[(32 * _137) + (2 * ceil32(return_data.size)) + 352]
        call msg.sender with:
           value mem[(32 * _137) + (2 * ceil32(return_data.size)) + 416] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 384] = 2
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 416] = stor1
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 448] = arg1
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 480] = 3
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 512] = arg1
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 544] = stor2
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 576] = stor1
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 612] = msg.value
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 644] = 64
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 676] = 2
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 708 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args msg.value, Array(len=2, data=mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 708 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 608
        require return_data.size >= 32
        _577 = mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, msg.value) >> 32
        require mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, msg.value) >> 32 + (32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608] <= 4294967296 and mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, msg.value) >> 32 + (32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608]) + 32 <= return_data.size
        mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 608] = mem[mem[(32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, msg.value) >> 32 + (32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608]
        _583 = mem[_577 + (32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608]
        mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640 len floor32(mem[_577 + (32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608])] = mem[_577 + (32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 640 len floor32(mem[_577 + (32 * _370) + (32 * _137) + (2 * ceil32(return_data.size)) + 608])]
        require 1 < mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 608]
        _657 = mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 672]
        mem[(32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 644] = _657
        mem[(32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 676] = 64
        mem[(32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 708] = 3
        mem[(32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 740 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _657, Array(len=3, data=mem[(32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 740 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 640
        require return_data.size >= 32
        _727 = mem[(32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _657) >> 32
        require mem[(32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _657) >> 32 <= 4294967296
        require mem[(32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _657) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _657) >> 32 + (32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640] <= 4294967296 and mem[(32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _657) >> 32 + (32 * mem[mem[(32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _657) >> 32 + (32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640]) + 32 <= return_data.size
        mem[(32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 640] = mem[mem[(32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _657) >> 32 + (32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640]
        _733 = mem[_727 + (32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640]
        mem[(32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672 len floor32(mem[_727 + (32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640])] = mem[_727 + (32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 672 len floor32(mem[_727 + (32 * _583) + (32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 640])]
        require 2 < mem[(32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 640]
        if mem[(32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 736] > msg.value:
            require 1 < mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 608]
            _784 = mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 672]
            mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 676] = _784
            mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 740] = msg.sender
            mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 772] = arg2
            mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 708] = 128
            mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 804] = 2
            mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 836 len 0] = None
            require ext_code.size(stor0)
            call stor0.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value wei
                 gas gas_remaining wei
                args _784, Array(len=2, data=mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 836 len 64]), msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 672
            require return_data.size >= 32
            _818 = mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, _784) >> 32
            require mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, _784) >> 32 <= 4294967296
            require mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, _784) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, _784) >> 32 + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672] <= 4294967296 and mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, _784) >> 32 + (32 * mem[mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, _784) >> 32 + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672]) + 32 <= return_data.size
            mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 672] = mem[mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, _784) >> 32 + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672]
            _821 = mem[_818 + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672]
            mem[(32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704 len floor32(mem[_818 + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672])] = mem[_818 + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 704 len floor32(mem[_818 + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 672])]
            require 1 < mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 608]
            require 2 < mem[(32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 640]
            _846 = mem[(32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 736]
            mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 708] = mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 672]
            mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 740] = _846
            mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 804] = msg.sender
            mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 836] = arg2
            mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 772] = 160
            mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 868] = 3
            mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 900 len 0] = None
            require ext_code.size(stor0)
            call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 672], _846, Array(len=3, data=mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 900 len 96]), msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (8 * ceil32(return_data.size)) + 704
            require return_data.size >= 32
            _865 = mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 672 len 28]
            require mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 672 len 28] <= 4294967296
            require mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 672 len 28] + 32 <= return_data.size
            require mem[mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 672 len 28] + (32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704] <= 4294967296 and mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 672 len 28] + (32 * mem[mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 672 len 28] + (32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704]) + 32 <= return_data.size
            mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (8 * ceil32(return_data.size)) + 704] = mem[mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _370) + (32 * _137) + (4 * ceil32(return_data.size)) + 672 len 28] + (32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704]
            mem[(32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (8 * ceil32(return_data.size)) + 736 len floor32(mem[_865 + (32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704])] = mem[_865 + (32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 736 len floor32(mem[_865 + (32 * _821) + (32 * _733) + (32 * _583) + (32 * _370) + (32 * _137) + (7 * ceil32(return_data.size)) + 704])]
            require 2 < mem[(32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 640]
            call msg.sender with:
               value mem[(32 * _583) + (32 * _370) + (32 * _137) + (6 * ceil32(return_data.size)) + 736] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
