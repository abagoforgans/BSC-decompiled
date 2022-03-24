contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - sub_20d45648(?)
#  - sub_64a14558(?)
#  - doApprove(address arg1, address arg2)
#
address uniswapV2FactoryAddress;
address WETHAddress;
address DAIAddress;
address stor3;
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

function sub_5639a41e(?) {
    require calldata.size - 4 >= 320
    require cd[4] == address(cd[4])
    require cd[196] == address(cd[196])
    require cd[228] == address(cd[228])
    require cd[260] <= test266151307()
    require cd[260] + 35 < calldata.size
    require ('cd', 260).length <= test266151307()
    require cd[260] + (32 * ('cd', 260).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[128] = cd[292]
    mem[160] = cd[68]
    mem[192] = cd[100]
    mem[224] = cd[132]
    mem[256] = cd[164]
    mem[288] = address(cd[196])
    mem[320] = 224
    mem[352] = ('cd', 260).length
    idx = 0
    s = 384
    t = cd[260] + 36
    while idx < ('cd', 260).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if address(cd[4]):
        mem[(32 * ('cd', 260).length) + 388] = address(cd[4])
        if address(cd[228]):
            if address(cd[4]) == address(cd[228]):
                if WETHAddress == address(cd[4]):
                    mem[(32 * ('cd', 260).length) + 420] = DAIAddress
                    require ext_code.size(uniswapV2FactoryAddress)
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(cd[4]), DAIAddress
                else:
                    mem[(32 * ('cd', 260).length) + 420] = WETHAddress
                    require ext_code.size(uniswapV2FactoryAddress)
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(cd[4]), WETHAddress
                mem[(32 * ('cd', 260).length) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                stor3 = ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Requested _token is not available.'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 384] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 544] = address(cd[4])
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 576] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 608] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 640] = 256
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 704] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736 len 0] = None
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 672] = 288
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736] = mem[96]
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 768 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                require ext_code.size(address(ext_call.return_data[0]))
                if address(cd[4]) == address(ext_call.return_data[0]):
                    if address(cd[4]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[36], cd[36], address(this.address), Array(len=ceil32(mem[96]) + 320, data=mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10])
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[36], 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                else:
                    if address(cd[4]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, cd[36], address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
            else:
                if WETHAddress == address(cd[4]):
                    mem[(32 * ('cd', 260).length) + 420] = address(cd[228])
                    require ext_code.size(uniswapV2FactoryAddress)
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(cd[4]), address(cd[228])
                    mem[(32 * ('cd', 260).length) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    stor3 = ext_call.return_data[12 len 20]
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Requested pair is not available.'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 384] = 0
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448] = 1
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 544] = address(cd[228])
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 576] = 0
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 608] = 0
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 640] = 256
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 704] = 0
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736 len 0] = None
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 672] = 288
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736] = mem[96]
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 768 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if address(cd[4]) == address(ext_call.return_data[0]):
                        if address(cd[4]) == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args cd[36], cd[36], address(this.address), Array(len=ceil32(mem[96]) + 320, data=mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10])
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args cd[36], 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                    else:
                        if address(cd[4]) == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, cd[36], address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                else:
                    if WETHAddress == address(cd[228]):
                        mem[(32 * ('cd', 260).length) + 420] = address(cd[228])
                        require ext_code.size(uniswapV2FactoryAddress)
                        staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(cd[4]), address(cd[228])
                        mem[(32 * ('cd', 260).length) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        stor3 = ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested pair is not available.'
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 384] = 0
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448] = 1
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 544] = address(cd[228])
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 576] = 0
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 608] = 0
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 640] = 256
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 704] = 0
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736 len 0] = None
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 672] = 288
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736] = mem[96]
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 768 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(cd[4]) == address(ext_call.return_data[0]):
                            if address(cd[4]) == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args cd[36], cd[36], address(this.address), Array(len=ceil32(mem[96]) + 320, data=mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10])
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args cd[36], 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                        else:
                            if address(cd[4]) == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[36], address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                    else:
                        mem[(32 * ('cd', 260).length) + 420] = WETHAddress
                        require ext_code.size(uniswapV2FactoryAddress)
                        staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(cd[4]), WETHAddress
                        mem[(32 * ('cd', 260).length) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested borrow token is not available.'
                        mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 388] = address(cd[228])
                        mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 420] = WETHAddress
                        require ext_code.size(uniswapV2FactoryAddress)
                        staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(cd[228]), WETHAddress
                        mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        stor3 = ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested pay token is not available.'
                        mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 388] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < cd[36]:
                            revert with 0, '_amount is too big'
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 388] = address(ext_call.return_data[0])
                        require ext_code.size(WETHAddress)
                        staticcall WETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (997 * ext_call.return_data[0]) - (997 * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        mem[(32 * ('cd', 260).length) + (6 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        mem[(32 * ('cd', 260).length) + (7 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 416] = address(ext_call.return_data[0])
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 448] = (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 384] = 64
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512] = 2
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 544] = address(cd[4])
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 576] = cd[36]
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 608] = address(cd[228])
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 640] = 0
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 672] = 0
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 704] = 256
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 768] = 64
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 800 len 64] = address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 736] = 352
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 864] = mem[96]
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 896 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if WETHAddress == address(ext_call.return_data[0]):
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, address(this.address), Array(len=ceil32(mem[96]) + 384, data=mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12])
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, 0, address(this.address), 128, ceil32(mem[96]) + 384, mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12]
                        else:
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, address(this.address), 128, ceil32(mem[96]) + 384, mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12]
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, ceil32(mem[96]) + 384, mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12]
        else:
            if address(cd[4]) == WETHAddress:
                if WETHAddress == address(cd[4]):
                    mem[(32 * ('cd', 260).length) + 420] = DAIAddress
                    require ext_code.size(uniswapV2FactoryAddress)
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(cd[4]), DAIAddress
                else:
                    mem[(32 * ('cd', 260).length) + 420] = WETHAddress
                    require ext_code.size(uniswapV2FactoryAddress)
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(cd[4]), WETHAddress
                mem[(32 * ('cd', 260).length) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                stor3 = ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Requested _token is not available.'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 384] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 544] = address(cd[4])
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 576] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 608] = 1
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 640] = 256
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 704] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736 len 0] = None
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 672] = 288
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736] = mem[96]
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 768 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                require ext_code.size(address(ext_call.return_data[0]))
                if address(cd[4]) == address(ext_call.return_data[0]):
                    if address(cd[4]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[36], cd[36], address(this.address), Array(len=ceil32(mem[96]) + 320, data=mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10])
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[36], 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                else:
                    if address(cd[4]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, cd[36], address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
            else:
                mem[(32 * ('cd', 260).length) + 420] = WETHAddress
                require ext_code.size(uniswapV2FactoryAddress)
                staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(cd[4]), WETHAddress
                mem[(32 * ('cd', 260).length) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if WETHAddress == address(cd[4]):
                    stor3 = ext_call.return_data[12 len 20]
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Requested pair is not available.'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 384] = 0
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448] = 1
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 544] = WETHAddress
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 576] = 0
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 608] = 1
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 640] = 256
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 704] = 0
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736 len 0] = None
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 672] = 288
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736] = mem[96]
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 768 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if address(cd[4]) == address(ext_call.return_data[0]):
                        if address(cd[4]) == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args cd[36], cd[36], address(this.address), Array(len=ceil32(mem[96]) + 320, data=mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10])
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args cd[36], 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                    else:
                        if address(cd[4]) == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, cd[36], address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                else:
                    if WETHAddress == WETHAddress:
                        stor3 = ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested pair is not available.'
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 384] = 0
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448] = 1
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 480] = address(cd[4])
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 544] = WETHAddress
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 576] = 0
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 608] = 1
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 640] = 256
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 704] = 0
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736 len 0] = None
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 672] = 288
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736] = mem[96]
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 768 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(cd[4]) == address(ext_call.return_data[0]):
                            if address(cd[4]) == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args cd[36], cd[36], address(this.address), Array(len=ceil32(mem[96]) + 320, data=mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10])
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args cd[36], 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                        else:
                            if address(cd[4]) == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[36], address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                    else:
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested borrow token is not available.'
                        mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 388] = WETHAddress
                        mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 420] = WETHAddress
                        require ext_code.size(uniswapV2FactoryAddress)
                        staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args WETHAddress, WETHAddress
                        mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        stor3 = ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested pay token is not available.'
                        mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 388] = address(ext_call.return_data[0])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < cd[36]:
                            revert with 0, '_amount is too big'
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 388] = address(ext_call.return_data[0])
                        require ext_code.size(WETHAddress)
                        staticcall WETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (997 * ext_call.return_data[0]) - (997 * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        mem[(32 * ('cd', 260).length) + (6 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        mem[(32 * ('cd', 260).length) + (7 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 416] = address(ext_call.return_data[0])
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 448] = (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 384] = 64
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512] = 2
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 544] = address(cd[4])
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 576] = cd[36]
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 608] = WETHAddress
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 640] = 0
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 672] = 0
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 704] = 256
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 768] = 64
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 800 len 64] = address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 736] = 352
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 864] = mem[96]
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 896 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if WETHAddress == address(ext_call.return_data[0]):
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, address(this.address), Array(len=ceil32(mem[96]) + 384, data=mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12])
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, 0, address(this.address), 128, ceil32(mem[96]) + 384, mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12]
                        else:
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, address(this.address), 128, ceil32(mem[96]) + 384, mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12]
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, ceil32(mem[96]) + 384, mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12]
    else:
        mem[(32 * ('cd', 260).length) + 388] = WETHAddress
        if not address(cd[228]):
            if WETHAddress == WETHAddress:
                mem[(32 * ('cd', 260).length) + 420] = DAIAddress
                require ext_code.size(uniswapV2FactoryAddress)
                staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args WETHAddress, DAIAddress
                mem[(32 * ('cd', 260).length) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                stor3 = ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Requested _token is not available.'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 384] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 480] = WETHAddress
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 544] = WETHAddress
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 576] = 1
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 608] = 1
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 640] = 256
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 704] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736 len 0] = None
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 672] = 288
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736] = mem[96]
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 768 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                require ext_code.size(address(ext_call.return_data[0]))
                if WETHAddress == address(ext_call.return_data[0]):
                    if WETHAddress == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[36], cd[36], address(this.address), Array(len=ceil32(mem[96]) + 320, data=mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10])
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[36], 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                else:
                    if WETHAddress == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, cd[36], address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
            else:
                mem[(32 * ('cd', 260).length) + 420] = WETHAddress
                require ext_code.size(uniswapV2FactoryAddress)
                staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args WETHAddress, WETHAddress
                mem[(32 * ('cd', 260).length) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Requested borrow token is not available.'
                mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 388] = WETHAddress
                mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 420] = WETHAddress
                require ext_code.size(uniswapV2FactoryAddress)
                staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args WETHAddress, WETHAddress
                mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                stor3 = ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Requested pay token is not available.'
                mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 388] = address(ext_call.return_data[0])
                require ext_code.size(WETHAddress)
                staticcall WETHAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[36]:
                    revert with 0, '_amount is too big'
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 388] = address(ext_call.return_data[0])
                require ext_code.size(WETHAddress)
                staticcall WETHAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (997 * ext_call.return_data[0]) - (997 * cd[36])
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 260).length) + (6 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 260).length) + (7 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 416] = address(ext_call.return_data[0])
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 448] = (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 384] = 64
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512] = 2
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 544] = WETHAddress
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 576] = cd[36]
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 608] = WETHAddress
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 640] = 0
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 672] = 0
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 704] = 256
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 768] = 64
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 800 len 64] = address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 736] = 352
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 864] = mem[96]
                mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 896 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                require ext_code.size(address(ext_call.return_data[0]))
                if WETHAddress == address(ext_call.return_data[0]):
                    if WETHAddress == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, address(this.address), Array(len=ceil32(mem[96]) + 384, data=mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12])
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, 0, address(this.address), 128, ceil32(mem[96]) + 384, mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12]
                else:
                    if WETHAddress == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, address(this.address), 128, ceil32(mem[96]) + 384, mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12]
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, ceil32(mem[96]) + 384, mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12]
        else:
            if WETHAddress == address(cd[228]):
                if WETHAddress == WETHAddress:
                    mem[(32 * ('cd', 260).length) + 420] = DAIAddress
                    require ext_code.size(uniswapV2FactoryAddress)
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args WETHAddress, DAIAddress
                else:
                    mem[(32 * ('cd', 260).length) + 420] = WETHAddress
                    require ext_code.size(uniswapV2FactoryAddress)
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args WETHAddress, WETHAddress
                mem[(32 * ('cd', 260).length) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                stor3 = ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Requested _token is not available.'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 384] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 480] = WETHAddress
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 544] = WETHAddress
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 576] = 1
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 608] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 640] = 256
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 704] = 0
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736 len 0] = None
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 672] = 288
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736] = mem[96]
                mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 768 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                require ext_code.size(address(ext_call.return_data[0]))
                if WETHAddress == address(ext_call.return_data[0]):
                    if WETHAddress == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[36], cd[36], address(this.address), Array(len=ceil32(mem[96]) + 320, data=mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10])
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args cd[36], 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                else:
                    if WETHAddress == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, cd[36], address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
            else:
                if WETHAddress == WETHAddress:
                    mem[(32 * ('cd', 260).length) + 420] = address(cd[228])
                    require ext_code.size(uniswapV2FactoryAddress)
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args WETHAddress, address(cd[228])
                    mem[(32 * ('cd', 260).length) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    stor3 = ext_call.return_data[12 len 20]
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Requested pair is not available.'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 384] = 0
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448] = 1
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 480] = WETHAddress
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 544] = address(cd[228])
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 576] = 1
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 608] = 0
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 640] = 256
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 704] = 0
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736 len 0] = None
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 672] = 288
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736] = mem[96]
                    mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 768 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if WETHAddress == address(ext_call.return_data[0]):
                        if WETHAddress == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args cd[36], cd[36], address(this.address), Array(len=ceil32(mem[96]) + 320, data=mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10])
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args cd[36], 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                    else:
                        if WETHAddress == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, cd[36], address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                else:
                    if WETHAddress == address(cd[228]):
                        mem[(32 * ('cd', 260).length) + 420] = address(cd[228])
                        require ext_code.size(uniswapV2FactoryAddress)
                        staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args WETHAddress, address(cd[228])
                        mem[(32 * ('cd', 260).length) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        stor3 = ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested pair is not available.'
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 384] = 0
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448] = 1
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 480] = WETHAddress
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 512] = cd[36]
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 544] = address(cd[228])
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 576] = 1
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 608] = 0
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 640] = 256
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 704] = 0
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736 len 0] = None
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 672] = 288
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 736] = mem[96]
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 768 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if WETHAddress == address(ext_call.return_data[0]):
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args cd[36], cd[36], address(this.address), Array(len=ceil32(mem[96]) + 320, data=mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10])
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args cd[36], 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                        else:
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, cd[36], address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, ceil32(mem[96]) + 320, mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 448 len ceil32(ceil32(mem[96])) + 10]
                    else:
                        mem[(32 * ('cd', 260).length) + 420] = WETHAddress
                        require ext_code.size(uniswapV2FactoryAddress)
                        staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args WETHAddress, WETHAddress
                        mem[(32 * ('cd', 260).length) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested borrow token is not available.'
                        mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 388] = address(cd[228])
                        mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 420] = WETHAddress
                        require ext_code.size(uniswapV2FactoryAddress)
                        staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(cd[228]), WETHAddress
                        mem[(32 * ('cd', 260).length) + ceil32(return_data.size) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        stor3 = ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested pay token is not available.'
                        mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 388] = address(ext_call.return_data[0])
                        require ext_code.size(WETHAddress)
                        staticcall WETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        mem[(32 * ('cd', 260).length) + (2 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < cd[36]:
                            revert with 0, '_amount is too big'
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 388] = address(ext_call.return_data[0])
                        require ext_code.size(WETHAddress)
                        staticcall WETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        mem[(32 * ('cd', 260).length) + (4 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (997 * ext_call.return_data[0]) - (997 * cd[36])
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        mem[(32 * ('cd', 260).length) + (6 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        mem[(32 * ('cd', 260).length) + (7 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 416] = address(ext_call.return_data[0])
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 448] = (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 384] = 64
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512] = 2
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 544] = WETHAddress
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 576] = cd[36]
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 608] = address(cd[228])
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 640] = 0
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 672] = 0
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 704] = 256
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 768] = 64
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 800 len 64] = address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 736] = 352
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 864] = mem[96]
                        mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 896 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if WETHAddress == address(ext_call.return_data[0]):
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, address(this.address), Array(len=ceil32(mem[96]) + 384, data=mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12])
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, 0, address(this.address), 128, ceil32(mem[96]) + 384, mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12]
                        else:
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (1000 * ext_call.return_data[0] * cd[36] / (997 * ext_call.return_data[0]) - (997 * cd[36])) + 1, address(this.address), 128, ceil32(mem[96]) + 384, mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12]
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, ceil32(mem[96]) + 384, mem[(32 * ('cd', 260).length) + (8 * ceil32(return_data.size)) + 512 len ceil32(ceil32(mem[96])) + 12]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
