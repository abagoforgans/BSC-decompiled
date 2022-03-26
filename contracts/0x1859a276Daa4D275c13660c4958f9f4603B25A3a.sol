contract main {




// =====================  Runtime code  =====================


#
#  - sub_934eab2a(?)
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

function sub_bcb9d33f(?) payable {
    require calldata.size - 4 >= 96
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + ('cd', 68).length + 36 <= calldata.size
    mem[96 len 128] = call.data[calldata.size len 128]
    require ('cd', 68).length >= 192
    require ('cd', 68)[0] <= 4294967296
    require ('cd', 68)[0] + 68 <= ('cd', 68).length + 36
    require cd[(cd[68] + ('cd', 68)[0] + 36)] <= 4294967296 and ('cd', 68)[0] + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + 68 <= ('cd', 68).length + 36
    mem[224] = cd[(cd[68] + ('cd', 68)[0] + 36)]
    mem[256 len 32 * cd[(cd[68] + ('cd', 68)[0] + 36)]] = call.data[cd[68] + ('cd', 68)[0] + 68 len 32 * cd[(cd[68] + ('cd', 68)[0] + 36)]]
    require ('cd', 68)[1] <= 4294967296
    require ('cd', 68)[1] + 68 <= ('cd', 68).length + 36
    require cd[(cd[68] + ('cd', 68)[1] + 36)] <= 4294967296 and ('cd', 68)[1] + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 68 <= ('cd', 68).length + 36
    mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + 256] = cd[(cd[68] + ('cd', 68)[1] + 36)]
    mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + 288 len 32 * cd[(cd[68] + ('cd', 68)[1] + 36)]] = call.data[cd[68] + ('cd', 68)[1] + 68 len 32 * cd[(cd[68] + ('cd', 68)[1] + 36)]]
    mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 288 len 128] = call.data[cd[68] + 100 len 128]
    mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    if cd[4]:
        mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 420] = cd[4]
        mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 452] = 64
        mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 484] = cd[(cd[68] + ('cd', 68)[0] + 36)]
        mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 516 len floor32(cd[(cd[68] + ('cd', 68)[0] + 36)])] = call.data[cd[68] + ('cd', 68)[0] + 68 len floor32(cd[(cd[68] + ('cd', 68)[0] + 36)])]
        require ext_code.size(address(call.data[cd[68] + 164]))
        staticcall address(call.data[cd[68] + 164]).getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[4], Array(len=cd[(cd[68] + ('cd', 68)[0] + 36)], data=call.data[cd[68] + ('cd', 68)[0] + 68 len floor32(cd[(cd[68] + ('cd', 68)[0] + 36)])], mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + floor32(cd[(cd[68] + ('cd', 68)[0] + 36)]) + 516 len (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) - floor32(cd[(cd[68] + ('cd', 68)[0] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _85 = mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
        require mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[4]) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[4]) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[4]) >> 32 + 416]
        _91 = mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + _85 + 416]
        mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + _85 + 416])] = mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + _85 + 448 len floor32(mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + _85 + 416])]
        require 0 < mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 416]
        _149 = mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448]
        mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 452] = cd[4]
        mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 516] = cd[(cd[68] + ('cd', 68)[1] + 36)]
        mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(cd[68] + ('cd', 68)[1] + 36)])] = call.data[cd[68] + ('cd', 68)[1] + 68 len floor32(cd[(cd[68] + ('cd', 68)[1] + 36)])]
        require ext_code.size(address(call.data[cd[68] + 196]))
        staticcall call.data[cd[68] + 208 len 20].getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[4], Array(len=cd[(cd[68] + ('cd', 68)[1] + 36)], data=call.data[cd[68] + ('cd', 68)[1] + 68 len floor32(cd[(cd[68] + ('cd', 68)[1] + 36)])], mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + floor32(cd[(cd[68] + ('cd', 68)[1] + 36)]) + 548 len (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) - floor32(cd[(cd[68] + ('cd', 68)[1] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _203 = mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[4]) >> 32
        require mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[4]) >> 32 <= 4294967296
        require mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[4]) >> 32 + 32 <= return_data.size
        require mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[4]) >> 32 + 448] <= 4294967296 and mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[4]) >> 32 + (32 * mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[4]) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[4]) >> 32 + 448]
        _209 = mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + _203 + 448]
        mem[64] = (32 * _209) + (32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + (2 * ceil32(return_data.size)) + 480
        if cd[4] % 9418:
            require mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448] - 1 < mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448]
            if mem[(32 * mem[(32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448] - 1) + (32 * _91) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + (2 * ceil32(return_data.size)) + 480] <= _149:
                revert with 0, 'error0'
    else:
        mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 420] = cd[36]
        mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 452] = 64
        mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 484] = cd[(cd[68] + ('cd', 68)[0] + 36)]
        mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 516 len floor32(cd[(cd[68] + ('cd', 68)[0] + 36)])] = call.data[cd[68] + ('cd', 68)[0] + 68 len floor32(cd[(cd[68] + ('cd', 68)[0] + 36)])]
        require ext_code.size(address(call.data[cd[68] + 164]))
        staticcall address(call.data[cd[68] + 164]).getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[36], Array(len=cd[(cd[68] + ('cd', 68)[0] + 36)], data=call.data[cd[68] + ('cd', 68)[0] + 68 len floor32(cd[(cd[68] + ('cd', 68)[0] + 36)])], mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + floor32(cd[(cd[68] + ('cd', 68)[0] + 36)]) + 516 len (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) - floor32(cd[(cd[68] + ('cd', 68)[0] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _87 = mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
        require mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[36]) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[36]) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[36]) >> 32 + 416]
        _92 = mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + _87 + 416]
        mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + _87 + 416])] = mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + _87 + 448 len floor32(mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + _87 + 416])]
        require 0 < mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 416]
        _150 = mem[(32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448]
        mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 452] = cd[36]
        mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 516] = cd[(cd[68] + ('cd', 68)[1] + 36)]
        mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(cd[68] + ('cd', 68)[1] + 36)])] = call.data[cd[68] + ('cd', 68)[1] + 68 len floor32(cd[(cd[68] + ('cd', 68)[1] + 36)])]
        require ext_code.size(address(call.data[cd[68] + 196]))
        staticcall call.data[cd[68] + 208 len 20].getAmountsOut(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[36], Array(len=cd[(cd[68] + ('cd', 68)[1] + 36)], data=call.data[cd[68] + ('cd', 68)[1] + 68 len floor32(cd[(cd[68] + ('cd', 68)[1] + 36)])], mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + floor32(cd[(cd[68] + ('cd', 68)[1] + 36)]) + 548 len (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) - floor32(cd[(cd[68] + ('cd', 68)[1] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _205 = mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
        require mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
        require mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[36]) >> 32 + 448] <= 4294967296 and mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[36]) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[36]) >> 32 + 448]
        _210 = mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + ceil32(return_data.size) + _205 + 448]
        mem[64] = (32 * _210) + (32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + (2 * ceil32(return_data.size)) + 480
        if cd[36] % 9418:
            require mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448] - 1 < mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448]
            if mem[(32 * mem[(32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448] - 1) + (32 * _92) + (32 * cd[(cd[68] + ('cd', 68)[0] + 36)]) + (32 * cd[(cd[68] + ('cd', 68)[1] + 36)]) + (2 * ceil32(return_data.size)) + 480] <= _150:
                revert with 0, 'error0'
    require ext_code.size(address(call.data[cd[68] + 100]))
    call address(call.data[cd[68] + 100]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args cd[4], cd[36], address(this.address), Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function demaxCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20])
    if arg2:
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[arg4 + 196]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg2
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 580] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call address(call.data[arg4 + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _189 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]
        _195 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416])]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg2
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall call.data[arg4 + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _491 = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448] <= 4294967296 and mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]
        _497 = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448])] = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 480 len floor32(mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448])]
        mem[64] = (32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if arg2 % 9418:
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
    else:
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[arg4 + 196]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg3
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 580] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call address(call.data[arg4 + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _191 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
        _196 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416])]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg3
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall call.data[arg4 + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _493 = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= 4294967296 and mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
        _498 = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448])] = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 480 len floor32(mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448])]
        mem[64] = (32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if arg3 % 9418:
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
}

function stableXCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20])
    if arg2:
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[arg4 + 196]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg2
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 580] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call address(call.data[arg4 + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _189 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]
        _195 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416])]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg2
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall call.data[arg4 + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _491 = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448] <= 4294967296 and mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]
        _497 = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448])] = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 480 len floor32(mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448])]
        mem[64] = (32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if arg2 % 9418:
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
    else:
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[arg4 + 196]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg3
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 580] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call address(call.data[arg4 + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _191 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
        _196 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416])]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg3
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall call.data[arg4 + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _493 = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= 4294967296 and mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
        _498 = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448])] = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 480 len floor32(mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448])]
        mem[64] = (32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if arg3 % 9418:
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
}

function BSCswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20])
    if arg2:
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[arg4 + 196]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg2
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 580] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call address(call.data[arg4 + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _189 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]
        _195 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416])]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg2
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall call.data[arg4 + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _491 = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448] <= 4294967296 and mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]
        _497 = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448])] = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 480 len floor32(mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448])]
        mem[64] = (32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if arg2 % 9418:
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
    else:
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[arg4 + 196]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg3
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 580] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call address(call.data[arg4 + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _191 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
        _196 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416])]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg3
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall call.data[arg4 + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _493 = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= 4294967296 and mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
        _498 = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448])] = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 480 len floor32(mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448])]
        mem[64] = (32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if arg3 % 9418:
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
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
    require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20])
    if arg2:
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[arg4 + 196]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg2
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 580] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call address(call.data[arg4 + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _189 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]
        _195 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416])]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg2
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall call.data[arg4 + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _491 = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448] <= 4294967296 and mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]
        _497 = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448])] = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 480 len floor32(mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448])]
        mem[64] = (32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if arg2 % 9418:
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
    else:
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[arg4 + 196]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg3
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 580] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call address(call.data[arg4 + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _191 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
        _196 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416])]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg3
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall call.data[arg4 + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _493 = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= 4294967296 and mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
        _498 = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448])] = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 480 len floor32(mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448])]
        mem[64] = (32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if arg3 % 9418:
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
}

function ThugswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20])
    if arg2:
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[arg4 + 196]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg2
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 580] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call address(call.data[arg4 + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _189 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]
        _195 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416])]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg2
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall call.data[arg4 + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _491 = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448] <= 4294967296 and mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]
        _497 = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448])] = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 480 len floor32(mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448])]
        mem[64] = (32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if arg2 % 9418:
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
    else:
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[arg4 + 196]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg3
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 580] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call address(call.data[arg4 + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _191 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
        _196 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416])]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg3
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall call.data[arg4 + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _493 = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= 4294967296 and mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
        _498 = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448])] = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 480 len floor32(mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448])]
        mem[64] = (32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if arg3 % 9418:
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20])
    if arg2:
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[arg4 + 196]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg2
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 580] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call address(call.data[arg4 + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _189 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]
        _195 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416])]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg2
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall call.data[arg4 + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _491 = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448] <= 4294967296 and mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]
        _497 = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448])] = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 480 len floor32(mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448])]
        mem[64] = (32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if arg2 % 9418:
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
    else:
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[arg4 + 196]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg3
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 580] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call address(call.data[arg4 + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _191 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
        _196 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416])]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg3
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall call.data[arg4 + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _493 = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= 4294967296 and mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
        _498 = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448])] = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 480 len floor32(mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448])]
        mem[64] = (32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if arg3 % 9418:
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
}

function cheeseswapCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
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
    require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require ext_code.size(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20])
    if arg2:
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[arg4 + 196]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg2
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 580] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call address(call.data[arg4 + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg2, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _189 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg2) >> 32 + 416]
        _195 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _189 + 416])]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg2
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall call.data[arg4 + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg2, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _491 = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
        require mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448] <= 4294967296 and mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg2) >> 32 + 448]
        _497 = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448]
        mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448])] = mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 480 len floor32(mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _491 + 448])]
        mem[64] = (32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if arg2 % 9418:
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _497) + (32 * _195) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
    else:
        call mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[arg4 + 196]), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 420] = arg3
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 452] = 1
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 516] = this.address
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 484] = 160
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 580] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 196]))
        call address(call.data[arg4 + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 1, Array(len=cd[(arg4 + cd[(arg4 + 68)] + 36)], data=call.data[arg4 + cd[(arg4 + 68)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])], mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 612 len (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _191 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 416 len 4], Mask(224, 32, arg3) >> 32 + 416]
        _196 = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416]
        mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416])] = mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 448 len floor32(mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _191 + 416])]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 452] = arg3
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 516] = cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])] = call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])]
        require ext_code.size(address(call.data[arg4 + 164]))
        staticcall call.data[arg4 + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args arg3, Array(len=cd[(arg4 + cd[(arg4 + 36)] + 36)], data=call.data[arg4 + cd[(arg4 + 36)] + 68 len floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])], mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)]) + 548 len (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) - floor32(cd[(arg4 + cd[(arg4 + 36)] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _493 = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448] <= 4294967296 and mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, arg3) >> 32 + 448]
        _498 = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448]
        mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448])] = mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 480 len floor32(mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + _493 + 448])]
        mem[64] = (32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if arg3 % 9418:
            require mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _498) + (32 * _196) + (32 * cd[(arg4 + cd[(arg4 + 36)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
}

function sub_3b1365d8(?) payable {
    require calldata.size - 4 >= 128
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + ('cd', 100).length + 36 <= calldata.size
    mem[96 len 128] = call.data[calldata.size len 128]
    require ('cd', 100).length >= 192
    require ('cd', 100)[0] <= 4294967296
    require ('cd', 100)[0] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[0] + 36)] <= 4294967296 and ('cd', 100)[0] + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[224] = cd[(cd[100] + ('cd', 100)[0] + 36)]
    mem[256 len 32 * cd[(cd[100] + ('cd', 100)[0] + 36)]] = call.data[cd[100] + ('cd', 100)[0] + 68 len 32 * cd[(cd[100] + ('cd', 100)[0] + 36)]]
    require ('cd', 100)[1] <= 4294967296
    require ('cd', 100)[1] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[1] + 36)] <= 4294967296 and ('cd', 100)[1] + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 256] = cd[(cd[100] + ('cd', 100)[1] + 36)]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 288 len 32 * cd[(cd[100] + ('cd', 100)[1] + 36)]] = call.data[cd[100] + ('cd', 100)[1] + 68 len 32 * cd[(cd[100] + ('cd', 100)[1] + 36)]]
    mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 288 len 128] = call.data[cd[100] + 100 len 128]
    require 0 < cd[(cd[100] + ('cd', 100)[1] + 36)]
    require ext_code.size(mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 300 len 20])
    if cd[36]:
        call mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[cd[100] + 196]), cd[36]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 420] = cd[36]
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 452] = 1
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 516] = this.address
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 484] = 160
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 580] = cd[(cd[100] + ('cd', 100)[1] + 36)]
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 612 len floor32(cd[(cd[100] + ('cd', 100)[1] + 36)])] = call.data[cd[100] + ('cd', 100)[1] + 68 len floor32(cd[(cd[100] + ('cd', 100)[1] + 36)])]
        require ext_code.size(address(call.data[cd[100] + 196]))
        call address(call.data[cd[100] + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[36], 1, Array(len=cd[(cd[100] + ('cd', 100)[1] + 36)], data=call.data[cd[100] + ('cd', 100)[1] + 68 len floor32(cd[(cd[100] + ('cd', 100)[1] + 36)])], mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + floor32(cd[(cd[100] + ('cd', 100)[1] + 36)]) + 612 len (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) - floor32(cd[(cd[100] + ('cd', 100)[1] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _189 = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
        require mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[36]) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[36]) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[36]) >> 32 + 416]
        _195 = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + _189 + 416]
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + _189 + 416])] = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + _189 + 448 len floor32(mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + _189 + 416])]
        mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 452] = cd[36]
        mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 516] = cd[(cd[100] + ('cd', 100)[0] + 36)]
        mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(cd[100] + ('cd', 100)[0] + 36)])] = call.data[cd[100] + ('cd', 100)[0] + 68 len floor32(cd[(cd[100] + ('cd', 100)[0] + 36)])]
        require ext_code.size(address(call.data[cd[100] + 164]))
        staticcall call.data[cd[100] + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[36], Array(len=cd[(cd[100] + ('cd', 100)[0] + 36)], data=call.data[cd[100] + ('cd', 100)[0] + 68 len floor32(cd[(cd[100] + ('cd', 100)[0] + 36)])], mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + floor32(cd[(cd[100] + ('cd', 100)[0] + 36)]) + 548 len (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) - floor32(cd[(cd[100] + ('cd', 100)[0] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _491 = mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[36]) >> 32 <= 4294967296
        require mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
        require mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[36]) >> 32 + 448] <= 4294967296 and mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[36]) >> 32 + (32 * mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[36]) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[36]) >> 32 + 448]
        _497 = mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + _491 + 448]
        mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + _491 + 448])] = mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + _491 + 480 len floor32(mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + _491 + 448])]
        mem[64] = (32 * _497) + (32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if cd[36] % 9418:
            require mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(cd[100] + ('cd', 100)[0] + 36)]
        mem[(32 * _497) + (32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _497) + (32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _497) + (32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _497) + (32 * _195) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
    else:
        call mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + 300 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(call.data[cd[100] + 196]), cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 420] = cd[68]
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 452] = 1
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 516] = this.address
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 548] = block.timestamp + 10
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 484] = 160
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 580] = cd[(cd[100] + ('cd', 100)[1] + 36)]
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 612 len floor32(cd[(cd[100] + ('cd', 100)[1] + 36)])] = call.data[cd[100] + ('cd', 100)[1] + 68 len floor32(cd[(cd[100] + ('cd', 100)[1] + 36)])]
        require ext_code.size(address(call.data[cd[100] + 196]))
        call address(call.data[cd[100] + 196]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args cd[68], 1, Array(len=cd[(cd[100] + ('cd', 100)[1] + 36)], data=call.data[cd[100] + ('cd', 100)[1] + 68 len floor32(cd[(cd[100] + ('cd', 100)[1] + 36)])], mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + floor32(cd[(cd[100] + ('cd', 100)[1] + 36)]) + 612 len (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) - floor32(cd[(cd[100] + ('cd', 100)[1] + 36)])]), address(this.address), block.timestamp + 10
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 416
        require return_data.size >= 32
        _191 = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
        require mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
        require mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[68]) >> 32 + 416] <= 4294967296 and mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[68]) >> 32 + 416]) + 32 <= return_data.size
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 416] = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 416 len 4], Mask(224, 32, cd[68]) >> 32 + 416]
        _196 = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + _191 + 416]
        mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len floor32(mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + _191 + 416])] = mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + _191 + 448 len floor32(mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + _191 + 416])]
        mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 452] = cd[68]
        mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 484] = 64
        mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 516] = cd[(cd[100] + ('cd', 100)[0] + 36)]
        mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 548 len floor32(cd[(cd[100] + ('cd', 100)[0] + 36)])] = call.data[cd[100] + ('cd', 100)[0] + 68 len floor32(cd[(cd[100] + ('cd', 100)[0] + 36)])]
        require ext_code.size(address(call.data[cd[100] + 164]))
        staticcall call.data[cd[100] + 176 len 20].getAmountsIn(uint256 rg1, address[] rg2) with:
                gas gas_remaining wei
               args cd[68], Array(len=cd[(cd[100] + ('cd', 100)[0] + 36)], data=call.data[cd[100] + ('cd', 100)[0] + 68 len floor32(cd[(cd[100] + ('cd', 100)[0] + 36)])], mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + floor32(cd[(cd[100] + ('cd', 100)[0] + 36)]) + 548 len (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) - floor32(cd[(cd[100] + ('cd', 100)[0] + 36)])])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _493 = mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[68]) >> 32
        require mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[68]) >> 32 <= 4294967296
        require mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[68]) >> 32 + 32 <= return_data.size
        require mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[68]) >> 32 + 448] <= 4294967296 and mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[68]) >> 32 + (32 * mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[68]) >> 32 + 448]) + 32 <= return_data.size
        mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448] = mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448 len 4], Mask(224, 32, cd[68]) >> 32 + 448]
        _498 = mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + _493 + 448]
        mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + _493 + 448])] = mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + _493 + 480 len floor32(mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + _493 + 448])]
        mem[64] = (32 * _498) + (32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 480
        require 0 < mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 448]
        if cd[68] % 9418:
            require mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 416] - 1 < mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 416]
            if mem[(32 * mem[(32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 416] - 1) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + ceil32(return_data.size) + 448] <= mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 480]:
                revert with 0, 'error1'
        require 0 < cd[(cd[100] + ('cd', 100)[0] + 36)]
        mem[(32 * _498) + (32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 580 len 64] = unknown_0xa9059cbb(?????), msg.sender, mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]
        call mem[268 len 20] with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, mem[(32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 480 len 28]) << 256, mem[(32 * _498) + (32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 644 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if call.data[calldata.size]:
                require call.data[calldata.size] >= 32
                if not call.data[calldata.size + 32]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
        else:
            mem[(32 * _498) + (32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 612 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'TTransferHelper: TRANSFER_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _498) + (32 * _196) + (32 * cd[(cd[100] + ('cd', 100)[0] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (2 * ceil32(return_data.size)) + 612]:
                    revert with 0, 'TTransferHelper: TRANSFER_FAILED'
}



}
