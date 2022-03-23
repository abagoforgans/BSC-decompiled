contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;

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

function withdraw() {
    require msg.sender == stor3
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
        args stor0, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function sub_477d7f3e(?) payable {
    require calldata.size - 4 >= 96
    mem[96] = 3
    mem[128] = stor1
    mem[160] = stor2
    mem[192] = arg2
    mem[224] = 2
    mem[256] = arg2
    mem[288] = stor1
    mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[324] = arg1
    mem[356] = 64
    mem[388] = 3
    mem[420 len 0] = None
    require ext_code.size(stor0)
    staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=3, data=mem[420 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 320
    require return_data.size >= 32
    _126 = mem[320 len 4], Mask(224, 32, arg1) >> 32
    require mem[320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320]
    _129 = mem[_126 + 320]
    mem[ceil32(return_data.size) + 352 len floor32(mem[_126 + 320])] = mem[_126 + 352 len floor32(mem[_126 + 320])]
    require 2 < mem[ceil32(return_data.size) + 320]
    _237 = mem[ceil32(return_data.size) + 416]
    mem[(32 * _129) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _129) + ceil32(return_data.size) + 356] = _237
    mem[(32 * _129) + ceil32(return_data.size) + 388] = 64
    mem[(32 * _129) + ceil32(return_data.size) + 420] = 2
    mem[(32 * _129) + ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(stor0)
    staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _237, Array(len=2, data=mem[(32 * _129) + ceil32(return_data.size) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _129) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _129) + (2 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _343 = mem[(32 * _129) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _237) >> 32
    require mem[(32 * _129) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _237) >> 32 <= 4294967296
    require mem[(32 * _129) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _237) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _129) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _237) >> 32 + (32 * _129) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _129) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _237) >> 32 + (32 * mem[mem[(32 * _129) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _237) >> 32 + (32 * _129) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
    mem[(32 * _129) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _129) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _237) >> 32 + (32 * _129) + ceil32(return_data.size) + 352]
    _346 = mem[_343 + (32 * _129) + ceil32(return_data.size) + 352]
    mem[(32 * _129) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_343 + (32 * _129) + ceil32(return_data.size) + 352])] = mem[_343 + (32 * _129) + ceil32(return_data.size) + 384 len floor32(mem[_343 + (32 * _129) + ceil32(return_data.size) + 352])]
    require 1 < mem[(32 * _129) + (2 * ceil32(return_data.size)) + 352]
    if mem[(32 * _129) + (2 * ceil32(return_data.size)) + 416] > arg1:
        require 2 < mem[ceil32(return_data.size) + 320]
        _443 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 388] = _443
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 452] = this.address
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 484] = arg3
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 420] = 128
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 516] = 3
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 548 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value arg1 wei
             gas gas_remaining wei
            args _443, Array(len=3, data=mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 548 len 96]), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _539 = mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _443) >> 32
        require mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _443) >> 32 <= 4294967296
        require mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _443) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _443) >> 32 + (32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _443) >> 32 + (32 * mem[mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _443) >> 32 + (32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
        mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _443) >> 32 + (32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384]
        _544 = mem[_539 + (32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384]
        mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_539 + (32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384])] = mem[_539 + (32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_539 + (32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _613 = mem[ceil32(return_data.size) + 416]
        require 1 < mem[(32 * _129) + (2 * ceil32(return_data.size)) + 352]
        _615 = mem[(32 * _129) + (2 * ceil32(return_data.size)) + 416]
        mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 416] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 420] = _613
        mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 452] = _615
        mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 516] = this.address
        mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 548] = arg3
        mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 484] = 160
        mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 580] = 2
        mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _613, _615, Array(len=2, data=mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _544) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        require mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _613) >> 32 <= 4294967296
        require mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _613) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _613) >> 32 + (32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _613) >> 32 + (32 * mem[mem[(32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _613) >> 32 + (32 * _544) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
    else:
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 384] = 2
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 416] = stor1
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 448] = arg2
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 480] = 3
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 512] = arg2
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 544] = stor2
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 576] = stor1
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 612] = arg1
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 644] = 64
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 676] = 2
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 708 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 708 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 608
        require return_data.size >= 32
        _537 = mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg1) >> 32
        require mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg1) >> 32 + (32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608] <= 4294967296 and mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg1) >> 32 + (32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608]) + 32 <= return_data.size
        mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 608] = mem[mem[(32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, arg1) >> 32 + (32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608]
        _543 = mem[_537 + (32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608]
        mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640 len floor32(mem[_537 + (32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608])] = mem[_537 + (32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 640 len floor32(mem[_537 + (32 * _346) + (32 * _129) + (2 * ceil32(return_data.size)) + 608])]
        require 1 < mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 608]
        _609 = mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 672]
        mem[(32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 644] = _609
        mem[(32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 676] = 64
        mem[(32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 708] = 3
        mem[(32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 740 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _609, Array(len=3, data=mem[(32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 740 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 640
        require return_data.size >= 32
        _671 = mem[(32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _609) >> 32
        require mem[(32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _609) >> 32 <= 4294967296
        require mem[(32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _609) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _609) >> 32 + (32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640] <= 4294967296 and mem[(32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _609) >> 32 + (32 * mem[mem[(32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _609) >> 32 + (32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640]) + 32 <= return_data.size
        mem[(32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 640] = mem[mem[(32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _609) >> 32 + (32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640]
        _677 = mem[_671 + (32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640]
        mem[(32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672 len floor32(mem[_671 + (32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640])] = mem[_671 + (32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 672 len floor32(mem[_671 + (32 * _543) + (32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 640])]
        require 2 < mem[(32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 640]
        if mem[(32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 736] > arg1:
            require 1 < mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 608]
            _716 = mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 672]
            mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 676] = _716
            mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 740] = this.address
            mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 772] = arg3
            mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 708] = 128
            mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 804] = 2
            mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 836 len 0] = None
            require ext_code.size(stor0)
            call stor0.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value arg1 wei
                 gas gas_remaining wei
                args _716, Array(len=2, data=mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 836 len 64]), address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 672
            require return_data.size >= 32
            _746 = mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, _716) >> 32
            require mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, _716) >> 32 <= 4294967296
            require mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, _716) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, _716) >> 32 + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672] <= 4294967296 and mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, _716) >> 32 + (32 * mem[mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, _716) >> 32 + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672]) + 32 <= return_data.size
            mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 672] = mem[mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672 len 4], Mask(224, 32, _716) >> 32 + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672]
            _749 = mem[_746 + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672]
            mem[(32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 704 len floor32(mem[_746 + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672])] = mem[_746 + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 704 len floor32(mem[_746 + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 672])]
            require 1 < mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 608]
            require 2 < mem[(32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 640]
            _770 = mem[(32 * _543) + (32 * _346) + (32 * _129) + (6 * ceil32(return_data.size)) + 736]
            mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 704] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 708] = mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 672]
            mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 740] = _770
            mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 804] = this.address
            mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 836] = arg3
            mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 772] = 160
            mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 868] = 3
            mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 900 len 0] = None
            require ext_code.size(stor0)
            call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 672], _770, Array(len=3, data=mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 900 len 96]), address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 704 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (8 * ceil32(return_data.size)) + 704
            require return_data.size >= 32
            require mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 672 len 28] <= 4294967296
            require mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 672 len 28] + 32 <= return_data.size
            require mem[mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 672 len 28] + (32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 704] <= 4294967296 and mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 672 len 28] + (32 * mem[mem[(32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 704 len 4], mem[(32 * _346) + (32 * _129) + (4 * ceil32(return_data.size)) + 672 len 28] + (32 * _749) + (32 * _677) + (32 * _543) + (32 * _346) + (32 * _129) + (7 * ceil32(return_data.size)) + 704]) + 32 <= return_data.size
}



}
