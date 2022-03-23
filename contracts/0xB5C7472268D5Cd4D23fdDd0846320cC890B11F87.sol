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
    _63 = mem[320 len 4], Mask(224, 32, arg1) >> 32
    require mem[320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, arg1) >> 32 + 320]
    _66 = mem[_63 + 320]
    mem[ceil32(return_data.size) + 352 len floor32(mem[_63 + 320])] = mem[_63 + 352 len floor32(mem[_63 + 320])]
    require 2 < mem[ceil32(return_data.size) + 320]
    _111 = mem[ceil32(return_data.size) + 416]
    mem[(32 * _66) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _66) + ceil32(return_data.size) + 356] = _111
    mem[(32 * _66) + ceil32(return_data.size) + 388] = 64
    mem[(32 * _66) + ceil32(return_data.size) + 420] = 2
    mem[(32 * _66) + ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(stor0)
    staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _111, Array(len=2, data=mem[(32 * _66) + ceil32(return_data.size) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _66) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _66) + (2 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _154 = mem[(32 * _66) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _111) >> 32
    require mem[(32 * _66) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _111) >> 32 <= 4294967296
    require mem[(32 * _66) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _111) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _66) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _111) >> 32 + (32 * _66) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _66) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _111) >> 32 + (32 * mem[mem[(32 * _66) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _111) >> 32 + (32 * _66) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
    mem[(32 * _66) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _66) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _111) >> 32 + (32 * _66) + ceil32(return_data.size) + 352]
    _157 = mem[_154 + (32 * _66) + ceil32(return_data.size) + 352]
    mem[(32 * _66) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_154 + (32 * _66) + ceil32(return_data.size) + 352])] = mem[_154 + (32 * _66) + ceil32(return_data.size) + 384 len floor32(mem[_154 + (32 * _66) + ceil32(return_data.size) + 352])]
    require 2 < mem[ceil32(return_data.size) + 320]
    _189 = mem[ceil32(return_data.size) + 416]
    mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 388] = _189
    mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 452] = this.address
    mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 484] = arg3
    mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 420] = 128
    mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 516] = 3
    mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 548 len 0] = None
    require ext_code.size(stor0)
    call stor0.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg1 wei
         gas 2 * 10^6 wei
        args _189, Array(len=3, data=mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 548 len 96]), address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 384
    require return_data.size >= 32
    _219 = mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _189) >> 32
    require mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _189) >> 32 <= 4294967296
    require mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _189) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _189) >> 32 + (32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _189) >> 32 + (32 * mem[mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _189) >> 32 + (32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
    mem[(32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _189) >> 32 + (32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384]
    _222 = mem[_219 + (32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384]
    mem[(32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_219 + (32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384])] = mem[_219 + (32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_219 + (32 * _157) + (32 * _66) + (2 * ceil32(return_data.size)) + 384])]
    require 2 < mem[ceil32(return_data.size) + 320]
    _241 = mem[ceil32(return_data.size) + 416]
    require 1 < mem[(32 * _66) + (2 * ceil32(return_data.size)) + 352]
    _243 = mem[(32 * _66) + (2 * ceil32(return_data.size)) + 416]
    mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 416] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 420] = _241
    mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 452] = _243
    mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 516] = this.address
    mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 548] = arg3
    mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 484] = 160
    mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 580] = 2
    mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 612 len 0] = None
    require ext_code.size(stor0)
    call stor0.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas 2 * 10^6 wei
        args _241, _243, Array(len=2, data=mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 612 len 64]), address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _222) + (32 * _157) + (32 * _66) + (6 * ceil32(return_data.size)) + 416
    require return_data.size >= 32
    require mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _241) >> 32 <= 4294967296
    require mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _241) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _241) >> 32 + (32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 416] <= 4294967296 and mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _241) >> 32 + (32 * mem[mem[(32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 416 len 4], Mask(224, 32, _241) >> 32 + (32 * _222) + (32 * _157) + (32 * _66) + (4 * ceil32(return_data.size)) + 416]) + 32 <= return_data.size
}



}
