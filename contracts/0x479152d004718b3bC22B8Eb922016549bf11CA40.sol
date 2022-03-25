contract main {




// =====================  Runtime code  =====================


#
#  - sub_5639a41e(?)
#  - sub_64a14558(?)
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - doApprove(address arg1, address arg2)
#
address uniswapV2FactoryAddress;
address WETHAddress;
address DAIAddress;
address owner;
address sub_33bce082Address;
address envAddress;
address balanceAddress;
address orderbaseAddress;
address coinAddress;
address assetAddress;
address sub_4c2b2cb2Address;
address sub_69a4b684Address;
array of address swap2TokenRouting;

function coin() {
    return coinAddress
}

function swap2TokenRouting(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < swap2TokenRouting.length
    return swap2TokenRouting[arg1]
}

function sub_33bce082(?) {
    return sub_33bce082Address
}

function asset() {
    return assetAddress
}

function sub_4c2b2cb2(?) {
    return sub_4c2b2cb2Address
}

function uniswapV2Factory() {
    return uniswapV2FactoryAddress
}

function sub_69a4b684(?) {
    return sub_69a4b684Address
}

function owner() {
    return owner
}

function env() {
    return envAddress
}

function WETH() {
    return WETHAddress
}

function balance() {
    return balanceAddress
}

function orderbase() {
    return orderbaseAddress
}

function DAI() {
    return DAIAddress
}

function _fallback() payable {
    revert
}

function sub_488ecfcb(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    DAIAddress = address(arg1)
    uniswapV2FactoryAddress = address(arg2)
    WETHAddress = address(arg3)
    sub_33bce082Address = address(arg4)
    require ext_code.size(address(arg4))
    staticcall address(arg4).0x9dca0032 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    envAddress = ext_call.return_data[12 len 20]
    require ext_code.size(sub_33bce082Address)
    staticcall sub_33bce082Address.0xb69ef8a8 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    balanceAddress = ext_call.return_data[12 len 20]
    require ext_code.size(sub_33bce082Address)
    staticcall sub_33bce082Address.0x11df9995 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    coinAddress = ext_call.return_data[12 len 20]
    require ext_code.size(sub_33bce082Address)
    staticcall sub_33bce082Address.0x38d52e0f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    assetAddress = ext_call.return_data[12 len 20]
    require ext_code.size(sub_33bce082Address)
    staticcall sub_33bce082Address.0xcbc8b506 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    orderbaseAddress = ext_call.return_data[12 len 20]
    sub_4c2b2cb2Address = address(arg5)
    sub_69a4b684Address = address(arg6)
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], mem[ceil32(return_data.size) + 196 len 28]
        call arg1.mem[ceil32(return_data.size) + 196 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 200 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
                if not mem[ceil32(return_data.size) + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_20d45648(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[(32 * ('cd', 36).length) + 164] = sub_69a4b684Address
    mem[(32 * ('cd', 36).length) + 196] = 0
    mem[(32 * ('cd', 36).length) + 128] = 68
    mem[(32 * ('cd', 36).length) + 160 len 4] = approve(address rg1, uint256 rg2)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[4])):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(address(cd[4])):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(32 * ('cd', 36).length) + 228 len 96] = 0, sub_69a4b684Address, 0, mem[(32 * ('cd', 36).length) + 228 len 28]
    mem[(32 * ('cd', 36).length) + 296] = 0
    call address(cd[4]).mem[(32 * ('cd', 36).length) + 228 len 4] with:
         gas gas_remaining wei
        args mem[(32 * ('cd', 36).length) + 232 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if ('cd', 36).length:
            require ('cd', 36).length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(32 * ('cd', 36).length) + 232] = this.address
        mem[(32 * ('cd', 36).length) + 264] = sub_69a4b684Address
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), sub_69a4b684Address
        mem[(32 * ('cd', 36).length) + 228] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 264] = sub_69a4b684Address
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 296] = -1
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 228] = 68
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 260 len 4] = approve(address rg1, uint256 rg2)
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[4])):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(address(cd[4])):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 328 len 96] = 0, sub_69a4b684Address, -1, mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 328 len 28]
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 396] = 0
        call address(cd[4]).mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 328 len 4] with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 332 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ('cd', 36).length:
                require ('cd', 36).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 332] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 328] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 328] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 332] = ext_call.return_data[0]
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 364] = 0
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 396] = 160
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 492] = ('cd', 36).length
            idx = 0
            s = 128
            t = (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 524
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 428] = this.address
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 460] = block.timestamp + 1800
            require ext_code.size(sub_69a4b684Address)
            call sub_69a4b684Address.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 332 len (96 * ('cd', 36).length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 328
            require return_data.size >= 32
            require mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 328 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 328 len 4], ext_call.return_data[0 len 28] + 359 < (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + return_data.size + 328
            require mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 328 len 4], ext_call.return_data[0 len 28] + 328] <= test266151307()
            require (32 * mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 328 len 4], ext_call.return_data[0 len 28] + 328]) + 32 >= 0 and (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 328 len 4], ext_call.return_data[0 len 28] + 328]) + 360 <= test266151307()
            require return_data.size >= mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 328 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 328 len 4], ext_call.return_data[0 len 28] + 328]) + 32
        else:
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 328] = return_data.size
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 360] == bool(mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 360])
                if not mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 360]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 333] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 333] = ext_call.return_data[0]
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 365] = 0
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = 160
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = ('cd', 36).length
            idx = 0
            s = 128
            t = (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 429] = this.address
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 461] = block.timestamp + 1800
            require ext_code.size(sub_69a4b684Address)
            call sub_69a4b684Address.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 333 len (96 * ('cd', 36).length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329
            require return_data.size >= 32
            require mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 360 < (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 329
            require mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 329] <= test266151307()
            require (32 * mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 329]) + 32 >= 0 and (32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 329]) + 361 <= test266151307()
            require return_data.size >= mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len 4], ext_call.return_data[0 len 28] + 329]) + 32
    else:
        mem[(32 * ('cd', 36).length) + 228] = return_data.size
        mem[(32 * ('cd', 36).length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(32 * ('cd', 36).length) + 260] == bool(mem[(32 * ('cd', 36).length) + 260])
            if not mem[(32 * ('cd', 36).length) + 260]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 233] = this.address
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 265] = sub_69a4b684Address
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), sub_69a4b684Address
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + 229] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 265] = sub_69a4b684Address
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 297] = -1
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 229] = 68
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 261 len 4] = approve(address rg1, uint256 rg2)
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[4])):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(address(cd[4])):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 96] = 0, sub_69a4b684Address, -1, mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 28]
        mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
        call address(cd[4]).mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
             gas gas_remaining wei
            args mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if ('cd', 36).length:
                require ('cd', 36).length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 333] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 333] = ext_call.return_data[0]
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 365] = 0
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 160
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 493] = ('cd', 36).length
            idx = 0
            s = 128
            t = (32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 525
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 429] = this.address
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 461] = block.timestamp + 1800
            require ext_code.size(sub_69a4b684Address)
            call sub_69a4b684Address.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 333 len (96 * ('cd', 36).length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * ('cd', 36).length) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + 329
            require return_data.size >= 32
            require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 4], ext_call.return_data[0 len 28] + 360 < (32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + return_data.size + 329
            require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 4], ext_call.return_data[0 len 28] + 329] <= test266151307()
            require (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 4], ext_call.return_data[0 len 28] + 329]) + 32 >= 0 and (32 * ('cd', 36).length) + ceil32(return_data.size) + (4 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 4], ext_call.return_data[0 len 28] + 329]) + 361 <= test266151307()
            require return_data.size >= mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 329 len 4], ext_call.return_data[0 len 28] + 329]) + 32
        else:
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                if not mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 334] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * ('cd', 36).length) + (4 * ceil32(return_data.size)) + 330] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 330] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 334] = ext_call.return_data[0]
            mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 366] = 0
            mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 398] = 160
            mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 494] = ('cd', 36).length
            idx = 0
            s = 128
            t = (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 526
            while idx < ('cd', 36).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 430] = this.address
            mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 462] = block.timestamp + 1800
            require ext_code.size(sub_69a4b684Address)
            call sub_69a4b684Address.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 334 len (96 * ('cd', 36).length) + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 330 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + 330
            require return_data.size >= 32
            require mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] <= test266151307()
            require (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + 361 < (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + return_data.size + 330
            require mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + 330] <= test266151307()
            require (32 * mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + 330]) + 32 >= 0 and (32 * ('cd', 36).length) + (7 * ceil32(return_data.size)) + (32 * mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + 330]) + 362 <= test266151307()
            require return_data.size >= mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 330 len 4], ext_call.return_data[0 len 28] + 330]) + 32
}



}
