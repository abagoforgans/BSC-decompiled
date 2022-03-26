contract main {




// =====================  Runtime code  =====================


#
#  - sub_1675a07f(?)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not arg1:
        call owner with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        if arg2:
            call arg1.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args owner, arg2
        else:
            staticcall arg1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_f264f689(?) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(arg2.length) + 160] = Mask(32, 224, sha3(arg2[all]))
    mem[ceil32(arg2.length) + 164] = arg3
    mem[ceil32(arg2.length) + 196] = arg4
    mem[ceil32(arg2.length) + 228] = arg5
    mem[ceil32(arg2.length) + 128] = 100
    mem[64] = ceil32(arg2.length) + 260
    _7 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[ceil32(arg2.length) + 260 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 260] = mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) + 256, mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 260])
    call arg1.mem[ceil32(arg2.length) + 260 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 264 len _7 - 4]
    require ext_call.success
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_b90083ac(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[36]), cd[68]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = cd[68]
    mem[132] = 1
    mem[196] = this.address
    mem[228] = block.timestamp + 10
    mem[164] = 160
    mem[260] = ('cd', 4).length
    mem[292 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 292] = 0
    require ext_code.size(address(cd[36]))
    call address(cd[36]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, uint32(cd[68]), 1, 160, this.address, block.timestamp + 10, ('cd', 4).length, call.data[cd[4] + 36 len floor32(('cd', 4).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _7 = mem[96 len 4], Mask(224, 32, cd[68]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, cd[68]) >> 32 + 96]
    _10 = mem[_7 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_7 + 96])] = mem[_7 + 128 len floor32(mem[_7 + 96])]
    mem[(32 * _10) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _10) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _10) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    emit 0xca9b696c: 32, mem[(32 * _10) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    mem[(32 * _10) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _10) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _10) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _10) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
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
    require msg.sender == owner
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
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    _203 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    mem[(32 * _8) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _8) + ceil32(return_data.size) + 228] = _203
    mem[(32 * _8) + ceil32(return_data.size) + 260] = 64
    mem[(32 * _8) + ceil32(return_data.size) + 292] = ('cd', 36).length
    mem[(32 * _8) + ceil32(return_data.size) + 324 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * _8) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 324] = 0
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _203, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _8) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _8) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _207 = mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _203) >> 32
    require mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _203) >> 32 <= 4294967296
    require mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _203) >> 32 + 32 <= return_data.size
    require mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _203) >> 32 + 224] <= 4294967296 and mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _203) >> 32 + (32 * mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _203) >> 32 + 224]) + 32 <= return_data.size
    mem[(32 * _8) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _203) >> 32 + 224]
    _210 = mem[(32 * _8) + ceil32(return_data.size) + _207 + 224]
    mem[(32 * _8) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _207 + 224])] = mem[(32 * _8) + ceil32(return_data.size) + _207 + 256 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _207 + 224])]
    if cd[132] % 9418:
        require 1 < mem[(32 * _8) + (2 * ceil32(return_data.size)) + 224]
        if mem[(32 * _8) + (2 * ceil32(return_data.size)) + 288] <= cd[132]:
            revert with 0, 'error 0'
        require 0 < ('cd', 4).length
        require ext_code.size(address(('cd', 4)[0]))
        staticcall address(('cd', 4)[0]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ('cd', 36).length
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).balanceOf(address rg1) with:
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
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 260] = cd[132]
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 292] = 1
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 356] = this.address
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 388] = block.timestamp + 10
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 324] = 160
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 420] = ('cd', 4).length
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 452 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 452] = 0
        require ext_code.size(address(cd[68]))
        call address(cd[68]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[132], 1, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _446 = mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32
        require mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 <= 4294967296
        require mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 32 <= return_data.size
        require mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256] <= 4294967296 and mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + (32 * mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]) + 32 <= return_data.size
        mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] = mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]
        _454 = mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + _446 + 256]
        mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + _446 + 256])] = mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + _446 + 288 len floor32(mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + _446 + 256])]
        mem[64] = (32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288
        require 0 < ('cd', 36).length
        require mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
        _580 = mem[(32 * mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = address(cd[100])
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = _580
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[100]), _580
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
        _595 = mem[(32 * mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = _595
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = 1
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 388] = this.address
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 420] = block.timestamp + 10
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 356] = 160
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 452] = ('cd', 36).length
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 484] = 0
        require ext_code.size(address(cd[100]))
        call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _595, 1, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _454) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _607 = mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _595) >> 32
        require mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _595) >> 32 <= 4294967296
        require mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _595) >> 32 + 32 <= return_data.size
        require mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _595) >> 32 + 288] <= 4294967296 and mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _595) >> 32 + (32 * mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _595) >> 32 + 288]) + 32 <= return_data.size
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] = mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _595) >> 32 + 288]
        _616 = mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + _607 + 288]
        mem[(32 * _454) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + _607 + 288])] = mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + _607 + 320 len floor32(mem[(32 * _454) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + _607 + 288])]
        require 0 < ('cd', 4).length
        require ext_code.size(address(('cd', 4)[0]))
        staticcall address(('cd', 4)[0]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'error1'
        require 0 < ('cd', 36).length
        mem[(32 * _616) + (32 * _454) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 324] = this.address
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'error2'
        mem[64] = (32 * _616) + (32 * _454) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 416
        mem[(32 * _616) + (32 * _454) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 320] = cd[132]
        require mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
        mem[(32 * _616) + (32 * _454) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 352] = mem[(32 * mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
        require mem[(32 * _454) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] - 1 < mem[(32 * _454) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288]
        mem[(32 * _616) + (32 * _454) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 384] = mem[(32 * mem[(32 * _454) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] - 1) + (32 * _454) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 320]
        return cd[132], mem[(32 * _616) + (32 * _454) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 352 len 64]
    if msg.sender == owner:
        require 0 < ('cd', 4).length
        require ext_code.size(address(('cd', 4)[0]))
        staticcall address(('cd', 4)[0]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ('cd', 36).length
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).balanceOf(address rg1) with:
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
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 260] = cd[132]
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 292] = 1
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 356] = this.address
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 388] = block.timestamp + 10
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 324] = 160
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 420] = ('cd', 4).length
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 452 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 452] = 0
        require ext_code.size(address(cd[68]))
        call address(cd[68]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[132], 1, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _444 = mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32
        require mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 <= 4294967296
        require mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 32 <= return_data.size
        require mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256] <= 4294967296 and mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + (32 * mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]) + 32 <= return_data.size
        mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] = mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]
        _453 = mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + _444 + 256]
        mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + _444 + 256])] = mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + _444 + 288 len floor32(mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + _444 + 256])]
        mem[64] = (32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288
        require 0 < ('cd', 36).length
        require mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
        _583 = mem[(32 * mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = address(cd[100])
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = _583
        require ext_code.size(address(('cd', 36)[0]))
        call address(('cd', 36)[0]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[100]), _583
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
        _598 = mem[(32 * mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = _598
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = 1
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 388] = this.address
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 420] = block.timestamp + 10
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 356] = 160
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 452] = ('cd', 36).length
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 484] = 0
        require ext_code.size(address(cd[100]))
        call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _598, 1, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _453) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288
        require return_data.size >= 32
        _609 = mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _598) >> 32
        require mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _598) >> 32 <= 4294967296
        require mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _598) >> 32 + 32 <= return_data.size
        require mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _598) >> 32 + 288] <= 4294967296 and mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _598) >> 32 + (32 * mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _598) >> 32 + 288]) + 32 <= return_data.size
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] = mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _598) >> 32 + 288]
        _617 = mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + _609 + 288]
        mem[(32 * _453) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + _609 + 288])] = mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + _609 + 320 len floor32(mem[(32 * _453) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + _609 + 288])]
        require 0 < ('cd', 4).length
        require ext_code.size(address(('cd', 4)[0]))
        staticcall address(('cd', 4)[0]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'error1'
        require 0 < ('cd', 36).length
        mem[(32 * _617) + (32 * _453) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 324] = this.address
        require ext_code.size(address(('cd', 36)[0]))
        staticcall address(('cd', 36)[0]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'error2'
        mem[64] = (32 * _617) + (32 * _453) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 416
        mem[(32 * _617) + (32 * _453) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 320] = cd[132]
        require mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
        mem[(32 * _617) + (32 * _453) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 352] = mem[(32 * mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
        require mem[(32 * _453) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] - 1 < mem[(32 * _453) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288]
        mem[(32 * _617) + (32 * _453) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 384] = mem[(32 * mem[(32 * _453) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] - 1) + (32 * _453) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 320]
        return cd[132], mem[(32 * _617) + (32 * _453) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 352 len 64]
    require 1 < mem[(32 * _8) + (2 * ceil32(return_data.size)) + 224]
    if mem[(32 * _8) + (2 * ceil32(return_data.size)) + 288] <= cd[132]:
        revert with 0, 'error 0'
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).balanceOf(address rg1) with:
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
    mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 260] = cd[132]
    mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 292] = 1
    mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 356] = this.address
    mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 388] = block.timestamp + 10
    mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 324] = 160
    mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 420] = ('cd', 4).length
    mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 452 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 452] = 0
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args cd[132], 1, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)]), address(this.address), block.timestamp + 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256
    require return_data.size >= 32
    _450 = mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32
    require mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 <= 4294967296
    require mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 32 <= return_data.size
    require mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256] <= 4294967296 and mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + (32 * mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]) + 32 <= return_data.size
    mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] = mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]
    _457 = mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + _450 + 256]
    mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + _450 + 256])] = mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + _450 + 288 len floor32(mem[(32 * _210) + (32 * _8) + (2 * ceil32(return_data.size)) + _450 + 256])]
    mem[64] = (32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288
    require 0 < ('cd', 36).length
    require mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
    _586 = mem[(32 * mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = address(cd[100])
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = _586
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[100]), _586
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
    _601 = mem[(32 * mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = _601
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = 1
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 388] = this.address
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 420] = block.timestamp + 10
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 356] = 160
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 452] = ('cd', 36).length
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 484] = 0
    require ext_code.size(address(cd[100]))
    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _601, 1, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)]), address(this.address), block.timestamp + 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _457) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _611 = mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _601) >> 32
    require mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _601) >> 32 <= 4294967296
    require mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _601) >> 32 + 32 <= return_data.size
    require mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _601) >> 32 + 288] <= 4294967296 and mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _601) >> 32 + (32 * mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _601) >> 32 + 288]) + 32 <= return_data.size
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] = mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _601) >> 32 + 288]
    _618 = mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + _611 + 288]
    mem[(32 * _457) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + _611 + 288])] = mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + _611 + 320 len floor32(mem[(32 * _457) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + _611 + 288])]
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    staticcall address(('cd', 4)[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'error1'
    require 0 < ('cd', 36).length
    mem[(32 * _618) + (32 * _457) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 324] = this.address
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'error2'
    mem[64] = (32 * _618) + (32 * _457) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 416
    mem[(32 * _618) + (32 * _457) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 320] = cd[132]
    require mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1 < mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]
    mem[(32 * _618) + (32 * _457) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 352] = mem[(32 * mem[(32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] - 1) + (32 * _210) + (32 * _8) + (4 * ceil32(return_data.size)) + 288]
    require mem[(32 * _457) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] - 1 < mem[(32 * _457) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288]
    mem[(32 * _618) + (32 * _457) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 384] = mem[(32 * mem[(32 * _457) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] - 1) + (32 * _457) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 320]
    return cd[132], mem[(32 * _618) + (32 * _457) + (32 * _210) + (32 * _8) + (6 * ceil32(return_data.size)) + 352 len 64]
}

function sub_517721b8(?) payable {
    require calldata.size - 4 >= 224
    require ext_code.size(arg3)
    staticcall arg3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg5)
    if arg1 < arg2:
        if arg1 == arg1:
            staticcall arg5.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg7, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg4)
            staticcall arg4.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(arg6)
            if arg1 == arg1:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg7 % 9418:
                    if ext_call.return_data[0] <= arg7:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        mem[384 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[64] = 324
                            mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[328] = ext_call.return_data[0]
                                mem[360] = 0
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[328] = 0
                                mem[360] = ext_call.return_data[0]
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[292] = return_data.size
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 329] = 0
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
                else:
                    if owner != msg.sender:
                        if ext_call.return_data[0] <= arg7:
                            emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 224, mem[356 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            else:
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            require ext_code.size(arg3)
                            if arg1 != arg1:
                                call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, address(arg4), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0, 0
                            else:
                                call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], address(arg4), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'error1'
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        mem[384 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[64] = 324
                            mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[328] = ext_call.return_data[0]
                                mem[360] = 0
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[328] = 0
                                mem[360] = ext_call.return_data[0]
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[292] = return_data.size
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 329] = 0
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
            else:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg7 % 9418:
                    if ext_call.return_data[0] <= arg7:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        mem[384 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[64] = 324
                            mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[328] = ext_call.return_data[0]
                                mem[360] = 0
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[328] = 0
                                mem[360] = ext_call.return_data[0]
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[292] = return_data.size
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 329] = 0
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
                else:
                    if owner != msg.sender:
                        if ext_call.return_data[0] <= arg7:
                            emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 224, mem[356 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            else:
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            require ext_code.size(arg3)
                            if arg1 != arg1:
                                call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, address(arg4), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0, 0
                            else:
                                call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], address(arg4), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'error1'
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        mem[384 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[64] = 324
                            mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[328] = ext_call.return_data[0]
                                mem[360] = 0
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[328] = 0
                                mem[360] = ext_call.return_data[0]
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[292] = return_data.size
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 329] = 0
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
        else:
            staticcall arg5.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg7, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg4)
            staticcall arg4.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(arg6)
            if arg1 == arg1:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg7 % 9418:
                    if ext_call.return_data[0] <= arg7:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        mem[384 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[64] = 324
                            mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[328] = ext_call.return_data[0]
                                mem[360] = 0
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[328] = 0
                                mem[360] = ext_call.return_data[0]
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[292] = return_data.size
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 329] = 0
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
                else:
                    if owner != msg.sender:
                        if ext_call.return_data[0] <= arg7:
                            emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 224, mem[356 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            else:
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            require ext_code.size(arg3)
                            if arg1 != arg1:
                                call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, address(arg4), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0, 0
                            else:
                                call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], address(arg4), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'error1'
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        mem[384 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[64] = 324
                            mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[328] = ext_call.return_data[0]
                                mem[360] = 0
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[328] = 0
                                mem[360] = ext_call.return_data[0]
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[292] = return_data.size
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 329] = 0
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
            else:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg7 % 9418:
                    if ext_call.return_data[0] <= arg7:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                        require ext_code.size(arg3)
                        if arg1 != arg1:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg4), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], msg.sender, 128, 0, 0
                        else:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg4), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, msg.sender, 128, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
                else:
                    if msg.sender == owner:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                        require ext_code.size(arg3)
                        if arg1 != arg1:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg4), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], msg.sender, 128, 0, 0
                        else:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg4), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, msg.sender, 128, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
                    else:
                        if ext_call.return_data[0] <= arg7:
                            emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                            mem[384 len 4] = uint32(arg7)
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 224, mem[356 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                mem[64] = 324
                                mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg1 != arg1:
                                    mem[328] = ext_call.return_data[0]
                                    mem[360] = 0
                                    mem[392] = arg4
                                    mem[424] = 128
                                    mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                    mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[328] = 0
                                    mem[360] = ext_call.return_data[0]
                                    mem[392] = arg4
                                    mem[424] = 128
                                    mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                    mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            else:
                                mem[292] = return_data.size
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg1 != arg1:
                                    mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 361] = 0
                                    mem[ceil32(return_data.size) + 393] = arg4
                                    mem[ceil32(return_data.size) + 425] = 128
                                    mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                    mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                    if not mem[ceil32(return_data.size) + 293] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[ceil32(return_data.size) + 329] = 0
                                    mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 393] = arg4
                                    mem[ceil32(return_data.size) + 425] = 128
                                    mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                    mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                    if not mem[ceil32(return_data.size) + 293] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'error1'
    else:
        if arg2 == arg1:
            staticcall arg5.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg7, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg4)
            staticcall arg4.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(arg6)
            if arg2 == arg1:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg7 % 9418:
                    if ext_call.return_data[0] <= arg7:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        mem[384 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[64] = 324
                            mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[328] = ext_call.return_data[0]
                                mem[360] = 0
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[328] = 0
                                mem[360] = ext_call.return_data[0]
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[292] = return_data.size
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 329] = 0
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
                else:
                    if msg.sender == owner:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        mem[384 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[64] = 324
                            mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[328] = ext_call.return_data[0]
                                mem[360] = 0
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[328] = 0
                                mem[360] = ext_call.return_data[0]
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[292] = return_data.size
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 329] = 0
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
                    else:
                        if ext_call.return_data[0] <= arg7:
                            emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                            mem[384 len 4] = uint32(arg7)
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 224, mem[356 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                mem[64] = 324
                                mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg2 != arg1:
                                    mem[328] = ext_call.return_data[0]
                                    mem[360] = 0
                                    mem[392] = arg4
                                    mem[424] = 128
                                    mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                    mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[328] = 0
                                    mem[360] = ext_call.return_data[0]
                                    mem[392] = arg4
                                    mem[424] = 128
                                    mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                    mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            else:
                                mem[292] = return_data.size
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg2 != arg1:
                                    mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 361] = 0
                                    mem[ceil32(return_data.size) + 393] = arg4
                                    mem[ceil32(return_data.size) + 425] = 128
                                    mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                    mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                    if not mem[ceil32(return_data.size) + 293] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[ceil32(return_data.size) + 329] = 0
                                    mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 393] = arg4
                                    mem[ceil32(return_data.size) + 425] = 128
                                    mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                    mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                    if not mem[ceil32(return_data.size) + 293] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'error1'
            else:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg7 % 9418:
                    if ext_call.return_data[0] <= arg7:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        mem[384 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[64] = 324
                            mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[328] = ext_call.return_data[0]
                                mem[360] = 0
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[328] = 0
                                mem[360] = ext_call.return_data[0]
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[292] = return_data.size
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 329] = 0
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
                else:
                    if msg.sender == owner:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        mem[384 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[64] = 324
                            mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[328] = ext_call.return_data[0]
                                mem[360] = 0
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[328] = 0
                                mem[360] = ext_call.return_data[0]
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[292] = return_data.size
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 329] = 0
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
                    else:
                        if ext_call.return_data[0] <= arg7:
                            emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                            mem[384 len 4] = uint32(arg7)
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 224, mem[356 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                mem[64] = 324
                                mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg2 != arg1:
                                    mem[328] = ext_call.return_data[0]
                                    mem[360] = 0
                                    mem[392] = arg4
                                    mem[424] = 128
                                    mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                    mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[328] = 0
                                    mem[360] = ext_call.return_data[0]
                                    mem[392] = arg4
                                    mem[424] = 128
                                    mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                    mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            else:
                                mem[292] = return_data.size
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg2 != arg1:
                                    mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 361] = 0
                                    mem[ceil32(return_data.size) + 393] = arg4
                                    mem[ceil32(return_data.size) + 425] = 128
                                    mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                    mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                    if not mem[ceil32(return_data.size) + 293] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[ceil32(return_data.size) + 329] = 0
                                    mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 393] = arg4
                                    mem[ceil32(return_data.size) + 425] = 128
                                    mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                    mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                    if not mem[ceil32(return_data.size) + 293] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'error1'
        else:
            staticcall arg5.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args arg7, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg4)
            staticcall arg4.getReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_code.size(arg6)
            if arg2 == arg1:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg7 % 9418:
                    if ext_call.return_data[0] <= arg7:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        mem[384 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[64] = 324
                            mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[328] = ext_call.return_data[0]
                                mem[360] = 0
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[328] = 0
                                mem[360] = ext_call.return_data[0]
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[292] = return_data.size
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 329] = 0
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
                else:
                    if msg.sender == owner:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                        require ext_code.size(arg3)
                        if arg2 != arg1:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg4), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], msg.sender, 128, 0, 0
                        else:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg4), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, msg.sender, 128, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
                    else:
                        if ext_call.return_data[0] <= arg7:
                            emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                            mem[384 len 4] = uint32(arg7)
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 224, mem[356 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                mem[64] = 324
                                mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg2 != arg1:
                                    mem[328] = ext_call.return_data[0]
                                    mem[360] = 0
                                    mem[392] = arg4
                                    mem[424] = 128
                                    mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                    mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[328] = 0
                                    mem[360] = ext_call.return_data[0]
                                    mem[392] = arg4
                                    mem[424] = 128
                                    mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                    mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            else:
                                mem[292] = return_data.size
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg2 != arg1:
                                    mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 361] = 0
                                    mem[ceil32(return_data.size) + 393] = arg4
                                    mem[ceil32(return_data.size) + 425] = 128
                                    mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                    mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                    if not mem[ceil32(return_data.size) + 293] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[ceil32(return_data.size) + 329] = 0
                                    mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 393] = arg4
                                    mem[ceil32(return_data.size) + 425] = 128
                                    mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                    mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                    if not mem[ceil32(return_data.size) + 293] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'error1'
            else:
                staticcall arg6.getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args ext_call.return_data[0], ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg7 % 9418:
                    if ext_call.return_data[0] <= arg7:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                        require ext_code.size(arg3)
                        if arg2 != arg1:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(arg4), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], msg.sender, 128, 0, 0
                        else:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(arg4), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, msg.sender, 128, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
                else:
                    if msg.sender == owner:
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                        mem[384 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 224, mem[356 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[64] = 324
                            mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[328] = ext_call.return_data[0]
                                mem[360] = 0
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[328] = 0
                                mem[360] = ext_call.return_data[0]
                                mem[392] = arg4
                                mem[424] = 128
                                mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[292] = return_data.size
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                            mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 329] = 0
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = arg4
                                mem[ceil32(return_data.size) + 425] = 128
                                mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                if not mem[ceil32(return_data.size) + 293] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
                    else:
                        if ext_call.return_data[0] <= arg7:
                            emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                        else:
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[292 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                            mem[384 len 4] = uint32(arg7)
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 224, mem[356 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                mem[64] = 324
                                mem[324] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg2 != arg1:
                                    mem[328] = ext_call.return_data[0]
                                    mem[360] = 0
                                    mem[392] = arg4
                                    mem[424] = 128
                                    mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                    mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[328] = 0
                                    mem[360] = ext_call.return_data[0]
                                    mem[392] = arg4
                                    mem[424] = 128
                                    mem[456] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32
                                    mem[488 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)] = mem[324 len ceil32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[456 len transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 488] = mem[floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 520 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32, mem[488 len floor32(transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            else:
                                mem[292] = return_data.size
                                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[324]:
                                        revert with 0, 'TTransferHelper: TRANSFER_FAILED'
                                mem[ceil32(return_data.size) + 325] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg2 != arg1:
                                    mem[ceil32(return_data.size) + 329] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 361] = 0
                                    mem[ceil32(return_data.size) + 393] = arg4
                                    mem[ceil32(return_data.size) + 425] = 128
                                    mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                    mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                    if not mem[ceil32(return_data.size) + 293] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[ceil32(return_data.size) + 329] = 0
                                    mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 393] = arg4
                                    mem[ceil32(return_data.size) + 425] = 128
                                    mem[ceil32(return_data.size) + 457] = mem[ceil32(return_data.size) + 293]
                                    mem[ceil32(return_data.size) + 489 len ceil32(mem[ceil32(return_data.size) + 293])] = mem[ceil32(return_data.size) + 325 len ceil32(mem[ceil32(return_data.size) + 293])]
                                    if not mem[ceil32(return_data.size) + 293] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 457 len mem[ceil32(return_data.size) + 293] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + 489] = mem[floor32(mem[ceil32(return_data.size) + 293]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 293] % 32) + 521 len mem[ceil32(return_data.size) + 293] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 293], mem[ceil32(return_data.size) + 489 len floor32(mem[ceil32(return_data.size) + 293]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'error1'
    return arg7, ext_call.return_data[0], ext_call.return_data[0]
}



}
