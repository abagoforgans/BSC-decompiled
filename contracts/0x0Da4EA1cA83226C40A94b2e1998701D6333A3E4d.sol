contract main {




// =====================  Runtime code  =====================


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
    mem[ceil32(arg2.length) + 260 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 292 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] = mem[ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
    call arg1.mem[ceil32(arg2.length) + 260 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 264 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] - 4]
    require ext_call.success
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_abfa2614(?) payable {
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

function sub_6731951c(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require msg.sender == owner
    require 0 < ('cd', 4).length
    require ext_code.size(address(('cd', 4)[0]))
    call address(('cd', 4)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[68]), cd[132]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = cd[132]
    mem[132] = 1
    mem[196] = this.address
    mem[228] = block.timestamp + 10
    mem[164] = 160
    mem[260] = ('cd', 4).length
    mem[292 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[(32 * ('cd', 4).length) + 292] = 0
    require ext_code.size(address(cd[68]))
    call address(cd[68]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args 0, uint32(cd[132]), 1, 160, this.address, block.timestamp + 10, ('cd', 4).length, call.data[cd[4] + 36 len floor32(('cd', 4).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _7 = mem[96 len 4], Mask(224, 32, cd[132]) >> 32
    require mem[96 len 4], Mask(224, 32, cd[132]) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, cd[132]) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, cd[132]) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, cd[132]) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, cd[132]) >> 32 + 96]
    _10 = mem[_7 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_7 + 96])] = mem[_7 + 128 len floor32(mem[_7 + 96])]
    mem[(32 * _10) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _10) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _10) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    emit 0xca9b696c: 32, mem[(32 * _10) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
    mem[(32 * _10) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _10) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _10) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    emit 0xca9b696c: 32, mem[(32 * _10) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
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
    mem[(32 * _11) + ceil32(return_data.size) + 224] = 32
    mem[(32 * _11) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 192]
    mem[(32 * _11) + ceil32(return_data.size) + 288 len floor32(mem[ceil32(return_data.size) + 192])] = mem[ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 192])]
    emit 0xca9b696c: 32, mem[(32 * _11) + ceil32(return_data.size) + 256 len (32 * mem[ceil32(return_data.size) + 192]) + 32]
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    _84 = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[100]), mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _11) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _11) + ceil32(return_data.size) + 228] = _84
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
        args _84, 1, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)]), this.address, block.timestamp + 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _11) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _11) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _91 = mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _84) >> 32
    require mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _84) >> 32 <= 4294967296
    require mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _84) >> 32 + 32 <= return_data.size
    require mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _84) >> 32 + 224] <= 4294967296 and mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _84) >> 32 + (32 * mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _84) >> 32 + 224]) + 32 <= return_data.size
    mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _84) >> 32 + 224]
    _94 = mem[(32 * _11) + ceil32(return_data.size) + _91 + 224]
    mem[(32 * _11) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _11) + ceil32(return_data.size) + _91 + 224])] = mem[(32 * _11) + ceil32(return_data.size) + _91 + 256 len floor32(mem[(32 * _11) + ceil32(return_data.size) + _91 + 224])]
    mem[(32 * _94) + (32 * _11) + (2 * ceil32(return_data.size)) + 256] = 32
    mem[(32 * _94) + (32 * _11) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224]
    mem[(32 * _94) + (32 * _11) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224])] = mem[(32 * _11) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224])]
    emit 0xca9b696c: 32, mem[(32 * _94) + (32 * _11) + (2 * ceil32(return_data.size)) + 288 len (32 * mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224]) + 32]
    mem[(32 * _94) + (32 * _11) + (2 * ceil32(return_data.size)) + 256] = cd[132]
    require mem[ceil32(return_data.size) + 192] - 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _94) + (32 * _11) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * mem[ceil32(return_data.size) + 192] - 1) + ceil32(return_data.size) + 224]
    require mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224] - 1 < mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224]
    mem[(32 * _94) + (32 * _11) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224] - 1) + (32 * _11) + (2 * ceil32(return_data.size)) + 256]
    mem[(32 * _94) + (32 * _11) + (2 * ceil32(return_data.size)) + 352 len 96] = cd[132], mem[(32 * _94) + (32 * _11) + (2 * ceil32(return_data.size)) + 288 len 64]
    return memory
      from (32 * _94) + (32 * _11) + (2 * ceil32(return_data.size)) + 352
       len ceil32(return_data.size) + 96
}



}
