contract main {




// =====================  Runtime code  =====================


#
#  - sub_937c70dd(?)
#  - sub_e182a503(?)
#
address stor0;
address wethAddress;
address bakeryRouterAddress;
address sub_d60b53dcAddress;
address sub_ada4c30aAddress;
address sub_09c6e72cAddress;

function sub_09c6e72c(?) {
    return sub_09c6e72cAddress
}

function weth() {
    return wethAddress
}

function sub_ada4c30a(?) {
    return sub_ada4c30aAddress
}

function sub_d60b53dc(?) {
    return sub_d60b53dcAddress
}

function bakeryRouter() {
    return bakeryRouterAddress
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

function sub_dca751a6(?) {
    require calldata.size - 4 >= 128
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    mem[160] = arg3
    if arg1 != bakeryRouterAddress:
        mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[196] = 0
        mem[260] = this.address
        mem[292] = block.timestamp + 6 * 10^6
        mem[228] = 128
        mem[324] = 2
        mem[356 len 0] = None
        require ext_code.size(arg1)
        call arg1.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value arg4 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp + 6 * 10^6, 2, mem[356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _106 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= 4294967296
        require mem[192 len 4], 0 + 32 <= return_data.size
        require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        _112 = mem[_106 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_106 + 192])] = mem[_106 + 224 len floor32(mem[_106 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _192 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _112) + ceil32(return_data.size) + 228] = arg2
        mem[(32 * _112) + ceil32(return_data.size) + 260] = _192
        require ext_code.size(arg3)
        call arg3.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), _192
        mem[(32 * _112) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'approve failed.'
        require 1 < mem[ceil32(return_data.size) + 192]
        if arg2 != bakeryRouterAddress:
            _214 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _112) + ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _112) + ceil32(return_data.size) + 228] = _214
            mem[(32 * _112) + ceil32(return_data.size) + 260] = 0
            mem[(32 * _112) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _112) + ceil32(return_data.size) + 356] = block.timestamp + 6 * 10^6
            mem[(32 * _112) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _112) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _112) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(arg2)
            call arg2.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _214, 0, 160, address(this.address), block.timestamp + 6 * 10^6, 2, mem[(32 * _112) + ceil32(return_data.size) + 420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _112) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _112) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(32 * _112) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _214) >> 32 <= 4294967296
            require mem[(32 * _112) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _214) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _112) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _214) >> 32 + (32 * _112) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _112) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _214) >> 32 + (32 * mem[mem[(32 * _112) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _214) >> 32 + (32 * _112) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
        else:
            _218 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _112) + ceil32(return_data.size) + 224] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
            mem[(32 * _112) + ceil32(return_data.size) + 228] = _218
            mem[(32 * _112) + ceil32(return_data.size) + 260] = 0
            mem[(32 * _112) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _112) + ceil32(return_data.size) + 356] = block.timestamp + 6 * 10^6
            mem[(32 * _112) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _112) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _112) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(arg2)
            call arg2.0x5d616c5b with:
                 gas gas_remaining wei
                args _218, 0, 160, address(this.address), block.timestamp + 6 * 10^6, 2, mem[(32 * _112) + ceil32(return_data.size) + 420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _112) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _112) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(32 * _112) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _218) >> 32 <= 4294967296
            require mem[(32 * _112) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _218) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _112) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _218) >> 32 + (32 * _112) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _112) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _218) >> 32 + (32 * mem[mem[(32 * _112) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _218) >> 32 + (32 * _112) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    else:
        mem[192] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
        mem[196] = 0
        mem[260] = this.address
        mem[292] = block.timestamp + 6 * 10^6
        mem[228] = 128
        mem[324] = 2
        mem[356 len 0] = None
        require ext_code.size(arg1)
        call arg1.0x9cf68911 with:
           value arg4 wei
             gas gas_remaining wei
            args 0, 128, address(this.address), block.timestamp + 6 * 10^6, 2, mem[356 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _108 = mem[192 len 4], 0
        require mem[192 len 4], 0 <= 4294967296
        require mem[192 len 4], 0 + 32 <= return_data.size
        require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
        _113 = mem[_108 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_108 + 192])] = mem[_108 + 224 len floor32(mem[_108 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        _195 = mem[ceil32(return_data.size) + 256]
        mem[(32 * _113) + ceil32(return_data.size) + 228] = arg2
        mem[(32 * _113) + ceil32(return_data.size) + 260] = _195
        require ext_code.size(arg3)
        call arg3.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), _195
        mem[(32 * _113) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'approve failed.'
        require 1 < mem[ceil32(return_data.size) + 192]
        if arg2 != bakeryRouterAddress:
            _222 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _113) + ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
            mem[(32 * _113) + ceil32(return_data.size) + 228] = _222
            mem[(32 * _113) + ceil32(return_data.size) + 260] = 0
            mem[(32 * _113) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _113) + ceil32(return_data.size) + 356] = block.timestamp + 6 * 10^6
            mem[(32 * _113) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _113) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _113) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(arg2)
            call arg2.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _222, 0, 160, address(this.address), block.timestamp + 6 * 10^6, 2, mem[(32 * _113) + ceil32(return_data.size) + 420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _113) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _113) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(32 * _113) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _222) >> 32 <= 4294967296
            require mem[(32 * _113) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _222) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _113) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _222) >> 32 + (32 * _113) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _113) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _222) >> 32 + (32 * mem[mem[(32 * _113) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _222) >> 32 + (32 * _113) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
        else:
            _226 = mem[ceil32(return_data.size) + 256]
            mem[(32 * _113) + ceil32(return_data.size) + 224] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
            mem[(32 * _113) + ceil32(return_data.size) + 228] = _226
            mem[(32 * _113) + ceil32(return_data.size) + 260] = 0
            mem[(32 * _113) + ceil32(return_data.size) + 324] = this.address
            mem[(32 * _113) + ceil32(return_data.size) + 356] = block.timestamp + 6 * 10^6
            mem[(32 * _113) + ceil32(return_data.size) + 292] = 160
            mem[(32 * _113) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _113) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(arg2)
            call arg2.0x5d616c5b with:
                 gas gas_remaining wei
                args _226, 0, 160, address(this.address), block.timestamp + 6 * 10^6, 2, mem[(32 * _113) + ceil32(return_data.size) + 420 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _113) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _113) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(32 * _113) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _226) >> 32 <= 4294967296
            require mem[(32 * _113) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _226) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _113) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _226) >> 32 + (32 * _113) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _113) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _226) >> 32 + (32 * mem[mem[(32 * _113) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _226) >> 32 + (32 * _113) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
}



}
