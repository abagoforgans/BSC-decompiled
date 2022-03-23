contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function withdraw() {
    require msg.sender == stor3
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7c7e8137(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), stor0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor0, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    mem[160] = stor1
    mem[192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[196] = 10^17
    mem[228] = 2 * 10^18
    mem[292] = this.address
    mem[324] = arg2
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(stor0)
    call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas 2 * 10^6 wei
        args 10^17, 2 * 10^18, 160, address(this.address), arg2, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], 23283064 <= 4294967296
    require mem[192 len 4], 23283064 + 32 <= return_data.size
    require mem[mem[192 len 4], 23283064 + 192] <= 4294967296 and mem[192 len 4], 23283064 + (32 * mem[mem[192 len 4], 23283064 + 192]) + 32 <= return_data.size
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
        _145 = mem[320 len 4], Mask(224, 32, msg.value) >> 32
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]
        _151 = mem[_145 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_145 + 320])] = mem[_145 + 352 len floor32(mem[_145 + 320])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _253 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _151) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _151) + ceil32(return_data.size) + 356] = _253
        mem[(32 * _151) + ceil32(return_data.size) + 388] = 64
        mem[(32 * _151) + ceil32(return_data.size) + 420] = 2
        mem[(32 * _151) + ceil32(return_data.size) + 452 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _253, Array(len=2, data=mem[(32 * _151) + ceil32(return_data.size) + 452 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _151) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _151) + (2 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _351 = mem[(32 * _151) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _253) >> 32
        require mem[(32 * _151) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _253) >> 32 <= 4294967296
        require mem[(32 * _151) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _253) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _151) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _253) >> 32 + (32 * _151) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _151) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _253) >> 32 + (32 * mem[mem[(32 * _151) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _253) >> 32 + (32 * _151) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
        mem[(32 * _151) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _151) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _253) >> 32 + (32 * _151) + ceil32(return_data.size) + 352]
        _357 = mem[_351 + (32 * _151) + ceil32(return_data.size) + 352]
        mem[(32 * _151) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_351 + (32 * _151) + ceil32(return_data.size) + 352])] = mem[_351 + (32 * _151) + ceil32(return_data.size) + 384 len floor32(mem[_351 + (32 * _151) + ceil32(return_data.size) + 352])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _433 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 388] = _433
        mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 452] = this.address
        mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 484] = arg2
        mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 420] = 128
        mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 516] = 3
        mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 548 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value msg.value wei
             gas 2 * 10^6 wei
            args _433, Array(len=3, data=mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 548 len 96]), address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _505 = mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _433) >> 32
        require mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _433) >> 32 <= 4294967296
        require mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _433) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _433) >> 32 + (32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _433) >> 32 + (32 * mem[mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _433) >> 32 + (32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
        mem[(32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _433) >> 32 + (32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384]
        _511 = mem[_505 + (32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384]
        mem[(32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_505 + (32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384])] = mem[_505 + (32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_505 + (32 * _357) + (32 * _151) + (2 * ceil32(return_data.size)) + 384])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _561 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 420] = msg.sender
        mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 452] = _561
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _561
        mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < mem[ceil32(return_data.size) + 320]
        _573 = mem[ceil32(return_data.size) + 416]
        require 1 < mem[(32 * _151) + (2 * ceil32(return_data.size)) + 352]
        _577 = mem[(32 * _151) + (2 * ceil32(return_data.size)) + 416]
        mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 416] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 420] = _573
        mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 452] = _577
        mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 516] = this.address
        mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 548] = arg2
        mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 484] = 160
        mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 580] = 2
        mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas 2 * 10^6 wei
            args _573, _577, Array(len=2, data=mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _511) + (32 * _357) + (32 * _151) + (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        require mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _573) >> 32 <= 4294967296
        require mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _573) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _573) >> 32 + (32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _573) >> 32 + (32 * mem[mem[(32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _573) >> 32 + (32 * _511) + (32 * _357) + (32 * _151) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
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
        _147 = mem[320 len 4], Mask(224, 32, msg.value) >> 32
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
        require mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
        require mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]
        _152 = mem[_147 + 320]
        mem[ceil32(return_data.size) + 352 len floor32(mem[_147 + 320])] = mem[_147 + 352 len floor32(mem[_147 + 320])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _257 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _152) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _152) + ceil32(return_data.size) + 356] = _257
        mem[(32 * _152) + ceil32(return_data.size) + 388] = 64
        mem[(32 * _152) + ceil32(return_data.size) + 420] = 2
        mem[(32 * _152) + ceil32(return_data.size) + 452 len 0] = None
        require ext_code.size(stor0)
        staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args _257, Array(len=2, data=mem[(32 * _152) + ceil32(return_data.size) + 452 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _152) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _152) + (2 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _353 = mem[(32 * _152) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _257) >> 32
        require mem[(32 * _152) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _257) >> 32 <= 4294967296
        require mem[(32 * _152) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _257) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _152) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _257) >> 32 + (32 * _152) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _152) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _257) >> 32 + (32 * mem[mem[(32 * _152) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _257) >> 32 + (32 * _152) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
        mem[(32 * _152) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _152) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _257) >> 32 + (32 * _152) + ceil32(return_data.size) + 352]
        _358 = mem[_353 + (32 * _152) + ceil32(return_data.size) + 352]
        mem[(32 * _152) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_353 + (32 * _152) + ceil32(return_data.size) + 352])] = mem[_353 + (32 * _152) + ceil32(return_data.size) + 384 len floor32(mem[_353 + (32 * _152) + ceil32(return_data.size) + 352])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _437 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 388] = _437
        mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 452] = this.address
        mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 484] = arg2
        mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 420] = 128
        mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 516] = 3
        mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 548 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value msg.value wei
             gas 2 * 10^6 wei
            args _437, Array(len=3, data=mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 548 len 96]), address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 384
        require return_data.size >= 32
        _507 = mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _437) >> 32
        require mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _437) >> 32 <= 4294967296
        require mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _437) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _437) >> 32 + (32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _437) >> 32 + (32 * mem[mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _437) >> 32 + (32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
        mem[(32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _437) >> 32 + (32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384]
        _512 = mem[_507 + (32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384]
        mem[(32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_507 + (32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384])] = mem[_507 + (32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_507 + (32 * _358) + (32 * _152) + (2 * ceil32(return_data.size)) + 384])]
        require 2 < mem[ceil32(return_data.size) + 320]
        _564 = mem[ceil32(return_data.size) + 416]
        mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 420] = msg.sender
        mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 452] = _564
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, _564
        mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 2 < mem[ceil32(return_data.size) + 320]
        _575 = mem[ceil32(return_data.size) + 416]
        require 1 < mem[(32 * _152) + (2 * ceil32(return_data.size)) + 352]
        _581 = mem[(32 * _152) + (2 * ceil32(return_data.size)) + 416]
        mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 416] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 420] = _575
        mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 452] = _581
        mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 516] = this.address
        mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 548] = arg2
        mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 484] = 160
        mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 580] = 2
        mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 612 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas 2 * 10^6 wei
            args _575, _581, Array(len=2, data=mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _512) + (32 * _358) + (32 * _152) + (6 * ceil32(return_data.size)) + 416
        require return_data.size >= 32
        require mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _575) >> 32 <= 4294967296
        require mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _575) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _575) >> 32 + (32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _575) >> 32 + (32 * mem[mem[(32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _575) >> 32 + (32 * _512) + (32 * _358) + (32 * _152) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
}



}
