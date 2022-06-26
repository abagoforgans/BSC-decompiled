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

function sub_d2d31313(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You are not the owner'
    stor1 = arg1
}

function sub_dfe3d537(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You are not the owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'You are not the owner'
    require ext_code.size(arg1)
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

function withdrawReward() payable {
    if owner != msg.sender:
        revert with 0, 'You are not the owner'
    require ext_code.size(stor2)
    call stor2.takerWithdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        revert with 0, 'You are not the owner'
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor4)
    call stor4.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transfer(address arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'You are not the owner'
    if not arg1:
        revert with 0, 'Need set base token'
    mem[(32 * arg2.length) + (32 * arg3.length) + 192] = arg1
    mem[(32 * arg2.length) + (32 * arg3.length) + 224] = 96
    mem[(32 * arg2.length) + (32 * arg3.length) + 288] = arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 320 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(32 * arg2.length) + (32 * arg3.length) + 256] = (32 * arg2.length) + 128
    mem[(64 * arg2.length) + (32 * arg3.length) + 320] = arg3.length
    mem[(64 * arg2.length) + (32 * arg3.length) + 352 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(64 * arg3.length) + (64 * arg2.length) + 352] = 0x4a248d2a00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    staticcall stor1._BASE_TOKEN_() with:
            gas gas_remaining wei
           args mem[(64 * arg3.length) + (64 * arg2.length) + 356 len 127 * arg2.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(64 * arg3.length) + (64 * arg2.length) + 356] = stor1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args mem[(64 * arg3.length) + (64 * arg2.length) + 356 len (127 * arg3.length) + (95 * arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(64 * arg3.length) + (64 * arg2.length) + 352] = 0xd0a494e400000000000000000000000000000000000000000000000000000000
    if address(ext_call.return_data[0]) != arg1:
        mem[(64 * arg3.length) + (64 * arg2.length) + 356] = 0
        mem[(64 * arg3.length) + (64 * arg2.length) + 388] = ext_call.return_data[0]
    else:
        mem[(64 * arg3.length) + (64 * arg2.length) + 356] = ext_call.return_data[0]
        mem[(64 * arg3.length) + (64 * arg2.length) + 388] = 0
    mem[(64 * arg3.length) + (64 * arg2.length) + 420] = this.address
    mem[(64 * arg3.length) + (64 * arg2.length) + 452] = 128
    mem[(64 * arg3.length) + (64 * arg2.length) + 484] = (32 * arg3.length) + (32 * arg2.length) + 160
    mem[(64 * arg3.length) + (64 * arg2.length) + 516 len floor32((32 * arg3.length) + (32 * arg2.length) + 31) + 5] = mem[(32 * arg2.length) + (32 * arg3.length) + 192 len floor32((32 * arg3.length) + (32 * arg2.length) + 31) + 5]
    if not (32 * arg3.length) + (32 * arg2.length) + 160 % 32:
        require ext_code.size(stor1)
        call stor1.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[(64 * arg3.length) + (64 * arg2.length) + 356 len (32 * arg3.length) + (160 * arg2.length) + 320]
    else:
        mem[floor32((32 * arg3.length) + (32 * arg2.length) + 160) + (64 * arg3.length) + (64 * arg2.length) + 516] = mem[floor32((32 * arg3.length) + (32 * arg2.length) + 160) + (64 * arg3.length) + (64 * arg2.length) + -((32 * arg3.length) + (32 * arg2.length) + 160 % 32) + 548 len (32 * arg3.length) + (32 * arg2.length) + 160 % 32]
        require ext_code.size(stor1)
        call stor1.flashLoan(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[(64 * arg3.length) + (64 * arg2.length) + 356 len floor32((32 * arg3.length) + (32 * arg2.length) + 160) + (127 * arg2.length) + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if owner != msg.sender:
        mem[(64 * arg3.length) + (64 * arg2.length) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(64 * arg3.length) + (64 * arg2.length) + 356] = 32
        mem[(64 * arg3.length) + (64 * arg2.length) + 388] = 21
        mem[(64 * arg3.length) + (64 * arg2.length) + 420] = 'You are not the owner'
        revert with memory
          from (64 * arg3.length) + (64 * arg2.length) + 352
           len (127 * arg2.length) + 100
    mem[(64 * arg3.length) + (64 * arg2.length) + 356] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args mem[(64 * arg3.length) + (64 * arg2.length) + 356 len (127 * arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(64 * arg3.length) + (64 * arg2.length) + 356] = owner
    mem[(64 * arg3.length) + (64 * arg2.length) + 388] = ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args mem[(64 * arg3.length) + (64 * arg2.length) + 356 len (127 * arg2.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function DVMFlashLoanCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 96
    require cd[(arg4 + 68)] <= 4294967296
    require cd[(arg4 + 68)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= 4294967296 and cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    mem[128 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]]
    require cd[(arg4 + 100)] <= 4294967296
    require cd[(arg4 + 100)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 100)] + 36)] <= 4294967296 and cd[(arg4 + 100)] + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 68 <= arg4.length + 36
    mem[64] = (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160
    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len 32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]]
    if arg1 != this.address:
        revert with 0, 'HANDLE_FLASH_NENIED'
    if stor1 != msg.sender:
        revert with 0, 'HANDLE_FLASH_NENIED'
    require ext_code.size(address(cd[(arg4 + 36)]))
    staticcall address(cd[(arg4 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 224] = 24
    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 256] = 'Amount base token borrow'
    emit Log(Array(len=24, data='Amount base token borrow'), ext_call.return_data[0]);
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 164] = stor3
    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 196] = -1
    require ext_code.size(stor4)
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, -1
    mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 100)] + 36)]) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require idx < mem[96]
        _93 = mem[(32 * idx) + 128]
        require idx < mem[(32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128]
        _95 = mem[(32 * idx) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160]
        require mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 4] = stor3
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_93))
        call address(_93).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _110 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_110]
        mem[_110 + 32] = address(cd[(arg4 + 36)])
        require 1 < mem[_110]
        mem[_110 + 64] = address(_93)
        mem[_110 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[_110 + 100] = _95
        mem[_110 + 132] = 0
        mem[_110 + 196] = this.address
        mem[_110 + 228] = block.timestamp + 1000
        mem[_110 + 164] = 160
        mem[_110 + 260] = mem[_110]
        s = 0
        while s < 32 * mem[_110]:
            mem[_110 + s + 292] = mem[_110 + s + 32]
            s = s + 32
            continue 
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _95, 0, 160, address(this.address), block.timestamp + 1000, mem[_110 + 260 len (32 * mem[_110]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[mem[64]] = 0xb872dd0e00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2)
    call stor2.takerWithdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _157 = mem[96]
    idx = 0
    while idx < _157:
        require idx < mem[96]
        _163 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_163))
        staticcall address(_163).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _174 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_174]
        mem[_174 + 32] = address(_163)
        require 1 < mem[_174]
        mem[_174 + 64] = address(cd[(arg4 + 36)])
        mem[_174 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[_174 + 100] = ext_call.return_data[0]
        mem[_174 + 132] = 0
        mem[_174 + 196] = this.address
        mem[_174 + 228] = block.timestamp + 1000
        mem[_174 + 164] = 160
        mem[_174 + 260] = mem[_174]
        s = 0
        while s < 32 * mem[_174]:
            mem[_174 + s + 292] = mem[_174 + s + 32]
            s = s + 32
            continue 
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1000, mem[_174 + 260 len (32 * mem[_174]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(stor2)
    call stor2.takerWithdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[mem[64] + 32] = ext_call.return_data[0]
    mem[mem[64] + 64] = 19
    mem[mem[64] + 96] = 'Amount reward taken'
    emit Log(Array(len=19, data='Amount reward taken'), ext_call.return_data[0]);
    _175 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_175]
    mem[_175 + 32] = stor4
    require 1 < mem[_175]
    mem[_175 + 64] = address(cd[(arg4 + 36)])
    mem[_175 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_175 + 100] = ext_call.return_data[0]
    mem[_175 + 132] = 0
    mem[_175 + 196] = this.address
    mem[_175 + 228] = block.timestamp + 1000
    mem[_175 + 164] = 160
    mem[_175 + 260] = mem[_175]
    mem[_175 + 292 len floor32(mem[_175])] = mem[_175 + 32 len floor32(mem[_175])]
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1000, mem[_175 + 260 len (32 * mem[_175]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_175 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _175 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[_175 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[_175 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[_175 + 96 len 4], ext_call.return_data[0 len 28] + _175 + 96] <= 4294967296 and mem[_175 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_175 + 96 len 4], ext_call.return_data[0 len 28] + _175 + 96]) + 32 <= return_data.size
    if arg2 > 0:
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args stor1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if arg3 > 0:
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).0xa9059cbb with:
             gas gas_remaining wei
            args stor1, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_7ed1f1dd(?) payable {
    require calldata.size - 4 >= 128
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + ('cd', 100).length + 36 <= calldata.size
    require ('cd', 100).length >= 96
    require ('cd', 100)[1] <= 4294967296
    require ('cd', 100)[1] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[1] + 36)] <= 4294967296 and ('cd', 100)[1] + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[96] = cd[(cd[100] + ('cd', 100)[1] + 36)]
    mem[128 len 32 * cd[(cd[100] + ('cd', 100)[1] + 36)]] = call.data[cd[100] + ('cd', 100)[1] + 68 len 32 * cd[(cd[100] + ('cd', 100)[1] + 36)]]
    require ('cd', 100)[2] <= 4294967296
    require ('cd', 100)[2] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[2] + 36)] <= 4294967296 and ('cd', 100)[2] + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[64] = (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 160
    mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 128] = cd[(cd[100] + ('cd', 100)[2] + 36)]
    mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 160 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]] = call.data[cd[100] + ('cd', 100)[2] + 68 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]]
    if address(cd[4]) != this.address:
        revert with 0, 'HANDLE_FLASH_NENIED'
    if stor1 != msg.sender:
        revert with 0, 'HANDLE_FLASH_NENIED'
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224] = 24
    mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 256] = 'Amount base token borrow'
    emit Log(Array(len=24, data='Amount base token borrow'), ext_call.return_data[0]);
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 164] = stor3
    mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 196] = -1
    require ext_code.size(stor4)
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, -1
    mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < cd[(cd[100] + ('cd', 100)[1] + 36)]:
        require idx < mem[96]
        _93 = mem[(32 * idx) + 128]
        require idx < mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 128]
        _95 = mem[(32 * idx) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 160]
        require mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 4] = stor3
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_93))
        call address(_93).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _110 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_110]
        mem[_110 + 32] = address(('cd', 100)[0])
        require 1 < mem[_110]
        mem[_110 + 64] = address(_93)
        mem[_110 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[_110 + 100] = _95
        mem[_110 + 132] = 0
        mem[_110 + 196] = this.address
        mem[_110 + 228] = block.timestamp + 1000
        mem[_110 + 164] = 160
        mem[_110 + 260] = mem[_110]
        s = 0
        while s < 32 * mem[_110]:
            mem[_110 + s + 292] = mem[_110 + s + 32]
            s = s + 32
            continue 
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _95, 0, 160, address(this.address), block.timestamp + 1000, mem[_110 + 260 len (32 * mem[_110]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[mem[64]] = 0xb872dd0e00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2)
    call stor2.takerWithdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _157 = mem[96]
    idx = 0
    while idx < _157:
        require idx < mem[96]
        _163 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_163))
        staticcall address(_163).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _174 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_174]
        mem[_174 + 32] = address(_163)
        require 1 < mem[_174]
        mem[_174 + 64] = address(('cd', 100)[0])
        mem[_174 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[_174 + 100] = ext_call.return_data[0]
        mem[_174 + 132] = 0
        mem[_174 + 196] = this.address
        mem[_174 + 228] = block.timestamp + 1000
        mem[_174 + 164] = 160
        mem[_174 + 260] = mem[_174]
        s = 0
        while s < 32 * mem[_174]:
            mem[_174 + s + 292] = mem[_174 + s + 32]
            s = s + 32
            continue 
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1000, mem[_174 + 260 len (32 * mem[_174]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(stor2)
    call stor2.takerWithdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[mem[64] + 32] = ext_call.return_data[0]
    mem[mem[64] + 64] = 19
    mem[mem[64] + 96] = 'Amount reward taken'
    emit Log(Array(len=19, data='Amount reward taken'), ext_call.return_data[0]);
    _175 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_175]
    mem[_175 + 32] = stor4
    require 1 < mem[_175]
    mem[_175 + 64] = address(('cd', 100)[0])
    mem[_175 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_175 + 100] = ext_call.return_data[0]
    mem[_175 + 132] = 0
    mem[_175 + 196] = this.address
    mem[_175 + 228] = block.timestamp + 1000
    mem[_175 + 164] = 160
    mem[_175 + 260] = mem[_175]
    mem[_175 + 292 len floor32(mem[_175])] = mem[_175 + 32 len floor32(mem[_175])]
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1000, mem[_175 + 260 len (32 * mem[_175]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_175 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _175 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[_175 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[_175 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[_175 + 96 len 4], ext_call.return_data[0 len 28] + _175 + 96] <= 4294967296 and mem[_175 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_175 + 96 len 4], ext_call.return_data[0 len 28] + _175 + 96]) + 32 <= return_data.size
    if cd[36] > 0:
        require ext_code.size(address(('cd', 100)[0]))
        call address(('cd', 100)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args stor1, cd[36]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if cd[68] > 0:
        require ext_code.size(address(('cd', 100)[0]))
        call address(('cd', 100)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args stor1, cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_d5b99797(?) payable {
    require calldata.size - 4 >= 128
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + ('cd', 100).length + 36 <= calldata.size
    require ('cd', 100).length >= 96
    require ('cd', 100)[1] <= 4294967296
    require ('cd', 100)[1] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[1] + 36)] <= 4294967296 and ('cd', 100)[1] + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[96] = cd[(cd[100] + ('cd', 100)[1] + 36)]
    mem[128 len 32 * cd[(cd[100] + ('cd', 100)[1] + 36)]] = call.data[cd[100] + ('cd', 100)[1] + 68 len 32 * cd[(cd[100] + ('cd', 100)[1] + 36)]]
    require ('cd', 100)[2] <= 4294967296
    require ('cd', 100)[2] + 68 <= ('cd', 100).length + 36
    require cd[(cd[100] + ('cd', 100)[2] + 36)] <= 4294967296 and ('cd', 100)[2] + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 68 <= ('cd', 100).length + 36
    mem[64] = (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 160
    mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 128] = cd[(cd[100] + ('cd', 100)[2] + 36)]
    mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 160 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]] = call.data[cd[100] + ('cd', 100)[2] + 68 len 32 * cd[(cd[100] + ('cd', 100)[2] + 36)]]
    if address(cd[4]) != this.address:
        revert with 0, 'HANDLE_FLASH_NENIED'
    if stor1 != msg.sender:
        revert with 0, 'HANDLE_FLASH_NENIED'
    require ext_code.size(address(('cd', 100)[0]))
    staticcall address(('cd', 100)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 224] = 24
    mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 256] = 'Amount base token borrow'
    emit Log(Array(len=24, data='Amount base token borrow'), ext_call.return_data[0]);
    require ext_code.size(address(('cd', 100)[0]))
    call address(('cd', 100)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 164] = stor3
    mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 196] = -1
    require ext_code.size(stor4)
    call stor4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, -1
    mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + (32 * cd[(cd[100] + ('cd', 100)[2] + 36)]) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < cd[(cd[100] + ('cd', 100)[1] + 36)]:
        require idx < mem[96]
        _93 = mem[(32 * idx) + 128]
        require idx < mem[(32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 128]
        _95 = mem[(32 * idx) + (32 * cd[(cd[100] + ('cd', 100)[1] + 36)]) + 160]
        require mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 4] = stor3
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_93))
        call address(_93).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stor3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _110 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_110]
        mem[_110 + 32] = address(('cd', 100)[0])
        require 1 < mem[_110]
        mem[_110 + 64] = address(_93)
        mem[_110 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[_110 + 100] = _95
        mem[_110 + 132] = 0
        mem[_110 + 196] = this.address
        mem[_110 + 228] = block.timestamp + 1000
        mem[_110 + 164] = 160
        mem[_110 + 260] = mem[_110]
        s = 0
        while s < 32 * mem[_110]:
            mem[_110 + s + 292] = mem[_110 + s + 32]
            s = s + 32
            continue 
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args _95, 0, 160, address(this.address), block.timestamp + 1000, mem[_110 + 260 len (32 * mem[_110]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    mem[mem[64]] = 0xb872dd0e00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2)
    call stor2.takerWithdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _157 = mem[96]
    idx = 0
    while idx < _157:
        require idx < mem[96]
        _163 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_163))
        staticcall address(_163).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _174 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        require 0 < mem[_174]
        mem[_174 + 32] = address(_163)
        require 1 < mem[_174]
        mem[_174 + 64] = address(('cd', 100)[0])
        mem[_174 + 96] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[_174 + 100] = ext_call.return_data[0]
        mem[_174 + 132] = 0
        mem[_174 + 196] = this.address
        mem[_174 + 228] = block.timestamp + 1000
        mem[_174 + 164] = 160
        mem[_174 + 260] = mem[_174]
        s = 0
        while s < 32 * mem[_174]:
            mem[_174 + s + 292] = mem[_174 + s + 32]
            s = s + 32
            continue 
        require ext_code.size(stor3)
        call stor3.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1000, mem[_174 + 260 len (32 * mem[_174]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(stor2)
    call stor2.takerWithdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    staticcall stor4.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[mem[64] + 32] = ext_call.return_data[0]
    mem[mem[64] + 64] = 19
    mem[mem[64] + 96] = 'Amount reward taken'
    emit Log(Array(len=19, data='Amount reward taken'), ext_call.return_data[0]);
    _175 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    require 0 < mem[_175]
    mem[_175 + 32] = stor4
    require 1 < mem[_175]
    mem[_175 + 64] = address(('cd', 100)[0])
    mem[_175 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_175 + 100] = ext_call.return_data[0]
    mem[_175 + 132] = 0
    mem[_175 + 196] = this.address
    mem[_175 + 228] = block.timestamp + 1000
    mem[_175 + 164] = 160
    mem[_175 + 260] = mem[_175]
    mem[_175 + 292 len floor32(mem[_175])] = mem[_175 + 32 len floor32(mem[_175])]
    require ext_code.size(stor3)
    call stor3.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1000, mem[_175 + 260 len (32 * mem[_175]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_175 + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _175 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[_175 + 96 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[_175 + 96 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[_175 + 96 len 4], ext_call.return_data[0 len 28] + _175 + 96] <= 4294967296 and mem[_175 + 96 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[_175 + 96 len 4], ext_call.return_data[0 len 28] + _175 + 96]) + 32 <= return_data.size
    if cd[36] > 0:
        require ext_code.size(address(('cd', 100)[0]))
        call address(('cd', 100)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args stor1, cd[36]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    if cd[68] > 0:
        require ext_code.size(address(('cd', 100)[0]))
        call address(('cd', 100)[0]).0xa9059cbb with:
             gas gas_remaining wei
            args stor1, cd[68]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
