contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_01347227(?) {
    require calldata.size - 4 >= 256
    require ext_code.size(arg1)
    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, arg7, address(this.address), 128, 288, address(arg1), address(arg2), address(arg3), address(arg4), address(arg5), address(arg6), arg8, 256, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 256
    require cd[(arg4 + 260)] <= 4294967296
    require cd[(arg4 + 260)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 260)] + 36)] <= 4294967296 and cd[(arg4 + 260)] + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 260)] + 36)]
    mem[128 len cd[(arg4 + cd[(arg4 + 260)] + 36)]] = call.data[arg4 + cd[(arg4 + 260)] + 68 len cd[(arg4 + cd[(arg4 + 260)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 128] = 0
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 128] = 2
    if address(cd[(arg4 + 36)]) != msg.sender:
        revert with 0, 'Unauthorized'
    require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = address(cd[(arg4 + 164)])
    require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 196)])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = arg3
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 64
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
    require ext_code.size(address(cd[(arg4 + 100)]))
    staticcall address(cd[(arg4 + 100)]).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    _68 = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32
    require mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 224] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    _71 = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 224]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 224])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 256 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 224])]
    require 0 < mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 224]
    _122 = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256]
    require ext_code.size(address(cd[(arg4 + 196)]))
    call address(cd[(arg4 + 196)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 132)]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not cd[(arg4 + 228)]:
        require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = address(cd[(arg4 + 196)])
        require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 164)])
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260] = arg3
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 292] = _122
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 356] = this.address
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 388] = block.timestamp + (240 * 24 * 3600)
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 324] = 160
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 420] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 452 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _174 = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _174 + 256])] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _174 + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _174 + 256])]
        require 1 < mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256]
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), _122
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args tx.origin, mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 320] - _122
    else:
        require -cd[(arg4 + 228)] + 1000
        require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = address(cd[(arg4 + 196)])
        require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 164)])
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260] = arg3
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 292] = (arg3 * cd[(arg4 + 228)] / -cd[(arg4 + 228)] + 1000) + _122 + 1
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 356] = this.address
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 388] = block.timestamp + (240 * 24 * 3600)
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 324] = 160
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 420] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 452 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _176 = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _176 + 256])] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _176 + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _176 + 256])]
        require 1 < mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256]
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), (arg3 * cd[(arg4 + 228)] / -cd[(arg4 + 228)] + 1000) + _122 + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args tx.origin, mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 320] + -(arg3 * cd[(arg4 + 228)] / -cd[(arg4 + 228)] + 1000) + -_122 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function BSCswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 256
    require cd[(arg4 + 260)] <= 4294967296
    require cd[(arg4 + 260)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 260)] + 36)] <= 4294967296 and cd[(arg4 + 260)] + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 260)] + 36)]
    mem[128 len cd[(arg4 + cd[(arg4 + 260)] + 36)]] = call.data[arg4 + cd[(arg4 + 260)] + 68 len cd[(arg4 + cd[(arg4 + 260)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 128] = 0
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 128] = 2
    if address(cd[(arg4 + 36)]) != msg.sender:
        revert with 0, 'Unauthorized'
    require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = address(cd[(arg4 + 164)])
    require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 196)])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = arg3
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 64
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
    require ext_code.size(address(cd[(arg4 + 100)]))
    staticcall address(cd[(arg4 + 100)]).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    _68 = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32
    require mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 224] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    _71 = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 224]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 224])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 256 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 224])]
    require 0 < mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 224]
    _122 = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256]
    require ext_code.size(address(cd[(arg4 + 196)]))
    call address(cd[(arg4 + 196)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 132)]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not cd[(arg4 + 228)]:
        require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = address(cd[(arg4 + 196)])
        require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 164)])
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260] = arg3
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 292] = _122
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 356] = this.address
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 388] = block.timestamp + (240 * 24 * 3600)
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 324] = 160
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 420] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 452 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _174 = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _174 + 256])] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _174 + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _174 + 256])]
        require 1 < mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256]
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), _122
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args tx.origin, mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 320] - _122
    else:
        require -cd[(arg4 + 228)] + 1000
        require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = address(cd[(arg4 + 196)])
        require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 164)])
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260] = arg3
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 292] = (arg3 * cd[(arg4 + 228)] / -cd[(arg4 + 228)] + 1000) + _122 + 1
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 356] = this.address
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 388] = block.timestamp + (240 * 24 * 3600)
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 324] = 160
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 420] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 452 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _176 = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _176 + 256])] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _176 + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _176 + 256])]
        require 1 < mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256]
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), (arg3 * cd[(arg4 + 228)] / -cd[(arg4 + 228)] + 1000) + _122 + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args tx.origin, mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 320] + -(arg3 * cd[(arg4 + 228)] / -cd[(arg4 + 228)] + 1000) + -_122 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 256
    require cd[(arg4 + 260)] <= 4294967296
    require cd[(arg4 + 260)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 260)] + 36)] <= 4294967296 and cd[(arg4 + 260)] + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 260)] + 36)]
    mem[128 len cd[(arg4 + cd[(arg4 + 260)] + 36)]] = call.data[arg4 + cd[(arg4 + 260)] + 68 len cd[(arg4 + cd[(arg4 + 260)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 128] = 0
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 128] = 2
    if address(cd[(arg4 + 36)]) != msg.sender:
        revert with 0, 'Unauthorized'
    require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = address(cd[(arg4 + 164)])
    require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 196)])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = arg3
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 64
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
    require ext_code.size(address(cd[(arg4 + 100)]))
    staticcall address(cd[(arg4 + 100)]).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    _68 = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32
    require mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 224] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    _71 = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 224]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 224])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 256 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 224])]
    require 0 < mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 224]
    _122 = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256]
    require ext_code.size(address(cd[(arg4 + 196)]))
    call address(cd[(arg4 + 196)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 132)]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not cd[(arg4 + 228)]:
        require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = address(cd[(arg4 + 196)])
        require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 164)])
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260] = arg3
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 292] = _122
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 356] = this.address
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 388] = block.timestamp + (240 * 24 * 3600)
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 324] = 160
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 420] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 452 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _174 = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _174 + 256])] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _174 + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _174 + 256])]
        require 1 < mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256]
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), _122
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args tx.origin, mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 320] - _122
    else:
        require -cd[(arg4 + 228)] + 1000
        require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = address(cd[(arg4 + 196)])
        require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 164)])
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260] = arg3
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 292] = (arg3 * cd[(arg4 + 228)] / -cd[(arg4 + 228)] + 1000) + _122 + 1
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 356] = this.address
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 388] = block.timestamp + (240 * 24 * 3600)
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 324] = 160
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 420] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 452 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _176 = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _176 + 256])] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _176 + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _176 + 256])]
        require 1 < mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256]
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), (arg3 * cd[(arg4 + 228)] / -cd[(arg4 + 228)] + 1000) + _122 + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args tx.origin, mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 320] + -(arg3 * cd[(arg4 + 228)] / -cd[(arg4 + 228)] + 1000) + -_122 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 256
    require cd[(arg4 + 260)] <= 4294967296
    require cd[(arg4 + 260)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 260)] + 36)] <= 4294967296 and cd[(arg4 + 260)] + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 260)] + 36)]
    mem[128 len cd[(arg4 + cd[(arg4 + 260)] + 36)]] = call.data[arg4 + cd[(arg4 + 260)] + 68 len cd[(arg4 + cd[(arg4 + 260)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 128] = 0
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 128] = 2
    if address(cd[(arg4 + 36)]) != msg.sender:
        revert with 0, 'Unauthorized'
    require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = address(cd[(arg4 + 164)])
    require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 196)])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = arg3
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260] = 64
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
    require ext_code.size(address(cd[(arg4 + 100)]))
    staticcall address(cd[(arg4 + 100)]).getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    _68 = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32
    require mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 224] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
    _71 = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 224]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 224])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 256 len floor32(mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + _68 + 224])]
    require 0 < mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 224]
    _122 = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256]
    require ext_code.size(address(cd[(arg4 + 196)]))
    call address(cd[(arg4 + 196)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 132)]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not cd[(arg4 + 228)]:
        require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = address(cd[(arg4 + 196)])
        require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 164)])
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260] = arg3
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 292] = _122
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 356] = this.address
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 388] = block.timestamp + (240 * 24 * 3600)
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 324] = 160
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 420] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 452 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _174 = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _174 + 256])] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _174 + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _174 + 256])]
        require 1 < mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256]
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), _122
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args tx.origin, mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 320] - _122
    else:
        require -cd[(arg4 + 228)] + 1000
        require 0 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = address(cd[(arg4 + 196)])
        require 1 < Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192] = address(cd[(arg4 + 164)])
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260] = arg3
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 292] = (arg3 * cd[(arg4 + 228)] / -cd[(arg4 + 228)] + 1000) + _122 + 1
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 356] = this.address
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 388] = block.timestamp + (240 * 24 * 3600)
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 324] = 160
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 420] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 452 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 260 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256
        require return_data.size >= 32
        _176 = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] <= 4294967296 and mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 32 <= return_data.size
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
        mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _176 + 256])] = mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _176 + 288 len floor32(mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + _176 + 256])]
        require 1 < mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 256]
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args address(cd[(arg4 + 36)]), (arg3 * cd[(arg4 + 228)] / -cd[(arg4 + 228)] + 1000) + _122 + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 164)]))
        call address(cd[(arg4 + 164)]).0xa9059cbb with:
             gas gas_remaining wei
            args tx.origin, mem[(32 * _71) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + (2 * ceil32(return_data.size)) + 320] + -(arg3 * cd[(arg4 + 228)] / -cd[(arg4 + 228)] + 1000) + -_122 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
