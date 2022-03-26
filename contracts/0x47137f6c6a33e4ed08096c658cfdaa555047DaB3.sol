contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor4;
address stor6;
uint256 stor7; offset 32
uint256 stor7;
array of uint256 stor8;
uint256 stor9;

function destroy() {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function withdrawFunds(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_64487588(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    mem[96] = 2
    mem[128] = stor1
    mem[160] = arg1
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = 1
    mem[260] = this.address
    mem[292] = stor9 + block.timestamp
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(stor4)
    call stor4.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 1, Array(len=2, data=mem[356 len 64]), this.address, stor9 + block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _63 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= 4294967296
    require mem[192 len 4], 0 + 32 <= return_data.size
    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    _66 = mem[_63 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_63 + 192])] = mem[_63 + 224 len floor32(mem[_63 + 192])]
    stor8.length = mem[ceil32(return_data.size) + 192]
    if not mem[ceil32(return_data.size) + 192]:
        idx = 0
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
        require 1 < stor8.length
        mem[0] = 8
        uint256(stor7.field_0) = uint256(stor8.field_256)
        mem[(32 * _66) + ceil32(return_data.size) + 224] = 2
        mem[(32 * _66) + ceil32(return_data.size) + 256] = arg1
        mem[(32 * _66) + ceil32(return_data.size) + 288] = stor1
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor6, uint256(stor7.field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _66) + ceil32(return_data.size) + 320] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
        mem[(32 * _66) + ceil32(return_data.size) + 324] = uint256(stor7.field_0)
        mem[(32 * _66) + ceil32(return_data.size) + 356] = 1
        mem[(32 * _66) + ceil32(return_data.size) + 420] = msg.sender
        mem[(32 * _66) + ceil32(return_data.size) + 452] = stor9 + block.timestamp
        mem[(32 * _66) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _66) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _66) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(stor6)
        call stor6.0x5d616c5b with:
             gas gas_remaining wei
            args uint256(stor7.field_0), 1, Array(len=2, data=mem[(32 * _66) + ceil32(return_data.size) + 516 len 64]), msg.sender, stor9 + block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _66) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _66) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _205 = mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32)
        require mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) <= 4294967296
        require mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 32 <= return_data.size
        require mem[(32 * _66) + ceil32(return_data.size) + mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 320] <= 4294967296 and mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + (32 * mem[(32 * _66) + ceil32(return_data.size) + mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 320]) + 32 <= return_data.size
        mem[(32 * _66) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _66) + ceil32(return_data.size) + mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 320]
        mem[(32 * _66) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _66) + ceil32(return_data.size) + _205 + 320])] = mem[(32 * _66) + ceil32(return_data.size) + _205 + 352 len floor32(mem[(32 * _66) + ceil32(return_data.size) + _205 + 320])]
    else:
        s = 0
        idx = ceil32(return_data.size) + 224
        while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 192]) + 224 > idx:
            stor8[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + 192]) + 31) >> 5
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
        require 1 < stor8.length
        mem[0] = 8
        uint256(stor7.field_0) = uint256(stor8.field_256)
        mem[(32 * _66) + ceil32(return_data.size) + 224] = 2
        mem[(32 * _66) + ceil32(return_data.size) + 256] = arg1
        mem[(32 * _66) + ceil32(return_data.size) + 288] = stor1
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor6, uint256(stor7.field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _66) + ceil32(return_data.size) + 320] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
        mem[(32 * _66) + ceil32(return_data.size) + 324] = uint256(stor7.field_0)
        mem[(32 * _66) + ceil32(return_data.size) + 356] = 1
        mem[(32 * _66) + ceil32(return_data.size) + 420] = msg.sender
        mem[(32 * _66) + ceil32(return_data.size) + 452] = stor9 + block.timestamp
        mem[(32 * _66) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _66) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _66) + ceil32(return_data.size) + 516 len 0] = None
        require ext_code.size(stor6)
        call stor6.0x5d616c5b with:
             gas gas_remaining wei
            args uint256(stor7.field_0), 1, Array(len=2, data=mem[(32 * _66) + ceil32(return_data.size) + 516 len 64]), msg.sender, stor9 + block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _66) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _66) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _240 = mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32)
        require mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) <= 4294967296
        require mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 32 <= return_data.size
        require mem[(32 * _66) + ceil32(return_data.size) + mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 320] <= 4294967296 and mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + (32 * mem[(32 * _66) + ceil32(return_data.size) + mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 320]) + 32 <= return_data.size
        mem[(32 * _66) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _66) + ceil32(return_data.size) + mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 320]
        mem[(32 * _66) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _66) + ceil32(return_data.size) + _240 + 320])] = mem[(32 * _66) + ceil32(return_data.size) + _240 + 352 len floor32(mem[(32 * _66) + ceil32(return_data.size) + _240 + 320])]
    stor8.length = mem[(32 * _66) + (2 * ceil32(return_data.size)) + 320]
    if not mem[(32 * _66) + (2 * ceil32(return_data.size)) + 320]:
        idx = 0
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * _66) + (2 * ceil32(return_data.size)) + 352
        while (32 * _66) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * _66) + (2 * ceil32(return_data.size)) + 320]) + 352 > idx:
            stor8[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[(32 * _66) + (2 * ceil32(return_data.size)) + 320]) + 31) >> 5
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_c8dd0494(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    mem[96] = 2
    mem[128] = stor1
    mem[160] = arg1
    mem[192] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
    mem[196] = 1
    mem[260] = this.address
    mem[292] = stor9 + block.timestamp
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(stor6)
    call stor6.0x9cf68911 with:
       value msg.value wei
         gas gas_remaining wei
        args 1, Array(len=2, data=mem[356 len 64]), this.address, stor9 + block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _85 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= 4294967296
    require mem[192 len 4], 0 + 32 <= return_data.size
    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    _88 = mem[_85 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_85 + 192])] = mem[_85 + 224 len floor32(mem[_85 + 192])]
    stor8.length = mem[ceil32(return_data.size) + 192]
    if not mem[ceil32(return_data.size) + 192]:
        idx = 0
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
        require 1 < stor8.length
        uint256(stor7.field_0) = uint256(stor8.field_256)
        mem[(32 * _88) + ceil32(return_data.size) + 224] = 2
        mem[(32 * _88) + ceil32(return_data.size) + 256] = arg1
        mem[(32 * _88) + ceil32(return_data.size) + 288] = stor1
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor4, uint256(stor7.field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _88) + ceil32(return_data.size) + 320] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _88) + ceil32(return_data.size) + 324] = uint256(stor7.field_0)
        mem[(32 * _88) + ceil32(return_data.size) + 356] = 0
        mem[(32 * _88) + ceil32(return_data.size) + 420] = msg.sender
        mem[(32 * _88) + ceil32(return_data.size) + 452] = stor9 + block.timestamp
        mem[(32 * _88) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _88) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _88) + ceil32(return_data.size) + 516] = arg1
        mem[(32 * _88) + ceil32(return_data.size) + 548] = stor1
        require ext_code.size(stor4)
        call stor4.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args uint256(stor7.field_0), 0, 160, msg.sender, stor9 + block.timestamp, 2, address(arg1), stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _88) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _88) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _296 = mem[(32 * _88) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32)
        require mem[(32 * _88) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) <= 4294967296
        require mem[(32 * _88) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 32 <= return_data.size
        require mem[(32 * _88) + ceil32(return_data.size) + mem[(32 * _88) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 320] <= 4294967296 and mem[(32 * _88) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + (32 * mem[(32 * _88) + ceil32(return_data.size) + mem[(32 * _88) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 320]) + 32 <= return_data.size
        mem[(32 * _88) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _88) + ceil32(return_data.size) + mem[(32 * _88) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 320]
        _304 = mem[(32 * _88) + ceil32(return_data.size) + _296 + 320]
        mem[(32 * _88) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _88) + ceil32(return_data.size) + _296 + 320])] = mem[(32 * _88) + ceil32(return_data.size) + _296 + 352 len floor32(mem[(32 * _88) + ceil32(return_data.size) + _296 + 320])]
        mem[64] = (32 * _304) + (32 * _88) + (2 * ceil32(return_data.size)) + 352
    else:
        s = 0
        idx = ceil32(return_data.size) + 224
        while ceil32(return_data.size) + (32 * mem[ceil32(return_data.size) + 192]) + 224 > idx:
            stor8[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[ceil32(return_data.size) + 192]) + 31) >> 5
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
        require 1 < stor8.length
        uint256(stor7.field_0) = uint256(stor8.field_256)
        mem[(32 * _88) + ceil32(return_data.size) + 224] = 2
        mem[(32 * _88) + ceil32(return_data.size) + 256] = arg1
        mem[(32 * _88) + ceil32(return_data.size) + 288] = stor1
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor4, uint256(stor7.field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * _88) + ceil32(return_data.size) + 320] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _88) + ceil32(return_data.size) + 324] = uint256(stor7.field_0)
        mem[(32 * _88) + ceil32(return_data.size) + 356] = 0
        mem[(32 * _88) + ceil32(return_data.size) + 420] = msg.sender
        mem[(32 * _88) + ceil32(return_data.size) + 452] = stor9 + block.timestamp
        mem[(32 * _88) + ceil32(return_data.size) + 388] = 160
        mem[(32 * _88) + ceil32(return_data.size) + 484] = 2
        mem[(32 * _88) + ceil32(return_data.size) + 516] = arg1
        mem[(32 * _88) + ceil32(return_data.size) + 548] = stor1
        require ext_code.size(stor4)
        call stor4.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args uint256(stor7.field_0), 0, 160, msg.sender, stor9 + block.timestamp, 2, address(arg1), stor1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _88) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _88) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _347 = mem[(32 * _88) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32)
        require mem[(32 * _88) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) <= 4294967296
        require mem[(32 * _88) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 32 <= return_data.size
        require mem[(32 * _88) + ceil32(return_data.size) + mem[(32 * _88) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 320] <= 4294967296 and mem[(32 * _88) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + (32 * mem[(32 * _88) + ceil32(return_data.size) + mem[(32 * _88) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 320]) + 32 <= return_data.size
        mem[(32 * _88) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _88) + ceil32(return_data.size) + mem[(32 * _88) + ceil32(return_data.size) + 320 len 4], Mask(224, 0, stor7.field_32) + 320]
        _352 = mem[(32 * _88) + ceil32(return_data.size) + _347 + 320]
        mem[(32 * _88) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _88) + ceil32(return_data.size) + _347 + 320])] = mem[(32 * _88) + ceil32(return_data.size) + _347 + 352 len floor32(mem[(32 * _88) + ceil32(return_data.size) + _347 + 320])]
        mem[64] = (32 * _352) + (32 * _88) + (2 * ceil32(return_data.size)) + 352
    stor8.length = mem[(32 * _88) + (2 * ceil32(return_data.size)) + 320]
    mem[0] = 8
    if not mem[(32 * _88) + (2 * ceil32(return_data.size)) + 320]:
        idx = 0
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * _88) + (2 * ceil32(return_data.size)) + 352
        while (32 * _88) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * _88) + (2 * ceil32(return_data.size)) + 320]) + 352 > idx:
            stor8[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[(32 * _88) + (2 * ceil32(return_data.size)) + 320]) + 31) >> 5
        while stor8.length > idx:
            stor8[idx].field_0 = 0
            idx = idx + 1
            continue 
}



}
