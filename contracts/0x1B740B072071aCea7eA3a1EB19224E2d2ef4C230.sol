contract main {




// =====================  Runtime code  =====================


address owner;

function getOwner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function withdrawTokensFromContract(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if not arg1:
        revert with 0, 'Token cannot be zero address.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'Amount exceeds Balance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getAmountOutMin(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    if arg1 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
        staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _70 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _79 = mem[_70 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_70 + 192])] = mem[_70 + 224 len floor32(mem[_70 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        mem[(32 * _79) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
        return memory
          from (32 * _79) + ceil32(return_data.size) + 224
           len 32
    if arg2 != 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
        mem[192] = arg2
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg3
        mem[260] = 64
        mem[292] = 3
        mem[324 len 0] = None
        require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
        staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _72 = mem[224 len 4], Mask(224, 32, arg3) >> 32
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _80 = mem[_72 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_72 + 224])] = mem[_72 + 256 len floor32(mem[_72 + 224])]
        require 2 < mem[ceil32(return_data.size) + 224]
        mem[(32 * _80) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 320]
        return memory
          from (32 * _80) + ceil32(return_data.size) + 256
           len 32
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
    staticcall 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _74 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _81 = mem[_74 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_74 + 192])] = mem[_74 + 224 len floor32(mem[_74 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _81) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _81) + ceil32(return_data.size) + 224
       len 32
}

function sub_156eb9e7(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 2
    while idx < 42:
        require idx < arg2.length
        require idx + 1 < arg2.length
        idx = idx + 2
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 'BSC_BUSD'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 8
    _13 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 232 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 264 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 200] = arg1.length
    if sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 232 len arg1.length % 32]) == _13:
        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
        call 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
        call 0xe9e7cea3dedca5984780bafc599bd69add087d56.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, arg3
    else:
        idx = 2
        while idx < 42:
            require idx < arg1.length
            require idx + 1 < arg1.length
            idx = idx + 2
            continue 
        require ext_code.size(0)
        call 0x0.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0)
        call 0x0.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 328] = 0
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 360] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 364] = arg3
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 396] = arg4
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 460] = arg5
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 492] = block.timestamp
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 428] = 160
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 524] = 3
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 556 len 0] = None
    require ext_code.size(0x7a250d5630b4cf539739df2c5dacb4c659f2488d)
    call 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, arg4, Array(len=3, data=mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 556 len 96]), address(arg5), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(return_data.size) + 360
    require return_data.size >= 32
    require mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 360 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 360 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 360 len 4], Mask(224, 32, arg3) >> 32 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 360] <= 4294967296 and mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 360 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 360 len 4], Mask(224, 32, arg3) >> 32 + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 360]) + 32 <= return_data.size
}



}
