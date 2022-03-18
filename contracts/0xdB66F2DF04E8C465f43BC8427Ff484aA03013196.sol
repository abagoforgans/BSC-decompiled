contract main {




// =====================  Runtime code  =====================


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

function sub_937c70dd(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args wethAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.getPair(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg3), wethAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        revert with 0, 'UniswapV2: PAIRB_NOT_EXISTS'
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'UniswapV2: PAIRS_NOT_EXISTS'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if wethAddress < arg3:
        if arg3 < wethAddress:
            s = 0
            s = 0
            s = 0
            idx = 0
            while idx < eth.balance(this.address):
                if uint255(idx + eth.balance(this.address) + 1) * 0.5 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[207 len 21]
                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 / 997 != uint255(idx + eth.balance(this.address) + 1) * 0.5:
                    revert with 0, 'ds-math-mul-overflow'
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                    if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    43,
                                    0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                    mem[207 len 21]
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    40,
                                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[204 len 24]
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    40,
                                    0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                    mem[204 len 24]
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) / 997 != 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
                        revert with 0, 'ds-math-mul-overflow'
                    if not ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-mul-overflow'
                        if (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'ds-math-add-overflow'
                        require (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                        if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                            s = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                            s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                            idx = idx
                            continue 
                        s = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                        s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                        idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
                        continue 
                    require ext_call.return_data[50 len 14]
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                    if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                        s = 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                        s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                        idx = idx
                        continue 
                    s = 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                    s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                    idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
                    continue 
                require Mask(112, 0, ext_call.return_data[32])
                if 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5:
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                if 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[207 len 21]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) / 997 != 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                        s = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                        s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                        s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                        idx = idx
                        continue 
                    s = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                    s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                    s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                    idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
                    continue 
                require ext_call.return_data[50 len 14]
                if 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                if 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                    s = 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                    s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                    s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                    idx = idx
                    continue 
                s = 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
                continue 
            return idx, 
                   ext_call.return_data[32 len 64],
                   ext_call.return_data[32] << 144,
                   ext_call.return_data[0] << 144,
                   Mask(112, 0, ext_call.return_data[32])
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < eth.balance(this.address):
            if uint255(idx + eth.balance(this.address) + 1) * 0.5 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[207 len 21]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 / 997 != uint255(idx + eth.balance(this.address) + 1) * 0.5:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[32]):
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[207 len 21]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) / 997 != 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[18 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                    if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                        s = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                        s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                        idx = idx
                        continue 
                    s = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                    s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                    idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
                    continue 
                require ext_call.return_data[18 len 14]
                if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                    s = 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                    s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                    idx = idx
                    continue 
                s = 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
                continue 
            require Mask(112, 0, ext_call.return_data[32])
            if 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
            if 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[207 len 21]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) / 997 != 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[18 len 14]:
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                    s = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                    s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                    s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                    idx = idx
                    continue 
                s = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
                continue 
            require ext_call.return_data[18 len 14]
            if 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
            if 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                s = 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                idx = idx
                continue 
            s = 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
            s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
            s = uint255(idx + eth.balance(this.address) + 1) * 0.5
            idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
            continue 
        return idx, 
               ext_call.return_data[32 len 64],
               ext_call.return_data[32] << 144,
               ext_call.return_data[32] << 144,
               Mask(112, 0, ext_call.return_data[0])
    if arg3 < wethAddress:
        s = 0
        s = 0
        s = 0
        idx = 0
        while idx < eth.balance(this.address):
            if uint255(idx + eth.balance(this.address) + 1) * 0.5 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[207 len 21]
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 / 997 != uint255(idx + eth.balance(this.address) + 1) * 0.5:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[207 len 21]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) / 997 != 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
                    revert with 0, 'ds-math-mul-overflow'
                if not ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-mul-overflow'
                    if (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[18 len 14]:
                        revert with 0, 'ds-math-add-overflow'
                    require (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                    if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                        s = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                        s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                        s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                        idx = idx
                        continue 
                    s = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                    s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                    idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
                    continue 
                require ext_call.return_data[50 len 14]
                if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                    s = 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                    s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                    idx = idx
                    continue 
                s = 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
                continue 
            require Mask(112, 0, ext_call.return_data[0])
            if 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
            if 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[207 len 21]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) / 997 != 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[50 len 14]:
                if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                if 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                    s = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                    s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                    s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                    idx = idx
                    continue 
                s = 0 / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
                continue 
            require ext_call.return_data[50 len 14]
            if 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[18 len 14] / 1000 != ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[18 len 14]:
                revert with 0, 'ds-math-add-overflow'
            require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
            if 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                s = 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                idx = idx
                continue 
            s = 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
            s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
            s = uint255(idx + eth.balance(this.address) + 1) * 0.5
            idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
            continue 
        return idx, 
               ext_call.return_data[32 len 64],
               ext_call.return_data[0] << 144,
               ext_call.return_data[0] << 144,
               Mask(112, 0, ext_call.return_data[32])
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < eth.balance(this.address):
        if uint255(idx + eth.balance(this.address) + 1) * 0.5 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                        mem[207 len 21]
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[204 len 24]
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[204 len 24]
        if 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 / 997 != uint255(idx + eth.balance(this.address) + 1) * 0.5:
            revert with 0, 'ds-math-mul-overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
            if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[207 len 21]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) / 997 != 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
                revert with 0, 'ds-math-mul-overflow'
            if not ext_call.return_data[18 len 14]:
                if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                    s = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                    s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                    s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                    idx = idx
                    continue 
                s = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
                continue 
            require ext_call.return_data[18 len 14]
            if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            require (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
            if 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                s = 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                idx = idx
                continue 
            s = 997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
            s = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
            s = uint255(idx + eth.balance(this.address) + 1) * 0.5
            idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
            continue 
        require Mask(112, 0, ext_call.return_data[0])
        if 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ds-math-mul-overflow'
        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) < 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ds-math-add-overflow'
        require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
        if 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x59556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                        mem[207 len 21]
        if ext_call.return_data[50 len 14] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[204 len 24]
        if ext_call.return_data[18 len 14] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[204 len 24]
        if 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) / 997 != 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
            revert with 0, 'ds-math-mul-overflow'
        if not ext_call.return_data[18 len 14]:
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[50 len 14]:
                revert with 0, 'ds-math-add-overflow'
            require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
            if 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
                s = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
                s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
                s = uint255(idx + eth.balance(this.address) + 1) * 0.5
                idx = idx
                continue 
            s = 0 / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
            s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
            s = uint255(idx + eth.balance(this.address) + 1) * 0.5
            idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
            continue 
        require ext_call.return_data[18 len 14]
        if 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5):
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-mul-overflow'
        if (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) < 1000 * ext_call.return_data[50 len 14]:
            revert with 0, 'ds-math-add-overflow'
        require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
        if 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)) <= uint255(idx + eth.balance(this.address) + 1) * 0.5:
            s = 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
            s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
            s = uint255(idx + eth.balance(this.address) + 1) * 0.5
            idx = idx
            continue 
        s = 997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5))
        s = 997 * uint255(idx + eth.balance(this.address) + 1) * 0.5 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * uint255(idx + eth.balance(this.address) + 1) * 0.5)
        s = uint255(idx + eth.balance(this.address) + 1) * 0.5
        idx = uint255(idx + eth.balance(this.address) + 1) * 0.5
        continue 
    return idx, 
           ext_call.return_data[32 len 64],
           ext_call.return_data[0] << 144,
           ext_call.return_data[32] << 144,
           Mask(112, 0, ext_call.return_data[0])
}



}
