contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function check(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 96
    require arg1.length >= 32
    require cd[(arg1 + 36)] <= test266151307()
    require arg1.length - cd[(arg1 + 36)] >= 160
    require cd[(arg1 + cd[(arg1 + 36)] + 36)] == address(cd[(arg1 + cd[(arg1 + 36)] + 36)])
    mem[256] = cd[(arg1 + cd[(arg1 + 36)] + 36)]
    mem[288] = cd[(arg1 + cd[(arg1 + 36)] + 68)]
    mem[320] = cd[(arg1 + cd[(arg1 + 36)] + 100)]
    require cd[(arg1 + cd[(arg1 + 36)] + 132)] == address(cd[(arg1 + cd[(arg1 + 36)] + 132)])
    mem[352] = cd[(arg1 + cd[(arg1 + 36)] + 132)]
    require cd[(arg1 + cd[(arg1 + 36)] + 164)] <= test266151307()
    require arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 67 < arg1 + arg1.length + 36
    require cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)] <= test266151307()
    require (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448 >= 416 and (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448 <= test266151307()
    mem[416] = cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]
    require arg1.length + 36 >= cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 68
    idx = 0
    s = arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 68
    t = 448
    while idx < cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[384] = 416
    mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 452] = cd[(arg1 + cd[(arg1 + 36)] + 68)]
    mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 484] = 64
    mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 516] = cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]
    idx = 0
    s = 448
    t = (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 548
    while idx < cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[(arg1 + cd[(arg1 + 36)] + 36)]))
    staticcall address(cd[(arg1 + cd[(arg1 + 36)] + 36)]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 452 len (96 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 448
    require return_data.size >= 32
    _43 = mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32
    require mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 <= test266151307()
    require (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + return_data.size + 448 > (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 479
    _44 = mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 448]
    require mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 448] <= test266151307()
    require (32 * mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 448]) + 32 >= 0 and (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 448]) + 480 <= test266151307()
    mem[64] = (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 448]) + 480
    mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 448] = mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 448]
    require return_data.size >= _43 + (32 * _44) + 32
    mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 480 len 32 * _44] = mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + _43 + 480 len 32 * _44]
    require _44 - 1 < _44
    mem[mem[64]] = cd[(arg1 + cd[(arg1 + 36)] + 100)] <= mem[(32 * _44 - 1) + (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 480]
    return memory
      from mem[64]
       len 32
}

function run(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 96
    require arg1.length >= 32
    require cd[(arg1 + 36)] <= test266151307()
    require arg1.length - cd[(arg1 + 36)] >= 160
    require cd[(arg1 + cd[(arg1 + 36)] + 36)] == address(cd[(arg1 + cd[(arg1 + 36)] + 36)])
    mem[256] = cd[(arg1 + cd[(arg1 + 36)] + 36)]
    mem[288] = cd[(arg1 + cd[(arg1 + 36)] + 68)]
    mem[320] = cd[(arg1 + cd[(arg1 + 36)] + 100)]
    require cd[(arg1 + cd[(arg1 + 36)] + 132)] == address(cd[(arg1 + cd[(arg1 + 36)] + 132)])
    mem[352] = cd[(arg1 + cd[(arg1 + 36)] + 132)]
    require cd[(arg1 + cd[(arg1 + 36)] + 164)] <= test266151307()
    require arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 67 < arg1 + arg1.length + 36
    require cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)] <= test266151307()
    require (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448 >= 416 and (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448 <= test266151307()
    mem[416] = cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]
    require arg1.length + 36 >= cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 68
    idx = 0
    s = arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 68
    t = 448
    while idx < cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[384] = 416
    require 0 < cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]
    _48 = mem[448]
    mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 452] = this.address
    mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 484] = address(cd[(arg1 + cd[(arg1 + 36)] + 36)])
    require ext_code.size(address(_48))
    staticcall address(_48).allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), address(cd[(arg1 + cd[(arg1 + 36)] + 36)])
    mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 448] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= cd[(arg1 + cd[(arg1 + 36)] + 68)]:
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 452] = cd[(arg1 + cd[(arg1 + 36)] + 68)]
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 484] = cd[(arg1 + cd[(arg1 + 36)] + 100)]
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 516] = 160
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 612] = cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]
        idx = 0
        s = 448
        t = (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 644
        while idx < cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 548] = address(cd[(arg1 + cd[(arg1 + 36)] + 132)])
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 580] = block.timestamp
        require ext_code.size(address(cd[(arg1 + cd[(arg1 + 36)] + 36)]))
        call address(cd[(arg1 + cd[(arg1 + 36)] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 452 len (96 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        require mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 <= test266151307()
        require (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + return_data.size + 448 > (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 479
        require mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 448] <= test266151307()
        require (32 * mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 448]) + 32 >= 0 and (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 448]) + 480 <= test266151307()
        require return_data.size >= mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + (32 * mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 448]) + 32
    else:
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 452] = address(cd[(arg1 + cd[(arg1 + 36)] + 36)])
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 484] = cd[(arg1 + cd[(arg1 + 36)] + 68)] - ext_call.return_data[0]
        require ext_code.size(address(_48))
        call address(_48).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg1 + cd[(arg1 + 36)] + 36)]), cd[(arg1 + cd[(arg1 + 36)] + 68)] - ext_call.return_data[0]
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + ceil32(return_data.size) + 448] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 452] = cd[(arg1 + cd[(arg1 + 36)] + 68)]
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 484] = cd[(arg1 + cd[(arg1 + 36)] + 100)]
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 516] = 160
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 612] = cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]
        idx = 0
        s = 448
        t = (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 644
        while idx < cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 548] = address(cd[(arg1 + cd[(arg1 + 36)] + 132)])
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 580] = block.timestamp
        require ext_code.size(address(cd[(arg1 + cd[(arg1 + 36)] + 36)]))
        call address(cd[(arg1 + cd[(arg1 + 36)] + 36)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 452 len (96 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (4 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        require mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 <= test266151307()
        require (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + return_data.size + 448 > (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 479
        require mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 448] <= test266151307()
        require (32 * mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 448]) + 32 >= 0 and (32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 448]) + 480 <= test266151307()
        require return_data.size >= mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + (32 * mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + mem[(32 * cd[(arg1 + cd[(arg1 + 36)] + cd[(arg1 + cd[(arg1 + 36)] + 164)] + 36)]) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, cd[(arg1 + cd[(arg1 + 36)] + 68)]) >> 32 + 448]) + 32
}



}
