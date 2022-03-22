contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address adminAddress;
uint256 stor0;
address wbnbAddress;

function wbnb() {
    return wbnbAddress
}

function admin() {
    return address(adminAddress)
}

function _fallback() payable {
    revert
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(adminAddress) != msg.sender:
        revert with 0, 'fuck'
    if arg1 < eth.balance(this.address):
        if arg1:
            call address(adminAddress) with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if eth.balance(this.address):
            call address(adminAddress) with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function claimToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(adminAddress) != msg.sender:
        revert with 0, 'fuck'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 < ext_call.return_data[0]:
        if arg2:
            mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, arg2) >> 32
            call arg1 with:
               funct uint32(stor0)
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[324 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: TRANSFER_TOKEN_FAILED'
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: TRANSFER_TOKEN_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 'SafeERC20: TRANSFER_TOKEN_FAILED'
    else:
        if ext_call.return_data[0]:
            mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
            call arg1 with:
               funct uint32(stor0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: TRANSFER_TOKEN_FAILED'
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: TRANSFER_TOKEN_FAILED'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 'SafeERC20: TRANSFER_TOKEN_FAILED'
}

function sub_c2349fcf(?) {
    require calldata.size - 4 >= 192
    if address(adminAddress) != msg.sender:
        revert with 0, 'fuck'
    mem[96] = 2
    mem[160] = arg1
    if arg2 < eth.balance(this.address):
        if not arg4:
            mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[196] = 1
            mem[260] = this.address
            mem[292] = block.timestamp
            mem[228] = 128
            mem[324] = 2
            mem[356 len 0] = None
            require ext_code.size(arg3)
            call arg3.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value arg2 wei
                 gas gas_remaining wei
                args 1, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _205 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= 4294967296
            require mem[192 len 4], 0 + 32 <= return_data.size
            require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            _217 = mem[_205 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_205 + 192])] = mem[_205 + 224 len floor32(mem[_205 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _373 = mem[ceil32(return_data.size) + 256]
            mem[128] = arg1
            mem[160] = wbnbAddress
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg5), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg6:
                mem[(32 * _217) + ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _217) + ceil32(return_data.size) + 228] = _373
                mem[(32 * _217) + ceil32(return_data.size) + 260] = 1
                mem[(32 * _217) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _217) + ceil32(return_data.size) + 356] = block.timestamp
                mem[(32 * _217) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _217) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _217) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(arg5)
                call arg5.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _373, 1, Array(len=2, data=mem[(32 * _217) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp
            else:
                mem[(32 * _217) + ceil32(return_data.size) + 224] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                mem[(32 * _217) + ceil32(return_data.size) + 228] = _373
                mem[(32 * _217) + ceil32(return_data.size) + 260] = 1
                mem[(32 * _217) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _217) + ceil32(return_data.size) + 356] = block.timestamp
                mem[(32 * _217) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _217) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _217) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(arg5)
                call arg5.0x5d616c5b with:
                     gas gas_remaining wei
                    args _373, 1, Array(len=2, data=mem[(32 * _217) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _217) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _217) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(32 * _217) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _373) >> 32 <= 4294967296
            require mem[(32 * _217) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _373) >> 32 + 32 <= return_data.size
            require mem[(32 * _217) + ceil32(return_data.size) + mem[(32 * _217) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _373) >> 32 + 224] <= 4294967296 and mem[(32 * _217) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _373) >> 32 + (32 * mem[(32 * _217) + ceil32(return_data.size) + mem[(32 * _217) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _373) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _217) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _217) + ceil32(return_data.size) + mem[(32 * _217) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _373) >> 32 + 224]
            require 1 < mem[(32 * _217) + (2 * ceil32(return_data.size)) + 224]
        else:
            mem[192] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
            mem[196] = 1
            mem[260] = this.address
            mem[292] = block.timestamp
            mem[228] = 128
            mem[324] = 2
            mem[356 len 0] = None
            require ext_code.size(arg3)
            call arg3.0x9cf68911 with:
               value arg2 wei
                 gas gas_remaining wei
                args 1, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _207 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= 4294967296
            require mem[192 len 4], 0 + 32 <= return_data.size
            require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            _218 = mem[_207 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_207 + 192])] = mem[_207 + 224 len floor32(mem[_207 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _374 = mem[ceil32(return_data.size) + 256]
            mem[128] = arg1
            mem[160] = wbnbAddress
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg5), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg6:
                mem[(32 * _218) + ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _218) + ceil32(return_data.size) + 228] = _374
                mem[(32 * _218) + ceil32(return_data.size) + 260] = 1
                mem[(32 * _218) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _218) + ceil32(return_data.size) + 356] = block.timestamp
                mem[(32 * _218) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _218) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _218) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(arg5)
                call arg5.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _374, 1, Array(len=2, data=mem[(32 * _218) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp
            else:
                mem[(32 * _218) + ceil32(return_data.size) + 224] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                mem[(32 * _218) + ceil32(return_data.size) + 228] = _374
                mem[(32 * _218) + ceil32(return_data.size) + 260] = 1
                mem[(32 * _218) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _218) + ceil32(return_data.size) + 356] = block.timestamp
                mem[(32 * _218) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _218) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _218) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(arg5)
                call arg5.0x5d616c5b with:
                     gas gas_remaining wei
                    args _374, 1, Array(len=2, data=mem[(32 * _218) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _218) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _218) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(32 * _218) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _374) >> 32 <= 4294967296
            require mem[(32 * _218) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _374) >> 32 + 32 <= return_data.size
            require mem[(32 * _218) + ceil32(return_data.size) + mem[(32 * _218) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _374) >> 32 + 224] <= 4294967296 and mem[(32 * _218) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _374) >> 32 + (32 * mem[(32 * _218) + ceil32(return_data.size) + mem[(32 * _218) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _374) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _218) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _218) + ceil32(return_data.size) + mem[(32 * _218) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _374) >> 32 + 224]
            require 1 < mem[(32 * _218) + (2 * ceil32(return_data.size)) + 224]
    else:
        if not arg4:
            mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
            mem[196] = 1
            mem[260] = this.address
            mem[292] = block.timestamp
            mem[228] = 128
            mem[324] = 2
            mem[356 len 0] = None
            require ext_code.size(arg3)
            call arg3.swapExactETHForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 1, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _209 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= 4294967296
            require mem[192 len 4], 0 + 32 <= return_data.size
            require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            _219 = mem[_209 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_209 + 192])] = mem[_209 + 224 len floor32(mem[_209 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _375 = mem[ceil32(return_data.size) + 256]
            mem[128] = arg1
            mem[160] = wbnbAddress
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg5), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg6:
                mem[(32 * _219) + ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _219) + ceil32(return_data.size) + 228] = _375
                mem[(32 * _219) + ceil32(return_data.size) + 260] = 1
                mem[(32 * _219) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _219) + ceil32(return_data.size) + 356] = block.timestamp
                mem[(32 * _219) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _219) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _219) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(arg5)
                call arg5.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _375, 1, Array(len=2, data=mem[(32 * _219) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp
            else:
                mem[(32 * _219) + ceil32(return_data.size) + 224] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                mem[(32 * _219) + ceil32(return_data.size) + 228] = _375
                mem[(32 * _219) + ceil32(return_data.size) + 260] = 1
                mem[(32 * _219) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _219) + ceil32(return_data.size) + 356] = block.timestamp
                mem[(32 * _219) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _219) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _219) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(arg5)
                call arg5.0x5d616c5b with:
                     gas gas_remaining wei
                    args _375, 1, Array(len=2, data=mem[(32 * _219) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _219) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _219) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(32 * _219) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _375) >> 32 <= 4294967296
            require mem[(32 * _219) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _375) >> 32 + 32 <= return_data.size
            require mem[(32 * _219) + ceil32(return_data.size) + mem[(32 * _219) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _375) >> 32 + 224] <= 4294967296 and mem[(32 * _219) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _375) >> 32 + (32 * mem[(32 * _219) + ceil32(return_data.size) + mem[(32 * _219) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _375) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _219) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _219) + ceil32(return_data.size) + mem[(32 * _219) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _375) >> 32 + 224]
            require 1 < mem[(32 * _219) + (2 * ceil32(return_data.size)) + 224]
        else:
            mem[192] = 0x9cf6891100000000000000000000000000000000000000000000000000000000
            mem[196] = 1
            mem[260] = this.address
            mem[292] = block.timestamp
            mem[228] = 128
            mem[324] = 2
            mem[356 len 0] = None
            require ext_code.size(arg3)
            call arg3.0x9cf68911 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 1, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _211 = mem[192 len 4], 0
            require mem[192 len 4], 0 <= 4294967296
            require mem[192 len 4], 0 + 32 <= return_data.size
            require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
            _220 = mem[_211 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_211 + 192])] = mem[_211 + 224 len floor32(mem[_211 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            _376 = mem[ceil32(return_data.size) + 256]
            mem[128] = arg1
            mem[160] = wbnbAddress
            require ext_code.size(arg1)
            call arg1.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg5), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg6:
                mem[(32 * _220) + ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[(32 * _220) + ceil32(return_data.size) + 228] = _376
                mem[(32 * _220) + ceil32(return_data.size) + 260] = 1
                mem[(32 * _220) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _220) + ceil32(return_data.size) + 356] = block.timestamp
                mem[(32 * _220) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _220) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _220) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(arg5)
                call arg5.swapExactTokensForETH(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _376, 1, Array(len=2, data=mem[(32 * _220) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp
            else:
                mem[(32 * _220) + ceil32(return_data.size) + 224] = 0x5d616c5b00000000000000000000000000000000000000000000000000000000
                mem[(32 * _220) + ceil32(return_data.size) + 228] = _376
                mem[(32 * _220) + ceil32(return_data.size) + 260] = 1
                mem[(32 * _220) + ceil32(return_data.size) + 324] = this.address
                mem[(32 * _220) + ceil32(return_data.size) + 356] = block.timestamp
                mem[(32 * _220) + ceil32(return_data.size) + 292] = 160
                mem[(32 * _220) + ceil32(return_data.size) + 388] = 2
                mem[(32 * _220) + ceil32(return_data.size) + 420 len 0] = None
                require ext_code.size(arg5)
                call arg5.0x5d616c5b with:
                     gas gas_remaining wei
                    args _376, 1, Array(len=2, data=mem[(32 * _220) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _220) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _220) + (2 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            require mem[(32 * _220) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _376) >> 32 <= 4294967296
            require mem[(32 * _220) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _376) >> 32 + 32 <= return_data.size
            require mem[(32 * _220) + ceil32(return_data.size) + mem[(32 * _220) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _376) >> 32 + 224] <= 4294967296 and mem[(32 * _220) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _376) >> 32 + (32 * mem[(32 * _220) + ceil32(return_data.size) + mem[(32 * _220) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _376) >> 32 + 224]) + 32 <= return_data.size
            mem[(32 * _220) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _220) + ceil32(return_data.size) + mem[(32 * _220) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _376) >> 32 + 224]
            require 1 < mem[(32 * _220) + (2 * ceil32(return_data.size)) + 224]
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'omg'
}



}
