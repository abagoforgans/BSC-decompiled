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
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, arg2
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
    require 1 < mem[ceil32(return_data.size) + 192]
    _35 = mem[ceil32(return_data.size) + 256]
    require 0 < ('cd', 36).length
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[100]), mem[ceil32(return_data.size) + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _11) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _11) + ceil32(return_data.size) + 228] = _35
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
        args _35, 1, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)]), this.address, block.timestamp + 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _11) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _11) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _42 = mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _35) >> 32
    require mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _35) >> 32 <= 4294967296
    require mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _35) >> 32 + 32 <= return_data.size
    require mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _35) >> 32 + 224] <= 4294967296 and mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _35) >> 32 + (32 * mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _35) >> 32 + 224]) + 32 <= return_data.size
    mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _11) + ceil32(return_data.size) + mem[(32 * _11) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _35) >> 32 + 224]
    _45 = mem[(32 * _11) + ceil32(return_data.size) + _42 + 224]
    mem[(32 * _11) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _11) + ceil32(return_data.size) + _42 + 224])] = mem[(32 * _11) + ceil32(return_data.size) + _42 + 256 len floor32(mem[(32 * _11) + ceil32(return_data.size) + _42 + 224])]
    mem[(32 * _45) + (32 * _11) + (2 * ceil32(return_data.size)) + 256] = cd[132]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _45) + (32 * _11) + (2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + 256]
    require 1 < mem[(32 * _11) + (2 * ceil32(return_data.size)) + 224]
    mem[(32 * _45) + (32 * _11) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _11) + (2 * ceil32(return_data.size)) + 288]
    mem[(32 * _45) + (32 * _11) + (2 * ceil32(return_data.size)) + 352 len 96] = cd[132], mem[ceil32(return_data.size) + 256], mem[(32 * _11) + (2 * ceil32(return_data.size)) + 288]
    return cd[132], mem[ceil32(return_data.size) + 256], mem[(32 * _11) + (2 * ceil32(return_data.size)) + 288]
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
    require 1 < mem[ceil32(return_data.size) + 192]
    _192 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _8) + ceil32(return_data.size) + 224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _8) + ceil32(return_data.size) + 228] = _192
    mem[(32 * _8) + ceil32(return_data.size) + 260] = 64
    mem[(32 * _8) + ceil32(return_data.size) + 292] = ('cd', 36).length
    mem[(32 * _8) + ceil32(return_data.size) + 324 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
    mem[(32 * _8) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 324] = 0
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _192, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _8) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _8) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _196 = mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _192) >> 32
    require mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _192) >> 32 <= 4294967296
    require mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _192) >> 32 + 32 <= return_data.size
    require mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _192) >> 32 + 224] <= 4294967296 and mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _192) >> 32 + (32 * mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _192) >> 32 + 224]) + 32 <= return_data.size
    mem[(32 * _8) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _8) + ceil32(return_data.size) + mem[(32 * _8) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _192) >> 32 + 224]
    _199 = mem[(32 * _8) + ceil32(return_data.size) + _196 + 224]
    mem[(32 * _8) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _196 + 224])] = mem[(32 * _8) + ceil32(return_data.size) + _196 + 256 len floor32(mem[(32 * _8) + ceil32(return_data.size) + _196 + 224])]
    if cd[132] % 9418:
        if 1 < mem[(32 * _8) + (2 * ceil32(return_data.size)) + 224]:
            if mem[(32 * _8) + (2 * ceil32(return_data.size)) + 288] <= cd[132]:
                revert with 0, 'error 0'
            if 0 < ('cd', 4).length:
                require ext_code.size(address(('cd', 4)[0]))
                staticcall address(('cd', 4)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ('cd', 36).length:
                    require ext_code.size(address(('cd', 36)[0]))
                    staticcall address(('cd', 36)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ('cd', 4).length:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(cd[68]), cd[132]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 260] = cd[132]
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 292] = 1
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 356] = this.address
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 388] = block.timestamp + 10
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 324] = 160
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 420] = ('cd', 4).length
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 452 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 452] = 0
                        require ext_code.size(address(cd[68]))
                        call address(cd[68]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args cd[132], 1, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)]), address(this.address), block.timestamp + 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256
                        require return_data.size >= 32
                        _426 = mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32
                        require mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 <= 4294967296
                        require mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256] <= 4294967296 and mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + (32 * mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]) + 32 <= return_data.size
                        mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] = mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]
                        _434 = mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + _426 + 256]
                        mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + _426 + 256])] = mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + _426 + 288 len floor32(mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + _426 + 256])]
                        if 1 < ('cd', 36).length:
                            if 1 < mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]:
                                _548 = mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 320]
                                mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = address(cd[100])
                                mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = _548
                                require ext_code.size(address(('cd', 36)[1]))
                                call address(('cd', 36)[1]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(cd[100]), _548
                                mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]:
                                    _563 = mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 320]
                                    mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = _563
                                    mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = 1
                                    mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 388] = this.address
                                    mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 420] = block.timestamp + 10
                                    mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 356] = 160
                                    mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 452] = ('cd', 36).length
                                    mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                    mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 484] = 0
                                    require ext_code.size(address(cd[100]))
                                    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args _563, 1, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)]), address(this.address), block.timestamp + 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _434) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 288
                                    require return_data.size >= 32
                                    _575 = mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _563) >> 32
                                    require mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _563) >> 32 <= 4294967296
                                    require mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _563) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _563) >> 32 + 288] <= 4294967296 and mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _563) >> 32 + (32 * mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _563) >> 32 + 288]) + 32 <= return_data.size
                                    mem[(32 * _434) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] = mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _563) >> 32 + 288]
                                    _584 = mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + _575 + 288]
                                    mem[(32 * _434) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + _575 + 288])] = mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + _575 + 320 len floor32(mem[(32 * _434) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + _575 + 288])]
                                    if 0 < ('cd', 4).length:
                                        require ext_code.size(address(('cd', 4)[0]))
                                        staticcall address(('cd', 4)[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'error1'
                                        if 1 < ('cd', 36).length:
                                            require ext_code.size(address(('cd', 36)[1]))
                                            staticcall address(('cd', 36)[1]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 'error1'
                                            mem[(32 * _584) + (32 * _434) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 320] = cd[132]
                                            if 1 < mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]:
                                                mem[(32 * _584) + (32 * _434) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 352] = mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 320]
                                                if 1 < mem[(32 * _434) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 288]:
                                                    return cd[132], 
                                                           mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 320],
                                                           mem[(32 * _434) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 352]
    else:
        if msg.sender == owner:
            if 0 < ('cd', 4).length:
                require ext_code.size(address(('cd', 4)[0]))
                staticcall address(('cd', 4)[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ('cd', 36).length:
                    require ext_code.size(address(('cd', 36)[0]))
                    staticcall address(('cd', 36)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ('cd', 4).length:
                        require ext_code.size(address(('cd', 4)[0]))
                        call address(('cd', 4)[0]).approve(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args address(cd[68]), cd[132]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 260] = cd[132]
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 292] = 1
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 356] = this.address
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 388] = block.timestamp + 10
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 324] = 160
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 420] = ('cd', 4).length
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 452 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 452] = 0
                        require ext_code.size(address(cd[68]))
                        call address(cd[68]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args cd[132], 1, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)]), address(this.address), block.timestamp + 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256
                        require return_data.size >= 32
                        _424 = mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32
                        require mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 <= 4294967296
                        require mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 32 <= return_data.size
                        require mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256] <= 4294967296 and mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + (32 * mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]) + 32 <= return_data.size
                        mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] = mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]
                        _433 = mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + _424 + 256]
                        mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + _424 + 256])] = mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + _424 + 288 len floor32(mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + _424 + 256])]
                        if 1 < ('cd', 36).length:
                            if 1 < mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]:
                                _551 = mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 320]
                                mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = address(cd[100])
                                mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = _551
                                require ext_code.size(address(('cd', 36)[1]))
                                call address(('cd', 36)[1]).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(cd[100]), _551
                                mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]:
                                    _566 = mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 320]
                                    mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = _566
                                    mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = 1
                                    mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 388] = this.address
                                    mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 420] = block.timestamp + 10
                                    mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 356] = 160
                                    mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 452] = ('cd', 36).length
                                    mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                    mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 484] = 0
                                    require ext_code.size(address(cd[100]))
                                    call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args _566, 1, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)]), address(this.address), block.timestamp + 10
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _433) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 288
                                    require return_data.size >= 32
                                    _577 = mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _566) >> 32
                                    require mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _566) >> 32 <= 4294967296
                                    require mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _566) >> 32 + 32 <= return_data.size
                                    require mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _566) >> 32 + 288] <= 4294967296 and mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _566) >> 32 + (32 * mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _566) >> 32 + 288]) + 32 <= return_data.size
                                    mem[(32 * _433) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] = mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _566) >> 32 + 288]
                                    _585 = mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + _577 + 288]
                                    mem[(32 * _433) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + _577 + 288])] = mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + _577 + 320 len floor32(mem[(32 * _433) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + _577 + 288])]
                                    if 0 < ('cd', 4).length:
                                        require ext_code.size(address(('cd', 4)[0]))
                                        staticcall address(('cd', 4)[0]).0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'error1'
                                        if 1 < ('cd', 36).length:
                                            require ext_code.size(address(('cd', 36)[1]))
                                            staticcall address(('cd', 36)[1]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 'error1'
                                            mem[(32 * _585) + (32 * _433) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 320] = cd[132]
                                            if 1 < mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]:
                                                mem[(32 * _585) + (32 * _433) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 352] = mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 320]
                                                if 1 < mem[(32 * _433) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 288]:
                                                    return cd[132], 
                                                           mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 320],
                                                           mem[(32 * _433) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 352]
        else:
            if 1 < mem[(32 * _8) + (2 * ceil32(return_data.size)) + 224]:
                if mem[(32 * _8) + (2 * ceil32(return_data.size)) + 288] <= cd[132]:
                    revert with 0, 'error 0'
                if 0 < ('cd', 4).length:
                    require ext_code.size(address(('cd', 4)[0]))
                    staticcall address(('cd', 4)[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ('cd', 36).length:
                        require ext_code.size(address(('cd', 36)[0]))
                        staticcall address(('cd', 36)[0]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ('cd', 4).length:
                            require ext_code.size(address(('cd', 4)[0]))
                            call address(('cd', 4)[0]).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args address(cd[68]), cd[132]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 260] = cd[132]
                            mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 292] = 1
                            mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 356] = this.address
                            mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 388] = block.timestamp + 10
                            mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 324] = 160
                            mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 420] = ('cd', 4).length
                            mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 452 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
                            mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + (32 * ('cd', 4).length) + 452] = 0
                            require ext_code.size(address(cd[68]))
                            call address(cd[68]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args cd[132], 1, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)]), address(this.address), block.timestamp + 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            _430 = mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32
                            require mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 <= 4294967296
                            require mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 32 <= return_data.size
                            require mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256] <= 4294967296 and mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + (32 * mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]) + 32 <= return_data.size
                            mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256] = mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[132]) >> 32 + 256]
                            _437 = mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + _430 + 256]
                            mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + _430 + 256])] = mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + _430 + 288 len floor32(mem[(32 * _199) + (32 * _8) + (2 * ceil32(return_data.size)) + _430 + 256])]
                            if 1 < ('cd', 36).length:
                                if 1 < mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]:
                                    _554 = mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 320]
                                    mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = address(cd[100])
                                    mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = _554
                                    require ext_code.size(address(('cd', 36)[1]))
                                    call address(('cd', 36)[1]).approve(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(cd[100]), _554
                                    mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 1 < mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]:
                                        _569 = mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 320]
                                        mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 292] = _569
                                        mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 324] = 1
                                        mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 388] = this.address
                                        mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 420] = block.timestamp + 10
                                        mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 356] = 160
                                        mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 452] = ('cd', 36).length
                                        mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 484 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
                                        mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 484] = 0
                                        require ext_code.size(address(cd[100]))
                                        call address(cd[100]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args _569, 1, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len floor32(('cd', 36).length)]), address(this.address), block.timestamp + 10
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (32 * _437) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 288
                                        require return_data.size >= 32
                                        _579 = mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _569) >> 32
                                        require mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _569) >> 32 <= 4294967296
                                        require mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _569) >> 32 + 32 <= return_data.size
                                        require mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _569) >> 32 + 288] <= 4294967296 and mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _569) >> 32 + (32 * mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _569) >> 32 + 288]) + 32 <= return_data.size
                                        mem[(32 * _437) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 288] = mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 288 len 4], Mask(224, 32, _569) >> 32 + 288]
                                        _586 = mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + _579 + 288]
                                        mem[(32 * _437) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + _579 + 288])] = mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + _579 + 320 len floor32(mem[(32 * _437) + (32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + _579 + 288])]
                                        if 0 < ('cd', 4).length:
                                            require ext_code.size(address(('cd', 4)[0]))
                                            staticcall address(('cd', 4)[0]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                                revert with 0, 'error1'
                                            if 1 < ('cd', 36).length:
                                                require ext_code.size(address(('cd', 36)[1]))
                                                staticcall address(('cd', 36)[1]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < ext_call.return_data[0]:
                                                    revert with 0, 'error1'
                                                mem[(32 * _586) + (32 * _437) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 320] = cd[132]
                                                if 1 < mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 256]:
                                                    mem[(32 * _586) + (32 * _437) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 352] = mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 320]
                                                    if 1 < mem[(32 * _437) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 288]:
                                                        return cd[132], 
                                                               mem[(32 * _199) + (32 * _8) + (4 * ceil32(return_data.size)) + 320],
                                                               mem[(32 * _437) + (32 * _199) + (32 * _8) + (6 * ceil32(return_data.size)) + 352]
    revert
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
            if arg1 != arg1:
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
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                        else:
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
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
                        staticcall arg1.0x70a08231 with:
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                            mem[448 len 4] = uint32(arg7)
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 480, mem[420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[428 len 20],
                                                    uint32(arg7),
                                                    mem[452 len 4]
                            else:
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[ceil32(return_data.size) + 429 len 28]
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'error1'
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                            mem[64] = 356
                            mem[356] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[360] = ext_call.return_data[0]
                                mem[392] = 0
                                mem[424] = arg4
                                mem[456] = 128
                                mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[360] = 0
                                mem[392] = ext_call.return_data[0]
                                mem[424] = arg4
                                mem[456] = 128
                                mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[324] = return_data.size
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                            mem[ceil32(return_data.size) + 357] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = 0
                                mem[ceil32(return_data.size) + 425] = arg4
                                mem[ceil32(return_data.size) + 457] = 128
                                mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                if not mem[ceil32(return_data.size) + 325] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 425] = arg4
                                mem[ceil32(return_data.size) + 457] = 128
                                mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                if not mem[ceil32(return_data.size) + 325] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
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
                       args ext_call.return_data[0], ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg7 % 9418:
                    if ext_call.return_data[0] <= arg7:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                            mem[64] = 356
                            mem[356] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[360] = ext_call.return_data[0]
                                mem[392] = 0
                                mem[424] = arg4
                                mem[456] = 128
                                mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[360] = 0
                                mem[392] = ext_call.return_data[0]
                                mem[424] = arg4
                                mem[456] = 128
                                mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[324] = return_data.size
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                            mem[ceil32(return_data.size) + 357] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = 0
                                mem[ceil32(return_data.size) + 425] = arg4
                                mem[ceil32(return_data.size) + 457] = 128
                                mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                if not mem[ceil32(return_data.size) + 325] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 425] = arg4
                                mem[ceil32(return_data.size) + 457] = 128
                                mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                if not mem[ceil32(return_data.size) + 325] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
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
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                            mem[64] = 356
                            mem[356] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[360] = ext_call.return_data[0]
                                mem[392] = 0
                                mem[424] = arg4
                                mem[456] = 128
                                mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[360] = 0
                                mem[392] = ext_call.return_data[0]
                                mem[424] = arg4
                                mem[456] = 128
                                mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[324] = return_data.size
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                            mem[ceil32(return_data.size) + 357] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg1 != arg1:
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = 0
                                mem[ceil32(return_data.size) + 425] = arg4
                                mem[ceil32(return_data.size) + 457] = 128
                                mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                if not mem[ceil32(return_data.size) + 325] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 425] = arg4
                                mem[ceil32(return_data.size) + 457] = 128
                                mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                if not mem[ceil32(return_data.size) + 325] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                            mem[448 len 4] = uint32(arg7)
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 480, mem[420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[428 len 20],
                                                    uint32(arg7),
                                                    mem[452 len 4]
                                mem[64] = 356
                                mem[356] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg1 != arg1:
                                    mem[360] = ext_call.return_data[0]
                                    mem[392] = 0
                                    mem[424] = arg4
                                    mem[456] = 128
                                    mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                    mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[360] = 0
                                    mem[392] = ext_call.return_data[0]
                                    mem[424] = arg4
                                    mem[456] = 128
                                    mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                    mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            else:
                                mem[324] = return_data.size
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[ceil32(return_data.size) + 429 len 28]
                                mem[ceil32(return_data.size) + 357] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg1 != arg1:
                                    mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 393] = 0
                                    mem[ceil32(return_data.size) + 425] = arg4
                                    mem[ceil32(return_data.size) + 457] = 128
                                    mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                    mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                    if not mem[ceil32(return_data.size) + 325] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[ceil32(return_data.size) + 361] = 0
                                    mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 425] = arg4
                                    mem[ceil32(return_data.size) + 457] = 128
                                    mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                    mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                    if not mem[ceil32(return_data.size) + 325] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
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
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                        else:
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
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
                        staticcall arg1.0x70a08231 with:
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
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                        else:
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
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
                        staticcall arg1.0x70a08231 with:
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                            mem[448 len 4] = uint32(arg7)
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 480, mem[420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[428 len 20],
                                                    uint32(arg7),
                                                    mem[452 len 4]
                            else:
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[ceil32(return_data.size) + 429 len 28]
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
                            staticcall arg1.0x70a08231 with:
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
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                        else:
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
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
                        staticcall arg1.0x70a08231 with:
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
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                        else:
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
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
                        staticcall arg1.0x70a08231 with:
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                            mem[448 len 4] = uint32(arg7)
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 480, mem[420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[428 len 20],
                                                    uint32(arg7),
                                                    mem[452 len 4]
                                mem[64] = 356
                                mem[356] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg1 != arg1:
                                    mem[360] = ext_call.return_data[0]
                                    mem[392] = 0
                                    mem[424] = arg4
                                    mem[456] = 128
                                    mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                    mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[360] = 0
                                    mem[392] = ext_call.return_data[0]
                                    mem[424] = arg4
                                    mem[456] = 128
                                    mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                    mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            else:
                                mem[324] = return_data.size
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[ceil32(return_data.size) + 429 len 28]
                                mem[ceil32(return_data.size) + 357] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg1 != arg1:
                                    mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 393] = 0
                                    mem[ceil32(return_data.size) + 425] = arg4
                                    mem[ceil32(return_data.size) + 457] = 128
                                    mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                    mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                    if not mem[ceil32(return_data.size) + 325] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[ceil32(return_data.size) + 361] = 0
                                    mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 425] = arg4
                                    mem[ceil32(return_data.size) + 457] = 128
                                    mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                    mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                    if not mem[ceil32(return_data.size) + 325] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
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
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                        else:
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
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
                        staticcall arg1.0x70a08231 with:
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                            mem[448 len 4] = uint32(arg7)
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 480, mem[420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[428 len 20],
                                                    uint32(arg7),
                                                    mem[452 len 4]
                            else:
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[ceil32(return_data.size) + 429 len 28]
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'error1'
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                            mem[64] = 356
                            mem[356] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[360] = ext_call.return_data[0]
                                mem[392] = 0
                                mem[424] = arg4
                                mem[456] = 128
                                mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[360] = 0
                                mem[392] = ext_call.return_data[0]
                                mem[424] = arg4
                                mem[456] = 128
                                mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[324] = return_data.size
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                            mem[ceil32(return_data.size) + 357] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = 0
                                mem[ceil32(return_data.size) + 425] = arg4
                                mem[ceil32(return_data.size) + 457] = 128
                                mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                if not mem[ceil32(return_data.size) + 325] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 425] = arg4
                                mem[ceil32(return_data.size) + 457] = 128
                                mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                if not mem[ceil32(return_data.size) + 325] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
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
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                        else:
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
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
                        staticcall arg1.0x70a08231 with:
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                            mem[448 len 4] = uint32(arg7)
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 480, mem[420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[428 len 20],
                                                    uint32(arg7),
                                                    mem[452 len 4]
                            else:
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[ceil32(return_data.size) + 429 len 28]
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'error1'
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                            mem[64] = 356
                            mem[356] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[360] = ext_call.return_data[0]
                                mem[392] = 0
                                mem[424] = arg4
                                mem[456] = 128
                                mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[360] = 0
                                mem[392] = ext_call.return_data[0]
                                mem[424] = arg4
                                mem[456] = 128
                                mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[324] = return_data.size
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                            mem[ceil32(return_data.size) + 357] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = 0
                                mem[ceil32(return_data.size) + 425] = arg4
                                mem[ceil32(return_data.size) + 457] = 128
                                mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                if not mem[ceil32(return_data.size) + 325] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 425] = arg4
                                mem[ceil32(return_data.size) + 457] = 128
                                mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                if not mem[ceil32(return_data.size) + 325] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
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
                if not arg7 % 9418:
                    if msg.sender == owner:
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                        else:
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
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
                        staticcall arg1.0x70a08231 with:
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                            mem[448 len 4] = uint32(arg7)
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 480, mem[420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[428 len 20],
                                                    uint32(arg7),
                                                    mem[452 len 4]
                            else:
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[ceil32(return_data.size) + 429 len 28]
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
                            staticcall arg1.0x70a08231 with:
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
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                            mem[64] = 356
                            mem[356] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[360] = ext_call.return_data[0]
                                mem[392] = 0
                                mem[424] = arg4
                                mem[456] = 128
                                mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[360] = 0
                                mem[392] = ext_call.return_data[0]
                                mem[424] = arg4
                                mem[456] = 128
                                mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[324] = return_data.size
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                            mem[ceil32(return_data.size) + 357] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = 0
                                mem[ceil32(return_data.size) + 425] = arg4
                                mem[ceil32(return_data.size) + 457] = 128
                                mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                if not mem[ceil32(return_data.size) + 325] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 425] = arg4
                                mem[ceil32(return_data.size) + 457] = 128
                                mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                if not mem[ceil32(return_data.size) + 325] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
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
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                        else:
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
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
                        staticcall arg1.0x70a08231 with:
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
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                        mem[448 len 4] = uint32(arg7)
                        call arg1 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg7) << 480, mem[420 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[428 len 20],
                                            uint32(arg7),
                                            mem[452 len 4]
                            if call.data[calldata.size]:
                                require call.data[calldata.size] >= 32
                                if not call.data[calldata.size + 32]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                            mem[64] = 356
                            mem[356] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[360] = ext_call.return_data[0]
                                mem[392] = 0
                                mem[424] = arg4
                                mem[456] = 128
                                mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[360] = 0
                                mem[392] = ext_call.return_data[0]
                                mem[424] = arg4
                                mem[456] = 128
                                mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                if not Mask(5, 32, arg7):
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                else:
                                    mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        else:
                            mem[324] = return_data.size
                            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            36,
                                            0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                            mem[ceil32(return_data.size) + 429 len 28]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[356]:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                            mem[ceil32(return_data.size) + 357] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            if arg2 != arg1:
                                mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 393] = 0
                                mem[ceil32(return_data.size) + 425] = arg4
                                mem[ceil32(return_data.size) + 457] = 128
                                mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                if not mem[ceil32(return_data.size) + 325] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, ext_call.return_data[0], msg.sender, 128, 0
                            else:
                                mem[ceil32(return_data.size) + 361] = 0
                                mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 425] = arg4
                                mem[ceil32(return_data.size) + 457] = 128
                                mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                if not mem[ceil32(return_data.size) + 325] % 32:
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                else:
                                    mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                    require ext_code.size(arg3)
                                    call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(arg4)
                                call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, msg.sender, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
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
                            staticcall arg1.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[324 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                            mem[448 len 4] = uint32(arg7)
                            call arg1 with:
                                 gas gas_remaining wei
                                args Mask(224, 32, arg7) << 480, mem[420 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[428 len 20],
                                                uint32(arg7),
                                                mem[452 len 4]
                                if call.data[calldata.size]:
                                    require call.data[calldata.size] >= 32
                                    if not call.data[calldata.size + 32]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[428 len 20],
                                                    uint32(arg7),
                                                    mem[452 len 4]
                                mem[64] = 356
                                mem[356] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg2 != arg1:
                                    mem[360] = ext_call.return_data[0]
                                    mem[392] = 0
                                    mem[424] = arg4
                                    mem[456] = 128
                                    mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                    mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[360] = 0
                                    mem[392] = ext_call.return_data[0]
                                    mem[424] = arg4
                                    mem[456] = 128
                                    mem[488] = unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32
                                    mem[520 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)] = mem[356 len ceil32(unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32)]
                                    if not Mask(5, 32, arg7):
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[488 len unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32 + 32]
                                    else:
                                        mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 520] = mem[floor32(address(arg3), Mask(224, 32, arg7) >> 32) + -(Mask(5, 32, arg7) >> 32) + 552 len Mask(5, 32, arg7) >> 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, unknown_0x23b872dd(?????), msg.sender, address(arg3), Mask(224, 32, arg7) >> 32, mem[520 len floor32(address(arg3), Mask(224, 32, arg7) >> 32) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            else:
                                mem[324] = return_data.size
                                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                36,
                                                0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                mem[ceil32(return_data.size) + 429 len 28]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[356]:
                                        revert with 0, 
                                                    32,
                                                    36,
                                                    0xfe5472616e7366657248656c7065723a205452414e534645525f46524f4d5f4641494c45,
                                                    mem[ceil32(return_data.size) + 429 len 28]
                                mem[ceil32(return_data.size) + 357] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                if arg2 != arg1:
                                    mem[ceil32(return_data.size) + 361] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 393] = 0
                                    mem[ceil32(return_data.size) + 425] = arg4
                                    mem[ceil32(return_data.size) + 457] = 128
                                    mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                    mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                    if not mem[ceil32(return_data.size) + 325] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args 0, ext_call.return_data[0], msg.sender, 128, 0
                                else:
                                    mem[ceil32(return_data.size) + 361] = 0
                                    mem[ceil32(return_data.size) + 393] = ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 425] = arg4
                                    mem[ceil32(return_data.size) + 457] = 128
                                    mem[ceil32(return_data.size) + 489] = mem[ceil32(return_data.size) + 325]
                                    mem[ceil32(return_data.size) + 521 len ceil32(mem[ceil32(return_data.size) + 325])] = mem[ceil32(return_data.size) + 357 len ceil32(mem[ceil32(return_data.size) + 325])]
                                    if not mem[ceil32(return_data.size) + 325] % 32:
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 489 len mem[ceil32(return_data.size) + 325] + 32]
                                    else:
                                        mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + 521] = mem[floor32(mem[ceil32(return_data.size) + 325]) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 325] % 32) + 553 len mem[ceil32(return_data.size) + 325] % 32]
                                        require ext_code.size(arg3)
                                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                             gas gas_remaining wei
                                            args 0, ext_call.return_data[0], address(arg4), 128, mem[ceil32(return_data.size) + 325], mem[ceil32(return_data.size) + 521 len floor32(mem[ceil32(return_data.size) + 325]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require ext_code.size(arg4)
                                    call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, msg.sender, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg1)
                            staticcall arg1.0x70a08231 with:
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
