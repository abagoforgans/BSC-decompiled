contract main {




// =====================  Runtime code  =====================


#
#  - sub_21d318b5(?)
#  - sub_57f9a635(?)
#  - sub_e501d36e(?)
#
array of address stor0;
mapping of address stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;
address stor5;

function _fallback() payable {
    revert
}

function sub_89b27b0b(?) payable {
    if not stor0.length:
        mem[256 len 4096] = mem[128 len 96], 128, mem[256 len 3968]
        return 128, 
               4256,
               8384,
               12512,
               128,
               mem[256 len 4096],
               128,
               4256,
               mem[160 len 64],
               128,
               mem[256 len 3968],
               128,
               4256,
               8384,
               mem[192],
               128,
               mem[256 len 3968],
               128,
               4256,
               8384,
               12512,
               128,
               mem[256 len 3968]
    mem[96] = stor0.length
    mem[128 len 32 * stor0.length] = code.data[14505 len 32 * stor0.length]
    mem[(32 * stor0.length) + 128] = stor0.length
    mem[(32 * stor0.length) + 160 len 32 * stor0.length] = code.data[14505 len 32 * stor0.length]
    mem[(64 * stor0.length) + 160] = stor0.length
    mem[(64 * stor0.length) + 192 len 32 * stor0.length] = code.data[14505 len 32 * stor0.length]
    mem[(98 * stor0.length) + 192] = stor0.length
    mem[64] = (131 * stor0.length) + 224
    mem[(98 * stor0.length) + 224 len 32 * stor0.length] = code.data[14505 len 32 * stor0.length]
    idx = 0
    while idx < stor0.length:
        require idx < mem[96]
        mem[(32 * idx) + 128] = stor0[idx]
        require idx < stor0.length
        require idx < mem[(32 * stor0.length) + 128]
        mem[(32 * idx) + (32 * stor0.length) + 160] = stor1[stor0[idx]]
        require idx < stor0.length
        require idx < mem[(64 * stor0.length) + 160]
        mem[(32 * idx) + (64 * stor0.length) + 192] = stor2[stor0[idx]]
        require idx < stor0.length
        mem[0] = stor0[idx]
        mem[32] = 3
        require idx < mem[(98 * stor0.length) + 192]
        mem[(32 * idx) + (98 * stor0.length) + 224] = stor3[stor0[idx]]
        idx = idx + 1
        continue 
    _52 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[96]
    _54 = mem[96]
    mem[mem[64] + 160 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + 32] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + mem[64] + 160] = mem[(32 * stor0.length) + 128]
    _84 = mem[(32 * stor0.length) + 128]
    s = 0
    while stor0.length < 32 * _84:
        mem[stor0.length + (32 * _54) + mem[64] + 192] = mem[(34 * stor0.length) + 160]
        s = stor0.length + 32
        continue 
    mem[_52 + 64] = (32 * _84) + (32 * _54) + 192
    mem[(32 * _84) + (32 * _54) + _52 + 192] = mem[(64 * stor0.length) + 160]
    _103 = mem[(64 * stor0.length) + 160]
    mem[(32 * _84) + (32 * _54) + _52 + 224 len floor32(mem[(64 * stor0.length) + 160])] = mem[(64 * stor0.length) + 192 len floor32(mem[(64 * stor0.length) + 160])]
    mem[_52 + 96] = (32 * _103) + (32 * _84) + (32 * _54) + 224
    mem[(32 * _103) + (32 * _84) + (32 * _54) + _52 + 224] = mem[(98 * stor0.length) + 192]
    _115 = mem[(98 * stor0.length) + 192]
    mem[(32 * _103) + (32 * _84) + (32 * _54) + _52 + 256 len floor32(mem[(98 * stor0.length) + 192])] = mem[(98 * stor0.length) + 224 len floor32(mem[(98 * stor0.length) + 192])]
    return memory
      from mem[64]
       len (32 * _115) + (32 * _103) + (32 * _84) + (32 * _54) + _52 + -mem[64] + 256
}

function sub_3247d940(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if arg1.length <= 0:
        revert with 0, 'PARAMS_FAILED'
    if arg2.length != arg1.length:
        revert with 0, 'PARAMS_FAILED'
    if arg3.length != arg1.length:
        revert with 0, 'PARAMS_FAILED'
    if arg4.length != arg1.length:
        revert with 0, 'PARAMS_FAILED'
    if stor5 != msg.sender:
        revert with 0, 'OWNER_FAILED'
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg1.length] = code.data[14505 len 32 * arg1.length]
    stor0.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256
        while (64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 > idx:
            stor0[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < stor0.length
        stor0[idx] = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        require idx < arg1.length
        stor1[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        require idx < arg3.length
        require idx < arg1.length
        stor2[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < arg4.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        idx = idx + 1
        continue 
}

function sub_90994fbe(?) payable {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[0] = arg1
    mem[32] = 1
    mem[(32 * arg4.length) + (32 * arg3.length) + 160] = 67
    mem[(32 * arg4.length) + (32 * arg3.length) + 192 len 67] = 0x29737761704578616374546f6b656e73466f72546f6b656e732875696e743235362c75696e743235362c616464726573735b5d2c616464726573732c75696e74323536
    mem[(32 * arg4.length) + (32 * arg3.length) + 324] = arg5
    mem[(32 * arg4.length) + (32 * arg3.length) + 356] = 0
    mem[(32 * arg4.length) + (32 * arg3.length) + 420] = msg.sender
    mem[(32 * arg4.length) + (32 * arg3.length) + 452] = block.timestamp + 300
    mem[(32 * arg4.length) + (32 * arg3.length) + 388] = 160
    mem[(32 * arg4.length) + (32 * arg3.length) + 484] = arg3.length
    mem[(32 * arg4.length) + (32 * arg3.length) + 516 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(32 * arg4.length) + (32 * arg3.length) + 288] = (32 * arg3.length) + 196
    mem[(32 * arg4.length) + (32 * arg3.length) + 324 len 28] = Mask(224, 32, arg5) >> 32
    mem[(32 * arg4.length) + (32 * arg3.length) + 320 len 4] = Mask(32, 224, sha3(0x29737761704578616374546f6b656e73466f72546f6b656e732875696e743235362c75696e743235362c616464726573735b5d2c616464726573732c75696e74323536)) >> 224
    mem[(64 * arg3.length) + (32 * arg4.length) + 516 len floor32((32 * arg3.length) + 196)] = Mask(32, 224, sha3(0x29737761704578616374546f6b656e73466f72546f6b656e732875696e743235362c75696e743235362c616464726573735b5d2c616464726573732c75696e74323536)) >> 224, arg5, 0, 160, msg.sender, block.timestamp + 300, mem[(32 * arg4.length) + (32 * arg3.length) + 484 len floor32((32 * arg3.length) + 196) - 164]
    mem[(64 * arg3.length) + (32 * arg4.length) + floor32((32 * arg3.length) + 196) + -((32 * arg3.length) + 196 % 32) + 548 len (32 * arg3.length) + 196 % 32] = mem[(32 * arg4.length) + (32 * arg3.length) + -((32 * arg3.length) + 196 % 32) + floor32((32 * arg3.length) + 196) + 352 len (32 * arg3.length) + 196 % 32]
    call stor1[address(arg1)].mem[(32 * arg4.length) + (32 * arg3.length) + floor32((32 * arg3.length) + 196) + 288 len 4] with:
         gas gas_remaining wei
        args mem[(64 * arg3.length) + (32 * arg4.length) + 520 len (160 * arg3.length) + 192]
    if not return_data.size:
        require arg3.length >= 32
        require mem[128] <= 4294967296
        require mem[128] + 160 <= arg3.length + 128
        require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 160 <= arg3.length + 128
        mem[(64 * arg3.length) + (32 * arg4.length) + 516] = mem[mem[128] + 128]
        _295 = mem[mem[128] + 128]
        mem[(64 * arg3.length) + (32 * arg4.length) + 548 len floor32(mem[mem[128] + 128])] = mem[mem[128] + 160 len floor32(mem[mem[128] + 128])]
        mem[64] = (32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 548
        if not ext_call.success:
            revert with 0, 'SWAP_EXTERNAL_FAILED'
        if mem[(64 * arg3.length) + (32 * arg4.length) + 516] <= 0:
            revert with 0, 'SWAP_EXTERNAL_FAILED'
        require mem[(64 * arg3.length) + (32 * arg4.length) + 516] - 1 < mem[(64 * arg3.length) + (32 * arg4.length) + 516]
        _429 = mem[(32 * mem[(64 * arg3.length) + (32 * arg4.length) + 516] - 1) + (64 * arg3.length) + (32 * arg4.length) + 548]
        mem[0] = arg2
        mem[32] = 1
        mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 548] = 67
        mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 580 len 67] = 0x29737761704578616374546f6b656e73466f72546f6b656e732875696e743235362c75696e743235362c616464726573735b5d2c616464726573732c75696e74323536
        mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 712] = _429
        mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 744] = 0
        mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 808] = msg.sender
        mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 840] = block.timestamp + 300
        mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 776] = 160
        mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 872] = arg4.length
        mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 904 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 676] = (32 * arg4.length) + 196
        mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 712 len 28] = Mask(224, 32, _429) >> 32
        mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 708 len 4] = Mask(32, 224, sha3(0x29737761704578616374546f6b656e73466f72546f6b656e732875696e743235362c75696e743235362c616464726573735b5d2c616464726573732c75696e74323536)) >> 224
        mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 904 len floor32((32 * arg4.length) + 196)] = Mask(32, 224, sha3(0x29737761704578616374546f6b656e73466f72546f6b656e732875696e743235362c75696e743235362c616464726573735b5d2c616464726573732c75696e74323536)) >> 224, _429, 0, 160, msg.sender, block.timestamp + 300, mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 872 len floor32((32 * arg4.length) + 196) - 164]
        mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + floor32((32 * arg4.length) + 196) + -((32 * arg4.length) + 196 % 32) + 936 len (32 * arg4.length) + 196 % 32] = mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + -((32 * arg4.length) + 196 % 32) + floor32((32 * arg4.length) + 196) + 740 len (32 * arg4.length) + 196 % 32]
        delegate stor1[address(arg2)] with:
           funct (Mask(32, 224, Mask(32, 224, sha3(0x29737761704578616374546f6b656e73466f72546f6b656e732875696e743235362c75696e743235362c616464726573735b5d2c616464726573732c75696e74323536)) >> 224, _429, 0, 160, msg.sender, block.timestamp + 300, mem[(32 * _295) + (64 * arg3.length) + (32 * arg4.length) + 872 len floor32((32 * arg4.length) + 196) - 164]) >> 224)
             gas gas_remaining wei
            args mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 908 len (32 * arg4.length) + 192]
        if not return_data.size:
            require arg3.length >= 32
            require mem[128] <= 4294967296
            require mem[128] + 160 <= arg3.length + 128
            require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 160 <= arg3.length + 128
            mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 904] = mem[mem[128] + 128]
            if not delegate.return_code:
                revert with 0, 'SWAP_EXTERNAL_FAILED'
            if mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 904] <= 0:
                revert with 0, 'SWAP_EXTERNAL_FAILED'
            require mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 904] - 1 < mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 904]
            if mem[(32 * mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 904] - 1) + (64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 936] < arg6:
                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
        else:
            mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 904] = return_data.size
            mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 936 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _629 = mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 936]
            require mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 936] <= 4294967296
            require mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 936] + 64 <= return_data.size + 32
            require mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 936] + 936] <= 4294967296 and mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 936] + (32 * mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 936] + 936]) + 64 <= return_data.size + 32
            mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + ceil32(return_data.size) + 905] = mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + 936] + 936]
            mem[64] = (32 * mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + _629 + 936]) + (64 * arg4.length) + (32 * _295) + (64 * arg3.length) + ceil32(return_data.size) + 937
            if not delegate.return_code:
                revert with 0, 'SWAP_EXTERNAL_FAILED'
            if mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + ceil32(return_data.size) + 905] <= 0:
                revert with 0, 'SWAP_EXTERNAL_FAILED'
            require mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + ceil32(return_data.size) + 905] - 1 < mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + ceil32(return_data.size) + 905]
            if mem[(32 * mem[(64 * arg4.length) + (32 * _295) + (64 * arg3.length) + ceil32(return_data.size) + 905] - 1) + (64 * arg4.length) + (32 * _295) + (64 * arg3.length) + ceil32(return_data.size) + 937] < arg6:
                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
    else:
        mem[(64 * arg3.length) + (32 * arg4.length) + 516] = return_data.size
        mem[(64 * arg3.length) + (32 * arg4.length) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _291 = mem[(64 * arg3.length) + (32 * arg4.length) + 548]
        require mem[(64 * arg3.length) + (32 * arg4.length) + 548] <= 4294967296
        require mem[(64 * arg3.length) + (32 * arg4.length) + 548] + 64 <= return_data.size + 32
        require mem[(64 * arg3.length) + (32 * arg4.length) + mem[(64 * arg3.length) + (32 * arg4.length) + 548] + 548] <= 4294967296 and mem[(64 * arg3.length) + (32 * arg4.length) + 548] + (32 * mem[(64 * arg3.length) + (32 * arg4.length) + mem[(64 * arg3.length) + (32 * arg4.length) + 548] + 548]) + 64 <= return_data.size + 32
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 517] = mem[(64 * arg3.length) + (32 * arg4.length) + mem[(64 * arg3.length) + (32 * arg4.length) + 548] + 548]
        _296 = mem[(64 * arg3.length) + (32 * arg4.length) + _291 + 548]
        mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 549 len floor32(mem[(64 * arg3.length) + (32 * arg4.length) + _291 + 548])] = mem[(64 * arg3.length) + (32 * arg4.length) + _291 + 580 len floor32(mem[(64 * arg3.length) + (32 * arg4.length) + _291 + 548])]
        mem[64] = (32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 549
        if not ext_call.success:
            revert with 0, 'SWAP_EXTERNAL_FAILED'
        if mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 517] <= 0:
            revert with 0, 'SWAP_EXTERNAL_FAILED'
        require mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 517] - 1 < mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 517]
        _437 = mem[(32 * mem[(64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 517] - 1) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 549]
        mem[0] = arg2
        mem[32] = 1
        mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 549] = 67
        mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 581 len 67] = 0x29737761704578616374546f6b656e73466f72546f6b656e732875696e743235362c75696e743235362c616464726573735b5d2c616464726573732c75696e74323536
        mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 713] = _437
        mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 745] = 0
        mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 809] = msg.sender
        mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 841] = block.timestamp + 300
        mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 777] = 160
        mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 873] = arg4.length
        mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 905 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
        mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 677] = (32 * arg4.length) + 196
        mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 713 len 28] = Mask(224, 32, _437) >> 32
        mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 709 len 4] = Mask(32, 224, sha3(0x29737761704578616374546f6b656e73466f72546f6b656e732875696e743235362c75696e743235362c616464726573735b5d2c616464726573732c75696e74323536)) >> 224
        mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 905 len floor32((32 * arg4.length) + 196)] = Mask(32, 224, sha3(0x29737761704578616374546f6b656e73466f72546f6b656e732875696e743235362c75696e743235362c616464726573735b5d2c616464726573732c75696e74323536)) >> 224, _437, 0, 160, msg.sender, block.timestamp + 300, mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 873 len floor32((32 * arg4.length) + 196) - 164]
        mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + floor32((32 * arg4.length) + 196) + -((32 * arg4.length) + 196 % 32) + 937 len (32 * arg4.length) + 196 % 32] = mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + -((32 * arg4.length) + 196 % 32) + floor32((32 * arg4.length) + 196) + 741 len (32 * arg4.length) + 196 % 32]
        delegate stor1[address(arg2)] with:
           funct (Mask(32, 224, Mask(32, 224, sha3(0x29737761704578616374546f6b656e73466f72546f6b656e732875696e743235362c75696e743235362c616464726573735b5d2c616464726573732c75696e74323536)) >> 224, _437, 0, 160, msg.sender, block.timestamp + 300, mem[(32 * _296) + (64 * arg3.length) + (32 * arg4.length) + ceil32(return_data.size) + 873 len floor32((32 * arg4.length) + 196) - 164]) >> 224)
             gas gas_remaining wei
            args mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 909 len (32 * arg4.length) + 192]
        if not return_data.size:
            require arg3.length >= 32
            require mem[128] <= 4294967296
            require mem[128] + 160 <= arg3.length + 128
            require mem[mem[128] + 128] <= 4294967296 and mem[128] + (32 * mem[mem[128] + 128]) + 160 <= arg3.length + 128
            mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 905] = mem[mem[128] + 128]
            mem[64] = (32 * mem[mem[128] + 128]) + (64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 937
            if not delegate.return_code:
                revert with 0, 'SWAP_EXTERNAL_FAILED'
            if mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 905] <= 0:
                revert with 0, 'SWAP_EXTERNAL_FAILED'
            require mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 905] - 1 < mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 905]
            if mem[(32 * mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 905] - 1) + (64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 937] < arg6:
                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
        else:
            mem[64] = (64 * arg4.length) + (32 * _296) + (64 * arg3.length) + (2 * ceil32(return_data.size)) + 906
            mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 905] = return_data.size
            mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 937 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _633 = mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 937]
            require mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 937] <= 4294967296
            require mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 937] + 64 <= return_data.size + 32
            require mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 937] + 937] <= 4294967296 and mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 937] + (32 * mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 937] + 937]) + 64 <= return_data.size + 32
            mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + (2 * ceil32(return_data.size)) + 906] = mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + 937] + 937]
            mem[64] = (32 * mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + ceil32(return_data.size) + _633 + 937]) + (64 * arg4.length) + (32 * _296) + (64 * arg3.length) + (2 * ceil32(return_data.size)) + 938
            if not delegate.return_code:
                revert with 0, 'SWAP_EXTERNAL_FAILED'
            if mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + (2 * ceil32(return_data.size)) + 906] <= 0:
                revert with 0, 'SWAP_EXTERNAL_FAILED'
            require mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + (2 * ceil32(return_data.size)) + 906] - 1 < mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + (2 * ceil32(return_data.size)) + 906]
            if mem[(32 * mem[(64 * arg4.length) + (32 * _296) + (64 * arg3.length) + (2 * ceil32(return_data.size)) + 906] - 1) + (64 * arg4.length) + (32 * _296) + (64 * arg3.length) + (2 * ceil32(return_data.size)) + 938] < arg6:
                revert with 0, 'INSUFFICIENT_OUTPUT_AMOUNT'
}



}
