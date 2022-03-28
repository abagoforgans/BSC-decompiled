contract main {




// =====================  Runtime code  =====================


#
#  - sub_656c537f(?)
#
address owner;
address wantAddress;
address earnedAddress;
address token0Address;
address token1Address;
uint32 stor5;
address farmContractAddress;
uint256 stor5;
uint32 stor6;
uint256 stor6;
address pancakeSwapRouterAddress;
uint256 pid;
uint256 lastEarnBlock;
uint256 stor11; offset 32
uint256 wantLockedTotal;
big480 stor11;
uint256 sharesTotal;

function lastEarnBlock() payable {
    return lastEarnBlock
}

function wantLockedTotal() payable {
    return wantLockedTotal
}

function sharesTotal() payable {
    return sharesTotal
}

function token0Address() payable {
    return token0Address
}

function pancakeSwapRouterAddress() payable {
    return pancakeSwapRouterAddress
}

function owner() payable {
    return owner
}

function farmContractAddress() payable {
    return address(farmContractAddress)
}

function token1Address() payable {
    return token1Address
}

function earnedAddress() payable {
    return earnedAddress
}

function wantAddress() payable {
    return wantAddress
}

function pid() payable {
    return pid
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function farm() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    wantLockedTotal += ext_call.return_data[0]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(farmContractAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 31, ext_call.return_data[0]) >> 31
    mem[324 len 0] = 0
    call wantAddress with:
       funct uint32(stor5)
         gas gas_remaining wei
        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), 2 * ext_call.return_data[0]
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor5):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    require ext_code.size(address(farmContractAddress))
    call address(farmContractAddress).deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args pid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, '_wantAmt <= 0'
    require ext_code.size(address(farmContractAddress))
    call address(farmContractAddress).withdraw(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args pid, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= ext_call.return_data[0]:
        if wantLockedTotal >= arg1:
            if arg1:
                if sharesTotal * arg1 / arg1 != sharesTotal:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                sharesTotal -= sharesTotal * arg1 / wantLockedTotal
                wantLockedTotal -= arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, arg1) >> 32
                call wantAddress with:
                   funct uint32(stor6)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                return (sharesTotal * arg1 / wantLockedTotal)
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            sharesTotal -= 0 / wantLockedTotal
            wantLockedTotal -= arg1
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 32, arg1) >> 32
            mem[388 len 0] = 0
            call wantAddress with:
               funct uint32(stor6)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
            return (0 / wantLockedTotal)
        if not wantLockedTotal:
            revert with 0, 'SafeMath: division by zero'
        if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not wantLockedTotal:
            revert with 0, 'SafeMath: division by zero'
        sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
        wantLockedTotal = 0
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 0, stor11.field_32)
        call wantAddress with:
           funct uint32(stor6)
             gas gas_remaining wei
            args Mask(480, 0, stor11.field_0), mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        return (sharesTotal * wantLockedTotal / wantLockedTotal)
    if wantLockedTotal < ext_call.return_data[0]:
        if not wantLockedTotal:
            revert with 0, 'SafeMath: division by zero'
        if sharesTotal * wantLockedTotal / wantLockedTotal != sharesTotal:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not wantLockedTotal:
            revert with 0, 'SafeMath: division by zero'
        sharesTotal -= sharesTotal * wantLockedTotal / wantLockedTotal
        wantLockedTotal = 0
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), Mask(224, 0, stor11.field_32)
        call wantAddress with:
           funct uint32(stor6)
             gas gas_remaining wei
            args Mask(480, 0, stor11.field_0), mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        return (sharesTotal * wantLockedTotal / wantLockedTotal)
    if not ext_call.return_data[0]:
        if not wantLockedTotal:
            revert with 0, 'SafeMath: division by zero'
        sharesTotal -= 0 / wantLockedTotal
        wantLockedTotal -= ext_call.return_data[0]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
        mem[388 len 0] = 0
        call wantAddress with:
           funct uint32(stor6)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        return (0 / wantLockedTotal)
    if sharesTotal * ext_call.return_data[0] / ext_call.return_data[0] != sharesTotal:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not wantLockedTotal:
        revert with 0, 'SafeMath: division by zero'
    sharesTotal -= sharesTotal * ext_call.return_data[0] / wantLockedTotal
    wantLockedTotal -= ext_call.return_data[0]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
    mem[388 len 0] = 0
    call wantAddress with:
       funct uint32(stor6)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 'SafeMath: division by zero'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
    return (sharesTotal * ext_call.return_data[0] / wantLockedTotal)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call wantAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not wantLockedTotal:
            sharesTotal += arg1
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(farmContractAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 31, ext_call.return_data[0]) >> 31
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
            require ext_code.size(address(farmContractAddress))
            call address(farmContractAddress).deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return arg1
        if not arg1:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            sharesTotal += 0 / wantLockedTotal
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            wantLockedTotal += ext_call.return_data[0]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), address(farmContractAddress)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[520 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 31, ext_call.return_data[0]) >> 31
            call wantAddress with:
               funct uint32(stor5)
                 gas gas_remaining wei
                args Mask(224, 31, ext_call.return_data[0]) << 225, mem[584 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[630 len 22]
            else:
                mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[552]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 631 len 22]
            require ext_code.size(address(farmContractAddress))
            call address(farmContractAddress).deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args pid, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return (0 / wantLockedTotal)
        if sharesTotal * arg1 / arg1 != sharesTotal:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        if not wantLockedTotal:
            revert with 0, 'SafeMath: division by zero'
        sharesTotal += sharesTotal * arg1 / wantLockedTotal
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        wantLockedTotal += ext_call.return_data[0]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(farmContractAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[626 len 26]
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[520 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 31, ext_call.return_data[0]) >> 31
        mem[584 len 0] = 0
        call wantAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[584 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[630 len 22]
        else:
            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[552]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 631 len 22]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if not wantLockedTotal:
                sharesTotal += arg1
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(farmContractAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 521 len 0] = 0
                call wantAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                require ext_code.size(address(farmContractAddress))
                call address(farmContractAddress).deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return arg1
            if not arg1:
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                sharesTotal += 0 / wantLockedTotal
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(farmContractAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 627 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 521 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 585 len 0] = 0
                call wantAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 585 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 631 len 22]
                else:
                    mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 553]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 632 len 22]
                require ext_code.size(address(farmContractAddress))
                call address(farmContractAddress).deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return (0 / wantLockedTotal)
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            if not wantLockedTotal:
                sharesTotal += arg1
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(farmContractAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 521 len 0] = 0
                call wantAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                require ext_code.size(address(farmContractAddress))
                call address(farmContractAddress).deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return arg1
            if not arg1:
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                sharesTotal += 0 / wantLockedTotal
                require ext_code.size(wantAddress)
                staticcall wantAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                wantLockedTotal += ext_call.return_data[0]
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(farmContractAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 627 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 521 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[ceil32(return_data.size) + 613 len 4] = 0
                call wantAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 585 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 631 len 22]
                    require ext_code.size(address(farmContractAddress))
                    call address(farmContractAddress).deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args pid, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    return (0 / wantLockedTotal)
                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 553]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(address(farmContractAddress))
                call address(farmContractAddress).deposit(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args pid, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return 0 / wantLockedTotal, 
                       mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        ('param', 'arg1')
        if sharesTotal * arg1 / arg1 != sharesTotal:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 394 len 31]
        if not wantLockedTotal:
            revert with 0, 'SafeMath: division by zero'
        sharesTotal += sharesTotal * arg1 / wantLockedTotal
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        wantLockedTotal += ext_call.return_data[0]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(farmContractAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 627 len 26]
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 521 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 31, ext_call.return_data[0]) >> 31
        mem[ceil32(return_data.size) + 585 len 0] = 0
        call wantAddress with:
           funct uint32(stor5)
             gas gas_remaining wei
            args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 585 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 631 len 22]
        else:
            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 553]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 632 len 22]
    require ext_code.size(address(farmContractAddress))
    call address(farmContractAddress).deposit(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args pid, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (sharesTotal * arg1 / wantLockedTotal)
}



}
