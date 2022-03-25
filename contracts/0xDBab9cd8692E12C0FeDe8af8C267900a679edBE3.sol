contract main {




// =====================  Runtime code  =====================


#
#  - sub_7a72e80c(?)
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

function sub_1e189093(?) payable {
    require calldata.size - 4 >= 160
    mem[96 len 96] = call.data[calldata.size len 96]
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 2
    mem[224] = arg1
    mem[256] = arg2
    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[292] = arg5
    mem[324] = 1
    mem[388] = this.address
    mem[420] = block.timestamp + 10
    mem[356] = 160
    mem[452] = 2
    mem[484 len 0] = None
    require ext_code.size(arg3)
    call arg3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg5, 1, Array(len=2, data=mem[484 len 64]), address(this.address), block.timestamp + 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _48 = mem[288 len 4], Mask(224, 32, arg5) >> 32
    require mem[288 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
    require mem[288 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
    require mem[mem[288 len 4], Mask(224, 32, arg5) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg5) >> 32 + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg5) >> 32 + 288]
    _51 = mem[_48 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_48 + 288])] = mem[_48 + 320 len floor32(mem[_48 + 288])]
    require 1 < mem[ceil32(return_data.size) + 288]
    _81 = mem[ceil32(return_data.size) + 352]
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg4), mem[ceil32(return_data.size) + 352]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _51) + ceil32(return_data.size) + 320] = 2
    mem[(32 * _51) + ceil32(return_data.size) + 352] = arg2
    mem[(32 * _51) + ceil32(return_data.size) + 384] = arg1
    mem[(32 * _51) + ceil32(return_data.size) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _51) + ceil32(return_data.size) + 420] = _81
    mem[(32 * _51) + ceil32(return_data.size) + 452] = 1
    mem[(32 * _51) + ceil32(return_data.size) + 516] = this.address
    mem[(32 * _51) + ceil32(return_data.size) + 548] = block.timestamp + 10
    mem[(32 * _51) + ceil32(return_data.size) + 484] = 160
    mem[(32 * _51) + ceil32(return_data.size) + 580] = 2
    mem[(32 * _51) + ceil32(return_data.size) + 612 len 0] = None
    require ext_code.size(arg4)
    call arg4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _81, 1, Array(len=2, data=mem[(32 * _51) + ceil32(return_data.size) + 612 len 64]), address(this.address), block.timestamp + 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _51) + ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _51) + (2 * ceil32(return_data.size)) + 416
    require return_data.size >= 32
    _109 = mem[(32 * _51) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, _81) >> 32
    require mem[(32 * _51) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, _81) >> 32 <= 4294967296
    require mem[(32 * _51) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, _81) >> 32 + 32 <= return_data.size
    require mem[(32 * _51) + ceil32(return_data.size) + mem[(32 * _51) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, _81) >> 32 + 416] <= 4294967296 and mem[(32 * _51) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, _81) >> 32 + (32 * mem[(32 * _51) + ceil32(return_data.size) + mem[(32 * _51) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, _81) >> 32 + 416]) + 32 <= return_data.size
    mem[(32 * _51) + (2 * ceil32(return_data.size)) + 416] = mem[(32 * _51) + ceil32(return_data.size) + mem[(32 * _51) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, _81) >> 32 + 416]
    _112 = mem[(32 * _51) + ceil32(return_data.size) + _109 + 416]
    mem[(32 * _51) + (2 * ceil32(return_data.size)) + 448 len floor32(mem[(32 * _51) + ceil32(return_data.size) + _109 + 416])] = mem[(32 * _51) + ceil32(return_data.size) + _109 + 448 len floor32(mem[(32 * _51) + ceil32(return_data.size) + _109 + 416])]
    mem[(32 * _112) + (32 * _51) + (2 * ceil32(return_data.size)) + 448] = arg5
    require 1 < mem[ceil32(return_data.size) + 288]
    mem[(32 * _112) + (32 * _51) + (2 * ceil32(return_data.size)) + 480] = mem[ceil32(return_data.size) + 352]
    require 1 < mem[(32 * _51) + (2 * ceil32(return_data.size)) + 416]
    mem[(32 * _112) + (32 * _51) + (2 * ceil32(return_data.size)) + 512] = mem[(32 * _51) + (2 * ceil32(return_data.size)) + 480]
    mem[(32 * _112) + (32 * _51) + (2 * ceil32(return_data.size)) + 544 len 96] = arg5, mem[ceil32(return_data.size) + 352], mem[(32 * _51) + (2 * ceil32(return_data.size)) + 480]
    return arg5, mem[ceil32(return_data.size) + 352], mem[(32 * _51) + (2 * ceil32(return_data.size)) + 480]
}

function sub_1675a07f(?) payable {
    require calldata.size - 4 >= 224
    require msg.sender == owner
    if arg1 == arg2:
        revert with 0, 32, 37, 0xfe556e697377617056324c6962726172793a204944454e544943414c5f4144445245535345, mem[297 len 27]
    if arg1 < arg2:
        if not arg1:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg3)
        staticcall arg3.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(arg5)
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
                if not arg7 % 9418:
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    if arg1 != arg1:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                        revert with 0, 'error1'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'error1'
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg3), arg7
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        if arg1 != arg1:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                        else:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                            revert with 0, 'error1'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
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
                if not arg7 % 9418:
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    if arg1 != arg1:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                        revert with 0, 'error1'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'error1'
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg3), arg7
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        if arg1 != arg1:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                        else:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                            revert with 0, 'error1'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
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
                if not arg7 % 9418:
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    if arg1 != arg1:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                        revert with 0, 'error1'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'error1'
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg3), arg7
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        if arg1 != arg1:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                        else:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                            revert with 0, 'error1'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
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
                if not arg7 % 9418:
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    if arg1 != arg1:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                        revert with 0, 'error1'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'error1'
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg3), arg7
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        if arg1 != arg1:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                        else:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                            revert with 0, 'error1'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
    else:
        if not arg2:
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        require ext_code.size(arg3)
        staticcall arg3.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_code.size(arg5)
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
                if not arg7 % 9418:
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    if arg1 != arg2:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                        revert with 0, 'error1'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'error1'
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg3), arg7
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        if arg1 != arg2:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                        else:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                            revert with 0, 'error1'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
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
                if not arg7 % 9418:
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    if arg1 != arg2:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                        revert with 0, 'error1'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'error1'
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg3), arg7
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        if arg1 != arg2:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                        else:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                            revert with 0, 'error1'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
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
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    if arg1 != arg2:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                        revert with 0, 'error1'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'error1'
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg3), arg7
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        if arg1 != arg2:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                        else:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                            revert with 0, 'error1'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
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
                if not arg7 % 9418:
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg7
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg3)
                    if arg1 != arg2:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                    else:
                        call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, ext_call.return_data[0], address(this.address), 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg2)
                        call arg2.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg4), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg4)
                        call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                        revert with 0, 'error1'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'error1'
                else:
                    if ext_call.return_data[0] <= ext_call.return_data[0]:
                        emit 0xd6a6f68b: arg7, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[32] << 144, ext_call.return_data[0] << 144, ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
                    else:
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg3), arg7
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg3)
                        if arg1 != arg2:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0, 0
                        else:
                            call arg3.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, ext_call.return_data[0], address(this.address), 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(arg2)
                            call arg2.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg4), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg4)
                            call arg4.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, address(this.address), 128, 0, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < (2 * ext_call.return_data[0]) - arg7:
                            revert with 0, 'error1'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'error1'
    return arg7, ext_call.return_data[0], ext_call.return_data[0]
}



}
