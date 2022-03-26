contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function withdraw2(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    if arg2:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    if not arg2:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_441b359c(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96 len 96] = call.data[calldata.size len 96]
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[68]), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[196] = cd[132]
    mem[228] = 1
    mem[292] = this.address
    mem[324] = block.timestamp + 10
    mem[260] = 160
    mem[356] = ('cd', 4).length
    mem[388 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 388] = 0
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[132], 1, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)]), this.address, block.timestamp + 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _8 = mem[192 len 4], Mask(224, 32, cd[132]) >> 32
    require mem[192 len 4], Mask(224, 32, cd[132]) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + 192]
    _11 = mem[_8 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_8 + 192])] = mem[_8 + 224 len floor32(mem[_8 + 192])]
    mem[64] = (32 * _11) + ceil32(return_data.size) + 224
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    _39 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[100]), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _11) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _11) + ceil32(return_data.size) + 228] = _39
    mem[(32 * _11) + ceil32(return_data.size) + 260] = 1
    mem[(32 * _11) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _11) + ceil32(return_data.size) + 356] = block.timestamp + 10
    mem[(32 * _11) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _11) + ceil32(return_data.size) + 388] = ('cd', 36).length
    mem[(32 * _11) + ceil32(return_data.size) + 420 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * _11) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 420] = 0
    require ext_code.size(address(cd[100]))
    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _39, 1, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)]), this.address, block.timestamp + 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _11) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _11) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _46 = mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _39) >> 32
    require mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _39) >> 32 <= 4294967296
    require mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _39) >> 32 + 32 <= return_data.size
    require mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _39) >> 32 + 224] <= 4294967296 and mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _39) >> 32 + (32 * mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _39) >> 32 + 224]) + 32 <= return_data.size
    mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _39) >> 32 + 224]
    _49 = mem[(32 * _11) + ceil32(return_data.size) + _46 + 224]
    mem[(32 * _11) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _11) + ceil32(return_data.size) + _46 + 224])] = mem[(32 * _11) + ceil32(return_data.size) + _46 + 256 len floor32(mem[(32 * _11) + ceil32(return_data.size) + _46 + 224])]
    mem[64] = (32 * _49) + (32 * _11) + (2 * ceil32(return_data.size)) + 352
    mem[(32 * _49) + (32 * _11) + (2 * ceil32(return_data.size)) + 256] = cd[132]
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _49) + (32 * _11) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    require mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224]
    mem[(32 * _49) + (32 * _11) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _11) + (2 * ceil32(return_data.size)) + 256]
    return cd[132], mem[(32 * _49) + (32 * _11) + (2 * ceil32(return_data.size)) + 288 len 64]
}

function sub_09b67e40(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96 len 96] = call.data[calldata.size len 96]
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = cd[132]
    mem[228] = 64
    mem[260] = ('cd', 4).length
    mem[292 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 292] = 0
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[132], Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _5 = mem[192 len 4], Mask(224, 32, cd[132]) >> 32
    require mem[192 len 4], Mask(224, 32, cd[132]) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + 192]
    _8 = mem[_5 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_5 + 192])] = mem[_5 + 224 len floor32(mem[_5 + 192])]
    mem[64] = (32 * _8) + ceil32(return_data.size) + 224
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    _81 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    mem[(32 * _8) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _8) + ceil32(return_data.size) + 228] = _81
    mem[(32 * _8) + ceil32(return_data.size) + 260] = 64
    mem[(32 * _8) + ceil32(return_data.size) + 292] = ('cd', 36).length
    mem[(32 * _8) + ceil32(return_data.size) + 324 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * _8) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 324] = 0
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _81, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _8) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _8) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _85 = mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32
    require mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 <= 4294967296
    require mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 + 32 <= return_data.size
    require mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 + 224] <= 4294967296 and mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 + (32 * mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 + 224]) + 32 <= return_data.size
    mem[(32 * _8) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 + 224]
    _88 = mem[(32 * _8) + ceil32(return_data.size) + _85 + 224]
    mem[(32 * _8) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _85 + 224])] = mem[(32 * _8) + ceil32(return_data.size) + _85 + 256 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _85 + 224])]
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[68]), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 260] = cd[132]
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 292] = 1
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 356] = this.address
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 388] = block.timestamp + 10
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 324] = 160
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 420] = ('cd', 4).length
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 452 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 452] = 0
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[132], 1, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)]), address(this.address), block.timestamp + 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256
    require return_data.size >= 32
    _159 = mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32
    require mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 <= 4294967296
    require mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 32 <= return_data.size
    require mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256] <= 4294967296 and mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + (32 * mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]) + 32 <= return_data.size
    mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] = mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]
    _162 = mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + _159 + 256]
    mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + _159 + 256])] = mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + _159 + 288 len floor32(mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + _159 + 256])]
    mem[64] = (32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288
    require 0 < ('cd', 36).length
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = this.address
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 36).length
    require mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
    _212 = mem[(32 * mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = address(cd[100])
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = _212
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[100]), _212
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
    _217 = mem[(32 * mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = _217
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = 1
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 388] = this.address
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 420] = block.timestamp + 10
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 356] = 160
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 452] = ('cd', 36).length
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 484] = 0
    require ext_code.size(address(cd[100]))
    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _217, 1, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)]), address(this.address), block.timestamp + 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _221 = mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _217) >> 32
    require mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _217) >> 32 <= 4294967296
    require mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _217) >> 32 + 32 <= return_data.size
    require mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _217) >> 32 + 288] <= 4294967296 and mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _217) >> 32 + (32 * mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _217) >> 32 + 288]) + 32 <= return_data.size
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] = mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _217) >> 32 + 288]
    _224 = mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + _221 + 288]
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + _221 + 288])] = mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + _221 + 320 len floor32(mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + _221 + 288])]
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x6391c0dc: ext_call.return_data[0], ext_call.return_data[0]
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _224) + (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
    emit 0x6391c0dc: ext_call.return_data[0], ext_call.return_data[0]
    mem[64] = (32 * _224) + (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 416
    mem[(32 * _224) + (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 320] = cd[132]
    require mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
    mem[(32 * _224) + (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 352] = mem[(32 * mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
    require mem[(32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] - 1 < mem[(32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 288]
    mem[(32 * _224) + (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 384] = mem[(32 * mem[(32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] - 1) + (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 320]
    return cd[132], mem[(32 * _224) + (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 352 len 64]
}

function sub_3a1eb1ef(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96 len 96] = call.data[calldata.size len 96]
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = cd[132]
    mem[228] = 64
    mem[260] = ('cd', 4).length
    mem[292 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 292] = 0
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args cd[132], Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _5 = mem[192 len 4], Mask(224, 32, cd[132]) >> 32
    require mem[192 len 4], Mask(224, 32, cd[132]) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[132]) >> 32 + 192]
    _8 = mem[_5 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_5 + 192])] = mem[_5 + 224 len floor32(mem[_5 + 192])]
    mem[64] = (32 * _8) + ceil32(return_data.size) + 224
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    _81 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    mem[(32 * _8) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _8) + ceil32(return_data.size) + 228] = _81
    mem[(32 * _8) + ceil32(return_data.size) + 260] = 64
    mem[(32 * _8) + ceil32(return_data.size) + 292] = ('cd', 36).length
    mem[(32 * _8) + ceil32(return_data.size) + 324 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * _8) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 324] = 0
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _81, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _8) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _8) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _85 = mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32
    require mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 <= 4294967296
    require mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 + 32 <= return_data.size
    require mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 + 224] <= 4294967296 and mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 + (32 * mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 + 224]) + 32 <= return_data.size
    mem[(32 * _8) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _81) >> 32 + 224]
    _88 = mem[(32 * _8) + ceil32(return_data.size) + _85 + 224]
    mem[(32 * _8) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _85 + 224])] = mem[(32 * _8) + ceil32(return_data.size) + _85 + 256 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _85 + 224])]
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[68]), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 260] = cd[132]
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 292] = 1
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 356] = this.address
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 388] = block.timestamp + 10
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 324] = 160
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 420] = ('cd', 4).length
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 452 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 452] = 0
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[132], 1, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)]), address(this.address), block.timestamp + 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256
    require return_data.size >= 32
    _159 = mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32
    require mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 <= 4294967296
    require mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 32 <= return_data.size
    require mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256] <= 4294967296 and mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + (32 * mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]) + 32 <= return_data.size
    mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] = mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]
    _162 = mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + _159 + 256]
    mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + _159 + 256])] = mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + _159 + 288 len floor32(mem[(32 * _88) + (32 * _8) + (2 * ceil32(return_data.size)) + _159 + 256])]
    mem[64] = (32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288
    require 0 < ('cd', 36).length
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = this.address
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 36).length
    require mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
    _212 = mem[(32 * mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = address(cd[100])
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = _212
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[100]), _212
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
    _217 = mem[(32 * mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = _217
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = 1
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 388] = this.address
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 420] = block.timestamp + 10
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 356] = 160
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 452] = ('cd', 36).length
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 484] = 0
    require ext_code.size(address(cd[100]))
    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _217, 1, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)]), address(this.address), block.timestamp + 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _221 = mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _217) >> 32
    require mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _217) >> 32 <= 4294967296
    require mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _217) >> 32 + 32 <= return_data.size
    require mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _217) >> 32 + 288] <= 4294967296 and mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _217) >> 32 + (32 * mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _217) >> 32 + 288]) + 32 <= return_data.size
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] = mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _217) >> 32 + 288]
    _224 = mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + _221 + 288]
    mem[(32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + _221 + 288])] = mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + _221 + 320 len floor32(mem[(32 * _162) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + _221 + 288])]
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'error1'
    require 0 < ('cd', 36).length
    mem[(32 * _224) + (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 324] = this.address
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'error2'
    mem[64] = (32 * _224) + (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 416
    mem[(32 * _224) + (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 320] = cd[132]
    require mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
    mem[(32 * _224) + (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 352] = mem[(32 * mem[(32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _88) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
    require mem[(32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] - 1 < mem[(32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 288]
    mem[(32 * _224) + (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 384] = mem[(32 * mem[(32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] - 1) + (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 320]
    return cd[132], mem[(32 * _224) + (32 * _162) + (32 * _88) + (32 * _8) + (6 * ceil32(return_data.size)) + 352 len 64]
}



}
