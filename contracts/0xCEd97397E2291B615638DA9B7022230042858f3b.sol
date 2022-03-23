contract main {




// =====================  Runtime code  =====================


#
#  - swapETH(address arg1, uint256 arg2)
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
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor4
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_acb6b874(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[96] = 3
        mem[128] = stor2
        mem[160] = stor3
        mem[192] = arg1
        mem[224] = 2
        mem[256] = arg1
        mem[288] = stor2
        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[324] = msg.value
        mem[356] = 64
        mem[388] = 3
        mem[420 len 0] = None
        require ext_code.size(stor1)
        staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args msg.value, Array(len=3, data=mem[420 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _274 = mem[320 len 4], Mask(224, 32, msg.value) >> 32
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]
        _280 = mem[_274 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_274 + 320])] = mem[_274 + 352 len floor32(mem[_274 + 320])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _512 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _280) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _280) + ceil32(return_data.size) + 356] = _512
        mem[(32 * _280) + ceil32(return_data.size) + 388] = 64
        mem[(32 * _280) + ceil32(return_data.size) + 420] = 2
        mem[(32 * _280) + ceil32(return_data.size) + 452 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _512, Array(len=2, data=mem[(32 * _280) + ceil32(return_data.size) + 452 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _280) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _280) + (2 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _740 = mem[(32 * _280) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _512) >> 32
        require mem[(32 * _280) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _512) >> 32 <= 4294967296
        require mem[(32 * _280) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _512) >> 32 + 32 <= return_data.size
        require mem[(32 * _280) + ceil32(return_data.size) + mem[(32 * _280) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _512) >> 32 + 352] <= 4294967296 and mem[(32 * _280) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _512) >> 32 + (32 * mem[(32 * _280) + ceil32(return_data.size) + mem[(32 * _280) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _512) >> 32 + 352]) + 32 <= return_data.size
        mem[(32 * _280) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _280) + ceil32(return_data.size) + mem[(32 * _280) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _512) >> 32 + 352]
        _746 = mem[(32 * _280) + ceil32(return_data.size) + _740 + 352]
        mem[(32 * _280) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _280) + ceil32(return_data.size) + _740 + 352])] = mem[(32 * _280) + ceil32(return_data.size) + _740 + 384 len floor32(mem[(32 * _280) + ceil32(return_data.size) + _740 + 352])]
        require 1 < mem[(32 * _280) + (2 * ceil32(return_data.size)) + 352]
        if mem[(32 * _280) + (2 * ceil32(return_data.size)) + 416] > msg.value:
            require 2 < mem[ceil32(return_data.size) + 320]
            _958 = mem[ceil32(return_data.size) + 416]
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 384] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 388] = _958
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 452] = this.address
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 484] = arg2
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 420] = 128
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 516] = 3
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 548 len 0] = None
            require ext_code.size(stor1)
            call stor1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value wei
                 gas 2 * 10^6 wei
                args _958, Array(len=3, data=mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 548 len 96]), address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 384
            require return_data.size >= 32
            _1162 = mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _958) >> 32
            require mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _958) >> 32 <= 4294967296
            require mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _958) >> 32 + 32 <= return_data.size
            require mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _958) >> 32 + 384] <= 4294967296 and mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _958) >> 32 + (32 * mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _958) >> 32 + 384]) + 32 <= return_data.size
            mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 384] = mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _958) >> 32 + 384]
            _1173 = mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + _1162 + 384]
            mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + _1162 + 384])] = mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + _1162 + 416 len floor32(mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + _1162 + 384])]
            require 2 < mem[ceil32(return_data.size) + 320]
            _1326 = mem[ceil32(return_data.size) + 416]
            require 1 < mem[(32 * _280) + (2 * ceil32(return_data.size)) + 352]
            _1334 = mem[(32 * _280) + (2 * ceil32(return_data.size)) + 416]
            mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 416] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 420] = _1326
            mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 452] = _1334
            mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 516] = this.address
            mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 548] = arg2
            mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 484] = 160
            mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 580] = 2
            mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 612 len 0] = None
            require ext_code.size(stor0)
            call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas 2 * 10^6 wei
                args _1326, _1334, Array(len=2, data=mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1173) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            require mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1326) >> 32 <= 4294967296
            require mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1326) >> 32 + 32 <= return_data.size
            require mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1326) >> 32 + 416] <= 4294967296 and mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1326) >> 32 + (32 * mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1326) >> 32 + 416]) + 32 <= return_data.size
            mem[(32 * _1173) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 416] = mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + mem[(32 * _1173) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1326) >> 32 + 416]
            require 1 < mem[(32 * _280) + (2 * ceil32(return_data.size)) + 352]
            call msg.sender with:
               value mem[(32 * _280) + (2 * ceil32(return_data.size)) + 416] wei
                 gas 2300 * is_zero(value) wei
        else:
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 384] = 2
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 416] = stor2
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 448] = arg1
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 480] = 2
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 512] = arg1
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 544] = stor2
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 576] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 580] = msg.value
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 612] = 64
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 644] = 2
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 676 len 0] = None
            require ext_code.size(stor1)
            staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args msg.value, Array(len=2, data=mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 676 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 576
            require return_data.size >= 32
            _1160 = mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, msg.value) >> 32
            require mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
            require mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
            require mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, msg.value) >> 32 + 576] <= 4294967296 and mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, msg.value) >> 32 + 576]) + 32 <= return_data.size
            mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 576] = mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, msg.value) >> 32 + 576]
            _1172 = mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + _1160 + 576]
            mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 608 len floor32(mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + _1160 + 576])] = mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + _1160 + 608 len floor32(mem[(32 * _746) + (32 * _280) + (2 * ceil32(return_data.size)) + _1160 + 576])]
            require 1 < mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 576]
            _1322 = mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 640]
            mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 612] = _1322
            mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 644] = 64
            mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 676] = 2
            mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 708 len 0] = None
            require ext_code.size(stor1)
            staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _1322, Array(len=2, data=mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 708 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 608
            require return_data.size >= 32
            _1464 = mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, _1322) >> 32
            require mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, _1322) >> 32 <= 4294967296
            require mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, _1322) >> 32 + 32 <= return_data.size
            require mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, _1322) >> 32 + 608] <= 4294967296 and mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, _1322) >> 32 + (32 * mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, _1322) >> 32 + 608]) + 32 <= return_data.size
            mem[(32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 608] = mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, _1322) >> 32 + 608]
            _1476 = mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + _1464 + 608]
            mem[(32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 640 len floor32(mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + _1464 + 608])] = mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + _1464 + 640 len floor32(mem[(32 * _1172) + (32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + _1464 + 608])]
            require 2 < mem[(32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 608]
            if mem[(32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 704] <= msg.value:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                require 1 < mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 576]
                _1582 = mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 640]
                mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 640] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 644] = _1582
                mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 708] = this.address
                mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 740] = arg2
                mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 676] = 128
                mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 772] = 2
                mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 804 len 0] = None
                require ext_code.size(stor1)
                call stor1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args _1582, Array(len=2, data=mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 804 len 64]), address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 640
                require return_data.size >= 32
                _1650 = mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1582) >> 32
                require mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1582) >> 32 <= 4294967296
                require mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1582) >> 32 + 32 <= return_data.size
                require mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1582) >> 32 + 640] <= 4294967296 and mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1582) >> 32 + (32 * mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1582) >> 32 + 640]) + 32 <= return_data.size
                mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 640] = mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1582) >> 32 + 640]
                _1656 = mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + _1650 + 640]
                mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + _1650 + 640])] = mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + _1650 + 672 len floor32(mem[(32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + _1650 + 640])]
                require 1 < mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 576]
                require 2 < mem[(32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 608]
                _1706 = mem[(32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 704]
                mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 672] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 676] = mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 640]
                mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 708] = _1706
                mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 772] = this.address
                mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 804] = arg2
                mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 740] = 160
                mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 836] = 2
                mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 868 len 0] = None
                require ext_code.size(stor0)
                call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 640], _1706, Array(len=2, data=mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 868 len 64]), address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (8 * ceil32(return_data.size)) + 672
                require return_data.size >= 32
                _1744 = mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 672 len 4], mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 640 len 28]
                require mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 672 len 4], mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 640 len 28] <= 4294967296
                require mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 672 len 4], mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 640 len 28] + 32 <= return_data.size
                require mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 672 len 4], mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 640 len 28] + 672] <= 4294967296 and mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 672 len 4], mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 640 len 28] + (32 * mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 672 len 4], mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 640 len 28] + 672]) + 32 <= return_data.size
                mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (8 * ceil32(return_data.size)) + 672] = mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + 672 len 4], mem[(32 * _746) + (32 * _280) + (4 * ceil32(return_data.size)) + 640 len 28] + 672]
                mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (8 * ceil32(return_data.size)) + 704 len floor32(mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + _1744 + 672])] = mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + _1744 + 704 len floor32(mem[(32 * _1656) + (32 * _1476) + (32 * _1172) + (32 * _746) + (32 * _280) + (7 * ceil32(return_data.size)) + _1744 + 672])]
                require 2 < mem[(32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 608]
                call msg.sender with:
                   value mem[(32 * _1172) + (32 * _746) + (32 * _280) + (6 * ceil32(return_data.size)) + 704] wei
                     gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor1, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 3
        mem[128] = stor2
        mem[160] = stor3
        mem[192] = arg1
        mem[224] = 2
        mem[256] = arg1
        mem[288] = stor2
        mem[320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[324] = msg.value
        mem[356] = 64
        mem[388] = 3
        mem[420 len 0] = None
        require ext_code.size(stor1)
        staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args msg.value, Array(len=3, data=mem[420 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 320
        require return_data.size >= 32
        _276 = mem[320 len 4], Mask(224, 32, msg.value) >> 32
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]
        _281 = mem[_276 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_276 + 320])] = mem[_276 + 352 len floor32(mem[_276 + 320])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _516 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _281) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _281) + ceil32(return_data.size) + 356] = _516
        mem[(32 * _281) + ceil32(return_data.size) + 388] = 64
        mem[(32 * _281) + ceil32(return_data.size) + 420] = 2
        mem[(32 * _281) + ceil32(return_data.size) + 452 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _516, Array(len=2, data=mem[(32 * _281) + ceil32(return_data.size) + 452 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _281) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _281) + (2 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _742 = mem[(32 * _281) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _516) >> 32
        require mem[(32 * _281) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _516) >> 32 <= 4294967296
        require mem[(32 * _281) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _516) >> 32 + 32 <= return_data.size
        require mem[(32 * _281) + ceil32(return_data.size) + mem[(32 * _281) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _516) >> 32 + 352] <= 4294967296 and mem[(32 * _281) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _516) >> 32 + (32 * mem[(32 * _281) + ceil32(return_data.size) + mem[(32 * _281) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _516) >> 32 + 352]) + 32 <= return_data.size
        mem[(32 * _281) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _281) + ceil32(return_data.size) + mem[(32 * _281) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _516) >> 32 + 352]
        _747 = mem[(32 * _281) + ceil32(return_data.size) + _742 + 352]
        mem[(32 * _281) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _281) + ceil32(return_data.size) + _742 + 352])] = mem[(32 * _281) + ceil32(return_data.size) + _742 + 384 len floor32(mem[(32 * _281) + ceil32(return_data.size) + _742 + 352])]
        require 1 < mem[(32 * _281) + (2 * ceil32(return_data.size)) + 352]
        if mem[(32 * _281) + (2 * ceil32(return_data.size)) + 416] > msg.value:
            require 2 < mem[ceil32(return_data.size) + 320]
            _964 = mem[ceil32(return_data.size) + 416]
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 384] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 388] = _964
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 452] = this.address
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 484] = arg2
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 420] = 128
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 516] = 3
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 548 len 0] = None
            require ext_code.size(stor1)
            call stor1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value wei
                 gas 2 * 10^6 wei
                args _964, Array(len=3, data=mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 548 len 96]), address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 384
            require return_data.size >= 32
            _1166 = mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _964) >> 32
            require mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _964) >> 32 <= 4294967296
            require mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _964) >> 32 + 32 <= return_data.size
            require mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _964) >> 32 + 384] <= 4294967296 and mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _964) >> 32 + (32 * mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _964) >> 32 + 384]) + 32 <= return_data.size
            mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 384] = mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _964) >> 32 + 384]
            _1175 = mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + _1166 + 384]
            mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + _1166 + 384])] = mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + _1166 + 416 len floor32(mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + _1166 + 384])]
            require 2 < mem[ceil32(return_data.size) + 320]
            _1332 = mem[ceil32(return_data.size) + 416]
            require 1 < mem[(32 * _281) + (2 * ceil32(return_data.size)) + 352]
            _1338 = mem[(32 * _281) + (2 * ceil32(return_data.size)) + 416]
            mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 416] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 420] = _1332
            mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 452] = _1338
            mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 516] = this.address
            mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 548] = arg2
            mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 484] = 160
            mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 580] = 2
            mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 612 len 0] = None
            require ext_code.size(stor0)
            call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas 2 * 10^6 wei
                args _1332, _1338, Array(len=2, data=mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1175) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            require mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1332) >> 32 <= 4294967296
            require mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1332) >> 32 + 32 <= return_data.size
            require mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1332) >> 32 + 416] <= 4294967296 and mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1332) >> 32 + (32 * mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1332) >> 32 + 416]) + 32 <= return_data.size
            mem[(32 * _1175) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 416] = mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + mem[(32 * _1175) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1332) >> 32 + 416]
            require 1 < mem[(32 * _281) + (2 * ceil32(return_data.size)) + 352]
            call msg.sender with:
               value mem[(32 * _281) + (2 * ceil32(return_data.size)) + 416] wei
                 gas 2300 * is_zero(value) wei
        else:
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 384] = 2
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 416] = stor2
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 448] = arg1
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 480] = 2
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 512] = arg1
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 544] = stor2
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 576] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 580] = msg.value
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 612] = 64
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 644] = 2
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 676 len 0] = None
            require ext_code.size(stor1)
            staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args msg.value, Array(len=2, data=mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 676 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 576
            require return_data.size >= 32
            _1164 = mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, msg.value) >> 32
            require mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
            require mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
            require mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, msg.value) >> 32 + 576] <= 4294967296 and mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, msg.value) >> 32 + 576]) + 32 <= return_data.size
            mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 576] = mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, msg.value) >> 32 + 576]
            _1174 = mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + _1164 + 576]
            mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 608 len floor32(mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + _1164 + 576])] = mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + _1164 + 608 len floor32(mem[(32 * _747) + (32 * _281) + (2 * ceil32(return_data.size)) + _1164 + 576])]
            require 1 < mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 576]
            _1328 = mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 640]
            mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 608] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 612] = _1328
            mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 644] = 64
            mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 676] = 2
            mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 708 len 0] = None
            require ext_code.size(stor1)
            staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _1328, Array(len=2, data=mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 708 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 608 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 608
            require return_data.size >= 32
            _1468 = mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, _1328) >> 32
            require mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, _1328) >> 32 <= 4294967296
            require mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, _1328) >> 32 + 32 <= return_data.size
            require mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, _1328) >> 32 + 608] <= 4294967296 and mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, _1328) >> 32 + (32 * mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, _1328) >> 32 + 608]) + 32 <= return_data.size
            mem[(32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 608] = mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 608 len 4], Mask(224, 32, _1328) >> 32 + 608]
            _1478 = mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + _1468 + 608]
            mem[(32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 640 len floor32(mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + _1468 + 608])] = mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + _1468 + 640 len floor32(mem[(32 * _1174) + (32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + _1468 + 608])]
            require 2 < mem[(32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 608]
            if mem[(32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 704] <= msg.value:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                require 1 < mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 576]
                _1586 = mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 640]
                mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 640] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 644] = _1586
                mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 708] = this.address
                mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 740] = arg2
                mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 676] = 128
                mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 772] = 2
                mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 804 len 0] = None
                require ext_code.size(stor1)
                call stor1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value wei
                     gas gas_remaining wei
                    args _1586, Array(len=2, data=mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 804 len 64]), address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 640 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 640
                require return_data.size >= 32
                _1652 = mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1586) >> 32
                require mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1586) >> 32 <= 4294967296
                require mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1586) >> 32 + 32 <= return_data.size
                require mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1586) >> 32 + 640] <= 4294967296 and mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1586) >> 32 + (32 * mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1586) >> 32 + 640]) + 32 <= return_data.size
                mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 640] = mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 640 len 4], Mask(224, 32, _1586) >> 32 + 640]
                _1657 = mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + _1652 + 640]
                mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 672 len floor32(mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + _1652 + 640])] = mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + _1652 + 672 len floor32(mem[(32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + _1652 + 640])]
                require 1 < mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 576]
                require 2 < mem[(32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 608]
                _1710 = mem[(32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 704]
                mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 672] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 676] = mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 640]
                mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 708] = _1710
                mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 772] = this.address
                mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 804] = arg2
                mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 740] = 160
                mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 836] = 2
                mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 868 len 0] = None
                require ext_code.size(stor0)
                call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 640], _1710, Array(len=2, data=mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 868 len 64]), address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (8 * ceil32(return_data.size)) + 672
                require return_data.size >= 32
                _1746 = mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 672 len 4], mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 640 len 28]
                require mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 672 len 4], mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 640 len 28] <= 4294967296
                require mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 672 len 4], mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 640 len 28] + 32 <= return_data.size
                require mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 672 len 4], mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 640 len 28] + 672] <= 4294967296 and mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 672 len 4], mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 640 len 28] + (32 * mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 672 len 4], mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 640 len 28] + 672]) + 32 <= return_data.size
                mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (8 * ceil32(return_data.size)) + 672] = mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + 672 len 4], mem[(32 * _747) + (32 * _281) + (4 * ceil32(return_data.size)) + 640 len 28] + 672]
                mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (8 * ceil32(return_data.size)) + 704 len floor32(mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + _1746 + 672])] = mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + _1746 + 704 len floor32(mem[(32 * _1657) + (32 * _1478) + (32 * _1174) + (32 * _747) + (32 * _281) + (7 * ceil32(return_data.size)) + _1746 + 672])]
                require 2 < mem[(32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 608]
                call msg.sender with:
                   value mem[(32 * _1174) + (32 * _747) + (32 * _281) + (6 * ceil32(return_data.size)) + 704] wei
                     gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
