contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'o'
    stor0 = arg1
}

function sub_87121a1a(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    require arg4 == bool(arg4)
    if stor0 != msg.sender:
        revert with 0, 'o'
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(arg2))
    staticcall address(arg2).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c >= ext_call.return_data[12 len 20]:
        if Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14] >= ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0]):
            s = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + 1 / 2
            t = Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])
            while s < t:
                require s
                s = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                t = s
                continue 
            s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) + 1 / 2
            u = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]
            while s < u:
                require s
                s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / s) + s / 2
                u = s
                continue 
            require Mask(112, 0, ext_call.return_data[0]) + ext_call.return_data[18 len 14]
            if (u * t) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) / Mask(112, 0, ext_call.return_data[0]) + ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'aI'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'y'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'y'
            require (1000 * ext_call.return_data[50 len 14]) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) / Mask(112, 0, ext_call.return_data[0]) + ext_call.return_data[18 len 14])
            if 997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) / Mask(112, 0, ext_call.return_data[0]) + ext_call.return_data[18 len 14] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) / Mask(112, 0, ext_call.return_data[0]) + ext_call.return_data[18 len 14]) <= 0:
                revert with 0, 'aI'
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'y'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'y'
            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) / Mask(112, 0, ext_call.return_data[0]) + ext_call.return_data[18 len 14] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) / Mask(112, 0, ext_call.return_data[0]) + ext_call.return_data[18 len 14]))
            if 997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) / Mask(112, 0, ext_call.return_data[0]) + ext_call.return_data[18 len 14] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) / Mask(112, 0, ext_call.return_data[0]) + ext_call.return_data[18 len 14]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) / Mask(112, 0, ext_call.return_data[0]) + ext_call.return_data[18 len 14] * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) / Mask(112, 0, ext_call.return_data[0]) + ext_call.return_data[18 len 14])) >= (u * t) - (Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14]) / Mask(112, 0, ext_call.return_data[0]) + ext_call.return_data[18 len 14]:
                revert with 0, 'XXX'
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]) <= ext_call.return_data[0]:
                if 997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]))) >= (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'XXXY'
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg2), (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(arg2))
                call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg1), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]))), stor0, 128, 0
            else:
                if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'y'
                    require 1997 * Mask(112, 0, ext_call.return_data[32])
                    if 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'y'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'y'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32]))
                    if 997 * 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32])) >= Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'XXXY'
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(arg2), Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(arg2))
                    call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg1), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32])), stor0, 128, 0
                else:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'y'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'y'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'y'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'y'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                    if 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])) >= ext_call.return_data[0]:
                        revert with 0, 'XXXY'
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(arg2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(arg2))
                    call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(arg1), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])), stor0, 128, 0
        else:
            s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]) + 1 / 2
            t = ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14]
            while s < t:
                require s
                s = (ext_call.return_data[50 len 14] * ext_call.return_data[18 len 14] / s) + s / 2
                t = s
                continue 
            s = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) + 1 / 2
            u = Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])
            while s < u:
                require s
                s = (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / s) + s / 2
                u = s
                continue 
            require ext_call.return_data[18 len 14] + Mask(112, 0, ext_call.return_data[0])
            if (u * t) - (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[18 len 14] + Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'aI'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'y'
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'y'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[18 len 14] + Mask(112, 0, ext_call.return_data[0]))
            if 997 * (u * t) - (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[18 len 14] + Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[18 len 14] + Mask(112, 0, ext_call.return_data[0])) <= 0:
                revert with 0, 'aI'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'y'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'y'
            require (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * (u * t) - (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[18 len 14] + Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[18 len 14] + Mask(112, 0, ext_call.return_data[0])))
            if 997 * 997 * (u * t) - (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[18 len 14] + Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[18 len 14] + Mask(112, 0, ext_call.return_data[0])) * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * 997 * (u * t) - (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[18 len 14] + Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[18 len 14] + Mask(112, 0, ext_call.return_data[0]))) >= (u * t) - (ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32])) / ext_call.return_data[18 len 14] + Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'XXX'
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]) <= ext_call.return_data[0]:
                if 997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]))) >= (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'XXXY'
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0])), 0, address(arg2), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(arg2))
                call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0])) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) / 2 * Mask(112, 0, ext_call.return_data[0]))), stor0, 128, 0
            else:
                if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[32]):
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'y'
                    require 1997 * Mask(112, 0, ext_call.return_data[32])
                    if 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'y'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'y'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32]))
                    if 997 * 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32])) >= Mask(112, 0, ext_call.return_data[32]):
                        revert with 0, 'XXXY'
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Mask(112, 0, ext_call.return_data[32])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32]), 0, address(arg2), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg2))
                    call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0]) / 1997 * Mask(112, 0, ext_call.return_data[32])), stor0, 128, 0
                else:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'y'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'y'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])
                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'y'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'y'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]))
                    if 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])) >= ext_call.return_data[0]:
                        revert with 0, 'XXXY'
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]), 0, address(arg2), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg2))
                    call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0])), stor0, 128, 0
    else:
        if Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[50 len 14] >= ext_call.return_data[18 len 14] * Mask(112, 0, ext_call.return_data[32]):
            s = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + 1 / 2
            t = Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])
            while s < t:
                require s
                s = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                t = s
                continue 
            s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) + 1 / 2
            u = ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]
            while s < u:
                require s
                s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / s) + s / 2
                u = s
                continue 
            require Mask(112, 0, ext_call.return_data[32]) + ext_call.return_data[50 len 14]
            if (u * t) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14]) / Mask(112, 0, ext_call.return_data[32]) + ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'aI'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'y'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'y'
            require (1000 * ext_call.return_data[18 len 14]) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14]) / Mask(112, 0, ext_call.return_data[32]) + ext_call.return_data[50 len 14])
            if 997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14]) / Mask(112, 0, ext_call.return_data[32]) + ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14]) / Mask(112, 0, ext_call.return_data[32]) + ext_call.return_data[50 len 14]) <= 0:
                revert with 0, 'aI'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'y'
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'y'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14]) / Mask(112, 0, ext_call.return_data[32]) + ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14]) / Mask(112, 0, ext_call.return_data[32]) + ext_call.return_data[50 len 14]))
            if 997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14]) / Mask(112, 0, ext_call.return_data[32]) + ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14]) / Mask(112, 0, ext_call.return_data[32]) + ext_call.return_data[50 len 14]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14]) / Mask(112, 0, ext_call.return_data[32]) + ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14] / (1000 * ext_call.return_data[18 len 14]) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14]) / Mask(112, 0, ext_call.return_data[32]) + ext_call.return_data[50 len 14])) >= (u * t) - (Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[18 len 14]) / Mask(112, 0, ext_call.return_data[32]) + ext_call.return_data[50 len 14]:
                revert with 0, 'XXX'
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]) <= ext_call.return_data[0]:
                if 997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]))) >= (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'XXXY'
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg2), (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(arg2))
                call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32])), address(arg1), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]))), 0, stor0, 128, 0
            else:
                if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'y'
                    require 1997 * Mask(112, 0, ext_call.return_data[0])
                    if 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'y'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'y'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0]))
                    if 997 * 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0])) >= Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'XXXY'
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(arg2), Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(arg2))
                    call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0]), address(arg1), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0])), 0, stor0, 128, 0
                else:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'y'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'y'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'y'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'y'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                    if 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) >= ext_call.return_data[0]:
                        revert with 0, 'XXXY'
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(arg2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(arg2))
                    call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(arg1), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, stor0, 128, 0
        else:
            s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]) + 1 / 2
            t = ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14]
            while s < t:
                require s
                s = (ext_call.return_data[18 len 14] * ext_call.return_data[50 len 14] / s) + s / 2
                t = s
                continue 
            s = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])) + 1 / 2
            u = Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32])
            while s < u:
                require s
                s = (Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / s) + s / 2
                u = s
                continue 
            require ext_call.return_data[50 len 14] + Mask(112, 0, ext_call.return_data[32])
            if (u * t) - (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[50 len 14] + Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'aI'
            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                revert with 0, 'y'
            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                revert with 0, 'y'
            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[50 len 14] + Mask(112, 0, ext_call.return_data[32]))
            if 997 * (u * t) - (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[50 len 14] + Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[50 len 14] + Mask(112, 0, ext_call.return_data[32])) <= 0:
                revert with 0, 'aI'
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 'y'
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 'y'
            require (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * (u * t) - (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[50 len 14] + Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[50 len 14] + Mask(112, 0, ext_call.return_data[32])))
            if 997 * 997 * (u * t) - (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[50 len 14] + Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[50 len 14] + Mask(112, 0, ext_call.return_data[32])) * ext_call.return_data[18 len 14] / (1000 * ext_call.return_data[50 len 14]) + (997 * 997 * (u * t) - (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[50 len 14] + Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[50 len 14] + Mask(112, 0, ext_call.return_data[32]))) >= (u * t) - (ext_call.return_data[50 len 14] * Mask(112, 0, ext_call.return_data[0])) / ext_call.return_data[50 len 14] + Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'XXX'
            require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
            staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
                    gas gas_remaining wei
                   args stor0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]) <= ext_call.return_data[0]:
                if 997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]))) >= (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'XXXY'
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(address(arg1))
                call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, 997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32])), address(arg2), 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(arg2))
                call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * (u * t) - (Mask(112, 0, ext_call.return_data[32]) * Mask(112, 0, ext_call.return_data[0])) / 2 * Mask(112, 0, ext_call.return_data[32]))), 0, stor0, 128, 0
            else:
                if ext_call.return_data[0] > Mask(112, 0, ext_call.return_data[0]):
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'y'
                    require 1997 * Mask(112, 0, ext_call.return_data[0])
                    if 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'y'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'y'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0]))
                    if 997 * 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0])) >= Mask(112, 0, ext_call.return_data[0]):
                        revert with 0, 'XXXY'
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Mask(112, 0, ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0]), address(arg2), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg2))
                    call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * Mask(112, 0, ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[32]) / 1997 * Mask(112, 0, ext_call.return_data[0])), 0, stor0, 128, 0
                else:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'y'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'y'
                    require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])
                    if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) <= 0:
                        revert with 0, 'aI'
                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                        revert with 0, 'y'
                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                        revert with 0, 'y'
                    require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]))
                    if 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])) >= ext_call.return_data[0]:
                        revert with 0, 'XXXY'
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(address(arg1))
                    call address(arg1).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]), address(arg2), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(arg2))
                    call address(arg2).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0])), 0, stor0, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 'X'
}



}
