contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_fa74648a(?) payable {
    require calldata.size - 4 >= 32
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_7f1539b4(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0] - Mask(112, 0, arg4) << 144, Mask(112, 0, ext_call.return_data[0] - Mask(112, 0, arg5))
}

function check(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32])
}

function run(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]) > 0
    if Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]) > 0:
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7750616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[202 len 26]
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        38,
                        0x7750616e63616b654c6962726172793a20494e53554646494349454e545f4c49515549444954,
                        mem[202 len 26]
        if not Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]):
            require Mask(112, 0, ext_call.return_data[32])
            require Mask(112, 0, ext_call.return_data[32])
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'SafeMath: addition overflow'
            require 1000 * Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(arg1)
            call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, uint32(0 / 1000 * Mask(112, 0, ext_call.return_data[32])), 0, address(this.address), 128, 0
        else:
            require Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32])
            if 998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]) != 998:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]):
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require 998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32])
                    require ext_code.size(arg1)
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, uint32(0 / 998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32])), 0, address(this.address), 128, 0
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]))
                    require ext_code.size(arg1)
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, uint32(0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]))), 0, address(this.address), 128, 0
            else:
                require 998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32])
                if 998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]) != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not Mask(112, 0, ext_call.return_data[32]):
                    if 998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    require 998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32])
                    require ext_code.size(arg1)
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, uint32(998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32])), 0, address(this.address), 128, 0
                else:
                    require Mask(112, 0, ext_call.return_data[32])
                    if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x54536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'SafeMath: addition overflow'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]))
                    require ext_code.size(arg1)
                    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, uint32(998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (998 * Mask(112, 0, ext_call.return_data[0] - ext_call.return_data[32]))), 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
