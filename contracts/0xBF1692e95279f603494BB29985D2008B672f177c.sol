contract main {




// =====================  Runtime code  =====================


#
#  - sub_937c70dd(?)
#
address stor0;
address wethAddress;

function weth() {
    return wethAddress
}

function _fallback() payable {
    revert
}

function setWETH(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    wethAddress = arg1
}

function drainBalance() payable {
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_89a8f6f9(?) {
    require calldata.size - 4 >= 128
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[160] = arg3
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    mem[260] = this.address
    mem[292] = block.timestamp + 100
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(arg1)
    call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
       value arg4 wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp + 100, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _43 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= 4294967296
    require mem[192 len 4], 0 + 32 <= return_data.size
    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    _46 = mem[_43 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_43 + 192])] = mem[_43 + 224 len floor32(mem[_43 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _73 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _46) + ceil32(return_data.size) + 228] = arg2
    mem[(32 * _46) + ceil32(return_data.size) + 260] = _73
    require ext_code.size(arg3)
    call arg3.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), _73
    mem[(32 * _46) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'approve failed.'
    require 1 < mem[ceil32(return_data.size) + 192]
    _83 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _46) + ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * _46) + ceil32(return_data.size) + 228] = _83
    mem[(32 * _46) + ceil32(return_data.size) + 260] = 0
    mem[(32 * _46) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _46) + ceil32(return_data.size) + 356] = block.timestamp + 100
    mem[(32 * _46) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _46) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _46) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(arg2)
    call arg2.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _83, 0, 160, address(this.address), block.timestamp + 100, 2, mem[(32 * _46) + ceil32(return_data.size) + 420 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _46) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _46) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _83) >> 32 <= 4294967296
    require mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _83) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _83) >> 32 + (32 * _46) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _83) >> 32 + (32 * mem[mem[(32 * _46) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _83) >> 32 + (32 * _46) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
}

function sub_3dea73af(?) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(this.address)
    staticcall this.address.0x937c70dd with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    if ext_call.return_data[32] >= 3 * 10^15:
        mem[160] = arg3
        mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[196] = 0
        mem[260] = this.address
        mem[292] = block.timestamp + 100
        mem[228] = 128
        mem[324] = 2
        mem[356 len 0] = None
        require ext_code.size(arg1)
        call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp + 100, 2, mem[356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _61 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= 4294967296
        require mem[192 len 4], 0 + 32 <= return_data.size
        require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        _64 = mem[_61 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_61 + 192])] = mem[_61 + 224 len floor32(mem[_61 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _91 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _64) + ceil32(return_data.size) + 228] = arg2
        mem[(32 * _64) + ceil32(return_data.size) + 260] = _91
        require ext_code.size(arg3)
        call arg3.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), _91
        mem[(32 * _64) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'approve failed.'
        require 1 < mem[ceil32(return_data.size) + 192]
        _101 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _64) + ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
        mem[(32 * _64) + ceil32(return_data.size) + 228] = _101
        mem[(32 * _64) + ceil32(return_data.size) + 260] = 0
        mem[(32 * _64) + ceil32(return_data.size) + 324] = this.address
        mem[(32 * _64) + ceil32(return_data.size) + 356] = block.timestamp + 100
        mem[(32 * _64) + ceil32(return_data.size) + 292] = 160
        mem[(32 * _64) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _64) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(arg2)
        call arg2.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _101, 0, 160, address(this.address), block.timestamp + 100, 2, mem[(32 * _64) + ceil32(return_data.size) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _64) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _64) + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require mem[(32 * _64) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _101) >> 32 <= 4294967296
        require mem[(32 * _64) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _101) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _64) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _101) >> 32 + (32 * _64) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _64) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _101) >> 32 + (32 * mem[mem[(32 * _64) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _101) >> 32 + (32 * _64) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
}



}
