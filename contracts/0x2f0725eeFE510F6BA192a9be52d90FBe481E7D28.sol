contract main {




// =====================  Runtime code  =====================


#
#  - updateSpotAndNormalizeWeights()
#  - withdraw(uint256 arg1)
#  - swapExactAmountIn(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5)
#  - updateCommodityAfterBreach(address arg1, address arg2, address arg3)
#  - deposit()
#
address wantAddress;
address balancerAddress;
address sub_9e131c64Address;
address longTokenAddress;
address shortTokenAddress;
address governanceAddress;

function breaker() payable {
    return bool(uint8(stor6.field_168))
}

function sub_14f52c4b(?) payable {
    return bool(uint8(stor6.field_160))
}

function want() payable {
    return wantAddress
}

function governance() payable {
    return governanceAddress
}

function sub_9e131c64(?) payable {
    return sub_9e131c64Address
}

function longToken() payable {
    return longTokenAddress
}

function shortToken() payable {
    return shortTokenAddress
}

function balancer() payable {
    return balancerAddress
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    controllerAddress = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setBreaker(bool arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    Mask(88, 0, stor6.field_168) = Mask(88, 0, arg1)
}

function getSwapFee() payable {
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.0xd4cadf68 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setSwapFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    require ext_code.size(balancerAddress)
    call balancerAddress.0x34e19907 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isBound(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.0x2f37b624 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function updatePoolController(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    require ext_code.size(balancerAddress)
    call balancerAddress.0x92eefe9b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if controllerAddress != msg.sender:
        revert with 0, '!controller'
    if uint8(stor6.field_168):
        revert with 0, '!breaker'
    if wantAddress == arg1:
        revert with 0, 'Want'
    if longTokenAddress == arg1:
        revert with 0, 'LTOK'
    if shortTokenAddress == arg1:
        revert with 0, 'STOK'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor6.field_0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
    return ext_call.return_data[0]
}

function handleBreach() payable {
    require ext_code.size(sub_9e131c64Address)
    staticcall sub_9e131c64Address.0x3270bb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'mVault should be settled'
    if not uint8(stor6.field_160):
        if uint8(stor6.field_168):
            revert with 0, '!breaker'
        uint8(stor6.field_160) = 1
        mem[96] = 0xcc77828d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(balancerAddress)
        staticcall balancerAddress.getCurrentTokens() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _12 = mem[96]
        require mem[96] <= 4294967296
        require mem[96] + 32 <= return_data.size
        require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
        _15 = mem[_12 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_12 + 96])] = mem[_12 + 128 len floor32(mem[_12 + 96])]
        mem[64] = (32 * _15) + ceil32(return_data.size) + 128
        idx = 0
        while idx < mem[ceil32(return_data.size) + 96]:
            require idx < mem[ceil32(return_data.size) + 96]
            _46 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[(32 * _15) + ceil32(return_data.size) + 128] = 0xcf5e7bd300000000000000000000000000000000000000000000000000000000
            mem[(32 * _15) + ceil32(return_data.size) + 132] = address(_46)
            require ext_code.size(balancerAddress)
            call balancerAddress.unbind(address rg1) with:
                 gas gas_remaining wei
                args address(_46)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
        require ext_code.size(sub_9e131c64Address)
        staticcall sub_9e131c64Address.0x3270bb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'mVault should be settled'
        require ext_code.size(sub_9e131c64Address)
        call sub_9e131c64Address.0x9b10d169 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function getExpectedInAmount(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.0x2f37b624 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.0x2f37b624 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.0xd4cadf68 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.getDenormalizedWeight(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.getDenormalizedWeight(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.calcInGivenOut(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
            gas gas_remaining wei
           args 0, ext_call.return_data[28 len 4], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], arg3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.getSpotPrice(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3
    require ext_call.return_data[0]
    return ext_call.return_data[0], 
           (10^18 * 10^18 * ext_call.return_data[0] / arg3) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0]
}

function getExpectedOutAmount(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.0x2f37b624 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.0x2f37b624 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.0xd4cadf68 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.0xf8b2cb4f with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.getDenormalizedWeight(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.getDenormalizedWeight(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.calcOutGivenIn(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6) with:
            gas gas_remaining wei
           args 0, ext_call.return_data[28 len 4], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], arg3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.getSpotPrice(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    return ext_call.return_data[0], 
           (10^18 * 10^18 * arg3 / ext_call.return_data[0]) - (10^18 * ext_call.return_data[0]) / ext_call.return_data[0]
}

function balanceOf() payable {
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.0x2f37b624 with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ext_call.return_data[0]
    require ext_code.size(shortTokenAddress)
    staticcall shortTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args balancerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(longTokenAddress)
    staticcall longTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args balancerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args balancerAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * ext_call.return_data[0])
        require ext_code.size(balancerAddress)
        staticcall balancerAddress.getSpotPriceSansFee(address rg1, address rg2) with:
                gas gas_remaining wei
               args wantAddress, longTokenAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * ext_call.return_data[0]) < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * ext_call.return_data[0]))
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.getSpotPriceSansFee(address rg1, address rg2) with:
            gas gas_remaining wei
           args wantAddress, shortTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not ext_call.return_data[0]:
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * ext_call.return_data[0])
        require ext_code.size(balancerAddress)
        staticcall balancerAddress.getSpotPriceSansFee(address rg1, address rg2) with:
                gas gas_remaining wei
               args wantAddress, longTokenAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return (2 * ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * ext_call.return_data[0]) < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_call.return_data[0]:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * ext_call.return_data[0]) < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * ext_call.return_data[0]))
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.getSpotPriceSansFee(address rg1, address rg2) with:
            gas gas_remaining wei
           args wantAddress, longTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * ext_call.return_data[0]) < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * ext_call.return_data[0]))
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < 0:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (2 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * ext_call.return_data[0]) < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((2 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (2 * ext_call.return_data[0]))
}

function withdrawAll() payable {
    if controllerAddress != msg.sender:
        revert with 0, '!controller'
    mem[96] = 0xcc77828d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(balancerAddress)
    staticcall balancerAddress.getCurrentTokens() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _9 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_6 + 96])] = mem[_6 + 128 len floor32(mem[_6 + 96])]
    mem[64] = (32 * _9) + ceil32(return_data.size) + 128
    idx = 0
    while idx < mem[ceil32(return_data.size) + 96]:
        require idx < mem[ceil32(return_data.size) + 96]
        _5920 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[(32 * _9) + ceil32(return_data.size) + 128] = 0xcf5e7bd300000000000000000000000000000000000000000000000000000000
        mem[(32 * _9) + ceil32(return_data.size) + 132] = address(_5920)
        require ext_code.size(balancerAddress)
        call balancerAddress.unbind(address rg1) with:
             gas gas_remaining wei
            args address(_5920)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(longTokenAddress)
    staticcall longTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(shortTokenAddress)
    staticcall shortTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        if ext_call.return_data[0]:
            require ext_code.size(sub_9e131c64Address)
            call sub_9e131c64Address.0xa2e78653 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0xa622ee7c with:
                    gas gas_remaining wei
                   args wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(longTokenAddress)
            staticcall longTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(shortTokenAddress)
            staticcall shortTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                revert with 0, '!vault'
            mem[(32 * _9) + ceil32(return_data.size) + 128] = 68
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + 228 len 64] = 0, address(ext_call.return_data[0]), ext_call.return_data[0 len 28]
            call wantAddress with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(224, 32, address(ext_call.return_data[0]), ext_call.return_data[0 len 28]) >> 32, mem[(32 * _9) + ceil32(return_data.size) + 292 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + 338 len 22]
                if not ext_code.hash(longTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(longTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _9) + ceil32(return_data.size) + 328 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
                call longTokenAddress with:
                   funct uint32(stor6.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + 392 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + ceil32(return_data.size) + 438 len 22]
                    if not ext_code.hash(shortTokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _9) + ceil32(return_data.size) + 428 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
                    call shortTokenAddress with:
                       funct uint32(stor6.field_0)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + 492 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _9) + ceil32(return_data.size) + 538 len 22]
                    else:
                        mem[(32 * _9) + ceil32(return_data.size) + 460 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _9) + ceil32(return_data.size) + 460]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
                    return ext_call.return_data[0]
                mem[(32 * _9) + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _9) + ceil32(return_data.size) + 360]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 439 len 22]
                if not ext_code.hash(shortTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4] = ext_call.return_data[20 len 4]
                call shortTokenAddress with:
                   funct uint32(stor6.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
                    return ext_call.return_data[0]
                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 530 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                return ext_call.return_data[0], 
                       mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[(32 * _9) + ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _9) + ceil32(return_data.size) + 260]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 339 len 22]
            if not ext_code.hash(longTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(longTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len 4] = ext_call.return_data[20 len 4]
            call longTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 393 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 439 len 22]
                if not ext_code.hash(shortTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4] = ext_call.return_data[20 len 4]
                call shortTokenAddress with:
                   funct uint32(stor6.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
                    return ext_call.return_data[0]
                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 530 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                return ext_call.return_data[0], 
                       mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 440 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if not ext_code.hash(shortTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
            call shortTokenAddress with:
               funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, stor6.field_0), mem[(32 * _9) + (4 * ceil32(return_data.size)) + 398 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                 gas gas_remaining wei
                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, ext_call.return_data[0 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _9) + (4 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 430 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len 22]
            else:
                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 541 len 22]
            return ext_call.return_data[0]
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xa622ee7c with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(longTokenAddress)
        staticcall longTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(shortTokenAddress)
        staticcall shortTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            revert with 0, '!vault'
        mem[(32 * _9) + ceil32(return_data.size) + 128] = 68
        if not ext_code.hash(wantAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _9) + ceil32(return_data.size) + 228 len 64] = 0, address(ext_call.return_data[0]), ext_call.return_data[0 len 28]
        call wantAddress with:
             gas gas_remaining wei
            args ext_call.return_data[0], Mask(224, 32, address(ext_call.return_data[0]), ext_call.return_data[0 len 28]) >> 32, mem[(32 * _9) + ceil32(return_data.size) + 292 len 4]
        if return_data.size:
            mem[(32 * _9) + ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _9) + ceil32(return_data.size) + 260]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 339 len 22]
            if not ext_code.hash(longTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(longTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len 4] = ext_call.return_data[20 len 4]
            call longTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 393 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 439 len 22]
                if not ext_code.hash(shortTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4] = ext_call.return_data[20 len 4]
                call shortTokenAddress with:
                   funct uint32(stor6.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
                    return ext_call.return_data[0]
                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 530 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                return ext_call.return_data[0], 
                       mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 440 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if not ext_code.hash(shortTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
            call shortTokenAddress with:
               funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, stor6.field_0), mem[(32 * _9) + (4 * ceil32(return_data.size)) + 398 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                 gas gas_remaining wei
                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, ext_call.return_data[0 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _9) + (4 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 430 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len 22]
            else:
                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 541 len 22]
            return ext_call.return_data[0]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not mem[96]:
            if not ext_code.hash(longTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(longTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + 328 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
            call longTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + 392 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + 438 len 22]
                if not ext_code.hash(shortTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _9) + ceil32(return_data.size) + 428 len 64] = 0, controllerAddress, ext_call.return_data[0 len 28]
                call shortTokenAddress with:
                   funct uint32(stor6.field_0)
                     gas gas_remaining wei
                    args ext_call.return_data[0], Mask(224, 32, controllerAddress, ext_call.return_data[0 len 28]) >> 32, mem[(32 * _9) + ceil32(return_data.size) + 492 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + ceil32(return_data.size) + 538 len 22]
                else:
                    mem[(32 * _9) + ceil32(return_data.size) + 460 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _9) + ceil32(return_data.size) + 460]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
                return ext_call.return_data[0]
            mem[(32 * _9) + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _9) + ceil32(return_data.size) + 360]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 439 len 22]
                if not ext_code.hash(shortTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = 0, controllerAddress, ext_call.return_data[0 len 28]
                call shortTokenAddress with:
                   funct uint32(stor6.field_0)
                     gas gas_remaining wei
                    args ext_call.return_data[0], Mask(224, 32, controllerAddress, ext_call.return_data[0 len 28]) >> 32, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
                else:
                    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len 22]
                return ext_call.return_data[0]
            if not ext_code.hash(shortTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = 0, controllerAddress, ext_call.return_data[0 len 28]
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4] = ext_call.return_data[20 len 4]
            call shortTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(224, 32, controllerAddress, ext_call.return_data[0 len 28]) >> 32, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
        else:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _9) + ceil32(return_data.size) + 338 len 22]
            if not ext_code.hash(longTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(longTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + 328 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
            call longTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + 392 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + 438 len 22]
                if not ext_code.hash(shortTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _9) + ceil32(return_data.size) + 428 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
                call shortTokenAddress with:
                   funct uint32(stor6.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + 492 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + ceil32(return_data.size) + 538 len 22]
                else:
                    mem[(32 * _9) + ceil32(return_data.size) + 460 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _9) + ceil32(return_data.size) + 460]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
                return ext_call.return_data[0]
            mem[(32 * _9) + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if not ext_code.hash(shortTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4] = ext_call.return_data[20 len 4]
                call shortTokenAddress with:
                   funct uint32(stor6.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
                    return ext_call.return_data[0]
                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 530 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                return ext_call.return_data[0], 
                       mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            require return_data.size >= 32
            if not mem[(32 * _9) + ceil32(return_data.size) + 360]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 439 len 22]
            if not ext_code.hash(shortTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4] = ext_call.return_data[20 len 4]
            call shortTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
            return ext_call.return_data[0]
        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429] = return_data.size
        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 434] = 32
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 466] = 32
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 498] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * _9) + (4 * ceil32(return_data.size)) + 430
               len (5 * ceil32(return_data.size)) + 100
        if not return_data.size:
            return ext_call.return_data[0]
        require return_data.size >= 32
        if mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461]:
            return ext_call.return_data[0]
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 434] = 32
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 466] = 42
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 498 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (32 * _9) + (4 * ceil32(return_data.size)) + 430
           len (5 * ceil32(return_data.size)) + 132
    if not ext_call.return_data[0]:
        require ext_code.size(wantAddress)
        staticcall wantAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(controllerAddress)
        staticcall controllerAddress.0xa622ee7c with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(longTokenAddress)
        staticcall longTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(shortTokenAddress)
        staticcall shortTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            revert with 0, '!vault'
        mem[(32 * _9) + ceil32(return_data.size) + 128] = 68
        if not ext_code.hash(wantAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _9) + ceil32(return_data.size) + 228 len 64] = 0, address(ext_call.return_data[0]), ext_call.return_data[0 len 28]
        call wantAddress with:
             gas gas_remaining wei
            args ext_call.return_data[0], Mask(224, 32, address(ext_call.return_data[0]), ext_call.return_data[0 len 28]) >> 32, mem[(32 * _9) + ceil32(return_data.size) + 292 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + ceil32(return_data.size) + 338 len 22]
            if not ext_code.hash(longTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(longTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + 328 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
            call longTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + 392 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + 438 len 22]
                if not ext_code.hash(shortTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _9) + ceil32(return_data.size) + 428 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
                call shortTokenAddress with:
                   funct uint32(stor6.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + 492 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + ceil32(return_data.size) + 538 len 22]
                else:
                    mem[(32 * _9) + ceil32(return_data.size) + 460 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _9) + ceil32(return_data.size) + 460]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
                return ext_call.return_data[0]
            mem[(32 * _9) + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _9) + ceil32(return_data.size) + 360]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 439 len 22]
            if not ext_code.hash(shortTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4] = ext_call.return_data[20 len 4]
            call shortTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
                return ext_call.return_data[0]
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 530 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            return ext_call.return_data[0], 
                   mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        mem[(32 * _9) + ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _9) + ceil32(return_data.size) + 260]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 339 len 22]
        if not ext_code.hash(longTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(longTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 421 len 4] = ext_call.return_data[20 len 4]
        call longTokenAddress with:
           funct uint32(stor6.field_0)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 393 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 439 len 22]
            if not ext_code.hash(shortTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4] = ext_call.return_data[20 len 4]
            call shortTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
                return ext_call.return_data[0]
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 530 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            return ext_call.return_data[0], 
                   mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 440 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        if not ext_code.hash(shortTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]
        call shortTokenAddress with:
           funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, stor6.field_0), mem[(32 * _9) + (4 * ceil32(return_data.size)) + 398 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
             gas gas_remaining wei
            args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, ext_call.return_data[0 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36]) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(32 * _9) + (4 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 430 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len 22]
        else:
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 541 len 22]
        return ext_call.return_data[0]
    require ext_code.size(sub_9e131c64Address)
    call sub_9e131c64Address.0xa2e78653 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xa622ee7c with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(longTokenAddress)
    staticcall longTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(shortTokenAddress)
    staticcall shortTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(ext_call.return_data[0]):
        revert with 0, '!vault'
    mem[(32 * _9) + ceil32(return_data.size) + 128] = 68
    if not ext_code.hash(wantAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(32 * _9) + ceil32(return_data.size) + 228 len 64] = 0, address(ext_call.return_data[0]), ext_call.return_data[0 len 28]
    call wantAddress with:
         gas gas_remaining wei
        args ext_call.return_data[0], Mask(224, 32, address(ext_call.return_data[0]), ext_call.return_data[0 len 28]) >> 32, mem[(32 * _9) + ceil32(return_data.size) + 292 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _9) + ceil32(return_data.size) + 338 len 22]
            if not ext_code.hash(longTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(longTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + 328 len 64] = 0, controllerAddress, ext_call.return_data[0 len 28]
            call longTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(224, 32, controllerAddress, ext_call.return_data[0 len 28]) >> 32, mem[(32 * _9) + ceil32(return_data.size) + 392 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + 438 len 22]
                if not ext_code.hash(shortTokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _9) + ceil32(return_data.size) + 428 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
                call shortTokenAddress with:
                   funct uint32(stor6.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + 492 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + ceil32(return_data.size) + 538 len 22]
                else:
                    mem[(32 * _9) + ceil32(return_data.size) + 460 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _9) + ceil32(return_data.size) + 460]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
                return ext_call.return_data[0]
            mem[(32 * _9) + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _9) + ceil32(return_data.size) + 360]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 439 len 22]
            if not ext_code.hash(shortTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4] = ext_call.return_data[20 len 4]
            call shortTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
                return ext_call.return_data[0]
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 530 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            return ext_call.return_data[0], 
                   mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_code.hash(longTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(longTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _9) + ceil32(return_data.size) + 328 len 64] = 0, controllerAddress, ext_call.return_data[0 len 28]
        call longTokenAddress with:
           funct uint32(stor6.field_0)
             gas gas_remaining wei
            args ext_call.return_data[0], Mask(224, 32, controllerAddress, ext_call.return_data[0 len 28]) >> 32, mem[(32 * _9) + ceil32(return_data.size) + 392 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + ceil32(return_data.size) + 438 len 22]
            if not ext_code.hash(shortTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + 428 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
            call shortTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + 492 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + 538 len 22]
            else:
                mem[(32 * _9) + ceil32(return_data.size) + 460 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _9) + ceil32(return_data.size) + 460]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
            return ext_call.return_data[0]
        mem[(32 * _9) + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _9) + ceil32(return_data.size) + 360]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 439 len 22]
            if not ext_code.hash(shortTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4] = ext_call.return_data[20 len 4]
            call shortTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
                return ext_call.return_data[0]
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 530 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            return ext_call.return_data[0], 
                   mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_code.hash(shortTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4] = ext_call.return_data[20 len 4]
        call shortTokenAddress with:
           funct uint32(stor6.field_0)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
            return ext_call.return_data[0]
        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429] = return_data.size
        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 434] = 32
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 466] = 32
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 498] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * _9) + (4 * ceil32(return_data.size)) + 430
               len (5 * ceil32(return_data.size)) + 100
        if not return_data.size:
            return ext_call.return_data[0]
        require return_data.size >= 32
        if mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461]:
            return ext_call.return_data[0]
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 434] = 32
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 466] = 42
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 498 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (32 * _9) + (4 * ceil32(return_data.size)) + 430
           len (5 * ceil32(return_data.size)) + 132
    mem[(32 * _9) + ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        if not ext_code.hash(longTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(longTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 64] = 0, controllerAddress, ext_call.return_data[0 len 28]
        call longTokenAddress with:
           funct uint32(stor6.field_0)
             gas gas_remaining wei
            args ext_call.return_data[0], Mask(224, 32, controllerAddress, ext_call.return_data[0 len 28]) >> 32, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 393 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 439 len 22]
            if not ext_code.hash(shortTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
            call shortTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
            else:
                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len 22]
            return ext_call.return_data[0]
        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if not ext_code.hash(shortTokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 522 len 4] = ext_call.return_data[20 len 4]
            call shortTokenAddress with:
               funct uint32(stor6.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + (4 * ceil32(return_data.size)) + 494 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len 22]
                return ext_call.return_data[0]
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 541 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            return ext_call.return_data[0], 
                   mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 463 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        require return_data.size >= 32
        if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 440 len 22]
        if not ext_code.hash(shortTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 522 len 4] = ext_call.return_data[20 len 4]
        call shortTokenAddress with:
           funct uint32(stor6.field_0)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + (4 * ceil32(return_data.size)) + 494 len 4]
        if not return_data.size:
            if not ext_call.success:
                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 434] = 32
                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 466] = 32
                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 498] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * _9) + (4 * ceil32(return_data.size)) + 430
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if not mem[96]:
                return ext_call.return_data[0]
            require mem[96] >= 32
            if mem[128]:
                return ext_call.return_data[0]
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 434] = 32
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 466] = 42
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 498 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (32 * _9) + (4 * ceil32(return_data.size)) + 430
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 431] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 435] = 32
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 467] = 32
            mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 499] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 431
               len (5 * ceil32(return_data.size)) + 100
        if not return_data.size:
            return ext_call.return_data[0]
        require return_data.size >= 32
        if mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462]:
            return ext_call.return_data[0]
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 431] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 435] = 32
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 467] = 42
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 499 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 431
           len (5 * ceil32(return_data.size)) + 132
    require return_data.size >= 32
    if not mem[(32 * _9) + ceil32(return_data.size) + 260]:
        revert with 0, 
                    32,
                    42,
                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 339 len 22]
    if not ext_code.hash(longTokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(longTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 64] = 0, controllerAddress, ext_call.return_data[0 len 28]
    call longTokenAddress with:
       funct uint32(stor6.field_0)
         gas gas_remaining wei
        args ext_call.return_data[0], Mask(224, 32, controllerAddress, ext_call.return_data[0 len 28]) >> 32, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 393 len 4]
    if return_data.size:
        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _9) + (4 * ceil32(return_data.size)) + 440 len 22]
        if not ext_code.hash(shortTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 522 len 4] = ext_call.return_data[20 len 4]
        call shortTokenAddress with:
           funct uint32(stor6.field_0)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + (4 * ceil32(return_data.size)) + 494 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len 22]
            return ext_call.return_data[0]
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 531 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size:
            require return_data.size >= 32
            if not mem[(32 * _9) + (4 * ceil32(return_data.size)) + 462]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 541 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        return ext_call.return_data[0], 
               mem[(32 * _9) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 463 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if mem[96]:
        require mem[96] >= 32
        if not mem[128]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 439 len 22]
        if not ext_code.hash(shortTokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
        call shortTokenAddress with:
           funct uint32(stor6.field_0)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
        else:
            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _9) + (4 * ceil32(return_data.size)) + 540 len 22]
        return ext_call.return_data[0]
    if not ext_code.hash(shortTokenAddress):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(shortTokenAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor6.field_0), uint32(stor6.field_0), ext_call.return_data[0 len 28]
    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 521 len 4] = ext_call.return_data[20 len 4]
    call shortTokenAddress with:
       funct uint32(stor6.field_0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 493 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 539 len 22]
        return ext_call.return_data[0]
    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 429] = return_data.size
    mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 434] = 32
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 466] = 32
        mem[(32 * _9) + (4 * ceil32(return_data.size)) + 498] = 'SafeERC20: low-level call failed'
        revert with memory
          from (32 * _9) + (4 * ceil32(return_data.size)) + 430
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        return ext_call.return_data[0]
    require return_data.size >= 32
    if mem[(32 * _9) + ceil32(return_data.size) + ceil32(return_data.size) + 461]:
        return ext_call.return_data[0]
    mem[(32 * _9) + (4 * ceil32(return_data.size)) + 430] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _9) + (4 * ceil32(return_data.size)) + 434] = 32
    mem[(32 * _9) + (4 * ceil32(return_data.size)) + 466] = 42
    mem[(32 * _9) + (4 * ceil32(return_data.size)) + 498 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
    revert with memory
      from (32 * _9) + (4 * ceil32(return_data.size)) + 430
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
