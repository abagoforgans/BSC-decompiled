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
    _54 = mem[320 len 4], Mask(224, 32, msg.value) >> 32
    require mem[320 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
    require mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
    require mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320] <= 4294967296 and mem[320 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 320] = mem[mem[320 len 4], Mask(224, 32, msg.value) >> 32 + 320]
    _57 = mem[_54 + 320]
    mem[ceil32(return_data.size) + 352 len floor32(mem[_54 + 320])] = mem[_54 + 352 len floor32(mem[_54 + 320])]
    require 2 < mem[ceil32(return_data.size) + 320]
    _93 = mem[ceil32(return_data.size) + 416]
    mem[(32 * _57) + ceil32(return_data.size) + 352] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _57) + ceil32(return_data.size) + 356] = _93
    mem[(32 * _57) + ceil32(return_data.size) + 388] = 64
    mem[(32 * _57) + ceil32(return_data.size) + 420] = 2
    mem[(32 * _57) + ceil32(return_data.size) + 452 len 0] = None
    require ext_code.size(stor0)
    staticcall stor0.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _93, Array(len=2, data=mem[(32 * _57) + ceil32(return_data.size) + 452 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _57) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _57) + (2 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _127 = mem[(32 * _57) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _93) >> 32
    require mem[(32 * _57) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _93) >> 32 <= 4294967296
    require mem[(32 * _57) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _93) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _57) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _93) >> 32 + (32 * _57) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _57) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _93) >> 32 + (32 * mem[mem[(32 * _57) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _93) >> 32 + (32 * _57) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
    mem[(32 * _57) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _57) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, _93) >> 32 + (32 * _57) + ceil32(return_data.size) + 352]
    _130 = mem[_127 + (32 * _57) + ceil32(return_data.size) + 352]
    mem[(32 * _57) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_127 + (32 * _57) + ceil32(return_data.size) + 352])] = mem[_127 + (32 * _57) + ceil32(return_data.size) + 384 len floor32(mem[_127 + (32 * _57) + ceil32(return_data.size) + 352])]
    require 2 < mem[ceil32(return_data.size) + 320]
    _153 = mem[ceil32(return_data.size) + 416]
    mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 384] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 388] = _153
    mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 452] = this.address
    mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 484] = arg2
    mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 420] = 128
    mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 516] = 3
    mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 548 len 0] = None
    require ext_code.size(stor0)
    call stor0.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas 2 * 10^6 wei
        args _153, Array(len=3, data=mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 548 len 96]), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _130) + (32 * _57) + (4 * ceil32(return_data.size)) + 384
    require return_data.size >= 32
    _174 = mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _153) >> 32
    require mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _153) >> 32 <= 4294967296
    require mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _153) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _153) >> 32 + (32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 384] <= 4294967296 and mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _153) >> 32 + (32 * mem[mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _153) >> 32 + (32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 384]) + 32 <= return_data.size
    mem[(32 * _130) + (32 * _57) + (4 * ceil32(return_data.size)) + 384] = mem[mem[(32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 384 len 4], Mask(224, 32, _153) >> 32 + (32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 384]
    mem[(32 * _130) + (32 * _57) + (4 * ceil32(return_data.size)) + 416 len floor32(mem[_174 + (32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 384])] = mem[_174 + (32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[_174 + (32 * _130) + (32 * _57) + (2 * ceil32(return_data.size)) + 384])]
    require 2 < mem[ceil32(return_data.size) + 320]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, mem[ceil32(return_data.size) + 416]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
