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
        _292 = mem[320 len 4], Mask(224, 32, msg.value) >> 32
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]
        _298 = mem[_292 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_292 + 320])] = mem[_292 + 352 len floor32(mem[_292 + 320])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _548 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _298) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _298) + ceil32(return_data.size) + 356] = _548
        mem[(32 * _298) + ceil32(return_data.size) + 388] = 64
        mem[(32 * _298) + ceil32(return_data.size) + 420] = 2
        mem[(32 * _298) + ceil32(return_data.size) + 452 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _548, Array(len=2, data=mem[(32 * _298) + ceil32(return_data.size) + 452 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _298) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _298) + (2 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _794 = mem[(32 * _298) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _548) >> 32
        require mem[(32 * _298) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _548) >> 32 <= 4294967296
        require mem[(32 * _298) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _548) >> 32 + 32 <= return_data.size
        require mem[(32 * _298) + ceil32(return_data.size) + mem[(32 * _298) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _548) >> 32 + 352] <= 4294967296 and mem[(32 * _298) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _548) >> 32 + (32 * mem[(32 * _298) + ceil32(return_data.size) + mem[(32 * _298) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _548) >> 32 + 352]) + 32 <= return_data.size
        mem[(32 * _298) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _298) + ceil32(return_data.size) + mem[(32 * _298) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _548) >> 32 + 352]
        _800 = mem[(32 * _298) + ceil32(return_data.size) + _794 + 352]
        mem[(32 * _298) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _298) + ceil32(return_data.size) + _794 + 352])] = mem[(32 * _298) + ceil32(return_data.size) + _794 + 384 len floor32(mem[(32 * _298) + ceil32(return_data.size) + _794 + 352])]
        require 1 < mem[(32 * _298) + (2 * ceil32(return_data.size)) + 352]
        if mem[(32 * _298) + (2 * ceil32(return_data.size)) + 416] > msg.value:
            require 2 < mem[ceil32(return_data.size) + 320]
            _1030 = mem[ceil32(return_data.size) + 416]
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 384] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 388] = _1030
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 452] = this.address
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 484] = arg2
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 420] = 128
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 516] = 3
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 548 len 0] = None
            require ext_code.size(stor1)
            call stor1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value wei
                 gas 2 * 10^6 wei
                args _1030, Array(len=3, data=mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 548 len 96]), address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 384
            require return_data.size >= 32
            _1252 = mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _1030) >> 32
            require mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _1030) >> 32 <= 4294967296
            require mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _1030) >> 32 + 32 <= return_data.size
            require mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _1030) >> 32 + 384] <= 4294967296 and mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _1030) >> 32 + (32 * mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _1030) >> 32 + 384]) + 32 <= return_data.size
            mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 384] = mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _1030) >> 32 + 384]
            _1263 = mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + _1252 + 384]
            mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + _1252 + 384])] = mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + _1252 + 416 len floor32(mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + _1252 + 384])]
            require 2 < mem[ceil32(return_data.size) + 320]
            _1440 = mem[ceil32(return_data.size) + 416]
            require 1 < mem[(32 * _298) + (2 * ceil32(return_data.size)) + 352]
            _1448 = mem[(32 * _298) + (2 * ceil32(return_data.size)) + 416]
            mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 416] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 420] = _1440
            mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 452] = _1448
            mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 516] = this.address
            mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 548] = arg2
            mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 484] = 160
            mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 580] = 2
            mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 612] = arg1
            mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 644] = stor2
            require ext_code.size(stor0)
            call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas 2 * 10^6 wei
                args _1440, _1448, Array(len=2, data=address(arg1), stor2), address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1263) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            require mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1440) >> 32 <= 4294967296
            require mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1440) >> 32 + 32 <= return_data.size
            require mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1440) >> 32 + 416] <= 4294967296 and mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1440) >> 32 + (32 * mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1440) >> 32 + 416]) + 32 <= return_data.size
            mem[(32 * _1263) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 416] = mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + mem[(32 * _1263) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1440) >> 32 + 416]
            require 1 < mem[(32 * _298) + (2 * ceil32(return_data.size)) + 352]
            call msg.sender with:
               value mem[(32 * _298) + (2 * ceil32(return_data.size)) + 416] wei
                 gas 2300 * is_zero(value) wei
        else:
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 384] = 2
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 416] = stor2
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 448] = arg1
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 484] = msg.value
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 516] = 64
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 548] = 2
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 580 len 0] = None
            require ext_code.size(stor1)
            staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args msg.value, Array(len=2, data=mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 580 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 480
            require return_data.size >= 32
            _1250 = mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, msg.value) >> 32
            require mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
            require mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
            require mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
            mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
            _1262 = mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + _1250 + 480]
            mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + _1250 + 480])] = mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + _1250 + 512 len floor32(mem[(32 * _800) + (32 * _298) + (2 * ceil32(return_data.size)) + _1250 + 480])]
            require 1 < mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 480]
            _1436 = mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 544]
            mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 516] = _1436
            mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 548] = 64
            mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 580] = 2
            mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 612 len 0] = None
            require ext_code.size(stor0)
            staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _1436, Array(len=2, data=mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 612 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 512
            require return_data.size >= 32
            _1612 = mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1436) >> 32
            require mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1436) >> 32 <= 4294967296
            require mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1436) >> 32 + 32 <= return_data.size
            require mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1436) >> 32 + 512] <= 4294967296 and mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1436) >> 32 + (32 * mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1436) >> 32 + 512]) + 32 <= return_data.size
            mem[(32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 512] = mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1436) >> 32 + 512]
            _1624 = mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + _1612 + 512]
            mem[(32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + _1612 + 512])] = mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + _1612 + 544 len floor32(mem[(32 * _1262) + (32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + _1612 + 512])]
            require 1 < mem[(32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 512]
            if mem[(32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 576] <= msg.value:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                require 1 < mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 480]
                _1730 = mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 544]
                mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 544] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 548] = _1730
                mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 612] = this.address
                mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 644] = arg2
                mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 580] = 128
                mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 676] = 2
                mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 708 len 0] = None
                require ext_code.size(stor1)
                call stor1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value wei
                     gas 2 * 10^6 wei
                    args _1730, Array(len=2, data=mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 708 len 64]), address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 544
                require return_data.size >= 32
                _1798 = mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, _1730) >> 32
                require mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, _1730) >> 32 <= 4294967296
                require mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, _1730) >> 32 + 32 <= return_data.size
                require mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, _1730) >> 32 + 544] <= 4294967296 and mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, _1730) >> 32 + (32 * mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, _1730) >> 32 + 544]) + 32 <= return_data.size
                mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 544] = mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, _1730) >> 32 + 544]
                _1804 = mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + _1798 + 544]
                mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + _1798 + 544])] = mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + _1798 + 576 len floor32(mem[(32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + _1798 + 544])]
                require 1 < mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 480]
                require 1 < mem[(32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 512]
                _1854 = mem[(32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 576]
                mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 580] = mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 544]
                mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 612] = _1854
                mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 676] = this.address
                mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 708] = arg2
                mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 644] = 160
                mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 740] = 2
                mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 772 len 0] = None
                require ext_code.size(stor0)
                call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas 2 * 10^6 wei
                    args mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 544], _1854, Array(len=2, data=mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 772 len 64]), address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (8 * ceil32(return_data.size)) + 576
                require return_data.size >= 32
                _1892 = mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 544 len 28]
                require mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 544 len 28] <= 4294967296
                require mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 544 len 28] + 32 <= return_data.size
                require mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 544 len 28] + 576] <= 4294967296 and mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 544 len 28] + (32 * mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 544 len 28] + 576]) + 32 <= return_data.size
                mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (8 * ceil32(return_data.size)) + 576] = mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _800) + (32 * _298) + (4 * ceil32(return_data.size)) + 544 len 28] + 576]
                mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (8 * ceil32(return_data.size)) + 608 len floor32(mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + _1892 + 576])] = mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + _1892 + 608 len floor32(mem[(32 * _1804) + (32 * _1624) + (32 * _1262) + (32 * _800) + (32 * _298) + (7 * ceil32(return_data.size)) + _1892 + 576])]
                require 1 < mem[(32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 512]
                call msg.sender with:
                   value mem[(32 * _1262) + (32 * _800) + (32 * _298) + (6 * ceil32(return_data.size)) + 576] wei
                     gas 2300 * is_zero(value) wei
    else:
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor0, -1
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
        _294 = mem[320 len 4], Mask(224, 32, msg.value) >> 32
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]
        _299 = mem[_294 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_294 + 320])] = mem[_294 + 352 len floor32(mem[_294 + 320])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _552 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _299) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _299) + ceil32(return_data.size) + 356] = _552
        mem[(32 * _299) + ceil32(return_data.size) + 388] = 64
        mem[(32 * _299) + ceil32(return_data.size) + 420] = 2
        mem[(32 * _299) + ceil32(return_data.size) + 452 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _552, Array(len=2, data=mem[(32 * _299) + ceil32(return_data.size) + 452 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _299) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _299) + (2 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _796 = mem[(32 * _299) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _552) >> 32
        require mem[(32 * _299) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _552) >> 32 <= 4294967296
        require mem[(32 * _299) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _552) >> 32 + 32 <= return_data.size
        require mem[(32 * _299) + ceil32(return_data.size) + mem[(32 * _299) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _552) >> 32 + 352] <= 4294967296 and mem[(32 * _299) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _552) >> 32 + (32 * mem[(32 * _299) + ceil32(return_data.size) + mem[(32 * _299) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _552) >> 32 + 352]) + 32 <= return_data.size
        mem[(32 * _299) + (2 * ceil32(return_data.size)) + 352] = mem[(32 * _299) + ceil32(return_data.size) + mem[(32 * _299) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _552) >> 32 + 352]
        _801 = mem[(32 * _299) + ceil32(return_data.size) + _796 + 352]
        mem[(32 * _299) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _299) + ceil32(return_data.size) + _796 + 352])] = mem[(32 * _299) + ceil32(return_data.size) + _796 + 384 len floor32(mem[(32 * _299) + ceil32(return_data.size) + _796 + 352])]
        require 1 < mem[(32 * _299) + (2 * ceil32(return_data.size)) + 352]
        if mem[(32 * _299) + (2 * ceil32(return_data.size)) + 416] > msg.value:
            require 2 < mem[ceil32(return_data.size) + 320]
            _1036 = mem[ceil32(return_data.size) + 416]
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 384] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 388] = _1036
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 452] = this.address
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 484] = arg2
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 420] = 128
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 516] = 3
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 548 len 0] = None
            require ext_code.size(stor1)
            call stor1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value msg.value wei
                 gas 2 * 10^6 wei
                args _1036, Array(len=3, data=mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 548 len 96]), address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 384
            require return_data.size >= 32
            _1256 = mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _1036) >> 32
            require mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _1036) >> 32 <= 4294967296
            require mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _1036) >> 32 + 32 <= return_data.size
            require mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _1036) >> 32 + 384] <= 4294967296 and mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _1036) >> 32 + (32 * mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _1036) >> 32 + 384]) + 32 <= return_data.size
            mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 384] = mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _1036) >> 32 + 384]
            _1265 = mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + _1256 + 384]
            mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + _1256 + 384])] = mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + _1256 + 416 len floor32(mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + _1256 + 384])]
            require 2 < mem[ceil32(return_data.size) + 320]
            _1446 = mem[ceil32(return_data.size) + 416]
            require 1 < mem[(32 * _299) + (2 * ceil32(return_data.size)) + 352]
            _1452 = mem[(32 * _299) + (2 * ceil32(return_data.size)) + 416]
            mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 416] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 420] = _1446
            mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 452] = _1452
            mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 516] = this.address
            mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 548] = arg2
            mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 484] = 160
            mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 580] = 2
            mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 612] = arg1
            mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 644] = stor2
            require ext_code.size(stor0)
            call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas 2 * 10^6 wei
                args _1446, _1452, Array(len=2, data=address(arg1), stor2), address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1265) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 416
            require return_data.size >= 32
            require mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1446) >> 32 <= 4294967296
            require mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1446) >> 32 + 32 <= return_data.size
            require mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1446) >> 32 + 416] <= 4294967296 and mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1446) >> 32 + (32 * mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1446) >> 32 + 416]) + 32 <= return_data.size
            mem[(32 * _1265) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 416] = mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + mem[(32 * _1265) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _1446) >> 32 + 416]
            require 1 < mem[(32 * _299) + (2 * ceil32(return_data.size)) + 352]
            call msg.sender with:
               value mem[(32 * _299) + (2 * ceil32(return_data.size)) + 416] wei
                 gas 2300 * is_zero(value) wei
        else:
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 384] = 2
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 416] = stor2
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 448] = arg1
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 480] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 484] = msg.value
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 516] = 64
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 548] = 2
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 580 len 0] = None
            require ext_code.size(stor1)
            staticcall stor1.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args msg.value, Array(len=2, data=mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 580 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 480
            require return_data.size >= 32
            _1254 = mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, msg.value) >> 32
            require mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
            require mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
            require mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480] <= 4294967296 and mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]) + 32 <= return_data.size
            mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, msg.value) >> 32 + 480]
            _1264 = mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + _1254 + 480]
            mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + _1254 + 480])] = mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + _1254 + 512 len floor32(mem[(32 * _801) + (32 * _299) + (2 * ceil32(return_data.size)) + _1254 + 480])]
            require 1 < mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 480]
            _1442 = mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 544]
            mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 512] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 516] = _1442
            mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 548] = 64
            mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 580] = 2
            mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 612 len 0] = None
            require ext_code.size(stor0)
            staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _1442, Array(len=2, data=mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 612 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 512 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 512
            require return_data.size >= 32
            _1616 = mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1442) >> 32
            require mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1442) >> 32 <= 4294967296
            require mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1442) >> 32 + 32 <= return_data.size
            require mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1442) >> 32 + 512] <= 4294967296 and mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1442) >> 32 + (32 * mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1442) >> 32 + 512]) + 32 <= return_data.size
            mem[(32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 512] = mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 512 len 4], Mask(224, 32, _1442) >> 32 + 512]
            _1626 = mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + _1616 + 512]
            mem[(32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 544 len floor32(mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + _1616 + 512])] = mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + _1616 + 544 len floor32(mem[(32 * _1264) + (32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + _1616 + 512])]
            require 1 < mem[(32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 512]
            if mem[(32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 576] <= msg.value:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                require 1 < mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 480]
                _1734 = mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 544]
                mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 544] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 548] = _1734
                mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 612] = this.address
                mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 644] = arg2
                mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 580] = 128
                mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 676] = 2
                mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 708 len 0] = None
                require ext_code.size(stor1)
                call stor1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value msg.value wei
                     gas 2 * 10^6 wei
                    args _1734, Array(len=2, data=mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 708 len 64]), address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 544
                require return_data.size >= 32
                _1800 = mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, _1734) >> 32
                require mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, _1734) >> 32 <= 4294967296
                require mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, _1734) >> 32 + 32 <= return_data.size
                require mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, _1734) >> 32 + 544] <= 4294967296 and mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, _1734) >> 32 + (32 * mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, _1734) >> 32 + 544]) + 32 <= return_data.size
                mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 544] = mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 544 len 4], Mask(224, 32, _1734) >> 32 + 544]
                _1805 = mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + _1800 + 544]
                mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 576 len floor32(mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + _1800 + 544])] = mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + _1800 + 576 len floor32(mem[(32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + _1800 + 544])]
                require 1 < mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 480]
                require 1 < mem[(32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 512]
                _1858 = mem[(32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 576]
                mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 576] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 580] = mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 544]
                mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 612] = _1858
                mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 676] = this.address
                mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 708] = arg2
                mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 644] = 160
                mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 740] = 2
                mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 772 len 0] = None
                require ext_code.size(stor0)
                call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas 2 * 10^6 wei
                    args mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 544], _1858, Array(len=2, data=mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 772 len 64]), address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (8 * ceil32(return_data.size)) + 576
                require return_data.size >= 32
                _1894 = mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 544 len 28]
                require mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 544 len 28] <= 4294967296
                require mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 544 len 28] + 32 <= return_data.size
                require mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 544 len 28] + 576] <= 4294967296 and mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 544 len 28] + (32 * mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 544 len 28] + 576]) + 32 <= return_data.size
                mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (8 * ceil32(return_data.size)) + 576] = mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + 576 len 4], mem[(32 * _801) + (32 * _299) + (4 * ceil32(return_data.size)) + 544 len 28] + 576]
                mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (8 * ceil32(return_data.size)) + 608 len floor32(mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + _1894 + 576])] = mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + _1894 + 608 len floor32(mem[(32 * _1805) + (32 * _1626) + (32 * _1264) + (32 * _801) + (32 * _299) + (7 * ceil32(return_data.size)) + _1894 + 576])]
                require 1 < mem[(32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 512]
                call msg.sender with:
                   value mem[(32 * _1264) + (32 * _801) + (32 * _299) + (6 * ceil32(return_data.size)) + 576] wei
                     gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
