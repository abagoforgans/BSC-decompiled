contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_4d307dcf(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_7312f005(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function borrowToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.borrow(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function supplyErc20ToCompound(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0xa0712d68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawFunds(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args 0x1b26c4beaeca43c91dee71f7ad319351b46e4ed1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function redeemCErc20Tokens(uint256 arg1, bool arg2, address arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg3)
    if arg2 != 1:
        call arg3.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args arg1
    else:
        call arg3.redeem(uint256 rg1) with:
             gas gas_remaining wei
            args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'redeemResult error'
    return 1
}

function sub_6b1d4b77(?) {
    require calldata.size - 4 >= 192
    mem[96 len 160] = call.data[36 len 160]
    mem[256] = 0
    idx = 0
    while idx < 5:
        _14 = mem[(32 * idx) + 96]
        mem[260] = mem[(32 * idx) + 96]
        require ext_code.size(arg1)
        call arg1.borrow(uint256 rg1) with:
             gas gas_remaining wei
            args _14
        mem[256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < 5
        _19 = mem[(32 * idx) + 96]
        mem[260] = mem[(32 * idx) + 96]
        require ext_code.size(arg1)
        call arg1.0xa0712d68 with:
             gas gas_remaining wei
            args _19
        mem[256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function sub_e173e3c0(?) {
    require calldata.size - 4 >= 192
    mem[96 len 160] = call.data[36 len 160]
    mem[256] = 0
    idx = 0
    while idx < 5:
        _14 = mem[(32 * idx) + 96]
        mem[260] = mem[(32 * idx) + 96]
        require ext_code.size(arg1)
        call arg1.redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args _14
        mem[256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < 5
        _21 = mem[(32 * idx) + 96]
        mem[260] = mem[(32 * idx) + 96]
        require ext_code.size(arg1)
        call arg1.repayBorrow(uint256 rg1) with:
             gas gas_remaining wei
            args _21
        mem[256] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    call arg1.repayBorrow(uint256 rg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_3b34987f(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg3)
    call arg3.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = arg2
    mem[160] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[164] = 32
    mem[196] = 1
    mem[228 len 0] = None
    require ext_code.size(arg1)
    call arg1.enterMarkets(address[] rg1) with:
         gas gas_remaining wei
        args Array(len=1, data=mem[228])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    _27 = mem[160 len 4], 0
    require mem[160 len 4], 0 <= 4294967296
    require mem[160 len 4], 0 + 32 <= return_data.size
    require mem[mem[160 len 4], 0 + 160] <= 4294967296 and mem[160 len 4], 0 + (32 * mem[mem[160 len 4], 0 + 160]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 160] = mem[mem[160 len 4], 0 + 160]
    mem[ceil32(return_data.size) + 192 len floor32(mem[_27 + 160])] = mem[_27 + 192 len floor32(mem[_27 + 160])]
    require 0 < mem[ceil32(return_data.size) + 160]
    if mem[ceil32(return_data.size) + 192]:
        revert with 0, 'Comptroller.enterMarkets failed.'
    else:
        return 0
}



}
