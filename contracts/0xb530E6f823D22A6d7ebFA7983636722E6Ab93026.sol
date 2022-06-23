contract main {




// =====================  Runtime code  =====================


const bentoBox = 0x74a0bca2eeedf8883cb91e37e9ff49430f20a616

const sub_957489d9(?) = 0x2dd7c9371965472e5a5fd28fbe165007c61439e1

const MIM = 0x82f0b8b456c1a451378467398982d4834b6829c1


function _fallback() payable {
    revert
}

function swapExact(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    return 0
}

function swap(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(0x74a0bca2eeedf8883cb91e37e9ff49430f20a616)
    call 0x74a0bca2eeedf8883cb91e37e9ff49430f20a616.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, this.address, 0xec7178f4c41f346b2721907f5cf7628e388a7a58, 0, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xa48d959ae2e88f1daa7d5f611e01908106de7598)
    call 0xa48d959ae2e88f1daa7d5f611e01908106de7598.leave(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x841fad6eae12c286d1fd18d1d525dffa75c7effe)
    staticcall 0x841fad6eae12c286d1fd18d1d525dffa75c7effe.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xec7178f4c41f346b2721907f5cf7628e388a7a58)
    staticcall 0xec7178f4c41f346b2721907f5cf7628e388a7a58.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if 997 * ext_call.return_data[0] / 997 != ext_call.return_data[0]:
        revert with 0, 'BoringMath: Mul Overflow'
    if not ext_call.return_data[18 len 14]:
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14])
        require ext_code.size(0xec7178f4c41f346b2721907f5cf7628e388a7a58)
        call 0xec7178f4c41f346b2721907f5cf7628e388a7a58.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c)
        staticcall 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 != 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 'BoringMath: Mul Overflow'
        if not ext_call.return_data[18 len 14]:
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'BoringMath: Mul Overflow'
            if (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14]) < 997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'BoringMath: Add Overflow'
            require (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14])
            require ext_code.size(0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c)
            call 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0 / (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, this.address, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
            call 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                 gas gas_remaining wei
                args 2, 0, 0 / (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0, 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c
        else:
            require ext_call.return_data[18 len 14]
            if 997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'BoringMath: Mul Overflow'
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'BoringMath: Mul Overflow'
            if (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14]) < 997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'BoringMath: Add Overflow'
            require (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14])
            require ext_code.size(0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c)
            call 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, this.address, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
            call 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                 gas gas_remaining wei
                args 2, 0, 997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (997 * 0 / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0, 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c
    else:
        require ext_call.return_data[18 len 14]
        if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Mul Overflow'
        if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
            revert with 0, 'BoringMath: Mul Overflow'
        if (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14]) < 997 * ext_call.return_data[0]:
            revert with 0, 'BoringMath: Add Overflow'
        require (997 * ext_call.return_data[0]) + (1000 * ext_call.return_data[50 len 14])
        require ext_code.size(0xec7178f4c41f346b2721907f5cf7628e388a7a58)
        call 0xec7178f4c41f346b2721907f5cf7628e388a7a58.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c)
        staticcall 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c.getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 != 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 'BoringMath: Mul Overflow'
        if not ext_call.return_data[18 len 14]:
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'BoringMath: Mul Overflow'
            if (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14]) < 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'BoringMath: Add Overflow'
            require (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14])
            require ext_code.size(0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c)
            call 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0 / (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, this.address, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
            call 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                 gas gas_remaining wei
                args 2, 0, 0 / (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0, 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c
        else:
            require ext_call.return_data[18 len 14]
            if 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'BoringMath: Mul Overflow'
            if 1000 * ext_call.return_data[50 len 14] / 1000 != ext_call.return_data[50 len 14]:
                revert with 0, 'BoringMath: Mul Overflow'
            if (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14]) < 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 'BoringMath: Add Overflow'
            require (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * ext_call.return_data[50 len 14])
            require ext_code.size(0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c)
            call 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, this.address, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
            call 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                 gas gas_remaining wei
                args 2, 0, 997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32])) * Mask(112, 0, ext_call.return_data[0]) / (997 * 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (997 * ext_call.return_data[0]) + (1000 * Mask(112, 0, ext_call.return_data[32]))) + (1000 * Mask(112, 0, ext_call.return_data[32])), 0, 0, 0x2b4c76d0dc16be1c31d4c1dc53bf9b45987fc75c
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x74a0bca2eeedf8883cb91e37e9ff49430f20a616)
    call 0x74a0bca2eeedf8883cb91e37e9ff49430f20a616.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args address(arg2), 0x74a0bca2eeedf8883cb91e37e9ff49430f20a616, address(arg3), ext_call.return_data[0], 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] - arg4 > ext_call.return_data[32]:
        revert with 0, 'BoringMath: Underflow'
    return ext_call.return_data[32] - arg4, ext_call.return_data[32]
}



}
