contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sellBase(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[18 len 14]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe556e69416461707465723a20494e53554646494349454e545f4c49515549444954,
                    mem[198 len 30]
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe556e69416461707465723a20494e53554646494349454e545f4c49515549444954,
                    mem[198 len 30]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not Mask(144, 112, ext_call.return_data[0]):
        require Mask(112, 0, ext_call.return_data[0])
        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
            revert with 0, 'MUL_ERROR'
        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'ADD_ERROR'
        require 1000 * Mask(112, 0, ext_call.return_data[0])
        require ext_code.size(arg2)
        call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 0 / 1000 * Mask(112, 0, ext_call.return_data[0]), address(arg1), 128, 0
    else:
        if 997 * Mask(144, 112, ext_call.return_data[0]) / Mask(144, 112, ext_call.return_data[0]) != 997:
            revert with 0, 'MUL_ERROR'
        if not 997 * Mask(144, 112, ext_call.return_data[0]):
            if not Mask(112, 0, ext_call.return_data[0]):
                if 997 * Mask(144, 112, ext_call.return_data[0]) < 0:
                    revert with 0, 'ADD_ERROR'
                require 997 * Mask(144, 112, ext_call.return_data[0])
                require ext_code.size(arg2)
                call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0 / 997 * Mask(144, 112, ext_call.return_data[0]), address(arg1), 128, 0
            else:
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                    revert with 0, 'MUL_ERROR'
                if (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ADD_ERROR'
                require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(arg2)
                call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 0 / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(arg1), 128, 0
        else:
            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 997 * Mask(144, 112, ext_call.return_data[0]) != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'MUL_ERROR'
            if not Mask(112, 0, ext_call.return_data[0]):
                if 997 * Mask(144, 112, ext_call.return_data[0]) < 0:
                    revert with 0, 'ADD_ERROR'
                require 997 * Mask(144, 112, ext_call.return_data[0])
                require ext_code.size(arg2)
                call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 997 * Mask(144, 112, ext_call.return_data[0]), address(arg1), 128, 0
            else:
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
                    revert with 0, 'MUL_ERROR'
                if (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ADD_ERROR'
                require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0]))
                require ext_code.size(arg2)
                call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32])) - (997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[0])), address(arg1), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sellQuote(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe556e69416461707465723a20494e53554646494349454e545f4c49515549444954,
                    mem[198 len 30]
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe556e69416461707465723a20494e53554646494349454e545f4c49515549444954,
                    mem[198 len 30]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]):
        require Mask(112, 0, ext_call.return_data[32])
        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
            revert with 0, 'MUL_ERROR'
        if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 'ADD_ERROR'
        require 1000 * Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(arg2)
        call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0 / 1000 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg1), 128, 0
    else:
        if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[0] - Mask(112, 0, ext_call.return_data[32]) != 997:
            revert with 0, 'MUL_ERROR'
        if not (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])):
            if not Mask(112, 0, ext_call.return_data[32]):
                if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) < 0:
                    revert with 0, 'ADD_ERROR'
                require (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(arg2)
                call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0 / (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg1), 128, 0
            else:
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                    revert with 0, 'MUL_ERROR'
                if (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ADD_ERROR'
                require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(arg2)
                call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0 / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg1), 128, 0
        else:
            if (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'MUL_ERROR'
            if not Mask(112, 0, ext_call.return_data[32]):
                if (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])) < 0:
                    revert with 0, 'ADD_ERROR'
                require (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(arg2)
                call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) - (997 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg1), 128, 0
            else:
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                    revert with 0, 'MUL_ERROR'
                if (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ADD_ERROR'
                require (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32]))
                require ext_code.size(arg2)
                call arg2.swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0])) - (997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / (997 * ext_call.return_data[0]) + (3 * Mask(112, 0, ext_call.return_data[32])), 0, address(arg1), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
