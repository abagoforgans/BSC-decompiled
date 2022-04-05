contract main {




// =====================  Runtime code  =====================


#
#  - sub_4c962a2d(?)
#  - sub_d1683a1b(?)
#
address stor0;
array of address stor1;
address stor2;
uint256 stor15;

function _fallback() payable {
  stop
}

function isOwner(address arg1) {
    return (stor0 == arg1)
}

function renounceOwnership() {
    require stor0 == msg.sender
    emit OwnershipTransferred(0, stor0);
    stor0 = 0
}

function withdrawBase(uint256 arg1) {
    require stor0 == msg.sender
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(stor0, arg1);
    stor0 = arg1
}

function transferOtherTokens(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_8117369f(?) {
    require stor0 == msg.sender
    require ext_code.size(arg4)
    call arg4.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_6ba41243(?) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor2)
    call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]
    mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 192]
    return memory
      from (32 * arg2.length) + ceil32(return_data.size) + 128
       len 32
}

function sub_98f650da(?) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + 132] = arg1
    mem[(32 * arg2.length) + 164] = 64
    mem[(32 * arg2.length) + 196] = arg2.length
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor2)
    call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128] <= 4294967296 and mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 128]
    mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg2.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg2.length) + 192]
    return memory
      from (32 * arg2.length) + ceil32(return_data.size) + 128
       len 32
}

function sub_0d61c62e(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = arg2
    mem[(32 * arg1.length) + 164] = 1
    mem[(32 * arg1.length) + 228] = this.address
    mem[(32 * arg1.length) + 260] = block.timestamp + 360
    mem[(32 * arg1.length) + 196] = 160
    mem[(32 * arg1.length) + 292] = arg1.length
    mem[(32 * arg1.length) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor2)
    call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg2, 1, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 128]
    require ext_code.size(stor1.length)
    call stor1.length.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg4')))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg3')))), mem[mem[(32 * arg1.length) + 128 len 4], Mask(224, 32, arg2) >> 32 + (32 * arg1.length) + 192], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1, ext_call.return_data[0] - arg2
}

function sub_a39e4b6e(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require ext_code.size(stor1.length)
    call stor1.length.exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg3')))), ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg4')))), arg2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg1.length) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg1.length) + 132] = ext_call.return_data[0]
    mem[(32 * arg1.length) + 164] = 1
    mem[(32 * arg1.length) + 228] = this.address
    mem[(32 * arg1.length) + 260] = block.timestamp + 360
    mem[(32 * arg1.length) + 196] = 160
    mem[(32 * arg1.length) + 292] = arg1.length
    mem[(32 * arg1.length) + 324 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(stor2)
    call stor2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 324 len (32 * arg1.length) - floor32(arg1.length)]), address(this.address), block.timestamp + 360
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg1.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg1.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    require mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128] <= 4294967296 and mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128]) + 32 <= return_data.size
    require 1 < mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 128]
    return 1, mem[mem[(32 * arg1.length) + 128 len 4], ext_call.return_data[0 len 28] + (32 * arg1.length) + 192] - arg2
}

function sub_5905df9d(?) payable {
    mem[64] = 96
    require not msg.value
    s = 0
    s = 0
    idx = 1
    s = 0
    t = 0
    while idx < stor15:
        require idx - 1 < stor13.length
        mem[0] = 13
        _57 = mem[64]
        mem[64] = mem[64] + (32 * uint256(stor13[idx])) + 32
        mem[_57] = uint256(stor13[idx])
        if not uint256(stor13[idx]):
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = uint256(stor13[idx])
            u = 0
            while u < 32 * uint256(stor13[idx]):
                mem[mem[64] + u + 100] = mem[_57 + u + 32]
                u = u + 32
                continue 
            require ext_code.size(stor2)
            call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args arg1, Array(len=uint256(stor13[idx]), data=mem[mem[64] + 100 len 32 * uint256(stor13[idx])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _109 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_109] <= 4294967296
            require mem[_109] + 32 <= return_data.size
            require mem[mem[_109] + _109] <= 4294967296 and mem[_109] + (32 * mem[mem[_109] + _109]) + 32 <= return_data.size
            require 1 < mem[mem[_109] + _109]
            _113 = mem[mem[_109] + _109 + 64]
            mem[_109 + ceil32(return_data.size) + 4] = ('signextend', 15, ('signextend', 15, ('var', 0)))
            mem[_109 + ceil32(return_data.size) + 36] = 0
            mem[_109 + ceil32(return_data.size) + 68] = _113
            require ext_code.size(stor1.length)
            call stor1.length.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args ('signextend', 15, ('signextend', 15, ('var', 0))), 0, _113
            mem[_109 + ceil32(return_data.size)] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= arg1:
                mem[_109 + ceil32(return_data.size) + 4] = 0
                mem[_109 + ceil32(return_data.size) + 36] = ('signextend', 15, ('signextend', 15, ('var', 0)))
                mem[_109 + ceil32(return_data.size) + 68] = arg1
                require ext_code.size(stor1.length)
                call stor1.length.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args 0, ('signextend', 15, ('signextend', 15, ('var', 0))), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx - 1 < stor14.length
                mem[0] = 14
                mem[64] = _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32
                mem[_109 + ceil32(return_data.size)] = uint256(stor14[idx])
                if not uint256(stor14[idx]):
                    mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 36] = ext_call.return_data[0]
                    mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 68] = 64
                    mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 100] = uint256(stor14[idx])
                    u = 0
                    while u < 32 * uint256(stor14[idx]):
                        mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + u + 132] = mem[_109 + ceil32(return_data.size) + u + 32]
                        u = u + 32
                        continue 
                    require ext_code.size(stor2)
                    call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], Array(len=uint256(stor14[idx]), data=mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 132 len 32 * uint256(stor14[idx])])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _109 + (2 * ceil32(return_data.size)) + (32 * uint256(stor14[idx])) + 32
                    require return_data.size >= 32
                    require mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32] <= 4294967296 and mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32]) + 32 <= return_data.size
                    require 1 < mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32]
                    if mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96] <= arg1:
                        s = mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    if mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96] - arg1 <= t:
                        s = mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96]
                        s = ext_call.return_data[0]
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    s = mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = idx
                    t = mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96] - arg1
                    continue 
                mem[0] = sha3(14) + idx - 1
                mem[_109 + ceil32(return_data.size) + 32] = address(stor[sha3(('name', 'stor14', 14) + idx - 1)])
                u = _109 + ceil32(return_data.size) + 32
                v = sha3(mem[0])
                while _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) > u:
                    mem[u + 32] = stor1[v]
                    u = u + 32
                    v = v + 1
                    continue 
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ext_call.return_data[0]
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[_109 + ceil32(return_data.size)]
                _216 = mem[_109 + ceil32(return_data.size)]
                u = 0
                while u < 32 * _216:
                    mem[mem[64] + u + 100] = mem[_109 + ceil32(return_data.size) + u + 32]
                    u = u + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 64, mem[mem[64] + 68 len (32 * _216) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _287 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_287] <= 4294967296
                require mem[_287] + 32 <= return_data.size
                require mem[mem[_287] + _287] <= 4294967296 and mem[_287] + (32 * mem[mem[_287] + _287]) + 32 <= return_data.size
                require 1 < mem[mem[_287] + _287]
                if mem[mem[_287] + _287 + 64] <= arg1:
                    s = mem[mem[_287] + _287 + 64]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                if mem[mem[_287] + _287 + 64] - arg1 <= t:
                    s = mem[mem[_287] + _287 + 64]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                s = mem[mem[_287] + _287 + 64]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = idx
                t = mem[mem[_287] + _287 + 64] - arg1
                continue 
            if ext_call.return_data[0] - arg1 > t:
                s = ext_call.return_data[0]
                s = _113
                idx = idx + 1
                s = idx
                t = ext_call.return_data[0] - arg1
                continue 
            mem[_109 + ceil32(return_data.size) + 4] = 0
            mem[_109 + ceil32(return_data.size) + 36] = ('signextend', 15, ('signextend', 15, ('var', 0)))
            mem[_109 + ceil32(return_data.size) + 68] = arg1
            require ext_code.size(stor1.length)
            call stor1.length.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args 0, ('signextend', 15, ('signextend', 15, ('var', 0))), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - 1 < stor14.length
            mem[0] = 14
            mem[64] = _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32
            mem[_109 + ceil32(return_data.size)] = uint256(stor14[idx])
            if not uint256(stor14[idx]):
                mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 36] = ext_call.return_data[0]
                mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 68] = 64
                mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 100] = uint256(stor14[idx])
                u = 0
                while u < 32 * uint256(stor14[idx]):
                    mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + u + 132] = mem[_109 + ceil32(return_data.size) + u + 32]
                    u = u + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], Array(len=uint256(stor14[idx]), data=mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 132 len 32 * uint256(stor14[idx])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _109 + (2 * ceil32(return_data.size)) + (32 * uint256(stor14[idx])) + 32
                require return_data.size >= 32
                require mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32] <= 4294967296 and mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32]) + 32 <= return_data.size
                require 1 < mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32]
                if mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96] <= arg1:
                    s = mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                if mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96] - arg1 <= t:
                    s = mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                s = mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = idx
                t = mem[mem[_109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96] - arg1
                continue 
            mem[0] = sha3(14) + idx - 1
            mem[_109 + ceil32(return_data.size) + 32] = address(stor[sha3(('name', 'stor14', 14) + idx - 1)])
            u = _109 + ceil32(return_data.size) + 32
            v = sha3(mem[0])
            while _109 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) > u:
                mem[u + 32] = stor1[v]
                u = u + 32
                v = v + 1
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[_109 + ceil32(return_data.size)]
            _219 = mem[_109 + ceil32(return_data.size)]
            u = 0
            while u < 32 * _219:
                mem[mem[64] + u + 100] = mem[_109 + ceil32(return_data.size) + u + 32]
                u = u + 32
                continue 
            require ext_code.size(stor2)
            call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 64, mem[mem[64] + 68 len (32 * _219) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _288 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_288] <= 4294967296
            require mem[_288] + 32 <= return_data.size
            require mem[mem[_288] + _288] <= 4294967296 and mem[_288] + (32 * mem[mem[_288] + _288]) + 32 <= return_data.size
            require 1 < mem[mem[_288] + _288]
            if mem[mem[_288] + _288 + 64] <= arg1:
                s = mem[mem[_288] + _288 + 64]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                t = t
                continue 
            if mem[mem[_288] + _288 + 64] - arg1 <= t:
                s = mem[mem[_288] + _288 + 64]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                t = t
                continue 
            s = mem[mem[_288] + _288 + 64]
            s = ext_call.return_data[0]
            idx = idx + 1
            s = idx
            t = mem[mem[_288] + _288 + 64] - arg1
            continue 
        mem[0] = sha3(13) + idx - 1
        mem[_57 + 32] = address(stor[sha3(('name', 'stor13', 13) + idx - 1)])
        u = _57 + 32
        v = sha3(mem[0])
        while _57 + (32 * uint256(stor13[idx])) > u:
            mem[u + 32] = stor1[v]
            u = u + 32
            v = v + 1
            continue 
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = arg1
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[_57]
        _158 = mem[_57]
        u = 0
        while u < 32 * _158:
            mem[mem[64] + u + 100] = mem[_57 + u + 32]
            u = u + 32
            continue 
        require ext_code.size(stor2)
        call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
             gas gas_remaining wei
            args arg1, 64, mem[mem[64] + 68 len (32 * _158) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _226 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_226] <= 4294967296
        require mem[_226] + 32 <= return_data.size
        require mem[mem[_226] + _226] <= 4294967296 and mem[_226] + (32 * mem[mem[_226] + _226]) + 32 <= return_data.size
        require 1 < mem[mem[_226] + _226]
        _236 = mem[mem[_226] + _226 + 64]
        mem[_226 + ceil32(return_data.size) + 4] = ('signextend', 15, ('signextend', 15, ('var', 0)))
        mem[_226 + ceil32(return_data.size) + 36] = 0
        mem[_226 + ceil32(return_data.size) + 68] = _236
        require ext_code.size(stor1.length)
        call stor1.length.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args ('signextend', 15, ('signextend', 15, ('var', 0))), 0, _236
        mem[_226 + ceil32(return_data.size)] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            mem[_226 + ceil32(return_data.size) + 4] = 0
            mem[_226 + ceil32(return_data.size) + 36] = ('signextend', 15, ('signextend', 15, ('var', 0)))
            mem[_226 + ceil32(return_data.size) + 68] = arg1
            require ext_code.size(stor1.length)
            call stor1.length.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args 0, ('signextend', 15, ('signextend', 15, ('var', 0))), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx - 1 < stor14.length
            mem[0] = 14
            mem[64] = _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32
            mem[_226 + ceil32(return_data.size)] = uint256(stor14[idx])
            if not uint256(stor14[idx]):
                mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 36] = ext_call.return_data[0]
                mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 68] = 64
                mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 100] = uint256(stor14[idx])
                u = 0
                while u < 32 * uint256(stor14[idx]):
                    mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + u + 132] = mem[_226 + ceil32(return_data.size) + u + 32]
                    u = u + 32
                    continue 
                require ext_code.size(stor2)
                call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], Array(len=uint256(stor14[idx]), data=mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 132 len 32 * uint256(stor14[idx])])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _226 + (2 * ceil32(return_data.size)) + (32 * uint256(stor14[idx])) + 32
                require return_data.size >= 32
                require mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32] <= 4294967296 and mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32]) + 32 <= return_data.size
                require 1 < mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32]
                if mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96] <= arg1:
                    s = mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                if mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96] - arg1 <= t:
                    s = mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96]
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                s = mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = idx
                t = mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96] - arg1
                continue 
            mem[0] = sha3(14) + idx - 1
            mem[_226 + ceil32(return_data.size) + 32] = address(stor[sha3(('name', 'stor14', 14) + idx - 1)])
            u = _226 + ceil32(return_data.size) + 32
            v = sha3(mem[0])
            while _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) > u:
                mem[u + 32] = stor1[v]
                u = u + 32
                v = v + 1
                continue 
            mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ext_call.return_data[0]
            mem[mem[64] + 36] = 64
            mem[mem[64] + 68] = mem[_226 + ceil32(return_data.size)]
            _309 = mem[_226 + ceil32(return_data.size)]
            u = 0
            while u < 32 * _309:
                mem[mem[64] + u + 100] = mem[_226 + ceil32(return_data.size) + u + 32]
                u = u + 32
                continue 
            require ext_code.size(stor2)
            call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 64, mem[mem[64] + 68 len (32 * _309) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _331 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_331] <= 4294967296
            require mem[_331] + 32 <= return_data.size
            require mem[mem[_331] + _331] <= 4294967296 and mem[_331] + (32 * mem[mem[_331] + _331]) + 32 <= return_data.size
            require 1 < mem[mem[_331] + _331]
            if mem[mem[_331] + _331 + 64] <= arg1:
                s = mem[mem[_331] + _331 + 64]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                t = t
                continue 
            if mem[mem[_331] + _331 + 64] - arg1 <= t:
                s = mem[mem[_331] + _331 + 64]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                t = t
                continue 
            s = mem[mem[_331] + _331 + 64]
            s = ext_call.return_data[0]
            idx = idx + 1
            s = idx
            t = mem[mem[_331] + _331 + 64] - arg1
            continue 
        if ext_call.return_data[0] - arg1 > t:
            s = ext_call.return_data[0]
            s = _236
            idx = idx + 1
            s = idx
            t = ext_call.return_data[0] - arg1
            continue 
        mem[_226 + ceil32(return_data.size) + 4] = 0
        mem[_226 + ceil32(return_data.size) + 36] = ('signextend', 15, ('signextend', 15, ('var', 0)))
        mem[_226 + ceil32(return_data.size) + 68] = arg1
        require ext_code.size(stor1.length)
        call stor1.length.get_dy(int128 rg1, int128 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args 0, ('signextend', 15, ('signextend', 15, ('var', 0))), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx - 1 < stor14.length
        mem[0] = 14
        mem[64] = _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32
        mem[_226 + ceil32(return_data.size)] = uint256(stor14[idx])
        if not uint256(stor14[idx]):
            mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 36] = ext_call.return_data[0]
            mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 68] = 64
            mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 100] = uint256(stor14[idx])
            u = 0
            while u < 32 * uint256(stor14[idx]):
                mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + u + 132] = mem[_226 + ceil32(return_data.size) + u + 32]
                u = u + 32
                continue 
            require ext_code.size(stor2)
            call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Array(len=uint256(stor14[idx]), data=mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 132 len 32 * uint256(stor14[idx])])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _226 + (2 * ceil32(return_data.size)) + (32 * uint256(stor14[idx])) + 32
            require return_data.size >= 32
            require mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32] <= 4294967296 and mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32]) + 32 <= return_data.size
            require 1 < mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32]
            if mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96] <= arg1:
                s = mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                t = t
                continue 
            if mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96] - arg1 <= t:
                s = mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96]
                s = ext_call.return_data[0]
                idx = idx + 1
                s = s
                t = t
                continue 
            s = mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96]
            s = ext_call.return_data[0]
            idx = idx + 1
            s = idx
            t = mem[mem[_226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 32 len 4], ext_call.return_data[0 len 28] + _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) + 96] - arg1
            continue 
        mem[0] = sha3(14) + idx - 1
        mem[_226 + ceil32(return_data.size) + 32] = address(stor[sha3(('name', 'stor14', 14) + idx - 1)])
        u = _226 + ceil32(return_data.size) + 32
        v = sha3(mem[0])
        while _226 + ceil32(return_data.size) + (32 * uint256(stor14[idx])) > u:
            mem[u + 32] = stor1[v]
            u = u + 32
            v = v + 1
            continue 
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = ext_call.return_data[0]
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = mem[_226 + ceil32(return_data.size)]
        _312 = mem[_226 + ceil32(return_data.size)]
        u = 0
        while u < 32 * _312:
            mem[mem[64] + u + 100] = mem[_226 + ceil32(return_data.size) + u + 32]
            u = u + 32
            continue 
        require ext_code.size(stor2)
        call stor2.getAmountsOut(uint256 rg1, address[] rg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 64, mem[mem[64] + 68 len (32 * _312) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _332 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_332] <= 4294967296
        require mem[_332] + 32 <= return_data.size
        require mem[mem[_332] + _332] <= 4294967296 and mem[_332] + (32 * mem[mem[_332] + _332]) + 32 <= return_data.size
        require 1 < mem[mem[_332] + _332]
        if mem[mem[_332] + _332 + 64] <= arg1:
            s = mem[mem[_332] + _332 + 64]
            s = ext_call.return_data[0]
            idx = idx + 1
            s = s
            t = t
            continue 
        if mem[mem[_332] + _332 + 64] - arg1 <= t:
            s = mem[mem[_332] + _332 + 64]
            s = ext_call.return_data[0]
            idx = idx + 1
            s = s
            t = t
            continue 
        s = mem[mem[_332] + _332 + 64]
        s = ext_call.return_data[0]
        idx = idx + 1
        s = idx
        t = mem[mem[_332] + _332 + 64] - arg1
        continue 
    return t, s, 1
}



}
