contract main {




// =====================  Runtime code  =====================


address owner;
address wantAddress;
uint32 stor2;
uint256 stor2;
address pancakeSwapRouterAddress;
uint128 stor4; offset 160
address devAddress;
uint256 stor5; offset 32
uint256 wantLockedTotal;
big480 stor5;
uint256 sharesTotal;
uint256 entranceFeeFactor;
uint256 entranceFeeFactorMax;

function entranceFeeFactor() payable {
    return entranceFeeFactor
}

function devAddress() payable {
    return devAddress
}

function wantLockedTotal() payable {
    return wantLockedTotal
}

function sharesTotal() payable {
    return sharesTotal
}

function pancakeSwapRouterAddress() payable {
    return pancakeSwapRouterAddress
}

function owner() payable {
    return owner
}

function wantAddress() payable {
    return wantAddress
}

function entranceFeeFactorMax() payable {
    return entranceFeeFactorMax
}

function _fallback() payable {
    revert
}

function setDev(address arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 'U no dev'
    devAddress = arg1
}

function sub_bb6a8277(?) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 'U no dev'
    stor4 = Mask(96, 0, arg1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setEntranceFeeFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if devAddress != msg.sender:
        revert with 0, 'U no dev'
    entranceFeeFactor = arg1
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

function inCaseTokensGetStuck(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if wantAddress == arg1:
        revert with 0, 'Blocked'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), address(arg3) << 64, 0, arg2
        if not transfer(address rg1, uint256 rg2), address(arg3) << 64:
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
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(wantAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call wantAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg1
        if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not wantLockedTotal:
            sharesTotal += arg1
            wantLockedTotal += arg1
            return arg1
        if not arg1:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if not entranceFeeFactorMax:
                revert with 0, 'SafeMath: division by zero'
            sharesTotal += 0 / wantLockedTotal / entranceFeeFactorMax
            wantLockedTotal += arg1
            return (0 / wantLockedTotal / entranceFeeFactorMax)
        if sharesTotal * arg1 / arg1 != sharesTotal:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
        if not sharesTotal * arg1:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if not entranceFeeFactorMax:
                revert with 0, 'SafeMath: division by zero'
            sharesTotal += 0 / wantLockedTotal / entranceFeeFactorMax
            wantLockedTotal += arg1
            return (0 / wantLockedTotal / entranceFeeFactorMax)
        if entranceFeeFactor * sharesTotal * arg1 / sharesTotal * arg1 != entranceFeeFactor:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if not wantLockedTotal:
            sharesTotal += arg1
            wantLockedTotal += arg1
            return arg1
        if not arg1:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if not entranceFeeFactorMax:
                revert with 0, 'SafeMath: division by zero'
            sharesTotal += 0 / wantLockedTotal / entranceFeeFactorMax
            wantLockedTotal += arg1
            return (0 / wantLockedTotal / entranceFeeFactorMax)
        if sharesTotal * arg1 / arg1 != sharesTotal:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 394 len 31]
        if not sharesTotal * arg1:
            if not wantLockedTotal:
                revert with 0, 'SafeMath: division by zero'
            if not entranceFeeFactorMax:
                revert with 0, 'SafeMath: division by zero'
            sharesTotal += 0 / wantLockedTotal / entranceFeeFactorMax
            wantLockedTotal += arg1
            return (0 / wantLockedTotal / entranceFeeFactorMax)
        if entranceFeeFactor * sharesTotal * arg1 / sharesTotal * arg1 != entranceFeeFactor:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[ceil32(return_data.size) + 394 len 31]
    ('eq', ('div', ('mul', ('stor', ('name', 'entranceFeeFactor', 7)), ('stor', ('name', 'sharesTotal', 6)), ('param', 'arg1')), ('mul', ('stor', ('name', 'sharesTotal', 6)), ('param', 'arg1'))), ('stor', ('name', 'entranceFeeFactor', 7)))
    if not wantLockedTotal:
        revert with 0, 'SafeMath: division by zero'
    if not entranceFeeFactorMax:
        revert with 0, 'SafeMath: division by zero'
    sharesTotal += entranceFeeFactor * sharesTotal * arg1 / wantLockedTotal / entranceFeeFactorMax
    wantLockedTotal += arg1
    return (entranceFeeFactor * sharesTotal * arg1 / wantLockedTotal / entranceFeeFactorMax)
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, '_wantAmt <= 0'
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        if wantLockedTotal >= ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                sharesTotal -= 0 / wantLockedTotal
                wantLockedTotal -= ext_call.return_data[0]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                call wantAddress with:
                   funct uint32(stor2)
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
            mem[324 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
            call wantAddress with:
               funct uint32(stor2)
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
        mem[324 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), Mask(224, 0, stor5.field_32)
    else:
        if wantLockedTotal >= arg1:
            if not arg1:
                if not wantLockedTotal:
                    revert with 0, 'SafeMath: division by zero'
                sharesTotal -= 0 / wantLockedTotal
                wantLockedTotal -= arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
                if not ext_code.size(wantAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
                call wantAddress with:
                   funct uint32(stor2)
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
            mem[324 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
            call wantAddress with:
               funct uint32(stor2)
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
        mem[324 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), Mask(224, 0, stor5.field_32)
        mem[388 len 0] = 0
    call wantAddress with:
       funct uint32(stor2)
         gas gas_remaining wei
        args Mask(480, 0, stor5.field_0), mem[388 len 4]
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
}



}
