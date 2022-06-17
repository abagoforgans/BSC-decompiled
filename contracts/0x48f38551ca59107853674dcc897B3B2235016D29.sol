contract main {




// =====================  Runtime code  =====================


address zapperAddress;
address empAddress;
address sub_e42a282fAddress;
address sub_c9215738Address;
address operatorAddress;

function operator() payable {
    return operatorAddress
}

function zapper() payable {
    return zapperAddress
}

function emp() payable {
    return empAddress
}

function sub_c9215738(?) payable {
    return sub_c9215738Address
}

function sub_e42a282f(?) payable {
    return sub_e42a282fAddress
}

function _fallback() payable {
    revert
}

function sub_48d262dd(?) payable {
    require calldata.size - 4 >= 64
    if arg2 > 100:
        revert with 0, 'Invalid EMP-ETH-LP percent'
    require ext_code.size(empAddress)
    staticcall empAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient EMP balance'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(empAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(empAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[352 len 4] = uint32(arg1)
    call empAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[338 len 14],
                        uint32(arg1),
                        mem[356 len 4]
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_e42a282fAddress)
            staticcall sub_e42a282fAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c9215738Address)
            staticcall sub_c9215738Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(zapperAddress)
            call zapperAddress.zapTokenToLP(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args empAddress, 0, sub_e42a282fAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(zapperAddress)
            call zapperAddress.zapTokenToLP(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args empAddress, arg1, sub_c9215738Address
        else:
            if arg2 * arg1 / arg1 != arg2:
                revert with 0, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[329 len 23],
                            uint32(arg1),
                            mem[356 len 4]
            if arg2 * arg1 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_e42a282fAddress)
            staticcall sub_e42a282fAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_c9215738Address)
            staticcall sub_c9215738Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(zapperAddress)
            call zapperAddress.zapTokenToLP(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args empAddress, arg2 * arg1 / 100, sub_e42a282fAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(zapperAddress)
            call zapperAddress.zapTokenToLP(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args empAddress, arg1 - (arg2 * arg1 / 100), sub_c9215738Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_e42a282fAddress)
        staticcall sub_e42a282fAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(sub_c9215738Address)
        staticcall sub_c9215738Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_e42a282fAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(sub_e42a282fAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[584 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
        call sub_e42a282fAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[648 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_c9215738Address):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(sub_c9215738Address):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[684 len 64] = 0, msg.sender, 0
            call sub_c9215738Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, msg.sender, 0) >> 32, mem[748 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[794 len 22]
            else:
                mem[716 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[716]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 795 len 22]
        else:
            mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[616]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 695 len 22]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_c9215738Address):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(sub_c9215738Address):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 685 len 64] = 0, msg.sender, 0
            call sub_c9215738Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0, Mask(224, 32, 0, msg.sender, 0) >> 32, mem[ceil32(return_data.size) + 749 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 795 len 22]
            else:
                mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 717]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 796 len 22]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if arg1:
                if arg2 * arg1 / arg1 != arg2:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 330 len 31]
                if arg2 * arg1 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_e42a282fAddress)
                staticcall sub_e42a282fAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_c9215738Address)
                staticcall sub_c9215738Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(zapperAddress)
                call zapperAddress.zapTokenToLP(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args empAddress, arg2 * arg1 / 100, sub_e42a282fAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(zapperAddress)
                call zapperAddress.zapTokenToLP(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args empAddress, arg1 - (arg2 * arg1 / 100), sub_c9215738Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_e42a282fAddress)
                staticcall sub_e42a282fAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_c9215738Address)
                staticcall sub_c9215738Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_e42a282fAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(sub_e42a282fAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 585 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                call sub_e42a282fAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[ceil32(return_data.size) + 649 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_c9215738Address):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(sub_c9215738Address):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 685 len 64] = 0, msg.sender, 0
                    call sub_c9215738Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, Mask(224, 32, 0, msg.sender, 0) >> 32, mem[ceil32(return_data.size) + 749 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
                    else:
                        mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 717]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 796 len 22]
                else:
                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 617]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 696 len 22]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_c9215738Address):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(sub_c9215738Address):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 686 len 64] = 0, msg.sender, 0
                    call sub_c9215738Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, Mask(224, 32, 0, msg.sender, 0) >> 32, mem[(2 * ceil32(return_data.size)) + 750 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 718]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
            else:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_e42a282fAddress)
                staticcall sub_e42a282fAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_c9215738Address)
                staticcall sub_c9215738Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(zapperAddress)
                call zapperAddress.zapTokenToLP(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args empAddress, 0, sub_e42a282fAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(zapperAddress)
                call zapperAddress.zapTokenToLP(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args empAddress, arg1, sub_c9215738Address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_e42a282fAddress)
                staticcall sub_e42a282fAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_c9215738Address)
                staticcall sub_c9215738Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_e42a282fAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(sub_e42a282fAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 585 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                mem[ceil32(return_data.size) + 677 len 4] = 0
                call sub_e42a282fAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 649 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 695 len 22]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_c9215738Address):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(sub_c9215738Address):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 685 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                    call sub_c9215738Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[ceil32(return_data.size) + 749 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 795 len 22]
                    else:
                        mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 717]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 796 len 22]
                else:
                    mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 617]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_c9215738Address):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(sub_c9215738Address):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 686 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), msg.sender, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                    call sub_c9215738Address with:
                       funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, msg.sender), mem[(2 * ceil32(return_data.size)) + 654 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                         gas gas_remaining wei
                        args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 686 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 718]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
        else:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 339 len 22]
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_e42a282fAddress)
                staticcall sub_e42a282fAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_c9215738Address)
                staticcall sub_c9215738Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(zapperAddress)
                call zapperAddress.zapTokenToLP(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args empAddress, 0, sub_e42a282fAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(zapperAddress)
                call zapperAddress.zapTokenToLP(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args empAddress, arg1, sub_c9215738Address
            else:
                if arg2 * arg1 / arg1 != arg2:
                    revert with 0, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 330 len 31]
                if arg2 * arg1 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_e42a282fAddress)
                staticcall sub_e42a282fAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_c9215738Address)
                staticcall sub_c9215738Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(zapperAddress)
                call zapperAddress.zapTokenToLP(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args empAddress, arg2 * arg1 / 100, sub_e42a282fAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(zapperAddress)
                call zapperAddress.zapTokenToLP(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args empAddress, arg1 - (arg2 * arg1 / 100), sub_c9215738Address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(sub_e42a282fAddress)
            staticcall sub_e42a282fAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_c9215738Address)
            staticcall sub_c9215738Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_e42a282fAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(sub_e42a282fAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 585 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
            mem[ceil32(return_data.size) + 677 len 4] = 0
            call sub_e42a282fAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 649 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 695 len 22]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_c9215738Address):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(sub_c9215738Address):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 685 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
                call sub_c9215738Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 0) << 256, mem[ceil32(return_data.size) + 749 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 795 len 22]
                else:
                    mem[ceil32(return_data.size) + 717 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 717]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 796 len 22]
            else:
                mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 617]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(sub_c9215738Address):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(sub_c9215738Address):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 686 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), msg.sender, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                call sub_c9215738Address with:
                   funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, msg.sender), mem[(2 * ceil32(return_data.size)) + 654 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                     gas gas_remaining wei
                    args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, 0) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 686 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 796 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 718 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 718]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 797 len 22]
    return 0
}



}
