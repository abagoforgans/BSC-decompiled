contract main {




// =====================  Runtime code  =====================


#
#  - sub_1cd9dfff(?)
#
address stor0;
mapping of uint8 stor1;

function _fallback() payable {
    revert
}

function setWhitelisted(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized'
    if not arg2:
        stor1[address(arg1)] = 0
    else:
        stor1[address(arg1)] = uint8(arg2)
}

function sub_526731e6(?) payable {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_dda89124(?) payable {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if msg.sender == stor0:
        require 0 < arg3.length
        require ext_code.size(mem[140 len 20])
        staticcall mem[140 len 20].0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > arg4:
            mem[(32 * arg3.length) + 164] = arg4
            mem[(32 * arg3.length) + 196] = arg5
            mem[(32 * arg3.length) + 260] = this.address
            mem[(32 * arg3.length) + 292] = arg6
            mem[(32 * arg3.length) + 228] = 160
            mem[(32 * arg3.length) + 324] = arg3.length
            mem[(32 * arg3.length) + 356 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[(32 * arg3.length) + 128] = (32 * arg3.length) + 196
            mem[(32 * arg3.length) + 164 len 28] = Mask(224, 32, arg4) >> 32
            mem[(32 * arg3.length) + 160 len 4] = arg2
            mem[(64 * arg3.length) + 356 len floor32((32 * arg3.length) + 196)] = arg2, arg4, arg5, Array(len=arg6, data=mem[(32 * arg3.length) + 324 len floor32((32 * arg3.length) + 196) - 164]), address(this.address)
            mem[(64 * arg3.length) + floor32((32 * arg3.length) + 196) + -((32 * arg3.length) + 196 % 32) + 388 len (32 * arg3.length) + 196 % 32] = mem[(32 * arg3.length) + -((32 * arg3.length) + 196 % 32) + floor32((32 * arg3.length) + 196) + 192 len (32 * arg3.length) + 196 % 32]
            call arg1.mem[(32 * arg3.length) + floor32((32 * arg3.length) + 196) + 128 len 4] with:
                 gas gas_remaining wei
                args mem[(64 * arg3.length) + 360 len (160 * arg3.length) + 192]
            if not return_data.size:
                if not ext_call.success:
                    mem[(64 * arg3.length) + 356] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(64 * arg3.length) + 360] = 32
                    mem[(64 * arg3.length) + 392] = 11
                    mem[(64 * arg3.length) + 424] = 'Failed at 1'
                    revert with memory
                      from (64 * arg3.length) + 356
                       len (127 * arg3.length) + 100
                require arg3.length >= 32
                require mem[128] <= 4294967296
                require mem[128] + 160 <= arg3.length + 128
                require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 160 <= arg3.length + 128
                mem[(64 * arg3.length) + 356] = mem[mem[128] + 128]
                _391 = mem[mem[128] + 128]
                mem[(64 * arg3.length) + 388 len floor32(mem[mem[128] + 128])] = mem[mem[128] + 160 len floor32(mem[mem[128] + 128])]
                require mem[(64 * arg3.length) + 356] - 1 < mem[(64 * arg3.length) + 356]
                mem[(32 * _391) + (64 * arg3.length) + 388] = mem[(32 * mem[(64 * arg3.length) + 356] - 1) + (64 * arg3.length) + 388]
                return memory
                  from (32 * _391) + (64 * arg3.length) + 388
                   len 32
            mem[64] = (64 * arg3.length) + ceil32(return_data.size) + 357
            mem[(64 * arg3.length) + 356] = return_data.size
            mem[(64 * arg3.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(64 * arg3.length) + ceil32(return_data.size) + 357] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg3.length) + ceil32(return_data.size) + 361] = 32
                mem[(64 * arg3.length) + ceil32(return_data.size) + 393] = 11
                mem[(64 * arg3.length) + ceil32(return_data.size) + 425] = 'Failed at 1'
                revert with memory
                  from (64 * arg3.length) + ceil32(return_data.size) + 357
                   len (127 * arg3.length) + 100
            require return_data.size >= 32
            _369 = mem[(64 * arg3.length) + 388]
            require mem[(64 * arg3.length) + 388] <= 4294967296
            require mem[(64 * arg3.length) + 388] + 64 <= return_data.size + 32
            require mem[(64 * arg3.length) + mem[(64 * arg3.length) + 388] + 388] <= 4294967296 and mem[(64 * arg3.length) + 388] + (32 * mem[(64 * arg3.length) + mem[(64 * arg3.length) + 388] + 388]) + 64 <= return_data.size + 32
            mem[(64 * arg3.length) + ceil32(return_data.size) + 357] = mem[(64 * arg3.length) + mem[(64 * arg3.length) + 388] + 388]
            _392 = mem[(64 * arg3.length) + _369 + 388]
            mem[(64 * arg3.length) + ceil32(return_data.size) + 389 len floor32(mem[(64 * arg3.length) + _369 + 388])] = mem[(64 * arg3.length) + _369 + 420 len floor32(mem[(64 * arg3.length) + _369 + 388])]
            require mem[(64 * arg3.length) + ceil32(return_data.size) + 357] - 1 < mem[(64 * arg3.length) + ceil32(return_data.size) + 357]
            mem[(32 * _392) + (64 * arg3.length) + ceil32(return_data.size) + 389] = mem[(32 * mem[(64 * arg3.length) + ceil32(return_data.size) + 357] - 1) + (64 * arg3.length) + ceil32(return_data.size) + 389]
            return memory
              from (32 * _392) + (64 * arg3.length) + ceil32(return_data.size) + 389
               len 32
        require ext_code.size(mem[140 len 20])
        call mem[140 len 20].approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg3.length) + 164] = arg4
        mem[(32 * arg3.length) + 196] = arg5
        mem[(32 * arg3.length) + 260] = this.address
        mem[(32 * arg3.length) + 292] = arg6
        mem[(32 * arg3.length) + 228] = 160
        mem[(32 * arg3.length) + 324] = arg3.length
        mem[(32 * arg3.length) + 356 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[(32 * arg3.length) + 128] = (32 * arg3.length) + 196
        mem[(32 * arg3.length) + 164 len 28] = Mask(224, 32, arg4) >> 32
        mem[(32 * arg3.length) + 160 len 4] = arg2
        mem[(64 * arg3.length) + 356 len floor32((32 * arg3.length) + 196)] = arg2, arg4, arg5, Array(len=arg6, data=mem[(32 * arg3.length) + 324 len floor32((32 * arg3.length) + 196) - 164]), address(this.address)
        mem[(64 * arg3.length) + floor32((32 * arg3.length) + 196) + -((32 * arg3.length) + 196 % 32) + 388 len (32 * arg3.length) + 196 % 32] = mem[(32 * arg3.length) + -((32 * arg3.length) + 196 % 32) + floor32((32 * arg3.length) + 196) + 192 len (32 * arg3.length) + 196 % 32]
        call arg1.mem[(32 * arg3.length) + floor32((32 * arg3.length) + 196) + 128 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg3.length) + 360 len (160 * arg3.length) + 192]
        if not return_data.size:
            if not ext_call.success:
                mem[(64 * arg3.length) + 356] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(64 * arg3.length) + 360] = 32
                mem[(64 * arg3.length) + 392] = 11
                mem[(64 * arg3.length) + 424] = 'Failed at 1'
                revert with memory
                  from (64 * arg3.length) + 356
                   len (127 * arg3.length) + 100
            require arg3.length >= 32
            require mem[128] <= 4294967296
            require mem[128] + 160 <= arg3.length + 128
            require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 160 <= arg3.length + 128
            mem[(64 * arg3.length) + 356] = mem[mem[128] + 128]
            _393 = mem[mem[128] + 128]
            mem[(64 * arg3.length) + 388 len floor32(mem[mem[128] + 128])] = mem[mem[128] + 160 len floor32(mem[mem[128] + 128])]
            require mem[(64 * arg3.length) + 356] - 1 < mem[(64 * arg3.length) + 356]
            mem[(32 * _393) + (64 * arg3.length) + 388] = mem[(32 * mem[(64 * arg3.length) + 356] - 1) + (64 * arg3.length) + 388]
            return memory
              from (32 * _393) + (64 * arg3.length) + 388
               len 32
        mem[64] = (64 * arg3.length) + ceil32(return_data.size) + 357
        mem[(64 * arg3.length) + 356] = return_data.size
        mem[(64 * arg3.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(64 * arg3.length) + ceil32(return_data.size) + 357] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg3.length) + ceil32(return_data.size) + 361] = 32
            mem[(64 * arg3.length) + ceil32(return_data.size) + 393] = 11
            mem[(64 * arg3.length) + ceil32(return_data.size) + 425] = 'Failed at 1'
            revert with memory
              from (64 * arg3.length) + ceil32(return_data.size) + 357
               len (127 * arg3.length) + 100
        require return_data.size >= 32
        _373 = mem[(64 * arg3.length) + 388]
        require mem[(64 * arg3.length) + 388] <= 4294967296
        require mem[(64 * arg3.length) + 388] + 64 <= return_data.size + 32
        require mem[(64 * arg3.length) + mem[(64 * arg3.length) + 388] + 388] <= 4294967296 and mem[(64 * arg3.length) + 388] + (32 * mem[(64 * arg3.length) + mem[(64 * arg3.length) + 388] + 388]) + 64 <= return_data.size + 32
        mem[(64 * arg3.length) + ceil32(return_data.size) + 357] = mem[(64 * arg3.length) + mem[(64 * arg3.length) + 388] + 388]
        _394 = mem[(64 * arg3.length) + _373 + 388]
        mem[(64 * arg3.length) + ceil32(return_data.size) + 389 len floor32(mem[(64 * arg3.length) + _373 + 388])] = mem[(64 * arg3.length) + _373 + 420 len floor32(mem[(64 * arg3.length) + _373 + 388])]
        require mem[(64 * arg3.length) + ceil32(return_data.size) + 357] - 1 < mem[(64 * arg3.length) + ceil32(return_data.size) + 357]
        mem[(32 * _394) + (64 * arg3.length) + ceil32(return_data.size) + 389] = mem[(32 * mem[(64 * arg3.length) + ceil32(return_data.size) + 357] - 1) + (64 * arg3.length) + ceil32(return_data.size) + 389]
        return memory
          from (32 * _394) + (64 * arg3.length) + ceil32(return_data.size) + 389
           len 32
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        revert with 0, 'Unauthorized'
    require 0 < arg3.length
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > arg4:
        mem[(32 * arg3.length) + 164] = arg4
        mem[(32 * arg3.length) + 196] = arg5
        mem[(32 * arg3.length) + 260] = this.address
        mem[(32 * arg3.length) + 292] = arg6
        mem[(32 * arg3.length) + 228] = 160
        mem[(32 * arg3.length) + 324] = arg3.length
        mem[(32 * arg3.length) + 356 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[(32 * arg3.length) + 128] = (32 * arg3.length) + 196
        mem[(32 * arg3.length) + 164 len 28] = Mask(224, 32, arg4) >> 32
        mem[(32 * arg3.length) + 160 len 4] = arg2
        mem[(64 * arg3.length) + 356 len floor32((32 * arg3.length) + 196)] = arg2, arg4, arg5, Array(len=arg6, data=mem[(32 * arg3.length) + 324 len floor32((32 * arg3.length) + 196) - 164]), address(this.address)
        mem[(64 * arg3.length) + floor32((32 * arg3.length) + 196) + -((32 * arg3.length) + 196 % 32) + 388 len (32 * arg3.length) + 196 % 32] = mem[(32 * arg3.length) + floor32((32 * arg3.length) + 196) + -((32 * arg3.length) + 196 % 32) + 192 len (32 * arg3.length) + 196 % 32]
        call arg1.mem[(32 * arg3.length) + floor32((32 * arg3.length) + 196) + 128 len 4] with:
             gas gas_remaining wei
            args mem[(64 * arg3.length) + 360 len (32 * arg3.length) + 192]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Failed at 1'
            require arg3.length >= 32
            require mem[128] <= 4294967296
            require mem[128] + 160 <= arg3.length + 128
            require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 160 <= arg3.length + 128
            mem[(64 * arg3.length) + 356] = mem[mem[128] + 128]
            _395 = mem[mem[128] + 128]
            mem[(64 * arg3.length) + 388 len floor32(mem[mem[128] + 128])] = mem[mem[128] + 160 len floor32(mem[mem[128] + 128])]
            require mem[(64 * arg3.length) + 356] - 1 < mem[(64 * arg3.length) + 356]
            mem[(32 * _395) + (64 * arg3.length) + 388] = mem[(32 * mem[(64 * arg3.length) + 356] - 1) + (64 * arg3.length) + 388]
            return memory
              from (32 * _395) + (64 * arg3.length) + 388
               len 32
        mem[64] = (64 * arg3.length) + ceil32(return_data.size) + 357
        mem[(64 * arg3.length) + 356] = return_data.size
        mem[(64 * arg3.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Failed at 1'
        require return_data.size >= 32
        _377 = mem[(64 * arg3.length) + 388]
        require mem[(64 * arg3.length) + 388] <= 4294967296
        require mem[(64 * arg3.length) + 388] + 64 <= return_data.size + 32
        require mem[(64 * arg3.length) + mem[(64 * arg3.length) + 388] + 388] <= 4294967296 and mem[(64 * arg3.length) + 388] + (32 * mem[(64 * arg3.length) + mem[(64 * arg3.length) + 388] + 388]) + 64 <= return_data.size + 32
        mem[(64 * arg3.length) + ceil32(return_data.size) + 357] = mem[(64 * arg3.length) + mem[(64 * arg3.length) + 388] + 388]
        _396 = mem[(64 * arg3.length) + _377 + 388]
        mem[(64 * arg3.length) + ceil32(return_data.size) + 389 len floor32(mem[(64 * arg3.length) + _377 + 388])] = mem[(64 * arg3.length) + _377 + 420 len floor32(mem[(64 * arg3.length) + _377 + 388])]
        require mem[(64 * arg3.length) + ceil32(return_data.size) + 357] - 1 < mem[(64 * arg3.length) + ceil32(return_data.size) + 357]
        mem[(32 * _396) + (64 * arg3.length) + ceil32(return_data.size) + 389] = mem[(32 * mem[(64 * arg3.length) + ceil32(return_data.size) + 357] - 1) + (64 * arg3.length) + ceil32(return_data.size) + 389]
        return memory
          from (32 * _396) + (64 * arg3.length) + ceil32(return_data.size) + 389
           len 32
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg3.length) + 164] = arg4
    mem[(32 * arg3.length) + 196] = arg5
    mem[(32 * arg3.length) + 260] = this.address
    mem[(32 * arg3.length) + 292] = arg6
    mem[(32 * arg3.length) + 228] = 160
    mem[(32 * arg3.length) + 324] = arg3.length
    mem[(32 * arg3.length) + 356 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(32 * arg3.length) + 128] = (32 * arg3.length) + 196
    mem[(32 * arg3.length) + 164 len 28] = Mask(224, 32, arg4) >> 32
    mem[(32 * arg3.length) + 160 len 4] = arg2
    mem[(64 * arg3.length) + 356 len floor32((32 * arg3.length) + 196)] = arg2, arg4, arg5, Array(len=arg6, data=mem[(32 * arg3.length) + 324 len floor32((32 * arg3.length) + 196) - 164]), address(this.address)
    mem[(64 * arg3.length) + floor32((32 * arg3.length) + 196) + -((32 * arg3.length) + 196 % 32) + 388 len (32 * arg3.length) + 196 % 32] = mem[(32 * arg3.length) + -((32 * arg3.length) + 196 % 32) + floor32((32 * arg3.length) + 196) + 192 len (32 * arg3.length) + 196 % 32]
    call arg1.mem[(32 * arg3.length) + floor32((32 * arg3.length) + 196) + 128 len 4] with:
         gas gas_remaining wei
        args mem[(64 * arg3.length) + 360 len (160 * arg3.length) + 192]
    if not return_data.size:
        if not ext_call.success:
            mem[(64 * arg3.length) + 356] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(64 * arg3.length) + 360] = 32
            mem[(64 * arg3.length) + 392] = 11
            mem[(64 * arg3.length) + 424] = 'Failed at 1'
            revert with memory
              from (64 * arg3.length) + 356
               len (127 * arg3.length) + 100
        require arg3.length >= 32
        require mem[128] <= 4294967296
        require mem[128] + 160 <= arg3.length + 128
        require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 160 <= arg3.length + 128
        mem[(64 * arg3.length) + 356] = mem[mem[128] + 128]
        _397 = mem[mem[128] + 128]
        mem[(64 * arg3.length) + 388 len floor32(mem[mem[128] + 128])] = mem[mem[128] + 160 len floor32(mem[mem[128] + 128])]
        require mem[(64 * arg3.length) + 356] - 1 < mem[(64 * arg3.length) + 356]
        mem[(32 * _397) + (64 * arg3.length) + 388] = mem[(32 * mem[(64 * arg3.length) + 356] - 1) + (64 * arg3.length) + 388]
        return memory
          from (32 * _397) + (64 * arg3.length) + 388
           len 32
    mem[64] = (64 * arg3.length) + ceil32(return_data.size) + 357
    mem[(64 * arg3.length) + 356] = return_data.size
    mem[(64 * arg3.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(64 * arg3.length) + ceil32(return_data.size) + 357] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg3.length) + ceil32(return_data.size) + 361] = 32
        mem[(64 * arg3.length) + ceil32(return_data.size) + 393] = 11
        mem[(64 * arg3.length) + ceil32(return_data.size) + 425] = 'Failed at 1'
        revert with memory
          from (64 * arg3.length) + ceil32(return_data.size) + 357
           len (127 * arg3.length) + 100
    require return_data.size >= 32
    _381 = mem[(64 * arg3.length) + 388]
    require mem[(64 * arg3.length) + 388] <= 4294967296
    require mem[(64 * arg3.length) + 388] + 64 <= return_data.size + 32
    require mem[(64 * arg3.length) + mem[(64 * arg3.length) + 388] + 388] <= 4294967296 and mem[(64 * arg3.length) + 388] + (32 * mem[(64 * arg3.length) + mem[(64 * arg3.length) + 388] + 388]) + 64 <= return_data.size + 32
    mem[(64 * arg3.length) + ceil32(return_data.size) + 357] = mem[(64 * arg3.length) + mem[(64 * arg3.length) + 388] + 388]
    _398 = mem[(64 * arg3.length) + _381 + 388]
    mem[(64 * arg3.length) + ceil32(return_data.size) + 389 len floor32(mem[(64 * arg3.length) + _381 + 388])] = mem[(64 * arg3.length) + _381 + 420 len floor32(mem[(64 * arg3.length) + _381 + 388])]
    require mem[(64 * arg3.length) + ceil32(return_data.size) + 357] - 1 < mem[(64 * arg3.length) + ceil32(return_data.size) + 357]
    mem[(32 * _398) + (64 * arg3.length) + ceil32(return_data.size) + 389] = mem[(32 * mem[(64 * arg3.length) + ceil32(return_data.size) + 357] - 1) + (64 * arg3.length) + ceil32(return_data.size) + 389]
    return memory
      from (32 * _398) + (64 * arg3.length) + ceil32(return_data.size) + 389
       len 32
}



}
