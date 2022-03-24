contract main {




// =====================  Runtime code  =====================


#
#  - sub_37117de6(?)
#
address owner;
uint256 slippage;

function slippage() payable {
    return slippage
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function setSlippage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require owner == msg.sender
    slippage = arg1
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require owner == msg.sender
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

function sub_af090cf8(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require owner == msg.sender
    mem[ceil32(arg2.length) + 160] = Mask(32, 224, sha3(arg2[all]))
    mem[ceil32(arg2.length) + 164] = arg3
    mem[ceil32(arg2.length) + 128] = 36
    mem[64] = ceil32(arg2.length) + 196
    mem[ceil32(arg2.length) + 196 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 228 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] = mem[ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
    call arg1.mem[ceil32(arg2.length) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 200 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] - 4]
    require ext_call.success
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_d88af7ba(?) payable {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require owner == msg.sender
    mem[ceil32(arg2.length) + 160] = Mask(32, 224, sha3(arg2[all]))
    mem[ceil32(arg2.length) + 164] = arg3
    mem[ceil32(arg2.length) + 196] = arg4
    mem[ceil32(arg2.length) + 128] = 68
    mem[64] = ceil32(arg2.length) + 228
    mem[ceil32(arg2.length) + 228 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 260 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] = mem[ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
    call arg1.mem[ceil32(arg2.length) + 228 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 232 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] - 4]
    require ext_call.success
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_f264f689(?) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require owner == msg.sender
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

function sub_7a26b37c(?) payable {
    require calldata.size - 4 >= 128
    if arg4 <= 0:
        revert with 0, 'input amount is zero'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = arg1
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg4
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg3)
    staticcall arg3.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg4, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _70 = mem[192 len 4], Mask(224, 32, arg4) >> 32
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    _73 = mem[_70 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_70 + 192])] = mem[_70 + 224 len floor32(mem[_70 + 192])]
    mem[(32 * _73) + ceil32(return_data.size) + 224] = 30
    mem[(32 * _73) + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
    if slippage > 1000:
        revert with 0, 'SafeMath: subtraction overflow'
    require 1 < mem[ceil32(return_data.size) + 192]
    if not mem[ceil32(return_data.size) + 256]:
        mem[(32 * _73) + ceil32(return_data.size) + 288] = 26
        mem[(32 * _73) + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
        mem[(32 * _73) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _73) + ceil32(return_data.size) + 356] = arg4
        mem[(32 * _73) + ceil32(return_data.size) + 388] = 0
        mem[(32 * _73) + ceil32(return_data.size) + 452] = this.address
        mem[(32 * _73) + ceil32(return_data.size) + 484] = block.timestamp + 10
        mem[(32 * _73) + ceil32(return_data.size) + 420] = 160
        mem[(32 * _73) + ceil32(return_data.size) + 516] = 2
        mem[(32 * _73) + ceil32(return_data.size) + 548 len 0] = None
        require ext_code.size(arg3)
        call arg3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg4, 0, 160, address(this.address), block.timestamp + 10, 2, mem[(32 * _73) + ceil32(return_data.size) + 548 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _73) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _73) + (2 * ceil32(return_data.size)) + 352
        require return_data.size >= 32
        _180 = mem[(32 * _73) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg4) >> 32
        require mem[(32 * _73) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[(32 * _73) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _73) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg4) >> 32 + (32 * _73) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _73) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _73) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg4) >> 32 + (32 * _73) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
        mem[(32 * _73) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _73) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg4) >> 32 + (32 * _73) + ceil32(return_data.size) + 352]
        _185 = mem[_180 + (32 * _73) + ceil32(return_data.size) + 352]
        mem[(32 * _73) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_180 + (32 * _73) + ceil32(return_data.size) + 352])] = mem[_180 + (32 * _73) + ceil32(return_data.size) + 384 len floor32(mem[_180 + (32 * _73) + ceil32(return_data.size) + 352])]
        mem[(32 * _185) + (32 * _73) + (2 * ceil32(return_data.size)) + 384] = 32
        mem[(32 * _185) + (32 * _73) + (2 * ceil32(return_data.size)) + 416] = mem[(32 * _73) + (2 * ceil32(return_data.size)) + 352]
        mem[(32 * _185) + (32 * _73) + (2 * ceil32(return_data.size)) + 448 len floor32(mem[(32 * _73) + (2 * ceil32(return_data.size)) + 352])] = mem[(32 * _73) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _73) + (2 * ceil32(return_data.size)) + 352])]
        return 32, mem[(32 * _185) + (32 * _73) + (2 * ceil32(return_data.size)) + 416 len (32 * mem[(32 * _73) + (2 * ceil32(return_data.size)) + 352]) + 32], 
    require mem[ceil32(return_data.size) + 256]
    if (1000 * mem[ceil32(return_data.size) + 256]) - (slippage * mem[ceil32(return_data.size) + 256]) / mem[ceil32(return_data.size) + 256] != -slippage + 1000:
        revert with 0, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[(32 * _73) + ceil32(return_data.size) + 389 len 31]
    mem[(32 * _73) + ceil32(return_data.size) + 288] = 26
    mem[(32 * _73) + ceil32(return_data.size) + 320] = 'SafeMath: division by zero'
    mem[(32 * _73) + ceil32(return_data.size) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _73) + ceil32(return_data.size) + 356] = arg4
    mem[(32 * _73) + ceil32(return_data.size) + 388] = (1000 * mem[ceil32(return_data.size) + 256]) - (slippage * mem[ceil32(return_data.size) + 256]) / 1000
    mem[(32 * _73) + ceil32(return_data.size) + 452] = this.address
    mem[(32 * _73) + ceil32(return_data.size) + 484] = block.timestamp + 10
    mem[(32 * _73) + ceil32(return_data.size) + 420] = 160
    mem[(32 * _73) + ceil32(return_data.size) + 516] = 2
    mem[(32 * _73) + ceil32(return_data.size) + 548 len 0] = None
    require ext_code.size(arg3)
    call arg3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg4, (1000 * mem[ceil32(return_data.size) + 256]) - (slippage * mem[ceil32(return_data.size) + 256]) / 1000, Array(len=2, data=mem[(32 * _73) + ceil32(return_data.size) + 548 len 64]), address(this.address), block.timestamp + 10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _73) + ceil32(return_data.size) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _73) + (2 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _178 = mem[(32 * _73) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg4) >> 32
    require mem[(32 * _73) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
    require mem[(32 * _73) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _73) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg4) >> 32 + (32 * _73) + ceil32(return_data.size) + 352] <= 4294967296 and mem[(32 * _73) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[(32 * _73) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg4) >> 32 + (32 * _73) + ceil32(return_data.size) + 352]) + 32 <= return_data.size
    mem[(32 * _73) + (2 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _73) + ceil32(return_data.size) + 352 len 4], Mask(224, 32, arg4) >> 32 + (32 * _73) + ceil32(return_data.size) + 352]
    _184 = mem[_178 + (32 * _73) + ceil32(return_data.size) + 352]
    mem[(32 * _73) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_178 + (32 * _73) + ceil32(return_data.size) + 352])] = mem[_178 + (32 * _73) + ceil32(return_data.size) + 384 len floor32(mem[_178 + (32 * _73) + ceil32(return_data.size) + 352])]
    mem[(32 * _184) + (32 * _73) + (2 * ceil32(return_data.size)) + 384] = 32
    mem[(32 * _184) + (32 * _73) + (2 * ceil32(return_data.size)) + 416] = mem[(32 * _73) + (2 * ceil32(return_data.size)) + 352]
    mem[(32 * _184) + (32 * _73) + (2 * ceil32(return_data.size)) + 448 len floor32(mem[(32 * _73) + (2 * ceil32(return_data.size)) + 352])] = mem[(32 * _73) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[(32 * _73) + (2 * ceil32(return_data.size)) + 352])]
    return 32, mem[(32 * _184) + (32 * _73) + (2 * ceil32(return_data.size)) + 416 len (32 * mem[(32 * _73) + (2 * ceil32(return_data.size)) + 352]) + 32], 
}

function sub_1e189093(?) payable {
    require calldata.size - 4 >= 160
    mem[96 len 96] = call.data[calldata.size len 96]
    require owner == msg.sender
    if arg5 <= 0:
        revert with 0, 'input amount is zero'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = 2
    mem[224] = arg1
    mem[256] = arg2
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = arg5
    mem[324] = 64
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(arg3)
    staticcall arg3.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg5, Array(len=2, data=mem[388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _205 = mem[288 len 4], Mask(224, 32, arg5) >> 32
    require mem[288 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
    require mem[288 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
    require mem[mem[288 len 4], Mask(224, 32, arg5) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg5) >> 32 + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg5) >> 32 + 288]
    _208 = mem[_205 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_205 + 288])] = mem[_205 + 320 len floor32(mem[_205 + 288])]
    mem[(32 * _208) + ceil32(return_data.size) + 320] = 30
    mem[(32 * _208) + ceil32(return_data.size) + 352] = 'SafeMath: subtraction overflow'
    if slippage > 1000:
        revert with 0, 'SafeMath: subtraction overflow'
    require 1 < mem[ceil32(return_data.size) + 288]
    if not mem[ceil32(return_data.size) + 352]:
        mem[(32 * _208) + ceil32(return_data.size) + 384] = 26
        mem[(32 * _208) + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
        mem[(32 * _208) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _208) + ceil32(return_data.size) + 452] = arg5
        mem[(32 * _208) + ceil32(return_data.size) + 484] = 0
        mem[(32 * _208) + ceil32(return_data.size) + 548] = this.address
        mem[(32 * _208) + ceil32(return_data.size) + 580] = block.timestamp + 10
        mem[(32 * _208) + ceil32(return_data.size) + 516] = 160
        mem[(32 * _208) + ceil32(return_data.size) + 612] = 2
        mem[(32 * _208) + ceil32(return_data.size) + 644 len 0] = None
        require ext_code.size(arg3)
        call arg3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg5, 0, 160, address(this.address), block.timestamp + 10, 2, mem[(32 * _208) + ceil32(return_data.size) + 644 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _208) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _208) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _583 = mem[(32 * _208) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg5) >> 32
        require mem[(32 * _208) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
        require mem[(32 * _208) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _208) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg5) >> 32 + (32 * _208) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _208) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[(32 * _208) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg5) >> 32 + (32 * _208) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
        mem[(32 * _208) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _208) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg5) >> 32 + (32 * _208) + ceil32(return_data.size) + 448]
        _588 = mem[_583 + (32 * _208) + ceil32(return_data.size) + 448]
        mem[(32 * _208) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_583 + (32 * _208) + ceil32(return_data.size) + 448])] = mem[_583 + (32 * _208) + ceil32(return_data.size) + 480 len floor32(mem[_583 + (32 * _208) + ceil32(return_data.size) + 448])]
        if 1 < mem[(32 * _208) + (2 * ceil32(return_data.size)) + 448]:
            _740 = mem[(32 * _208) + (2 * ceil32(return_data.size)) + 512]
            if mem[(32 * _208) + (2 * ceil32(return_data.size)) + 512] <= 0:
                revert with 0, 'input amount is zero'
            require ext_code.size(arg2)
            call arg2.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg4), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 480] = 2
            mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 512] = arg2
            mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 544] = arg1
            mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 580] = _740
            mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 612] = 64
            mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 644] = 2
            mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 676 len 0] = None
            require ext_code.size(arg4)
            staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args _740, Array(len=2, data=mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 676 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 576
            require return_data.size >= 32
            _889 = mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, _740) >> 32
            require mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, _740) >> 32 <= 4294967296
            require mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, _740) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, _740) >> 32 + (32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576] <= 4294967296 and mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, _740) >> 32 + (32 * mem[mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, _740) >> 32 + (32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576]) + 32 <= return_data.size
            mem[(32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 576] = mem[mem[(32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, _740) >> 32 + (32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576]
            _894 = mem[_889 + (32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576]
            mem[(32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 608 len floor32(mem[_889 + (32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576])] = mem[_889 + (32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 608 len floor32(mem[_889 + (32 * _588) + (32 * _208) + (2 * ceil32(return_data.size)) + 576])]
            mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 608] = 30
            mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
            if slippage > 1000:
                revert with 0, 'SafeMath: subtraction overflow'
            if 1 < mem[(32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 576]:
                if not mem[(32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]:
                    mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 672] = 26
                    mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 704] = 'SafeMath: division by zero'
                    mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 740] = _740
                    mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 772] = 0
                    mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 836] = this.address
                    mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 868] = block.timestamp + 10
                    mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 804] = 160
                    mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 900] = 2
                    mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 932 len 0] = None
                    require ext_code.size(arg4)
                    call arg4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args _740, 0, 160, address(this.address), block.timestamp + 10, 2, mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 932 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _894) + (32 * _588) + (32 * _208) + (6 * ceil32(return_data.size)) + 736
                    require return_data.size >= 32
                    _1125 = mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _740) >> 32
                    require mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _740) >> 32 <= 4294967296
                    require mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _740) >> 32 + 32 <= return_data.size
                    require mem[mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _740) >> 32 + (32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736] <= 4294967296 and mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _740) >> 32 + (32 * mem[mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _740) >> 32 + (32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736]) + 32 <= return_data.size
                    mem[(32 * _894) + (32 * _588) + (32 * _208) + (6 * ceil32(return_data.size)) + 736] = mem[mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _740) >> 32 + (32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736]
                    _1134 = mem[_1125 + (32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736]
                    mem[(32 * _894) + (32 * _588) + (32 * _208) + (6 * ceil32(return_data.size)) + 768 len floor32(mem[_1125 + (32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736])] = mem[_1125 + (32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 768 len floor32(mem[_1125 + (32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736])]
                    mem[(32 * _1134) + (32 * _894) + (32 * _588) + (32 * _208) + (6 * ceil32(return_data.size)) + 768] = arg5
                    if 1 < mem[(32 * _208) + (2 * ceil32(return_data.size)) + 448]:
                        mem[(32 * _1134) + (32 * _894) + (32 * _588) + (32 * _208) + (6 * ceil32(return_data.size)) + 800] = mem[(32 * _208) + (2 * ceil32(return_data.size)) + 512]
                        if 1 < mem[(32 * _894) + (32 * _588) + (32 * _208) + (6 * ceil32(return_data.size)) + 736]:
                            return arg5, 
                                   mem[(32 * _208) + (2 * ceil32(return_data.size)) + 512],
                                   mem[(32 * _894) + (32 * _588) + (32 * _208) + (6 * ceil32(return_data.size)) + 800]
                else:
                    if mem[(32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]:
                        if (1000 * mem[(32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]) - (slippage * mem[(32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]) / mem[(32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 640] != -slippage + 1000:
                            revert with 0, 
                                        32,
                                        33,
                                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 773 len 31]
                        mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 672] = 26
                        mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 704] = 'SafeMath: division by zero'
                        mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 740] = _740
                        mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 772] = (1000 * mem[(32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]) - (slippage * mem[(32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]) / 1000
                        mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 868] = block.timestamp + 10
                        mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 804] = 160
                        mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 900] = 2
                        mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 932 len 0] = None
                        require ext_code.size(arg4)
                        call arg4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args _740, (1000 * mem[(32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]) - (slippage * mem[(32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]) / 1000, Array(len=2, data=mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 932 len 64]), address(this.address), block.timestamp + 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _894) + (32 * _588) + (32 * _208) + (6 * ceil32(return_data.size)) + 736
                        require return_data.size >= 32
                        _1123 = mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _740) >> 32
                        require mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _740) >> 32 <= 4294967296
                        require mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _740) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _740) >> 32 + (32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736] <= 4294967296 and mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _740) >> 32 + (32 * mem[mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _740) >> 32 + (32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736]) + 32 <= return_data.size
                        mem[(32 * _894) + (32 * _588) + (32 * _208) + (6 * ceil32(return_data.size)) + 736] = mem[mem[(32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _740) >> 32 + (32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736]
                        _1133 = mem[_1123 + (32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736]
                        mem[(32 * _894) + (32 * _588) + (32 * _208) + (6 * ceil32(return_data.size)) + 768 len floor32(mem[_1123 + (32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736])] = mem[_1123 + (32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 768 len floor32(mem[_1123 + (32 * _894) + (32 * _588) + (32 * _208) + (4 * ceil32(return_data.size)) + 736])]
                        mem[(32 * _1133) + (32 * _894) + (32 * _588) + (32 * _208) + (6 * ceil32(return_data.size)) + 768] = arg5
                        if 1 < mem[(32 * _208) + (2 * ceil32(return_data.size)) + 448]:
                            mem[(32 * _1133) + (32 * _894) + (32 * _588) + (32 * _208) + (6 * ceil32(return_data.size)) + 800] = mem[(32 * _208) + (2 * ceil32(return_data.size)) + 512]
                            if 1 < mem[(32 * _894) + (32 * _588) + (32 * _208) + (6 * ceil32(return_data.size)) + 736]:
                                return arg5, 
                                       mem[(32 * _208) + (2 * ceil32(return_data.size)) + 512],
                                       mem[(32 * _894) + (32 * _588) + (32 * _208) + (6 * ceil32(return_data.size)) + 800]
    else:
        if mem[ceil32(return_data.size) + 352]:
            if (1000 * mem[ceil32(return_data.size) + 352]) - (slippage * mem[ceil32(return_data.size) + 352]) / mem[ceil32(return_data.size) + 352] != -slippage + 1000:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * _208) + ceil32(return_data.size) + 485 len 31]
            mem[(32 * _208) + ceil32(return_data.size) + 384] = 26
            mem[(32 * _208) + ceil32(return_data.size) + 416] = 'SafeMath: division by zero'
            mem[(32 * _208) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _208) + ceil32(return_data.size) + 452] = arg5
            mem[(32 * _208) + ceil32(return_data.size) + 484] = (1000 * mem[ceil32(return_data.size) + 352]) - (slippage * mem[ceil32(return_data.size) + 352]) / 1000
            mem[(32 * _208) + ceil32(return_data.size) + 548] = this.address
            mem[(32 * _208) + ceil32(return_data.size) + 580] = block.timestamp + 10
            mem[(32 * _208) + ceil32(return_data.size) + 516] = 160
            mem[(32 * _208) + ceil32(return_data.size) + 612] = 2
            mem[(32 * _208) + ceil32(return_data.size) + 644 len 0] = None
            require ext_code.size(arg3)
            call arg3.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg5, (1000 * mem[ceil32(return_data.size) + 352]) - (slippage * mem[ceil32(return_data.size) + 352]) / 1000, Array(len=2, data=mem[(32 * _208) + ceil32(return_data.size) + 644 len 64]), address(this.address), block.timestamp + 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _208) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _208) + (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            _581 = mem[(32 * _208) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg5) >> 32
            require mem[(32 * _208) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg5) >> 32 <= 4294967296
            require mem[(32 * _208) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg5) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _208) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg5) >> 32 + (32 * _208) + ceil32(return_data.size) + 448] <= 4294967296 and mem[(32 * _208) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg5) >> 32 + (32 * mem[mem[(32 * _208) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg5) >> 32 + (32 * _208) + ceil32(return_data.size) + 448]) + 32 <= return_data.size
            mem[(32 * _208) + (2 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _208) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg5) >> 32 + (32 * _208) + ceil32(return_data.size) + 448]
            _587 = mem[_581 + (32 * _208) + ceil32(return_data.size) + 448]
            mem[(32 * _208) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_581 + (32 * _208) + ceil32(return_data.size) + 448])] = mem[_581 + (32 * _208) + ceil32(return_data.size) + 480 len floor32(mem[_581 + (32 * _208) + ceil32(return_data.size) + 448])]
            if 1 < mem[(32 * _208) + (2 * ceil32(return_data.size)) + 448]:
                _739 = mem[(32 * _208) + (2 * ceil32(return_data.size)) + 512]
                if mem[(32 * _208) + (2 * ceil32(return_data.size)) + 512] <= 0:
                    revert with 0, 'input amount is zero'
                require ext_code.size(arg2)
                call arg2.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg4), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 480] = 2
                mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 512] = arg2
                mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 544] = arg1
                mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 580] = _739
                mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 612] = 64
                mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 644] = 2
                mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 676 len 0] = None
                require ext_code.size(arg4)
                staticcall arg4.getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args _739, Array(len=2, data=mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 676 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 576
                require return_data.size >= 32
                _887 = mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, _739) >> 32
                require mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, _739) >> 32 <= 4294967296
                require mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, _739) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, _739) >> 32 + (32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576] <= 4294967296 and mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, _739) >> 32 + (32 * mem[mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, _739) >> 32 + (32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576]) + 32 <= return_data.size
                mem[(32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 576] = mem[mem[(32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576 len 4], Mask(224, 32, _739) >> 32 + (32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576]
                _893 = mem[_887 + (32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576]
                mem[(32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 608 len floor32(mem[_887 + (32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576])] = mem[_887 + (32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 608 len floor32(mem[_887 + (32 * _587) + (32 * _208) + (2 * ceil32(return_data.size)) + 576])]
                mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 608] = 30
                mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 640] = 'SafeMath: subtraction overflow'
                if slippage > 1000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 1 < mem[(32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 576]:
                    if not mem[(32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]:
                        mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 672] = 26
                        mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 704] = 'SafeMath: division by zero'
                        mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 740] = _739
                        mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 772] = 0
                        mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 836] = this.address
                        mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 868] = block.timestamp + 10
                        mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 804] = 160
                        mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 900] = 2
                        mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 932 len 0] = None
                        require ext_code.size(arg4)
                        call arg4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args _739, 0, 160, address(this.address), block.timestamp + 10, 2, mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 932 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (32 * _893) + (32 * _587) + (32 * _208) + (6 * ceil32(return_data.size)) + 736
                        require return_data.size >= 32
                        _1121 = mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _739) >> 32
                        require mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _739) >> 32 <= 4294967296
                        require mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _739) >> 32 + 32 <= return_data.size
                        require mem[mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _739) >> 32 + (32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736] <= 4294967296 and mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _739) >> 32 + (32 * mem[mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _739) >> 32 + (32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736]) + 32 <= return_data.size
                        mem[(32 * _893) + (32 * _587) + (32 * _208) + (6 * ceil32(return_data.size)) + 736] = mem[mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _739) >> 32 + (32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736]
                        _1132 = mem[_1121 + (32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736]
                        mem[(32 * _893) + (32 * _587) + (32 * _208) + (6 * ceil32(return_data.size)) + 768 len floor32(mem[_1121 + (32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736])] = mem[_1121 + (32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 768 len floor32(mem[_1121 + (32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736])]
                        mem[(32 * _1132) + (32 * _893) + (32 * _587) + (32 * _208) + (6 * ceil32(return_data.size)) + 768] = arg5
                        if 1 < mem[(32 * _208) + (2 * ceil32(return_data.size)) + 448]:
                            mem[(32 * _1132) + (32 * _893) + (32 * _587) + (32 * _208) + (6 * ceil32(return_data.size)) + 800] = mem[(32 * _208) + (2 * ceil32(return_data.size)) + 512]
                            if 1 < mem[(32 * _893) + (32 * _587) + (32 * _208) + (6 * ceil32(return_data.size)) + 736]:
                                return arg5, 
                                       mem[(32 * _208) + (2 * ceil32(return_data.size)) + 512],
                                       mem[(32 * _893) + (32 * _587) + (32 * _208) + (6 * ceil32(return_data.size)) + 800]
                    else:
                        if mem[(32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]:
                            if (1000 * mem[(32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]) - (slippage * mem[(32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]) / mem[(32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 640] != -slippage + 1000:
                                revert with 0, 
                                            32,
                                            33,
                                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 773 len 31]
                            mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 672] = 26
                            mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 704] = 'SafeMath: division by zero'
                            mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 740] = _739
                            mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 772] = (1000 * mem[(32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]) - (slippage * mem[(32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]) / 1000
                            mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 836] = this.address
                            mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 868] = block.timestamp + 10
                            mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 804] = 160
                            mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 900] = 2
                            mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 932 len 0] = None
                            require ext_code.size(arg4)
                            call arg4.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args _739, (1000 * mem[(32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]) - (slippage * mem[(32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 640]) / 1000, Array(len=2, data=mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 932 len 64]), address(this.address), block.timestamp + 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _893) + (32 * _587) + (32 * _208) + (6 * ceil32(return_data.size)) + 736
                            require return_data.size >= 32
                            _1119 = mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _739) >> 32
                            require mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _739) >> 32 <= 4294967296
                            require mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _739) >> 32 + 32 <= return_data.size
                            require mem[mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _739) >> 32 + (32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736] <= 4294967296 and mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _739) >> 32 + (32 * mem[mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _739) >> 32 + (32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736]) + 32 <= return_data.size
                            mem[(32 * _893) + (32 * _587) + (32 * _208) + (6 * ceil32(return_data.size)) + 736] = mem[mem[(32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736 len 4], Mask(224, 32, _739) >> 32 + (32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736]
                            _1131 = mem[_1119 + (32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736]
                            mem[(32 * _893) + (32 * _587) + (32 * _208) + (6 * ceil32(return_data.size)) + 768 len floor32(mem[_1119 + (32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736])] = mem[_1119 + (32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 768 len floor32(mem[_1119 + (32 * _893) + (32 * _587) + (32 * _208) + (4 * ceil32(return_data.size)) + 736])]
                            mem[(32 * _1131) + (32 * _893) + (32 * _587) + (32 * _208) + (6 * ceil32(return_data.size)) + 768] = arg5
                            if 1 < mem[(32 * _208) + (2 * ceil32(return_data.size)) + 448]:
                                mem[(32 * _1131) + (32 * _893) + (32 * _587) + (32 * _208) + (6 * ceil32(return_data.size)) + 800] = mem[(32 * _208) + (2 * ceil32(return_data.size)) + 512]
                                if 1 < mem[(32 * _893) + (32 * _587) + (32 * _208) + (6 * ceil32(return_data.size)) + 736]:
                                    return arg5, 
                                           mem[(32 * _208) + (2 * ceil32(return_data.size)) + 512],
                                           mem[(32 * _893) + (32 * _587) + (32 * _208) + (6 * ceil32(return_data.size)) + 800]
    revert
}



}
