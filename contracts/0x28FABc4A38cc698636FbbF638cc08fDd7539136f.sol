contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
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

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96 len 128] = call.data[calldata.size len 128]
    require arg4.length >= 192
    require cd[(arg4 + 36)] <= 4294967296
    require cd[(arg4 + 36)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] <= 4294967296 and cd[(arg4 + 36)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 68 <= arg4.length + 36
    mem[224] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
    mem[256 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]] = call.data[arg4 + cd[(arg4 + 36)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]]
    require cd[(arg4 + 68)] <= 4294967296
    require cd[(arg4 + 68)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 256] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 288 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
    mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 288 len 128] = call.data[arg4 + 100 len 128]
    if arg2:
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg2
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 64
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall address(call.data[arg4 + 164]).getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _151 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]
        _156 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _151 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _151 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _151 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _151 + 416])]
        require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
        _278 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448]
        mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg2
        mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        staticcall call.data[arg4 + 208 len 20].getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _397 = mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448] <= 4294967296 and mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]
        _402 = mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _397 + 448]
        mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _397 + 448])] = mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _397 + 480 len floor32(mem[(32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _397 + 448])]
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20])
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args call.data[arg4 + 208 len 20], arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 484] = arg2
        mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 516] = 1
        mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580] = this.address
        mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612] = block.timestamp + 10
        mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 548] = 160
        mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 676 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call call.data[arg4 + 208 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 676 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 480
        require return_data.size >= 32
        _587 = mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
        mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
        _592 = mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + _587 + 480]
        mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + _587 + 480])] = mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + _587 + 512 len floor32(mem[(32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + _587 + 480])]
        mem[(32 * _592) + (32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, _278) >> 32
        call address(call.data[arg4 + 132]) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, _278) << 224, mem[(32 * _592) + (32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 676 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _592) + (32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _592) + (32 * _402) + (32 * _156) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 644]:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
    else:
        if arg3:
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 64
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
            require ext_code.size(address(call.data[arg4 + 164]))
            staticcall address(call.data[arg4 + 164]).getAmountsIn(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 516 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
            require return_data.size >= 32
            _149 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 <= return_data.size
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
            _155 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _149 + 416]
            mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _149 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _149 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _149 + 416])]
            require 0 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            _277 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448]
            mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg3
            mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
            mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
            require ext_code.size(address(call.data[arg4 + 196]))
            staticcall call.data[arg4 + 208 len 20].getAmountsOut(uint256 rg1, address[] rg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            _395 = mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= 4294967296 and mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 <= return_data.size
            mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
            _401 = mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _395 + 448]
            mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _395 + 448])] = mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _395 + 480 len floor32(mem[(32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _395 + 448])]
            require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20])
            call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args call.data[arg4 + 208 len 20], arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 484] = arg2
            mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 516] = 1
            mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580] = this.address
            mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612] = block.timestamp + 10
            mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 548] = 160
            mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 676 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
            require ext_code.size(address(call.data[arg4 + 196]))
            call call.data[arg4 + 208 len 20].swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg2, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 676 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 480
            require return_data.size >= 32
            _585 = mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32
            require mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
            require mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
            require mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480] <= 4294967296 and mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]) + 32 <= return_data.size
            mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, arg2) >> 32 + 480]
            _591 = mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + _585 + 480]
            mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 512 len floor32(mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + _585 + 480])] = mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + _585 + 512 len floor32(mem[(32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + _585 + 480])]
            mem[(32 * _591) + (32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 612 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, _277) >> 32
            call address(call.data[arg4 + 100]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, _277) << 224, mem[(32 * _591) + (32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 676 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if call.data[calldata.size]:
                    require call.data[calldata.size] >= 32
                    if not call.data[calldata.size + 32]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
            else:
                mem[(32 * _591) + (32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 644 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _591) + (32 * _401) + (32 * _155) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 644]:
                        revert with 0, 'TransferHelper: TRANSFER_FAILED'
}



}
