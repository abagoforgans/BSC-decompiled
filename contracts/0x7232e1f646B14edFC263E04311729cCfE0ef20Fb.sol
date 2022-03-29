contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const getName = 'StrategyACryptoS0V3_1_ACSI'

const want = 0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389

const balanceOf = ext_call.return_data[0]

const balanceOfWant = ext_call.return_data[0]

const FEE_DENOMINATOR = 10000


array of address ssToWithdraw;
array of struct ssToLiquidate;
array of struct pairsToLiquidate;
array of struct ssTokensToSwap;
array of struct tokensToSwap0;
array of struct tokensToSwap1;
address governanceAddress;
uint32 stor7;
address controllerAddress;
uint256 stor7;
address strategistAddress;
uint256 withdrawalFee;
uint256 harvesterReward;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699761;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699762;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403024;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403025;
array of address stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of address stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint128 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;
array of struct stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of struct stor87903029871075914254377627908054574944891091886930582284385770809450030037085;

function pairsToLiquidate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pairsToLiquidate.length
    return pairsToLiquidate[arg1].field_0, 
           pairsToLiquidate[arg1].field_256,
           pairsToLiquidate[arg1].field_512,
           pairsToLiquidate[arg1].field_768
}

function strategist() payable {
    return strategistAddress
}

function governance() payable {
    return governanceAddress
}

function tokensToSwap0(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokensToSwap0.length
    return tokensToSwap0[arg1].field_0, tokensToSwap0[arg1].field_256, tokensToSwap0[arg1].field_512
}

function withdrawalFee() payable {
    return withdrawalFee
}

function ssTokensToSwap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < ssTokensToSwap.length
    return ssTokensToSwap[arg1].field_0, 
           ssTokensToSwap[arg1].field_256,
           bool(ssTokensToSwap[arg1].field_416),
           ('signextend', 15, ('signextend', 15, ('signextend', 15, ('field', 512, ('stor', ('array', ('mul', 3, ('param', 'arg1')), ('name', 'ssTokensToSwap', 3))))))),
           ('signextend', 15, ('signextend', 15, ('signextend', 15, ('field', 640, ('stor', ('array', ('mul', 3, ('param', 'arg1')), ('name', 'ssTokensToSwap', 3)))))))
}

function harvesterReward() payable {
    return harvesterReward
}

function tokensToSwap1(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokensToSwap1.length
    return tokensToSwap1[arg1].field_0, tokensToSwap1[arg1].field_256, tokensToSwap1[arg1].field_512
}

function ssToWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < ssToWithdraw.length
    return address(ssToWithdraw[arg1])
}

function ssToLiquidate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < ssToLiquidate.length
    return ssToLiquidate[arg1].field_0, 
           ssToLiquidate[arg1].field_256,
           ('signextend', 15, ('signextend', 15, ('signextend', 15, ('field', 512, ('stor', ('array', ('mul', 3, ('param', 'arg1')), ('name', 'ssToLiquidate', 1)))))))
}

function controller() payable {
    return address(controllerAddress)
}

function deposit() payable {
  stop
}

function _fallback() payable {
    revert
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategistAddress = arg1
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    address(controllerAddress) = arg1
}

function addSsToWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    ssToWithdraw.length++
    address(ssToWithdraw[ssToWithdraw.length]) = arg1
}

function deleteSsToWithdraw() payable {
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    ssToWithdraw.length = 0
    idx = 0
    while ssToWithdraw.length > idx:
        uint256(ssToWithdraw[idx]) = 0
        idx = idx + 1
        continue 
}

function addTokenToSwap1(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    tokensToSwap1.length++
    stor36B6[stor5.length] = arg1
    stor36B6[stor5.length] = arg2
    stor36B6[stor5.length] = arg3
}

function addTokenToSwap0(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    tokensToSwap0.length++
    tokensToSwap0[tokensToSwap0.length].field_0 = arg1
    stor8A35[stor4.length] = arg2
    stor8A35[stor4.length] = arg3
}

function deleteTokensToSwap0() payable {
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    tokensToSwap0.length = 0
    idx = 0
    while 3 * tokensToSwap0.length > idx:
        tokensToSwap0[idx].field_0 = 0
        tokensToSwap0[idx].field_256 = 0
        tokensToSwap0[idx].field_512 = 0
        idx = idx + 3
        continue 
}

function deleteSsToLiquidate() payable {
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    ssToLiquidate.length = 0
    idx = 0
    while 3 * ssToLiquidate.length > idx:
        ssToLiquidate[idx].field_0 = 0
        ssToLiquidate[idx].field_256 = 0
        ssToLiquidate[idx].field_512 = 0
        idx = idx + 3
        continue 
}

function deleteTokensToSwap1() payable {
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    tokensToSwap1.length = 0
    idx = 0
    while 3 * tokensToSwap1.length > idx:
        tokensToSwap1[idx].field_0 = 0
        tokensToSwap1[idx].field_256 = 0
        tokensToSwap1[idx].field_512 = 0
        idx = idx + 3
        continue 
}

function deleteSsTokensToSwap() payable {
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    ssTokensToSwap.length = 0
    idx = 0
    while 3 * ssTokensToSwap.length > idx:
        ssTokensToSwap[idx].field_0 = 0
        ssTokensToSwap[idx].field_256 = 0
        ssTokensToSwap[idx].field_512 = 0
        idx = idx + 3
        continue 
}

function addPairToLiquidate(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    pairsToLiquidate.length++
    pairsToLiquidate[pairsToLiquidate.length].field_0 = arg1
    stor4057[stor2.length] = arg2
    stor4057[stor2.length] = arg3
    stor4057[stor2.length] = arg4
}

function addSsToLiquidate(address arg1, address arg2, int128 arg3) payable {
    require calldata.size - 4 >= 96
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    ssToLiquidate.length++
    ssToLiquidate[ssToLiquidate.length].field_0 = arg1
    storB10E[stor1.length] = arg2
    storB10E[stor1.length] = uint128(('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg3')))))
}

function deletePairsToLiquidate() payable {
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    pairsToLiquidate.length = 0
    idx = 0
    while 4 * pairsToLiquidate.length > idx:
        pairsToLiquidate[idx].field_0 = 0
        pairsToLiquidate[idx].field_256 = 0
        pairsToLiquidate[idx].field_512 = 0
        pairsToLiquidate[idx].field_768 = 0
        idx = idx + 4
        continue 
}

function addSsTokenToSwap(address arg1, address arg2, bool arg3, int128 arg4, int128 arg5) payable {
    require calldata.size - 4 >= 160
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    ssTokensToSwap.length++
    ssTokensToSwap[ssTokensToSwap.length].field_0 = arg1
    storC257[stor3.length].field_0 = arg2
    storC257[stor3.length].field_160 = Mask(96, 0, arg3)
    storC257[stor3.length].field_0 = uint128(('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg4')))))
    storC257[stor3.length].field_128 = uint128(('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg5')))))
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if arg1 == 0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389:
        revert with 0, 'want'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor7)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor7):
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

function withdrawAll() payable {
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389)
    staticcall 0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).vaults(address rg1) with:
            gas gas_remaining wei
           args 0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, '!vault'
    mem[132] = ext_call.return_data[12 len 20]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
    call 0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389.mem[160 len 4] with:
         gas gas_remaining wei
        args ext_call.return_data[0], Mask(224, 32, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]) >> 32, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not 0, mem[132 len 28]:
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

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389)
    staticcall 0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if not arg1:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
            call 0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[388 len 4]
        else:
            if withdrawalFee * arg1 / arg1 != withdrawalFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if withdrawalFee * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
            call 0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389 with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[388 len 4]
    else:
        if not ext_call.return_data[0]:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
            call 0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389 with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
        else:
            if withdrawalFee * ext_call.return_data[0] / ext_call.return_data[0] != withdrawalFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if withdrawalFee * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) >> 32
            call 0x5b17b4d5e4009b5c43e3e3d63a5229f794cba389 with:
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] - (withdrawalFee * ext_call.return_data[0] / 10000)) << 224, mem[388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 'SafeERC20: low-level call failed'
    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        if not mem[356]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 435 len 22]
}



}
