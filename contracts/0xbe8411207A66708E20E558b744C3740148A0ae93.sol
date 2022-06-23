contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 sub_3b6afa1c;
array of address sub_c02e9723;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function sub_3b6afa1c(?) payable {
    return sub_3b6afa1c
}

function sub_c02e9723(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c02e9723.length
    return sub_c02e9723[arg1]
}

function sub_e33b9fb3(?) payable {
    return sub_c02e9723.length
}

function _fallback() payable {
    revert
}

function sub_32051f3a(?) payable {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'msnsh'
    require ext_code.size(arg1)
    call arg1.0x71bdc541 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_919a38f8(?) payable {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, 'bncbs'
    require ext_code.size(arg1)
    call arg1.0xbc6301d6 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2f3fc7c3(?) payable {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'kdhsb'
    sub_3b6afa1c += arg2
    create contract with 0 wei
                    code: code.data[2357 len 764]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c02e9723.length++
    stor36B6[stor5.length] = address(create.new_address)
    require ext_code.size(stor1)
    staticcall stor1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if stor2 < stor3:
        if stor2 == stor2:
            if not arg2:
                require ext_call.return_data[18 len 14]
                if 10000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                code.data[3121 len 33],
                                code.data[2458 len 31]
                if 10000 * ext_call.return_data[18 len 14] < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                require 10000 * ext_call.return_data[18 len 14]
                require ext_code.size(arg1)
                call arg1.0x17883128 with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor1)
                if stor2 < stor3:
                    if stor2 != stor2:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(create.new_address), 128, 0
                    else:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(create.new_address), 128, 0
                else:
                    if stor2 != stor3:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(create.new_address), 128, 0
                    else:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(create.new_address), 128, 0
            else:
                if 9975 * arg2 / arg2 != 9975:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                code.data[3121 len 33],
                                code.data[2458 len 31]
                if not 9975 * arg2:
                    if not ext_call.return_data[18 len 14]:
                        if 9975 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 9975 * arg2
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 9975 * arg2, address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 9975 * arg2, address(create.new_address), 128, 0
                    else:
                        if 10000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        code.data[3121 len 33],
                                        code.data[2458 len 31]
                        if (9975 * arg2) + (10000 * ext_call.return_data[18 len 14]) < 10000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        require (9975 * arg2) + (10000 * ext_call.return_data[18 len 14])
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(create.new_address), 128, 0
                else:
                    if 9975 * ext_call.return_data[50 len 14] * arg2 / 9975 * arg2 != ext_call.return_data[50 len 14]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    code.data[3121 len 33],
                                    code.data[2458 len 31]
                    if not ext_call.return_data[18 len 14]:
                        if 9975 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 9975 * arg2
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / 9975 * arg2, address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / 9975 * arg2, address(create.new_address), 128, 0
                    else:
                        if 10000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        code.data[3121 len 33],
                                        code.data[2458 len 31]
                        if (9975 * arg2) + (10000 * ext_call.return_data[18 len 14]) < 10000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        require (9975 * arg2) + (10000 * ext_call.return_data[18 len 14])
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(create.new_address), 128, 0
        else:
            if not arg2:
                require ext_call.return_data[50 len 14]
                if 10000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                code.data[3121 len 33],
                                code.data[2458 len 31]
                if 10000 * ext_call.return_data[50 len 14] < 10000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                require 10000 * ext_call.return_data[50 len 14]
                require ext_code.size(arg1)
                call arg1.0x17883128 with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor1)
                if stor2 < stor3:
                    if stor2 != stor2:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(create.new_address), 128, 0
                    else:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(create.new_address), 128, 0
                else:
                    if stor2 != stor3:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(create.new_address), 128, 0
                    else:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(create.new_address), 128, 0
            else:
                if 9975 * arg2 / arg2 != 9975:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                code.data[3121 len 33],
                                code.data[2458 len 31]
                if not 9975 * arg2:
                    if not ext_call.return_data[50 len 14]:
                        if 9975 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 9975 * arg2
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 9975 * arg2, address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 9975 * arg2, address(create.new_address), 128, 0
                    else:
                        if 10000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        code.data[3121 len 33],
                                        code.data[2458 len 31]
                        if (9975 * arg2) + (10000 * ext_call.return_data[50 len 14]) < 10000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        require (9975 * arg2) + (10000 * ext_call.return_data[50 len 14])
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(create.new_address), 128, 0
                else:
                    if 9975 * ext_call.return_data[18 len 14] * arg2 / 9975 * arg2 != ext_call.return_data[18 len 14]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    code.data[3121 len 33],
                                    code.data[2458 len 31]
                    if not ext_call.return_data[50 len 14]:
                        if 9975 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 9975 * arg2
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / 9975 * arg2, address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / 9975 * arg2, address(create.new_address), 128, 0
                    else:
                        if 10000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        code.data[3121 len 33],
                                        code.data[2458 len 31]
                        if (9975 * arg2) + (10000 * ext_call.return_data[50 len 14]) < 10000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        require (9975 * arg2) + (10000 * ext_call.return_data[50 len 14])
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(create.new_address), 128, 0
    else:
        if stor3 == stor2:
            if not arg2:
                require ext_call.return_data[18 len 14]
                if 10000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                code.data[3121 len 33],
                                code.data[2458 len 31]
                if 10000 * ext_call.return_data[18 len 14] < 10000 * ext_call.return_data[18 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                require 10000 * ext_call.return_data[18 len 14]
                require ext_code.size(arg1)
                call arg1.0x17883128 with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor1)
                if stor2 < stor3:
                    if stor2 != stor2:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(create.new_address), 128, 0
                    else:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(create.new_address), 128, 0
                else:
                    if stor2 != stor3:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), 0, address(create.new_address), 128, 0
                    else:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[0]), address(create.new_address), 128, 0
            else:
                if 9975 * arg2 / arg2 != 9975:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                code.data[3121 len 33],
                                code.data[2458 len 31]
                if not 9975 * arg2:
                    if not ext_call.return_data[18 len 14]:
                        if 9975 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 9975 * arg2
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 9975 * arg2, address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 9975 * arg2, address(create.new_address), 128, 0
                    else:
                        if 10000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        code.data[3121 len 33],
                                        code.data[2458 len 31]
                        if (9975 * arg2) + (10000 * ext_call.return_data[18 len 14]) < 10000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        require (9975 * arg2) + (10000 * ext_call.return_data[18 len 14])
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(create.new_address), 128, 0
                else:
                    if 9975 * ext_call.return_data[50 len 14] * arg2 / 9975 * arg2 != ext_call.return_data[50 len 14]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    code.data[3121 len 33],
                                    code.data[2458 len 31]
                    if not ext_call.return_data[18 len 14]:
                        if 9975 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 9975 * arg2
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / 9975 * arg2, address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / 9975 * arg2, address(create.new_address), 128, 0
                    else:
                        if 10000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        code.data[3121 len 33],
                                        code.data[2458 len 31]
                        if (9975 * arg2) + (10000 * ext_call.return_data[18 len 14]) < 10000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        require (9975 * arg2) + (10000 * ext_call.return_data[18 len 14])
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[32]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[0])), address(create.new_address), 128, 0
        else:
            if not arg2:
                require ext_call.return_data[50 len 14]
                if 10000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                code.data[3121 len 33],
                                code.data[2458 len 31]
                if 10000 * ext_call.return_data[50 len 14] < 10000 * ext_call.return_data[50 len 14]:
                    revert with 0, 'SafeMath: addition overflow'
                require 10000 * ext_call.return_data[50 len 14]
                require ext_code.size(arg1)
                call arg1.0x17883128 with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor1)
                if stor2 < stor3:
                    if stor2 != stor2:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(create.new_address), 128, 0
                    else:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(create.new_address), 128, 0
                else:
                    if stor2 != stor3:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), 0, address(create.new_address), 128, 0
                    else:
                        call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0 / 10000 * Mask(112, 0, ext_call.return_data[32]), address(create.new_address), 128, 0
            else:
                if 9975 * arg2 / arg2 != 9975:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                code.data[3121 len 33],
                                code.data[2458 len 31]
                if not 9975 * arg2:
                    if not ext_call.return_data[50 len 14]:
                        if 9975 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 9975 * arg2
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 9975 * arg2, address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / 9975 * arg2, address(create.new_address), 128, 0
                    else:
                        if 10000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        code.data[3121 len 33],
                                        code.data[2458 len 31]
                        if (9975 * arg2) + (10000 * ext_call.return_data[50 len 14]) < 10000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        require (9975 * arg2) + (10000 * ext_call.return_data[50 len 14])
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(create.new_address), 128, 0
                else:
                    if 9975 * ext_call.return_data[18 len 14] * arg2 / 9975 * arg2 != ext_call.return_data[18 len 14]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    code.data[3121 len 33],
                                    code.data[2458 len 31]
                    if not ext_call.return_data[50 len 14]:
                        if 9975 * arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        require 9975 * arg2
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / 9975 * arg2, address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / 9975 * arg2, 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / 9975 * arg2, address(create.new_address), 128, 0
                    else:
                        if 10000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 10000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        code.data[3121 len 33],
                                        code.data[2458 len 31]
                        if (9975 * arg2) + (10000 * ext_call.return_data[50 len 14]) < 10000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        require (9975 * arg2) + (10000 * ext_call.return_data[50 len 14])
                        require ext_code.size(arg1)
                        call arg1.0x17883128 with:
                             gas gas_remaining wei
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor1)
                        if stor2 < stor3:
                            if stor2 != stor2:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(create.new_address), 128, 0
                        else:
                            if stor2 != stor3:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), 0, address(create.new_address), 128, 0
                            else:
                                call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 9975 * Mask(112, 0, ext_call.return_data[0]) * arg2 / (9975 * arg2) + (10000 * Mask(112, 0, ext_call.return_data[32])), address(create.new_address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
