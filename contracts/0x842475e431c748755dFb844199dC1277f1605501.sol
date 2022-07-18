contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of address sub_6ce30f91;

function sub_6ce30f91(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_6ce30f91.length
    return sub_6ce30f91[arg1]
}

function _fallback() payable {
    revert
}

function enable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(arg1)].field_0:
        revert with 0, 'No trade for this token yet'
    stor0[address(arg1)].field_8 = 1
}

function disable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[address(arg1)].field_0:
        revert with 0, 'No trade for this token yet'
    stor0[address(arg1)].field_8 = 0
}

function sub_a9f752e5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[arg1].field_0), 
           bool(stor0[arg1].field_8),
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           bool(stor0[arg1].field_1280)
}

function sub_1e5842d9(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not stor0[address(arg1)].field_0:
        revert with 0, 'No trade for this token yet'
    stor0[address(arg1)].field_256 = arg2
    stor0[address(arg1)].field_512 = arg3
    stor0[address(arg1)].field_768 = arg4
    stor0[address(arg1)].field_1024 = arg5
}

function sub_df7ac08a(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if stor0[address(arg1)].field_0:
        revert with 0, 'Trade exists already'
    sub_6ce30f91.length++
    sub_6ce30f91[sub_6ce30f91.length] = address(arg1)
    stor0[address(arg1)].field_0 = 1
    stor0[address(arg1)].field_8 = 1
    stor0[address(arg1)].field_256 = arg2
    stor0[address(arg1)].field_512 = arg3
    stor0[address(arg1)].field_768 = arg4
    stor0[address(arg1)].field_1024 = arg5
    stor0[address(arg1)].field_1280 = 0
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > arg2:
        revert with 0, 'Amount exceeds funds'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'Amount exceeds funds'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getBalances() payable {
    if sub_6ce30f91.length > -3:
        revert with 'NH{q', 17
    if sub_6ce30f91.length + 2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_6ce30f91.length + 2
    mem[64] = (32 * sub_6ce30f91.length + 2) + 128
    if not sub_6ce30f91.length + 2:
        idx = 0
        while idx < sub_6ce30f91.length:
            mem[0] = 1
            _57 = mem[64]
            mem[64] = mem[64] + 64
            mem[_57] = sub_6ce30f91[idx]
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_6ce30f91[idx])
            staticcall sub_6ce30f91[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_67] == mem[_67]
            mem[_57 + 32] = mem[_67]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _57
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _53 = mem[64]
        mem[64] = mem[64] + 64
        mem[_53] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
        staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _66 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_66] == mem[_66]
        mem[_53 + 32] = mem[_66]
        if sub_6ce30f91.length >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * sub_6ce30f91.length) + 128] = _53
        _77 = mem[64]
        mem[64] = mem[64] + 64
        mem[_77] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
        staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _85 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_85] == mem[_85]
        mem[_77 + 32] = mem[_85]
        if sub_6ce30f91.length > -2:
            revert with 'NH{q', 17
        if sub_6ce30f91.length + 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * sub_6ce30f91.length + 1) + 128] = _77
        _91 = mem[64]
        mem[mem[64]] = 32
        _92 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _92:
            _105 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_105 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _91 + (64 * _92) + -mem[64] + 64
    mem[64] = (32 * sub_6ce30f91.length + 2) + 192
    mem[(32 * sub_6ce30f91.length + 2) + 128] = 0
    mem[(32 * sub_6ce30f91.length + 2) + 160] = 0
    mem[var15001] = (32 * sub_6ce30f91.length + 2) + 128
    s = var15001
    idx = var15002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * sub_6ce30f91.length + 2) + 128] = 0
        mem[(32 * sub_6ce30f91.length + 2) + 160] = 0
        mem[s + 32] = (32 * sub_6ce30f91.length + 2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < sub_6ce30f91.length:
        mem[0] = 1
        _137 = mem[64]
        mem[64] = mem[64] + 64
        mem[_137] = sub_6ce30f91[idx]
        mem[mem[64] + 4] = this.address
        require ext_code.size(sub_6ce30f91[idx])
        staticcall sub_6ce30f91[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _142 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_142] == mem[_142]
        mem[_137 + 32] = mem[_142]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _137
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _134 = mem[64]
    mem[64] = mem[64] + 64
    mem[_134] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
    staticcall 0xe9e7cea3dedca5984780bafc599bd69add087d56.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _141 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_141] == mem[_141]
    mem[_134 + 32] = mem[_141]
    if sub_6ce30f91.length >= mem[96]:
        revert with 'NH{q', 50
    mem[(32 * sub_6ce30f91.length) + 128] = _134
    _146 = mem[64]
    mem[64] = mem[64] + 64
    mem[_146] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _150 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_150] == mem[_150]
    mem[_146 + 32] = mem[_150]
    if sub_6ce30f91.length > -2:
        revert with 'NH{q', 17
    if sub_6ce30f91.length + 1 >= mem[96]:
        revert with 'NH{q', 50
    mem[(32 * sub_6ce30f91.length + 1) + 128] = _146
    _153 = mem[64]
    mem[mem[64]] = 32
    _154 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _154:
        _159 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_159 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _153 + (64 * _154) + -mem[64] + 64
}

function buy(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[128] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
    if arg2 == 0xe9e7cea3dedca5984780bafc599bd69add087d56:
        mem[160] = arg1
        mem[196] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
        mem[228] = arg3
        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
        call 0xe9e7cea3dedca5984780bafc599bd69add087d56.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, arg3
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg3
        mem[ceil32(return_data.size) + 228] = arg4
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = block.timestamp
        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _63 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _66 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require _63 + (32 * _66) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _63 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _66:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            mem[192] = arg1
            mem[228] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[260] = arg3
            require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
            call 0xe9e7cea3dedca5984780bafc599bd69add087d56.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, arg3
            mem[224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 228] = arg3
            mem[ceil32(return_data.size) + 260] = arg4
            mem[ceil32(return_data.size) + 292] = 160
            mem[ceil32(return_data.size) + 388] = 3
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 324] = this.address
            mem[ceil32(return_data.size) + 356] = block.timestamp
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _62 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
            _65 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require _62 + (32 * _65) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _62 + 256
            t = (2 * ceil32(return_data.size)) + 256
            while idx < _65:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[192] = arg2
            mem[224] = arg1
            mem[260] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[292] = arg3
            require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
            call 0xe9e7cea3dedca5984780bafc599bd69add087d56.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, arg3
            mem[256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 260] = arg3
            mem[ceil32(return_data.size) + 292] = arg4
            mem[ceil32(return_data.size) + 324] = 160
            mem[ceil32(return_data.size) + 420] = 4
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 452
            while idx < 4:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 356] = this.address
            mem[ceil32(return_data.size) + 388] = block.timestamp
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=4, data=mem[ceil32(return_data.size) + 452 len 128]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _61 = mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 287 < ceil32(return_data.size) + return_data.size + 256
            _64 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257
            mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            require _61 + (32 * _64) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _61 + 288
            t = (2 * ceil32(return_data.size)) + 288
            while idx < _64:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
}

function sell(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    mem[128] = arg1
    if arg2 == 0xe9e7cea3dedca5984780bafc599bd69add087d56:
        mem[160] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
        mem[196] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
        mem[228] = arg3
        require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
        call 0xe9e7cea3dedca5984780bafc599bd69add087d56.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x10ed43c718714eb63d5aa57b78b54704e256024e, arg3
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg3
        mem[ceil32(return_data.size) + 228] = arg4
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = block.timestamp
        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[ceil32(return_data.size) + 388 len 64]), address(this.address), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _63 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _66 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0:
            revert with 'NH{q', 65
        mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        require _63 + (32 * _66) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _63 + 224
        t = (2 * ceil32(return_data.size)) + 224
        while idx < _66:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        if arg2 == 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c:
            mem[160] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[192] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
            mem[228] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[260] = arg3
            require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
            call 0xe9e7cea3dedca5984780bafc599bd69add087d56.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, arg3
            mem[224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 228] = arg3
            mem[ceil32(return_data.size) + 260] = arg4
            mem[ceil32(return_data.size) + 292] = 160
            mem[ceil32(return_data.size) + 388] = 3
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 420
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 324] = this.address
            mem[ceil32(return_data.size) + 356] = block.timestamp
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=3, data=mem[ceil32(return_data.size) + 420 len 96]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _62 = mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255 < ceil32(return_data.size) + return_data.size + 224
            _65 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 225
            mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require _62 + (32 * _65) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _62 + 256
            t = (2 * ceil32(return_data.size)) + 256
            while idx < _65:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[160] = arg2
            mem[192] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[224] = 0xe9e7cea3dedca5984780bafc599bd69add087d56
            mem[260] = 0x10ed43c718714eb63d5aa57b78b54704e256024e
            mem[292] = arg3
            require ext_code.size(0xe9e7cea3dedca5984780bafc599bd69add087d56)
            call 0xe9e7cea3dedca5984780bafc599bd69add087d56.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x10ed43c718714eb63d5aa57b78b54704e256024e, arg3
            mem[256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 260] = arg3
            mem[ceil32(return_data.size) + 292] = arg4
            mem[ceil32(return_data.size) + 324] = 160
            mem[ceil32(return_data.size) + 420] = 4
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 452
            while idx < 4:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 356] = this.address
            mem[ceil32(return_data.size) + 388] = block.timestamp
            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=4, data=mem[ceil32(return_data.size) + 452 len 128]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 256
            require return_data.size >= 32
            _61 = mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 287 < ceil32(return_data.size) + return_data.size + 256
            _64 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256] > test266151307():
                revert with 'NH{q', 65
            if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]) + 257
            mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg3) >> 32 + 256]
            require _61 + (32 * _64) + 32 <= return_data.size
            idx = 0
            s = ceil32(return_data.size) + _61 + 288
            t = (2 * ceil32(return_data.size)) + 288
            while idx < _64:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
}



}
