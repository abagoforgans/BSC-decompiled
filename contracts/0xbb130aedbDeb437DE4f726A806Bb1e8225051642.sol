contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == stor3
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapETH(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
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
        _141 = mem[320 len 4], Mask(224, 32, msg.value) >> 32
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]
        _147 = mem[_141 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_141 + 320])] = mem[_141 + 352 len floor32(mem[_141 + 320])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _245 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _147) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _147) + ceil32(return_data.size) + 356] = _245
        mem[(32 * _147) + ceil32(return_data.size) + 388] = 64
        mem[(32 * _147) + ceil32(return_data.size) + 420] = 2
        mem[(32 * _147) + ceil32(return_data.size) + 452 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _245, Array(len=2, data=mem[(32 * _147) + ceil32(return_data.size) + 452 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _147) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _147) + (2 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _339 = mem[(32 * _147) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _245) >> 32
        require mem[(32 * _147) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _245) >> 32 <= 4294967296
        require mem[(32 * _147) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _245) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _147) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _245) >> 32 + (32 * _147) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _147) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _245) >> 32 + (32 * mem[mem[(32 * _147) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _245) >> 32 + (32 * _147) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
        mem[(32 * _147) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _147) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _245) >> 32 + (32 * _147) + ceil32(return_data.size) + 352]
        _345 = mem[_339 + (32 * _147) + ceil32(return_data.size) + 352]
        mem[(32 * _147) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_339 + (32 * _147) + ceil32(return_data.size) + 352])] = mem[_339 + (32 * _147) + ceil32(return_data.size) + 384 len floor32(mem[_339 + (32 * _147) + ceil32(return_data.size) + 352])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _417 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 388] = _417
        mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 452] = this.address
        mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 484] = arg2
        mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 420] = 128
        mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 516] = 3
        mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 548 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value msg.value wei
             gas 2 * 10^6 wei
            args _417, Array(len=3, data=mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 548 len 96]), address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _485 = mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _417) >> 32
        require mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _417) >> 32 <= 4294967296
        require mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _417) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _417) >> 32 + (32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _417) >> 32 + (32 * mem[mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _417) >> 32 + (32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
        mem[(32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _417) >> 32 + (32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384]
        _491 = mem[_485 + (32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384]
        mem[(32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_485 + (32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384])] = mem[_485 + (32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_485 + (32 * _345) + (32 * _147) + (2 * ceil32(return_data.size)) + 384])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _537 = mem[ceil32(return_data.size) + 416]
        require 1 < mem[(32 * _147) + (2 * ceil32(return_data.size)) + 352]
        _541 = mem[(32 * _147) + (2 * ceil32(return_data.size)) + 416]
        mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 416] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 420] = _537
        mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 452] = _541
        mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 516] = this.address
        mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 548] = arg2
        mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 484] = 160
        mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 580] = 2
        mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas 2 * 10^6 wei
            args _537, _541, Array(len=2, data=mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _491) + (32 * _345) + (32 * _147) + (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        require mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _537) >> 32 <= 4294967296
        require mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _537) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _537) >> 32 + (32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _537) >> 32 + (32 * mem[mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _537) >> 32 + (32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
        mem[(32 * _491) + (32 * _345) + (32 * _147) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _537) >> 32 + (32 * _491) + (32 * _345) + (32 * _147) + (4 * ceil32(return_data.size)) + 416]
        require 1 < mem[(32 * _147) + (2 * ceil32(return_data.size)) + 352]
        call msg.sender with:
           value mem[(32 * _147) + (2 * ceil32(return_data.size)) + 416] wei
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
        _143 = mem[320 len 4], Mask(224, 32, msg.value) >> 32
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]
        _148 = mem[_143 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_143 + 320])] = mem[_143 + 352 len floor32(mem[_143 + 320])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _249 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _148) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _148) + ceil32(return_data.size) + 356] = _249
        mem[(32 * _148) + ceil32(return_data.size) + 388] = 64
        mem[(32 * _148) + ceil32(return_data.size) + 420] = 2
        mem[(32 * _148) + ceil32(return_data.size) + 452 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _249, Array(len=2, data=mem[(32 * _148) + ceil32(return_data.size) + 452 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _148) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _148) + (2 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _341 = mem[(32 * _148) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _249) >> 32
        require mem[(32 * _148) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _249) >> 32 <= 4294967296
        require mem[(32 * _148) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _249) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _148) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _249) >> 32 + (32 * _148) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _148) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _249) >> 32 + (32 * mem[mem[(32 * _148) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _249) >> 32 + (32 * _148) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
        mem[(32 * _148) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _148) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _249) >> 32 + (32 * _148) + ceil32(return_data.size) + 352]
        _346 = mem[_341 + (32 * _148) + ceil32(return_data.size) + 352]
        mem[(32 * _148) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_341 + (32 * _148) + ceil32(return_data.size) + 352])] = mem[_341 + (32 * _148) + ceil32(return_data.size) + 384 len floor32(mem[_341 + (32 * _148) + ceil32(return_data.size) + 352])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _421 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 388] = _421
        mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 452] = this.address
        mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 484] = arg2
        mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 420] = 128
        mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 516] = 3
        mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 548 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value msg.value wei
             gas 2 * 10^6 wei
            args _421, Array(len=3, data=mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 548 len 96]), address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _487 = mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _421) >> 32
        require mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _421) >> 32 <= 4294967296
        require mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _421) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _421) >> 32 + (32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _421) >> 32 + (32 * mem[mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _421) >> 32 + (32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
        mem[(32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _421) >> 32 + (32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384]
        _492 = mem[_487 + (32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384]
        mem[(32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_487 + (32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384])] = mem[_487 + (32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_487 + (32 * _346) + (32 * _148) + (2 * ceil32(return_data.size)) + 384])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _539 = mem[ceil32(return_data.size) + 416]
        require 1 < mem[(32 * _148) + (2 * ceil32(return_data.size)) + 352]
        _545 = mem[(32 * _148) + (2 * ceil32(return_data.size)) + 416]
        mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 416] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 420] = _539
        mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 452] = _545
        mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 516] = this.address
        mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 548] = arg2
        mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 484] = 160
        mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 580] = 2
        mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas 2 * 10^6 wei
            args _539, _545, Array(len=2, data=mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _492) + (32 * _346) + (32 * _148) + (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        require mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _539) >> 32 <= 4294967296
        require mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _539) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _539) >> 32 + (32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _539) >> 32 + (32 * mem[mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _539) >> 32 + (32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
        mem[(32 * _492) + (32 * _346) + (32 * _148) + (6 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _539) >> 32 + (32 * _492) + (32 * _346) + (32 * _148) + (4 * ceil32(return_data.size)) + 416]
        require 1 < mem[(32 * _148) + (2 * ceil32(return_data.size)) + 352]
        call msg.sender with:
           value mem[(32 * _148) + (2 * ceil32(return_data.size)) + 416] wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
