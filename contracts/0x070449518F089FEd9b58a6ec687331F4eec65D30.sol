contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
address stor3;
address stor4;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_23c9bb70(?) payable {
    require calldata.size - 4 >= 32
    mem[160] = stor4
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor1)
    staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _22 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _25 = mem[_22 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_22 + 192])] = mem[_22 + 224 len floor32(mem[_22 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _25) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _25) + ceil32(return_data.size) + 224
       len 32
}

function sub_9bdafa50(?) payable {
    require calldata.size - 4 >= 64
    mem[160] = stor4
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor1)
    staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _84 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _87 = mem[_84 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_84 + 192])] = mem[_84 + 224 len floor32(mem[_84 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    if mem[ceil32(return_data.size) + 256] >= arg2:
        require ext_code.size(stor3)
        staticcall stor3.token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _87) + ceil32(return_data.size) + 228] = msg.sender
        mem[(32 * _87) + ceil32(return_data.size) + 260] = stor3
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor3, arg1
        mem[(32 * _87) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 1 < mem[ceil32(return_data.size) + 192]
        require ext_code.size(stor3)
        if ext_call.return_data[12 len 20] != stor2:
            call stor3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 256], 0, msg.sender, 128, 0
        else:
            call stor3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 256], msg.sender, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg2 <= 0:
            require ext_code.size(stor3)
            staticcall stor3.token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * _87) + ceil32(return_data.size) + 228] = msg.sender
            mem[(32 * _87) + ceil32(return_data.size) + 260] = stor3
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, stor3, arg1
            mem[(32 * _87) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 1 < mem[ceil32(return_data.size) + 192]
            require ext_code.size(stor3)
            if ext_call.return_data[12 len 20] != stor2:
                call stor3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 256], 0, msg.sender, 128, 0
            else:
                call stor3.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 256], msg.sender, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
