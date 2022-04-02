contract main {




// =====================  Runtime code  =====================


#
#  - pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#  - doApprove(address arg1, address arg2)
#
address uniswapV2FactoryAddress;
address WETHAddress;
address DAIAddress;
address stor3;
address owner;
address bankAddress;
address sub_69a4b684Address;

function uniswapV2Factory() {
    return uniswapV2FactoryAddress
}

function sub_69a4b684(?) {
    return sub_69a4b684Address
}

function bank() {
    return bankAddress
}

function owner() {
    return owner
}

function WETH() {
    return WETHAddress
}

function DAI() {
    return DAIAddress
}

function _fallback() payable {
    revert
}

function set(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    DAIAddress = arg1
    uniswapV2FactoryAddress = arg2
    WETHAddress = arg3
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
    mem[(32 * ('cd', 36).length) + 128] = 68
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(cd[4])):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(address(cd[4])):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(32 * ('cd', 36).length) + 228 len 96] = 0, sub_69a4b684Address, 0, mem[(32 * ('cd', 36).length) + 228 len 28]
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
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), sub_69a4b684Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
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
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 332] = ext_call.return_data[0]
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 364] = 0
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 396] = 160
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 492] = ('cd', 36).length
            idx = 0
            s = (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 524
            t = 128
            while idx < ('cd', 36).length:
                mem[s] = mem[t + 12 len 20]
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
        else:
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
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 333] = ext_call.return_data[0]
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 365] = 0
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 397] = 160
            mem[(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = ('cd', 36).length
            idx = 0
            s = (32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 525
            t = 128
            while idx < ('cd', 36).length:
                mem[s] = mem[t + 12 len 20]
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
    else:
        mem[(32 * ('cd', 36).length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(32 * ('cd', 36).length) + 260] == bool(mem[(32 * ('cd', 36).length) + 260])
            if not mem[(32 * ('cd', 36).length) + 260]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), sub_69a4b684Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
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
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 333] = ext_call.return_data[0]
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 365] = 0
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 397] = 160
            mem[(32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 493] = ('cd', 36).length
            idx = 0
            s = (32 * ('cd', 36).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 525
            t = 128
            while idx < ('cd', 36).length:
                mem[s] = mem[t + 12 len 20]
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
        else:
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
            mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 334] = ext_call.return_data[0]
            mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 366] = 0
            mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 398] = 160
            mem[(32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 494] = ('cd', 36).length
            idx = 0
            s = (32 * ('cd', 36).length) + (6 * ceil32(return_data.size)) + 526
            t = 128
            while idx < ('cd', 36).length:
                mem[s] = mem[t + 12 len 20]
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
}

function sub_a519f727(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(uniswapV2FactoryAddress)
    if address(arg2) != 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:
        if address(arg5) != 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb:
            if address(arg2) == address(arg5):
                if WETHAddress == address(arg2):
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), DAIAddress
                else:
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), WETHAddress
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
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if address(arg2) == address(ext_call.return_data[0]):
                    if address(arg2) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg3, arg3, address(this.address), 128, 384, 0, address(arg2), arg3, address(arg2), 0, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg3, 0, address(this.address), 128, 384, 0, address(arg2), arg3, address(arg2), 0, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                else:
                    if address(arg2) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, arg3, address(this.address), 128, 384, 0, address(arg2), arg3, address(arg2), 0, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 384, 0, address(arg2), arg3, address(arg2), 0, 0, 256, 288, 0, 64, address(arg1), address(arg4)
            else:
                if WETHAddress == address(arg2):
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), address(arg5)
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
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if address(arg2) == address(ext_call.return_data[0]):
                        if address(arg2) == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg3, arg3, address(this.address), 128, 384, 1, address(arg2), arg3, address(arg5), 0, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg3, 0, address(this.address), 128, 384, 1, address(arg2), arg3, address(arg5), 0, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                    else:
                        if address(arg2) == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, arg3, address(this.address), 128, 384, 1, address(arg2), arg3, address(arg5), 0, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 384, 1, address(arg2), arg3, address(arg5), 0, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                else:
                    if WETHAddress == address(arg5):
                        staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), address(arg5)
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
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(arg2) == address(ext_call.return_data[0]):
                            if address(arg2) == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg3, arg3, address(this.address), 128, 384, 1, address(arg2), arg3, address(arg5), 0, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg3, 0, address(this.address), 128, 384, 1, address(arg2), arg3, address(arg5), 0, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                        else:
                            if address(arg2) == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg3, address(this.address), 128, 384, 1, address(arg2), arg3, address(arg5), 0, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 384, 1, address(arg2), arg3, address(arg5), 0, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                    else:
                        staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg2), WETHAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested borrow token is not available.'
                        require ext_code.size(uniswapV2FactoryAddress)
                        staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg5), WETHAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        stor3 = ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested pay token is not available.'
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg3:
                            revert with 0, '_amount is too big'
                        require ext_code.size(WETHAddress)
                        staticcall WETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (997 * ext_call.return_data[0]) - (997 * arg3)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if WETHAddress == address(ext_call.return_data[0]):
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, address(this.address), 128, 448, 2, address(arg2), Mask(96, 160, arg3) >> 160
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, 0, address(this.address), 128, 448, 2, address(arg2), Mask(96, 160, arg3) >> 160
                        else:
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, address(this.address), 128, 448, 2, address(arg2), Mask(96, 160, arg3) >> 160
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 448, 2, address(arg2), Mask(96, 160, arg3) >> 160
        else:
            if address(arg2) == WETHAddress:
                if WETHAddress == address(arg2):
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), DAIAddress
                else:
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg2), WETHAddress
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
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if address(arg2) == address(ext_call.return_data[0]):
                    if address(arg2) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg3, arg3, address(this.address), 128, 384, 0, address(arg2), arg3, address(arg2), 0, 1, 256, 288, 0, 64, address(arg1), address(arg4)
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg3, 0, address(this.address), 128, 384, 0, address(arg2), arg3, address(arg2), 0, 1, 256, 288, 0, 64, address(arg1), address(arg4)
                else:
                    if address(arg2) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, arg3, address(this.address), 128, 384, 0, address(arg2), arg3, address(arg2), 0, 1, 256, 288, 0, 64, address(arg1), address(arg4)
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 384, 0, address(arg2), arg3, address(arg2), 0, 1, 256, 288, 0, 64, address(arg1), address(arg4)
            else:
                staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg2), WETHAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if WETHAddress == address(arg2):
                    stor3 = ext_call.return_data[12 len 20]
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Requested pair is not available.'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if address(arg2) == address(ext_call.return_data[0]):
                        if address(arg2) == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg3, arg3, address(this.address), 128, 384, 1, address(arg2), arg3, WETHAddress, 0, 1, 256, 288, 0, 64, address(arg1), address(arg4)
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg3, 0, address(this.address), 128, 384, 1, address(arg2), arg3, WETHAddress, 0, 1, 256, 288, 0, 64, address(arg1), address(arg4)
                    else:
                        if address(arg2) == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, arg3, address(this.address), 128, 384, 1, address(arg2), arg3, WETHAddress, 0, 1, 256, 288, 0, 64, address(arg1), address(arg4)
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 384, 1, address(arg2), arg3, WETHAddress, 0, 1, 256, 288, 0, 64, address(arg1), address(arg4)
                else:
                    if WETHAddress == WETHAddress:
                        stor3 = ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested pair is not available.'
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(arg2) == address(ext_call.return_data[0]):
                            if address(arg2) == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg3, arg3, address(this.address), 128, 384, 1, address(arg2), arg3, WETHAddress, 0, 1, 256, 288, 0, 64, address(arg1), address(arg4)
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg3, 0, address(this.address), 128, 384, 1, address(arg2), arg3, WETHAddress, 0, 1, 256, 288, 0, 64, address(arg1), address(arg4)
                        else:
                            if address(arg2) == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg3, address(this.address), 128, 384, 1, address(arg2), arg3, WETHAddress, 0, 1, 256, 288, 0, 64, address(arg1), address(arg4)
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 384, 1, address(arg2), arg3, WETHAddress, 0, 1, 256, 288, 0, 64, address(arg1), address(arg4)
                    else:
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested borrow token is not available.'
                        require ext_code.size(uniswapV2FactoryAddress)
                        staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args WETHAddress, WETHAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        stor3 = ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested pay token is not available.'
                        require ext_code.size(address(arg2))
                        staticcall address(arg2).0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg3:
                            revert with 0, '_amount is too big'
                        require ext_code.size(WETHAddress)
                        staticcall WETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (997 * ext_call.return_data[0]) - (997 * arg3)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if WETHAddress == address(ext_call.return_data[0]):
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, address(this.address), 128, 448, 2, address(arg2), Mask(96, 160, arg3) >> 160
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, 0, address(this.address), 128, 448, 2, address(arg2), Mask(96, 160, arg3) >> 160
                        else:
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, address(this.address), 128, 448, 2, address(arg2), Mask(96, 160, arg3) >> 160
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 448, 2, address(arg2), Mask(96, 160, arg3) >> 160
    else:
        if 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb == address(arg5):
            if WETHAddress == WETHAddress:
                staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args WETHAddress, DAIAddress
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
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if WETHAddress == address(ext_call.return_data[0]):
                    if WETHAddress == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg3, arg3, address(this.address), 128, 384, 0, WETHAddress, arg3, WETHAddress, 1, 1, 256, 288, 0, 64, address(arg1), address(arg4)
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg3, 0, address(this.address), 128, 384, 0, WETHAddress, arg3, WETHAddress, 1, 1, 256, 288, 0, 64, address(arg1), address(arg4)
                else:
                    if WETHAddress == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, arg3, address(this.address), 128, 384, 0, WETHAddress, arg3, WETHAddress, 1, 1, 256, 288, 0, 64, address(arg1), address(arg4)
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 384, 0, WETHAddress, arg3, WETHAddress, 1, 1, 256, 288, 0, 64, address(arg1), address(arg4)
            else:
                staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args WETHAddress, WETHAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Requested borrow token is not available.'
                require ext_code.size(uniswapV2FactoryAddress)
                staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args WETHAddress, WETHAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                stor3 = ext_call.return_data[12 len 20]
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Requested pay token is not available.'
                require ext_code.size(WETHAddress)
                staticcall WETHAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg3:
                    revert with 0, '_amount is too big'
                require ext_code.size(WETHAddress)
                staticcall WETHAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (997 * ext_call.return_data[0]) - (997 * arg3)
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if WETHAddress == address(ext_call.return_data[0]):
                    if WETHAddress == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, address(this.address), 128, 448, 2, WETHAddress, Mask(96, 160, arg3) >> 160
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, 0, address(this.address), 128, 448, 2, WETHAddress, Mask(96, 160, arg3) >> 160
                else:
                    if WETHAddress == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, address(this.address), 128, 448, 2, WETHAddress, Mask(96, 160, arg3) >> 160
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 448, 2, WETHAddress, Mask(96, 160, arg3) >> 160
        else:
            if WETHAddress == address(arg5):
                if WETHAddress == WETHAddress:
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args WETHAddress, DAIAddress
                else:
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args WETHAddress, WETHAddress
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
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(ext_call.return_data[0]))
                if WETHAddress == address(ext_call.return_data[0]):
                    if WETHAddress == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg3, arg3, address(this.address), 128, 384, 0, WETHAddress, arg3, WETHAddress, 1, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg3, 0, address(this.address), 128, 384, 0, WETHAddress, arg3, WETHAddress, 1, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                else:
                    if WETHAddress == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, arg3, address(this.address), 128, 384, 0, WETHAddress, arg3, WETHAddress, 1, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 384, 0, WETHAddress, arg3, WETHAddress, 1, 0, 256, 288, 0, 64, address(arg1), address(arg4)
            else:
                if WETHAddress == WETHAddress:
                    staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args WETHAddress, address(arg5)
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
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if WETHAddress == address(ext_call.return_data[0]):
                        if WETHAddress == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg3, arg3, address(this.address), 128, 384, 1, WETHAddress, arg3, address(arg5), 1, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg3, 0, address(this.address), 128, 384, 1, WETHAddress, arg3, address(arg5), 1, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                    else:
                        if WETHAddress == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, arg3, address(this.address), 128, 384, 1, WETHAddress, arg3, address(arg5), 1, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 384, 1, WETHAddress, arg3, address(arg5), 1, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                else:
                    if WETHAddress == address(arg5):
                        staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args WETHAddress, address(arg5)
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
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if WETHAddress == address(ext_call.return_data[0]):
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg3, arg3, address(this.address), 128, 384, 1, WETHAddress, arg3, address(arg5), 1, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg3, 0, address(this.address), 128, 384, 1, WETHAddress, arg3, address(arg5), 1, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                        else:
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg3, address(this.address), 128, 384, 1, WETHAddress, arg3, address(arg5), 1, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 384, 1, WETHAddress, arg3, address(arg5), 1, 0, 256, 288, 0, 64, address(arg1), address(arg4)
                    else:
                        staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args WETHAddress, WETHAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested borrow token is not available.'
                        require ext_code.size(uniswapV2FactoryAddress)
                        staticcall uniswapV2FactoryAddress.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg5), WETHAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        stor3 = ext_call.return_data[12 len 20]
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested pay token is not available.'
                        require ext_code.size(WETHAddress)
                        staticcall WETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg3:
                            revert with 0, '_amount is too big'
                        require ext_code.size(WETHAddress)
                        staticcall WETHAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (997 * ext_call.return_data[0]) - (997 * arg3)
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        if WETHAddress == address(ext_call.return_data[0]):
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, address(this.address), 128, 448, 2, WETHAddress, Mask(96, 160, arg3) >> 160
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, 0, address(this.address), 128, 448, 2, WETHAddress, Mask(96, 160, arg3) >> 160
                        else:
                            if WETHAddress == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (1000 * ext_call.return_data[0] * arg3 / (997 * ext_call.return_data[0]) - (997 * arg3)) + 1, address(this.address), 128, 448, 2, WETHAddress, Mask(96, 160, arg3) >> 160
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 448, 2, WETHAddress, Mask(96, 160, arg3) >> 160
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
