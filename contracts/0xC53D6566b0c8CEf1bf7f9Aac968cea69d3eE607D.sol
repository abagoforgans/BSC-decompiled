contract main {




// =====================  Runtime code  =====================


const chi = 0x4946c0e9f43f4dee607b0ef1fa1c


address pcsRouterAddress;
mapping of uint256 stor2;
address stor3;

function pcsRouter() {
    return pcsRouterAddress
}

function _fallback() payable {
    revert
}

function withdraw() payable {
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    stor2[address(msg.sender)] = 0
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
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
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function emergencySell(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'FAIL TO APPROVE'
    require ext_code.size(arg2)
    staticcall arg2.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[388 len 0] = None
    require ext_code.size(arg2)
    call arg2.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function getReserve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 == 0x5ff2b0db69458a0750badebc4f9e13add608c7f:
        require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
        staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), arg1
    else:
        if arg2 != 0x10ed43c718714eb63d5aa57b78b54704e256024e:
            require ext_code.size(0xb7926c0430afb07aa7defde6da862ae0bde767bc)
            staticcall 0xb7926c0430afb07aa7defde6da862ae0bde767bc.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), arg1
        else:
            require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
            staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(ext_call.return_data[0]):
        return ext_call.return_data[32] << 144, Mask(112, 0, ext_call.return_data[0])
    return ext_call.return_data[0] << 144, Mask(112, 0, ext_call.return_data[32])
}

function sellToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    require ext_code.size(arg2)
    staticcall arg2.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'FAIL TO APPROVE'
    mem[192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = 0
    mem[292] = this.address
    mem[324] = block.timestamp + 60
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(arg2)
    call arg2.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 60, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
}

function sub_909308b5(?) payable {
    require calldata.size - 4 >= 128
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c79206f776e65722063616e2063616c6c20746869732066756e6374696f6e,
                    mem[198 len 30]
    if arg1 <= eth.balance(this.address):
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            require ext_code.size(arg3)
            call arg3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'FAIL TO APPROVE'
        require ext_code.size(arg4)
        staticcall arg4.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[160] = arg3
        mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[196] = arg2
        mem[260] = this.address
        mem[292] = block.timestamp + 60
        mem[228] = 128
        mem[324] = 2
        mem[356 len 0] = None
        require ext_code.size(arg4)
        call arg4.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value arg1 wei
             gas gas_remaining wei
            args arg2, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp + 60
    else:
        if eth.balance(this.address) > eth.balance(this.address):
            revert with 0, 'Not enough ETH'
        require ext_code.size(arg3)
        staticcall arg3.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 1:
            require ext_code.size(arg3)
            call arg3.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg4), -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'FAIL TO APPROVE'
        require ext_code.size(arg4)
        staticcall arg4.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[160] = arg3
        mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
        mem[196] = arg2
        mem[260] = this.address
        mem[292] = block.timestamp + 60
        mem[228] = 128
        mem[324] = 2
        mem[356 len 0] = None
        require ext_code.size(arg4)
        call arg4.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args arg2, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp + 60
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg2) >> 32 + 192]) + 32 <= return_data.size
    require ext_code.size(0x4946c0e9f43f4dee607b0ef1fa1c)
    call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a746748e(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if not arg1.length:
        require arg1.length <= test266151307()
        mem[(64 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
        if not arg1.length:
            idx = 0
            s = 0
            s = 0
            while idx < arg1.length:
                require idx < arg1.length
                require idx < mem[(32 * arg1.length) + 128]
                _401 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == 0x5ff2b0db69458a0750badebc4f9e13add608c7f:
                    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
                    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), mem[(32 * idx) + 140 len 20]
                else:
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != 0x10ed43c718714eb63d5aa57b78b54704e256024e:
                        require ext_code.size(0xb7926c0430afb07aa7defde6da862ae0bde767bc)
                        staticcall 0xb7926c0430afb07aa7defde6da862ae0bde767bc.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0]), mem[(32 * idx) + 140 len 20]
                    else:
                        require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
                        staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0]), mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(98 * arg1.length) + (32 * arg2.length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_401))
                staticcall address(_401).WETH() with:
                        gas gas_remaining wei
                mem[(98 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                    require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                    mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = Mask(112, 0, ext_call.return_data[0])
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    continue 
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[0])
                require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                continue 
        else:
            mem[(64 * arg1.length) + (32 * arg2.length) + 224 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            idx = 0
            s = 0
            s = 0
            while idx < arg1.length:
                require idx < arg1.length
                require idx < mem[(32 * arg1.length) + 128]
                _402 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == 0x5ff2b0db69458a0750badebc4f9e13add608c7f:
                    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
                    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), mem[(32 * idx) + 140 len 20]
                else:
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != 0x10ed43c718714eb63d5aa57b78b54704e256024e:
                        require ext_code.size(0xb7926c0430afb07aa7defde6da862ae0bde767bc)
                        staticcall 0xb7926c0430afb07aa7defde6da862ae0bde767bc.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0]), mem[(32 * idx) + 140 len 20]
                    else:
                        require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
                        staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0]), mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(98 * arg1.length) + (32 * arg2.length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_402))
                staticcall address(_402).WETH() with:
                        gas gas_remaining wei
                mem[(98 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                    require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                    mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = Mask(112, 0, ext_call.return_data[0])
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    continue 
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[0])
                require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                continue 
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        require arg1.length <= test266151307()
        mem[(64 * arg1.length) + (32 * arg2.length) + 192] = arg1.length
        if not arg1.length:
            idx = 0
            s = 0
            s = 0
            while idx < arg1.length:
                require idx < arg1.length
                require idx < mem[(32 * arg1.length) + 128]
                _403 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == 0x5ff2b0db69458a0750badebc4f9e13add608c7f:
                    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
                    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), mem[(32 * idx) + 140 len 20]
                else:
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != 0x10ed43c718714eb63d5aa57b78b54704e256024e:
                        require ext_code.size(0xb7926c0430afb07aa7defde6da862ae0bde767bc)
                        staticcall 0xb7926c0430afb07aa7defde6da862ae0bde767bc.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0]), mem[(32 * idx) + 140 len 20]
                    else:
                        require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
                        staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0]), mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(98 * arg1.length) + (32 * arg2.length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_403))
                staticcall address(_403).WETH() with:
                        gas gas_remaining wei
                mem[(98 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                    require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                    mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = Mask(112, 0, ext_call.return_data[0])
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    continue 
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[0])
                require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                continue 
        else:
            mem[(64 * arg1.length) + (32 * arg2.length) + 224 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            idx = 0
            s = 0
            s = 0
            while idx < arg1.length:
                require idx < arg1.length
                require idx < mem[(32 * arg1.length) + 128]
                _404 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require ext_code.size(mem[(32 * idx) + (32 * arg1.length) + 172 len 20])
                staticcall mem[(32 * idx) + (32 * arg1.length) + 172 len 20].WETH() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] == 0x5ff2b0db69458a0750badebc4f9e13add608c7f:
                    require ext_code.size(0xbcfccbde45ce874adcb698cc183debcf17952812)
                    staticcall 0xbcfccbde45ce874adcb698cc183debcf17952812.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0]), mem[(32 * idx) + 140 len 20]
                else:
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != 0x10ed43c718714eb63d5aa57b78b54704e256024e:
                        require ext_code.size(0xb7926c0430afb07aa7defde6da862ae0bde767bc)
                        staticcall 0xb7926c0430afb07aa7defde6da862ae0bde767bc.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0]), mem[(32 * idx) + 140 len 20]
                    else:
                        require ext_code.size(0xca143ce32fe78f1f7019d7d551a6402fc5350c73)
                        staticcall 0xca143ce32fe78f1f7019d7d551a6402fc5350c73.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0]), mem[(32 * idx) + 140 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getReserves() with:
                        gas gas_remaining wei
                mem[(98 * arg1.length) + (32 * arg2.length) + 224 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(_404))
                staticcall address(_404).WETH() with:
                        gas gas_remaining wei
                mem[(98 * arg1.length) + (32 * arg2.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                if address(ext_call.return_data[0]) != address(ext_call.return_data[0]):
                    mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                    require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                    mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = Mask(112, 0, ext_call.return_data[0])
                    idx = idx + 1
                    s = Mask(112, 0, ext_call.return_data[0])
                    s = Mask(112, 0, ext_call.return_data[32])
                    continue 
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = Mask(112, 0, ext_call.return_data[0])
                require idx < mem[(64 * arg1.length) + (32 * arg2.length) + 192]
                mem[(32 * idx) + (64 * arg1.length) + (32 * arg2.length) + 224] = Mask(112, 0, ext_call.return_data[32])
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                s = Mask(112, 0, ext_call.return_data[0])
                continue 
    mem[(98 * arg1.length) + (32 * arg2.length) + 224] = 64
    mem[(98 * arg1.length) + (32 * arg2.length) + 288] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    mem[(98 * arg1.length) + (32 * arg2.length) + 320 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
    mem[(98 * arg1.length) + (32 * arg2.length) + 256] = (32 * mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + 96
    mem[(32 * mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + (98 * arg1.length) + (32 * arg2.length) + 320] = mem[(64 * arg1.length) + (32 * arg2.length) + 192]
    mem[(32 * mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + (98 * arg1.length) + (32 * arg2.length) + 352 len floor32(mem[(64 * arg1.length) + (32 * arg2.length) + 192])] = mem[(64 * arg1.length) + (32 * arg2.length) + 224 len floor32(mem[(64 * arg1.length) + (32 * arg2.length) + 192])]
    return Array(len=mem[(32 * arg1.length) + (32 * arg2.length) + 160], data=mem[(98 * arg1.length) + (32 * arg2.length) + 320 len (32 * mem[(64 * arg1.length) + (32 * arg2.length) + 192]) + (32 * mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + 32]), 
           (32 * mem[(32 * arg1.length) + (32 * arg2.length) + 160]) + 96
}



}
