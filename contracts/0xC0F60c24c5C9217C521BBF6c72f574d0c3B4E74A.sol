contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - deposit()
#
const getName = 'StrategyACryptoSCake'

const balanceOfStakedWant = ext_call.return_data[0]

const want = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce

const pancakeSwapRouter = 0x5ff2b0db69458a0750badebc4f9e13add608c7f

const sub_26aae392(?) = ext_call.return_data[0]

const sub_3b2d46d1(?) = 0xafd61dc94f11a70ae110dc0e0f2061af5633061a

const twt = 0x4b0f1812e5df2a09796481ff14017e6005508003

const sub_65491287(?) = ext_call.return_data[0]

const balanceOf = (3 * ext_call.return_data[0])

const cakeChef = 0x73feaa1ee314f8c655e354234017be2193c9e24e

const syrup = 0x9cf7bc57584b7998236eff51b98a168dcea9b0

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const balanceOfWant = ext_call.return_data[0]

const FEE_DENOMINATOR = 10000


address governanceAddress;
uint32 stor1;
address controllerAddress;
uint256 stor1;
address strategistAddress;
uint256 performanceFee;
uint256 strategistReward;
uint256 withdrawalFee;
uint256 harvesterReward;

function strategist() payable {
    return strategistAddress
}

function governance() payable {
    return governanceAddress
}

function strategistReward() payable {
    return strategistReward
}

function performanceFee() payable {
    return performanceFee
}

function withdrawalFee() payable {
    return withdrawalFee
}

function harvesterReward() payable {
    return harvesterReward
}

function controller() payable {
    return address(controllerAddress)
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

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if arg1 == 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce:
        revert with 0, 'want'
    if arg1 == 0x4b0f1812e5df2a09796481ff14017e6005508003:
        revert with 0, 'twt'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor1):
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
    require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
    staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if not arg1:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).rewards() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[260 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, 0
            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                 gas gas_remaining wei
                args 0, mem[324 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
        else:
            if withdrawalFee * arg1 / arg1 != withdrawalFee:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x82536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).rewards() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[260 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, withdrawalFee * arg1 / 10000) >> 32
            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                 gas gas_remaining wei
                args Mask(224, 32, withdrawalFee * arg1 / 10000) << 224, mem[324 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if withdrawalFee * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 457]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xafd61dc94f11a70ae110dc0e0f2061af5633061a)
        staticcall 0xafd61dc94f11a70ae110dc0e0f2061af5633061a.userInfo(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(0xafd61dc94f11a70ae110dc0e0f2061af5633061a)
        if arg1 - ext_call.return_data[0] < ext_call.return_data[0]:
            call 0xafd61dc94f11a70ae110dc0e0f2061af5633061a.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (arg1 - ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x9cf7bc57584b7998236eff51b98a168dcea9b0)
            staticcall 0x9cf7bc57584b7998236eff51b98a168dcea9b0.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            if arg1 - ext_call.return_data[0] < ext_call.return_data[0]:
                call 0x73feaa1ee314f8c655e354234017be2193c9e24e.leaveStaking(uint256 rg1) with:
                     gas gas_remaining wei
                    args (arg1 - ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 < arg1 - ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not arg1:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).rewards() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, 0
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args 0, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).vaults(address rg1) with:
                                gas gas_remaining wei
                               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, '!vault'
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
                        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
                    else:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).vaults(address rg1) with:
                                gas gas_remaining wei
                               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, '!vault'
                        if 0 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
                        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if withdrawalFee * arg1 / arg1 != withdrawalFee:
                        revert with 0, 32, 33, 0x82536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).rewards() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, withdrawalFee * arg1 / 10000) >> 32
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(224, 32, withdrawalFee * arg1 / 10000) << 224, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).vaults(address rg1) with:
                                gas gas_remaining wei
                               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, '!vault'
                        if withdrawalFee * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
                    else:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).vaults(address rg1) with:
                                gas gas_remaining wei
                               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, '!vault'
                        if withdrawalFee * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                call 0x73feaa1ee314f8c655e354234017be2193c9e24e.leaveStaking(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 2 * ext_call.return_data[0]:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).rewards() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, 0
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args 0, mem[388 len 4]
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
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if 0 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 553 len 4]
                else:
                    if (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 2 * ext_call.return_data[0] != withdrawalFee:
                        revert with 0, 32, 33, 0x82536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).rewards() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000) >> 32
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000) << 224, mem[388 len 4]
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
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) >> 32
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) << 224, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        else:
            call 0xafd61dc94f11a70ae110dc0e0f2061af5633061a.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0x9cf7bc57584b7998236eff51b98a168dcea9b0)
            staticcall 0x9cf7bc57584b7998236eff51b98a168dcea9b0.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            if arg1 - ext_call.return_data[0] < ext_call.return_data[0]:
                call 0x73feaa1ee314f8c655e354234017be2193c9e24e.leaveStaking(uint256 rg1) with:
                     gas gas_remaining wei
                    args (arg1 - ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg1 < arg1 - ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not arg1:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).rewards() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, 0
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args 0, mem[388 len 4]
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
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 553 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    if withdrawalFee * arg1 / arg1 != withdrawalFee:
                        revert with 0, 32, 33, 0x82536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).rewards() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, withdrawalFee * arg1 / 10000) >> 32
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(224, 32, withdrawalFee * arg1 / 10000) << 224, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 0, 'SafeERC20: low-level call failed'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).vaults(address rg1) with:
                                gas gas_remaining wei
                               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, '!vault'
                        if withdrawalFee * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
                    else:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).vaults(address rg1) with:
                                gas gas_remaining wei
                               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, '!vault'
                        if withdrawalFee * arg1 / 10000 > arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(return_data.size) + 489 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) >> 32
                        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg1 - (withdrawalFee * arg1 / 10000)) << 224, mem[ceil32(return_data.size) + 553 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 0, 'SafeERC20: low-level call failed'
                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 521]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                call 0x73feaa1ee314f8c655e354234017be2193c9e24e.leaveStaking(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if not 2 * ext_call.return_data[0]:
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).rewards() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, 0
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args 0, mem[388 len 4]
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
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if 0 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(224, 31, ext_call.return_data[0]) << 225, mem[ceil32(return_data.size) + 553 len 4]
                else:
                    if (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 2 * ext_call.return_data[0] != withdrawalFee:
                        revert with 0, 32, 33, 0x82536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).rewards() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[324 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000) >> 32
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000) << 224, mem[388 len 4]
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
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if (ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000 > 2 * ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 489 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) >> 32
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(224, 32, (2 * ext_call.return_data[0]) - ((ext_call.return_data[0] * withdrawalFee) + (ext_call.return_data[0] * withdrawalFee) / 10000)) << 224, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function withdrawAll() payable {
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    require ext_code.size(0xafd61dc94f11a70ae110dc0e0f2061af5633061a)
    staticcall 0xafd61dc94f11a70ae110dc0e0f2061af5633061a.userInfo(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xafd61dc94f11a70ae110dc0e0f2061af5633061a)
    call 0xafd61dc94f11a70ae110dc0e0f2061af5633061a.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args 0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x9cf7bc57584b7998236eff51b98a168dcea9b0)
    staticcall 0x9cf7bc57584b7998236eff51b98a168dcea9b0.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    call 0x73feaa1ee314f8c655e354234017be2193c9e24e.leaveStaking(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x4b0f1812e5df2a09796481ff14017e6005508003)
    staticcall 0x4b0f1812e5df2a09796481ff14017e6005508003.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
            staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[196 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64:
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
        else:
            mem[132] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
            mem[164] = 0
            mem[96] = 68
            mem[132 len 28] = 0x5ff2b0db69458a0750badebc4f9e13a
            mem[128 len 4] = approve(address rg1, uint256 rg2)
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[196 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0
            mem[288 len 4] = 0
            call 0x4b0f1812e5df2a09796481ff14017e6005508003.0xdd608c7f with:
                 gas gas_remaining wei
                args 0, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                if not ext_call.return_data[0]:
                    mem[232] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                    mem[264] = ext_call.return_data[0]
                    mem[196] = 68
                    mem[232 len 28] = 0x5ff2b0db69458a0750badebc4f9e13a
                    mem[228 len 4] = approve(address rg1, uint256 rg2)
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[296 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, ext_call.return_data[0 len 28]
                    mem[388 len 4] = ext_call.return_data[20 len 4]
                    call 0x4b0f1812e5df2a09796481ff14017e6005508003.0xdd608c7f with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
                        mem[392] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[424] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[428] = ext_call.return_data[0]
                        mem[460] = 0
                        mem[524] = this.address
                        mem[556] = block.timestamp + 1800
                        mem[492] = 160
                        mem[588] = 3
                        mem[620 len 0] = None
                        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[620 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 424
                        require return_data.size >= 32
                        _15419 = mem[424 len 4], ext_call.return_data[0 len 28]
                        require mem[424 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[424 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424] <= 4294967296 and mem[424 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 424] = mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]
                        _15602 = mem[_15419 + 424]
                        mem[ceil32(return_data.size) + 456 len floor32(mem[_15419 + 424])] = mem[_15419 + 456 len floor32(mem[_15419 + 424])]
                        require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                        staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).vaults(address rg1) with:
                                gas gas_remaining wei
                               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, '!vault'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _15602) + ceil32(return_data.size) + 556 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15602) + ceil32(return_data.size) + 620 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _15602) + ceil32(return_data.size) + 666 len 22]
                        else:
                            mem[(32 * _15602) + ceil32(return_data.size) + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _15602) + ceil32(return_data.size) + 588]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _15602) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                        return ext_call.return_data[0]
                    mem[296] = return_data.size
                    mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not return_data.size:
                        mem[ceil32(return_data.size) + 297] = 3
                        mem[ceil32(return_data.size) + 329] = 0x4b0f1812e5df2a09796481ff14017e6005508003
                        mem[ceil32(return_data.size) + 361] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                        mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                        mem[ceil32(return_data.size) + 461] = 0
                        mem[ceil32(return_data.size) + 525] = this.address
                        mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
                        mem[ceil32(return_data.size) + 493] = 160
                        mem[ceil32(return_data.size) + 589] = 3
                        mem[ceil32(return_data.size) + 621 len 0] = None
                        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                        require return_data.size >= 32
                        _15421 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
                        _15603 = mem[ceil32(return_data.size) + _15421 + 425]
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15421 + 425])] = mem[ceil32(return_data.size) + _15421 + 457 len floor32(mem[ceil32(return_data.size) + _15421 + 425])]
                        require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                        staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).vaults(address rg1) with:
                                gas gas_remaining wei
                               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, '!vault'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _15603) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15603) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _15603) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                        else:
                            mem[(32 * _15603) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _15603) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _15603) + (4 * ceil32(return_data.size)) + 668 len 22]
                        return ext_call.return_data[0]
                    require return_data.size >= 32
                    if not mem[328]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 407 len 22]
                    mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 461] = 0
                    mem[ceil32(return_data.size) + 525] = this.address
                    mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
                    mem[ceil32(return_data.size) + 493] = 160
                    mem[ceil32(return_data.size) + 589] = 3
                    mem[ceil32(return_data.size) + 621 len 0] = None
                    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                    call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                    require return_data.size >= 32
                    _15423 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
                    _15604 = mem[ceil32(return_data.size) + _15423 + 425]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15423 + 425])] = mem[ceil32(return_data.size) + _15423 + 457 len floor32(mem[ceil32(return_data.size) + _15423 + 425])]
                    require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                    staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _15604) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                    mem[(32 * _15604) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4] = ext_call.return_data[20 len 4]
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15604) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _15604) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                        return ext_call.return_data[0]
                    mem[(32 * _15604) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = return_data.size
                    mem[(32 * _15604) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        mem[(32 * _15604) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _15604) + (4 * ceil32(return_data.size)) + 562] = 32
                        mem[(32 * _15604) + (4 * ceil32(return_data.size)) + 594] = 32
                        mem[(32 * _15604) + (4 * ceil32(return_data.size)) + 626] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (32 * _15604) + (4 * ceil32(return_data.size)) + 558
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if not return_data.size:
                        mem[(32 * _15604) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                        return memory
                          from (32 * _15604) + (4 * ceil32(return_data.size)) + 558
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    if mem[(32 * _15604) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
                        mem[(32 * _15604) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                        return memory
                          from (32 * _15604) + (4 * ceil32(return_data.size)) + 558
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
                    mem[(32 * _15604) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _15604) + (4 * ceil32(return_data.size)) + 562] = 32
                    mem[(32 * _15604) + (4 * ceil32(return_data.size)) + 594] = 42
                    mem[(32 * _15604) + (4 * ceil32(return_data.size)) + 626 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (32 * _15604) + (4 * ceil32(return_data.size)) + 558
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                require ext_code.size(0x4b0f1812e5df2a09796481ff14017e6005508003)
                staticcall 0x4b0f1812e5df2a09796481ff14017e6005508003.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[318 len 10]
                mem[232] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                mem[264] = ext_call.return_data[0]
                mem[196] = 68
                mem[232 len 28] = 0x5ff2b0db69458a0750badebc4f9e13a
                mem[228 len 4] = approve(address rg1, uint256 rg2)
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[296 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, ext_call.return_data[0 len 28]
                mem[388 len 4] = ext_call.return_data[20 len 4]
                call 0x4b0f1812e5df2a09796481ff14017e6005508003.0xdd608c7f with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
                    mem[296] = 3
                    mem[328] = 0x4b0f1812e5df2a09796481ff14017e6005508003
                    mem[360] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[392] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[424] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[428] = ext_call.return_data[0]
                    mem[460] = 0
                    mem[524] = this.address
                    mem[556] = block.timestamp + 1800
                    mem[492] = 160
                    mem[588] = 3
                    mem[620 len 0] = None
                    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                    call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[620 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 424
                    require return_data.size >= 32
                    _15427 = mem[424 len 4], ext_call.return_data[0 len 28]
                    require mem[424 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[424 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424] <= 4294967296 and mem[424 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 424] = mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]
                    _15606 = mem[_15427 + 424]
                    mem[ceil32(return_data.size) + 456 len floor32(mem[_15427 + 424])] = mem[_15427 + 456 len floor32(mem[_15427 + 424])]
                    require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                    staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _15606) + ceil32(return_data.size) + 556 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15606) + ceil32(return_data.size) + 620 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _15606) + ceil32(return_data.size) + 666 len 22]
                    else:
                        mem[(32 * _15606) + ceil32(return_data.size) + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _15606) + ceil32(return_data.size) + 588]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _15606) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                    return ext_call.return_data[0]
                mem[296] = return_data.size
                mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    mem[ceil32(return_data.size) + 297] = 3
                    mem[ceil32(return_data.size) + 329] = 0x4b0f1812e5df2a09796481ff14017e6005508003
                    mem[ceil32(return_data.size) + 361] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 461] = 0
                    mem[ceil32(return_data.size) + 525] = this.address
                    mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
                    mem[ceil32(return_data.size) + 493] = 160
                    mem[ceil32(return_data.size) + 589] = 3
                    mem[ceil32(return_data.size) + 621 len 0] = None
                    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                    call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                    require return_data.size >= 32
                    _15429 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
                    _15607 = mem[ceil32(return_data.size) + _15429 + 425]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15429 + 425])] = mem[ceil32(return_data.size) + _15429 + 457 len floor32(mem[ceil32(return_data.size) + _15429 + 425])]
                    require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                    staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _15607) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15607) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _15607) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                    else:
                        mem[(32 * _15607) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _15607) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _15607) + (4 * ceil32(return_data.size)) + 668 len 22]
                    return ext_call.return_data[0]
                require return_data.size >= 32
                if not mem[328]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 407 len 22]
                mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 461] = 0
                mem[ceil32(return_data.size) + 525] = this.address
                mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
                mem[ceil32(return_data.size) + 493] = 160
                mem[ceil32(return_data.size) + 589] = 3
                mem[ceil32(return_data.size) + 621 len 0] = None
                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                require return_data.size >= 32
                _15431 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
                _15608 = mem[ceil32(return_data.size) + _15431 + 425]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15431 + 425])] = mem[ceil32(return_data.size) + _15431 + 457 len floor32(mem[ceil32(return_data.size) + _15431 + 425])]
                require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _15608) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                mem[(32 * _15608) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4] = ext_call.return_data[20 len 4]
                call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15608) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _15608) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                    return ext_call.return_data[0]
                mem[(32 * _15608) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = return_data.size
                mem[(32 * _15608) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    mem[(32 * _15608) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _15608) + (4 * ceil32(return_data.size)) + 562] = 32
                    mem[(32 * _15608) + (4 * ceil32(return_data.size)) + 594] = 32
                    mem[(32 * _15608) + (4 * ceil32(return_data.size)) + 626] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (32 * _15608) + (4 * ceil32(return_data.size)) + 558
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if not return_data.size:
                    mem[(32 * _15608) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                    return memory
                      from (32 * _15608) + (4 * ceil32(return_data.size)) + 558
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
                require return_data.size >= 32
                if mem[(32 * _15608) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
                    mem[(32 * _15608) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                    return memory
                      from (32 * _15608) + (4 * ceil32(return_data.size)) + 558
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
                mem[(32 * _15608) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _15608) + (4 * ceil32(return_data.size)) + 562] = 32
                mem[(32 * _15608) + (4 * ceil32(return_data.size)) + 594] = 42
                mem[(32 * _15608) + (4 * ceil32(return_data.size)) + 626 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (32 * _15608) + (4 * ceil32(return_data.size)) + 558
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[196] = return_data.size
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if not ext_call.return_data[0]:
                    mem[ceil32(return_data.size) + 233] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                    mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 197] = 68
                    mem[ceil32(return_data.size) + 233 len 28] = 0x5ff2b0db69458a0750badebc4f9e13a
                    mem[ceil32(return_data.size) + 229 len 4] = approve(address rg1, uint256 rg2)
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(return_data.size) + 297 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
                    call 0x4b0f1812e5df2a09796481ff14017e6005508003.0xdd608c7f with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                    if return_data.size:
                        mem[ceil32(return_data.size) + 297] = return_data.size
                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 329]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 462] = 0
                            mem[(2 * ceil32(return_data.size)) + 526] = this.address
                            mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
                            mem[(2 * ceil32(return_data.size)) + 494] = 160
                            mem[(2 * ceil32(return_data.size)) + 590] = 3
                            mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
                            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 426
                            require return_data.size >= 32
                            _15439 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
                            _15612 = mem[(2 * ceil32(return_data.size)) + _15439 + 426]
                            mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15439 + 426])] = mem[(2 * ceil32(return_data.size)) + _15439 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15439 + 426])]
                            require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                            staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(controllerAddress))
                            staticcall address(controllerAddress).vaults(address rg1) with:
                                    gas gas_remaining wei
                                   args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, '!vault'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _15612) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15612) + (4 * ceil32(return_data.size)) + 622 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _15612) + (4 * ceil32(return_data.size)) + 668 len 22]
                            else:
                                mem[(32 * _15612) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _15612) + (4 * ceil32(return_data.size)) + 590]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _15612) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
                        else:
                            mem[(2 * ceil32(return_data.size)) + 298] = 3
                            mem[(2 * ceil32(return_data.size)) + 330] = 0x4b0f1812e5df2a09796481ff14017e6005508003
                            mem[(2 * ceil32(return_data.size)) + 362] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                            mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                            if block.timestamp + 1800 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                            mem[(2 * ceil32(return_data.size)) + 462] = 0
                            mem[(2 * ceil32(return_data.size)) + 526] = this.address
                            mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
                            mem[(2 * ceil32(return_data.size)) + 494] = 160
                            mem[(2 * ceil32(return_data.size)) + 590] = 3
                            mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
                            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 426
                            require return_data.size >= 32
                            _15437 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
                            mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
                            _15611 = mem[(2 * ceil32(return_data.size)) + _15437 + 426]
                            mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15437 + 426])] = mem[(2 * ceil32(return_data.size)) + _15437 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15437 + 426])]
                            require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                            staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(controllerAddress))
                            staticcall address(controllerAddress).vaults(address rg1) with:
                                    gas gas_remaining wei
                                   args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, '!vault'
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[(32 * _15611) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                                 gas gas_remaining wei
                                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15611) + (4 * ceil32(return_data.size)) + 622 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _15611) + (4 * ceil32(return_data.size)) + 668 len 22]
                            else:
                                mem[(32 * _15611) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[(32 * _15611) + (4 * ceil32(return_data.size)) + 590]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(32 * _15611) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
                        return ext_call.return_data[0]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 407 len 22]
                    mem[ceil32(return_data.size) + 297] = 3
                    mem[ceil32(return_data.size) + 329] = 0x4b0f1812e5df2a09796481ff14017e6005508003
                    mem[ceil32(return_data.size) + 361] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 461] = 0
                    mem[ceil32(return_data.size) + 525] = this.address
                    mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
                    mem[ceil32(return_data.size) + 493] = 160
                    mem[ceil32(return_data.size) + 589] = 3
                    mem[ceil32(return_data.size) + 621 len 0] = None
                    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                    call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                    require return_data.size >= 32
                    _15435 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                    require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
                    _15610 = mem[ceil32(return_data.size) + _15435 + 425]
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15435 + 425])] = mem[ceil32(return_data.size) + _15435 + 457 len floor32(mem[ceil32(return_data.size) + _15435 + 425])]
                    require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                    staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _15610) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                    mem[(32 * _15610) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4] = ext_call.return_data[20 len 4]
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15610) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _15610) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                        return ext_call.return_data[0]
                    mem[(32 * _15610) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = return_data.size
                    mem[(32 * _15610) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        mem[(32 * _15610) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(32 * _15610) + (4 * ceil32(return_data.size)) + 562] = 32
                        mem[(32 * _15610) + (4 * ceil32(return_data.size)) + 594] = 32
                        mem[(32 * _15610) + (4 * ceil32(return_data.size)) + 626] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (32 * _15610) + (4 * ceil32(return_data.size)) + 558
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if not return_data.size:
                        mem[(32 * _15610) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                        return memory
                          from (32 * _15610) + (4 * ceil32(return_data.size)) + 558
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
                    require return_data.size >= 32
                    if mem[(32 * _15610) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
                        mem[(32 * _15610) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                        return memory
                          from (32 * _15610) + (4 * ceil32(return_data.size)) + 558
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
                    mem[(32 * _15610) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _15610) + (4 * ceil32(return_data.size)) + 562] = 32
                    mem[(32 * _15610) + (4 * ceil32(return_data.size)) + 594] = 42
                    mem[(32 * _15610) + (4 * ceil32(return_data.size)) + 626 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (32 * _15610) + (4 * ceil32(return_data.size)) + 558
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                require ext_code.size(0x4b0f1812e5df2a09796481ff14017e6005508003)
                staticcall 0x4b0f1812e5df2a09796481ff14017e6005508003.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 319 len 10]
                mem[ceil32(return_data.size) + 233] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 197] = 68
                mem[ceil32(return_data.size) + 233 len 28] = 0x5ff2b0db69458a0750badebc4f9e13a
                mem[ceil32(return_data.size) + 229 len 4] = approve(address rg1, uint256 rg2)
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 297 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, ext_call.return_data[0 len 28]
                mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
                call 0x4b0f1812e5df2a09796481ff14017e6005508003.0xdd608c7f with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                if return_data.size:
                    mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not return_data.size:
                        mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 462] = 0
                        mem[(2 * ceil32(return_data.size)) + 526] = this.address
                        mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
                        mem[(2 * ceil32(return_data.size)) + 494] = 160
                        mem[(2 * ceil32(return_data.size)) + 590] = 3
                        mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
                        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 426
                        require return_data.size >= 32
                        _15445 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
                        _15615 = mem[(2 * ceil32(return_data.size)) + _15445 + 426]
                        mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15445 + 426])] = mem[(2 * ceil32(return_data.size)) + _15445 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15445 + 426])]
                        require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                        staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).vaults(address rg1) with:
                                gas gas_remaining wei
                               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, '!vault'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _15615) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15615) + (4 * ceil32(return_data.size)) + 622 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _15615) + (4 * ceil32(return_data.size)) + 668 len 22]
                        else:
                            mem[(32 * _15615) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _15615) + (4 * ceil32(return_data.size)) + 590]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _15615) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
                    else:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 329]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 462] = 0
                        mem[(2 * ceil32(return_data.size)) + 526] = this.address
                        mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
                        mem[(2 * ceil32(return_data.size)) + 494] = 160
                        mem[(2 * ceil32(return_data.size)) + 590] = 3
                        mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
                        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 426
                        require return_data.size >= 32
                        _15447 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
                        _15616 = mem[(2 * ceil32(return_data.size)) + _15447 + 426]
                        mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15447 + 426])] = mem[(2 * ceil32(return_data.size)) + _15447 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15447 + 426])]
                        require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                        staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).vaults(address rg1) with:
                                gas gas_remaining wei
                               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, '!vault'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _15616) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15616) + (4 * ceil32(return_data.size)) + 622 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _15616) + (4 * ceil32(return_data.size)) + 668 len 22]
                        else:
                            mem[(32 * _15616) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _15616) + (4 * ceil32(return_data.size)) + 590]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _15616) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
                    return ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 407 len 22]
                mem[ceil32(return_data.size) + 297] = 3
                mem[ceil32(return_data.size) + 329] = 0x4b0f1812e5df2a09796481ff14017e6005508003
                mem[ceil32(return_data.size) + 361] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 461] = 0
                mem[ceil32(return_data.size) + 525] = this.address
                mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
                mem[ceil32(return_data.size) + 493] = 160
                mem[ceil32(return_data.size) + 589] = 3
                mem[ceil32(return_data.size) + 621 len 0] = None
                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                require return_data.size >= 32
                _15443 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
                _15614 = mem[ceil32(return_data.size) + _15443 + 425]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15443 + 425])] = mem[ceil32(return_data.size) + _15443 + 457 len floor32(mem[ceil32(return_data.size) + _15443 + 425])]
                require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _15614) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                mem[(32 * _15614) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4] = ext_call.return_data[20 len 4]
                call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15614) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _15614) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                    return ext_call.return_data[0]
                mem[(32 * _15614) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = return_data.size
                mem[(32 * _15614) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    mem[(32 * _15614) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _15614) + (4 * ceil32(return_data.size)) + 562] = 32
                    mem[(32 * _15614) + (4 * ceil32(return_data.size)) + 594] = 32
                    mem[(32 * _15614) + (4 * ceil32(return_data.size)) + 626] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (32 * _15614) + (4 * ceil32(return_data.size)) + 558
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if not return_data.size:
                    mem[(32 * _15614) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                    return memory
                      from (32 * _15614) + (4 * ceil32(return_data.size)) + 558
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
                require return_data.size >= 32
                if mem[(32 * _15614) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
                    mem[(32 * _15614) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                    return memory
                      from (32 * _15614) + (4 * ceil32(return_data.size)) + 558
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
                mem[(32 * _15614) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _15614) + (4 * ceil32(return_data.size)) + 562] = 32
                mem[(32 * _15614) + (4 * ceil32(return_data.size)) + 594] = 42
                mem[(32 * _15614) + (4 * ceil32(return_data.size)) + 626 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (32 * _15614) + (4 * ceil32(return_data.size)) + 558
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
            if not ext_call.return_data[0]:
                mem[ceil32(return_data.size) + 233] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
                mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 197] = 68
                mem[ceil32(return_data.size) + 233 len 28] = 0x5ff2b0db69458a0750badebc4f9e13a
                mem[ceil32(return_data.size) + 229 len 4] = approve(address rg1, uint256 rg2)
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 297 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, ext_call.return_data[0 len 28]
                mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
                call 0x4b0f1812e5df2a09796481ff14017e6005508003.0xdd608c7f with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
                if return_data.size:
                    mem[ceil32(return_data.size) + 297] = return_data.size
                    mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not return_data.size:
                        mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 462] = 0
                        mem[(2 * ceil32(return_data.size)) + 526] = this.address
                        mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
                        mem[(2 * ceil32(return_data.size)) + 494] = 160
                        mem[(2 * ceil32(return_data.size)) + 590] = 3
                        mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
                        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 426
                        require return_data.size >= 32
                        _15453 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
                        _15619 = mem[(2 * ceil32(return_data.size)) + _15453 + 426]
                        mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15453 + 426])] = mem[(2 * ceil32(return_data.size)) + _15453 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15453 + 426])]
                        require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                        staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).vaults(address rg1) with:
                                gas gas_remaining wei
                               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, '!vault'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _15619) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15619) + (4 * ceil32(return_data.size)) + 622 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _15619) + (4 * ceil32(return_data.size)) + 668 len 22]
                        else:
                            mem[(32 * _15619) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _15619) + (4 * ceil32(return_data.size)) + 590]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _15619) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
                    else:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 329]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        mem[(2 * ceil32(return_data.size)) + 298] = 3
                        mem[(2 * ceil32(return_data.size)) + 330] = 0x4b0f1812e5df2a09796481ff14017e6005508003
                        mem[(2 * ceil32(return_data.size)) + 362] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                        mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if block.timestamp + 1800 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 462] = 0
                        mem[(2 * ceil32(return_data.size)) + 526] = this.address
                        mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
                        mem[(2 * ceil32(return_data.size)) + 494] = 160
                        mem[(2 * ceil32(return_data.size)) + 590] = 3
                        mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
                        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (4 * ceil32(return_data.size)) + 426
                        require return_data.size >= 32
                        _15455 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                        require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
                        mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
                        _15620 = mem[(2 * ceil32(return_data.size)) + _15455 + 426]
                        mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15455 + 426])] = mem[(2 * ceil32(return_data.size)) + _15455 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15455 + 426])]
                        require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                        staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(controllerAddress))
                        staticcall address(controllerAddress).vaults(address rg1) with:
                                gas gas_remaining wei
                               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, '!vault'
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[(32 * _15620) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15620) + (4 * ceil32(return_data.size)) + 622 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _15620) + (4 * ceil32(return_data.size)) + 668 len 22]
                        else:
                            mem[(32 * _15620) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[(32 * _15620) + (4 * ceil32(return_data.size)) + 590]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(32 * _15620) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
                    return ext_call.return_data[0]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 407 len 22]
                mem[ceil32(return_data.size) + 297] = 3
                mem[ceil32(return_data.size) + 329] = 0x4b0f1812e5df2a09796481ff14017e6005508003
                mem[ceil32(return_data.size) + 361] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 461] = 0
                mem[ceil32(return_data.size) + 525] = this.address
                mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
                mem[ceil32(return_data.size) + 493] = 160
                mem[ceil32(return_data.size) + 589] = 3
                mem[ceil32(return_data.size) + 621 len 0] = None
                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                require return_data.size >= 32
                _15451 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
                _15618 = mem[ceil32(return_data.size) + _15451 + 425]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15451 + 425])] = mem[ceil32(return_data.size) + _15451 + 457 len floor32(mem[ceil32(return_data.size) + _15451 + 425])]
                require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _15618) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                mem[(32 * _15618) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4] = ext_call.return_data[20 len 4]
                call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15618) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _15618) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                    return ext_call.return_data[0]
                mem[(32 * _15618) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = return_data.size
                mem[(32 * _15618) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    mem[(32 * _15618) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _15618) + (4 * ceil32(return_data.size)) + 562] = 32
                    mem[(32 * _15618) + (4 * ceil32(return_data.size)) + 594] = 32
                    mem[(32 * _15618) + (4 * ceil32(return_data.size)) + 626] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (32 * _15618) + (4 * ceil32(return_data.size)) + 558
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if not return_data.size:
                    mem[(32 * _15618) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                    return memory
                      from (32 * _15618) + (4 * ceil32(return_data.size)) + 558
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
                require return_data.size >= 32
                if mem[(32 * _15618) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
                    mem[(32 * _15618) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                    return memory
                      from (32 * _15618) + (4 * ceil32(return_data.size)) + 558
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
                mem[(32 * _15618) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _15618) + (4 * ceil32(return_data.size)) + 562] = 32
                mem[(32 * _15618) + (4 * ceil32(return_data.size)) + 594] = 42
                mem[(32 * _15618) + (4 * ceil32(return_data.size)) + 626 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (32 * _15618) + (4 * ceil32(return_data.size)) + 558
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            require ext_code.size(0x4b0f1812e5df2a09796481ff14017e6005508003)
            staticcall 0x4b0f1812e5df2a09796481ff14017e6005508003.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 319 len 10]
            mem[ceil32(return_data.size) + 233] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 197] = 68
            mem[ceil32(return_data.size) + 233 len 28] = 0x5ff2b0db69458a0750badebc4f9e13a
            mem[ceil32(return_data.size) + 229 len 4] = approve(address rg1, uint256 rg2)
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 297 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
            call 0x4b0f1812e5df2a09796481ff14017e6005508003.0xdd608c7f with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 407 len 22]
                mem[ceil32(return_data.size) + 297] = 3
                mem[ceil32(return_data.size) + 329] = 0x4b0f1812e5df2a09796481ff14017e6005508003
                mem[ceil32(return_data.size) + 361] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 461] = 0
                mem[ceil32(return_data.size) + 525] = this.address
                mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
                mem[ceil32(return_data.size) + 493] = 160
                mem[ceil32(return_data.size) + 589] = 3
                mem[ceil32(return_data.size) + 621 len 0] = None
                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                require return_data.size >= 32
                _15459 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
                _15622 = mem[ceil32(return_data.size) + _15459 + 425]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15459 + 425])] = mem[ceil32(return_data.size) + _15459 + 457 len floor32(mem[ceil32(return_data.size) + _15459 + 425])]
                require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _15622) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15622) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _15622) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                else:
                    mem[(32 * _15622) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _15622) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _15622) + (4 * ceil32(return_data.size)) + 668 len 22]
            else:
                mem[ceil32(return_data.size) + 297] = return_data.size
                mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not return_data.size:
                    mem[(2 * ceil32(return_data.size)) + 298] = 3
                    mem[(2 * ceil32(return_data.size)) + 330] = 0x4b0f1812e5df2a09796481ff14017e6005508003
                    mem[(2 * ceil32(return_data.size)) + 362] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 462] = 0
                    mem[(2 * ceil32(return_data.size)) + 526] = this.address
                    mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
                    mem[(2 * ceil32(return_data.size)) + 494] = 160
                    mem[(2 * ceil32(return_data.size)) + 590] = 3
                    mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
                    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                    call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 426
                    require return_data.size >= 32
                    _15461 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
                    _15623 = mem[(2 * ceil32(return_data.size)) + _15461 + 426]
                    mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15461 + 426])] = mem[(2 * ceil32(return_data.size)) + _15461 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15461 + 426])]
                    require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                    staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _15623) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15623) + (4 * ceil32(return_data.size)) + 622 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _15623) + (4 * ceil32(return_data.size)) + 668 len 22]
                    else:
                        mem[(32 * _15623) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _15623) + (4 * ceil32(return_data.size)) + 590]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _15623) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
                else:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 329]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    mem[(2 * ceil32(return_data.size)) + 298] = 3
                    mem[(2 * ceil32(return_data.size)) + 330] = 0x4b0f1812e5df2a09796481ff14017e6005508003
                    mem[(2 * ceil32(return_data.size)) + 362] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 462] = 0
                    mem[(2 * ceil32(return_data.size)) + 526] = this.address
                    mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
                    mem[(2 * ceil32(return_data.size)) + 494] = 160
                    mem[(2 * ceil32(return_data.size)) + 590] = 3
                    mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
                    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                    call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 426
                    require return_data.size >= 32
                    _15463 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
                    _15624 = mem[(2 * ceil32(return_data.size)) + _15463 + 426]
                    mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15463 + 426])] = mem[(2 * ceil32(return_data.size)) + _15463 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15463 + 426])]
                    require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                    staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _15624) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15624) + (4 * ceil32(return_data.size)) + 622 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _15624) + (4 * ceil32(return_data.size)) + 668 len 22]
                    else:
                        mem[(32 * _15624) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _15624) + (4 * ceil32(return_data.size)) + 590]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _15624) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
        return ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
        staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).vaults(address rg1) with:
                gas gas_remaining wei
               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, '!vault'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64:
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
    mem[132] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
    mem[164] = 0
    mem[96] = 68
    mem[132 len 28] = 0x5ff2b0db69458a0750badebc4f9e13a
    mem[128 len 4] = approve(address rg1, uint256 rg2)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0
    mem[288 len 4] = 0
    call 0x4b0f1812e5df2a09796481ff14017e6005508003.0xdd608c7f with:
         gas gas_remaining wei
        args 0, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        if not ext_call.return_data[0]:
            mem[232] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
            mem[264] = ext_call.return_data[0]
            mem[196] = 68
            mem[232 len 28] = 0x5ff2b0db69458a0750badebc4f9e13a
            mem[228 len 4] = approve(address rg1, uint256 rg2)
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[296 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, ext_call.return_data[0 len 28]
            mem[388 len 4] = ext_call.return_data[20 len 4]
            call 0x4b0f1812e5df2a09796481ff14017e6005508003.0xdd608c7f with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
                mem[296] = 3
                mem[328] = 0x4b0f1812e5df2a09796481ff14017e6005508003
                mem[360] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                mem[392] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[424] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[428] = ext_call.return_data[0]
                mem[460] = 0
                mem[524] = this.address
                mem[556] = block.timestamp + 1800
                mem[492] = 160
                mem[588] = 3
                mem[620 len 0] = None
                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[620 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 424
                require return_data.size >= 32
                _15483 = mem[424 len 4], ext_call.return_data[0 len 28]
                require mem[424 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[424 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424] <= 4294967296 and mem[424 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 424] = mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]
                _15634 = mem[_15483 + 424]
                mem[ceil32(return_data.size) + 456 len floor32(mem[_15483 + 424])] = mem[_15483 + 456 len floor32(mem[_15483 + 424])]
                require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _15634) + ceil32(return_data.size) + 556 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15634) + ceil32(return_data.size) + 620 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _15634) + ceil32(return_data.size) + 666 len 22]
                else:
                    mem[(32 * _15634) + ceil32(return_data.size) + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _15634) + ceil32(return_data.size) + 588]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _15634) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                return ext_call.return_data[0]
            mem[296] = return_data.size
            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[328]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 407 len 22]
                mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
                mem[ceil32(return_data.size) + 461] = 0
                mem[ceil32(return_data.size) + 525] = this.address
                mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
                mem[ceil32(return_data.size) + 493] = 160
                mem[ceil32(return_data.size) + 589] = 3
                mem[ceil32(return_data.size) + 621 len 0] = None
                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
                require return_data.size >= 32
                _15487 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
                require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
                _15636 = mem[ceil32(return_data.size) + _15487 + 425]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15487 + 425])] = mem[ceil32(return_data.size) + _15487 + 457 len floor32(mem[ceil32(return_data.size) + _15487 + 425])]
                require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _15636) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                mem[(32 * _15636) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4] = ext_call.return_data[20 len 4]
                call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15636) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _15636) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                    return ext_call.return_data[0]
                mem[(32 * _15636) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = return_data.size
                mem[(32 * _15636) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    mem[(32 * _15636) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(32 * _15636) + (4 * ceil32(return_data.size)) + 562] = 32
                    mem[(32 * _15636) + (4 * ceil32(return_data.size)) + 594] = 32
                    mem[(32 * _15636) + (4 * ceil32(return_data.size)) + 626] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (32 * _15636) + (4 * ceil32(return_data.size)) + 558
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if not return_data.size:
                    mem[(32 * _15636) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                    return memory
                      from (32 * _15636) + (4 * ceil32(return_data.size)) + 558
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
                require return_data.size >= 32
                if mem[(32 * _15636) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
                    mem[(32 * _15636) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                    return memory
                      from (32 * _15636) + (4 * ceil32(return_data.size)) + 558
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
                mem[(32 * _15636) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _15636) + (4 * ceil32(return_data.size)) + 562] = 32
                mem[(32 * _15636) + (4 * ceil32(return_data.size)) + 594] = 42
                mem[(32 * _15636) + (4 * ceil32(return_data.size)) + 626 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (32 * _15636) + (4 * ceil32(return_data.size)) + 558
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[ceil32(return_data.size) + 297] = 3
            mem[ceil32(return_data.size) + 329] = 0x4b0f1812e5df2a09796481ff14017e6005508003
            mem[ceil32(return_data.size) + 361] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 461] = 0
            mem[ceil32(return_data.size) + 525] = this.address
            mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
            mem[ceil32(return_data.size) + 493] = 160
            mem[ceil32(return_data.size) + 589] = 3
            mem[ceil32(return_data.size) + 621 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
            require return_data.size >= 32
            _15485 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
            _15635 = mem[ceil32(return_data.size) + _15485 + 425]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15485 + 425])] = mem[ceil32(return_data.size) + _15485 + 457 len floor32(mem[ceil32(return_data.size) + _15485 + 425])]
            require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
            staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _15635) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
            mem[(32 * _15635) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4] = ext_call.return_data[20 len 4]
            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15635) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _15635) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                return ext_call.return_data[0]
            mem[(32 * _15635) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = return_data.size
            mem[(32 * _15635) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(32 * _15635) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _15635) + (4 * ceil32(return_data.size)) + 562] = 32
                mem[(32 * _15635) + (4 * ceil32(return_data.size)) + 594] = 32
                mem[(32 * _15635) + (4 * ceil32(return_data.size)) + 626] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * _15635) + (4 * ceil32(return_data.size)) + 558
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if not return_data.size:
                mem[(32 * _15635) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                return memory
                  from (32 * _15635) + (4 * ceil32(return_data.size)) + 558
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            if mem[(32 * _15635) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
                mem[(32 * _15635) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                return memory
                  from (32 * _15635) + (4 * ceil32(return_data.size)) + 558
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
            mem[(32 * _15635) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _15635) + (4 * ceil32(return_data.size)) + 562] = 32
            mem[(32 * _15635) + (4 * ceil32(return_data.size)) + 594] = 42
            mem[(32 * _15635) + (4 * ceil32(return_data.size)) + 626 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (32 * _15635) + (4 * ceil32(return_data.size)) + 558
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        require ext_code.size(0x4b0f1812e5df2a09796481ff14017e6005508003)
        staticcall 0x4b0f1812e5df2a09796481ff14017e6005508003.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[318 len 10]
        mem[232] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
        mem[264] = ext_call.return_data[0]
        mem[196] = 68
        mem[232 len 28] = 0x5ff2b0db69458a0750badebc4f9e13a
        mem[228 len 4] = approve(address rg1, uint256 rg2)
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[296 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, ext_call.return_data[0 len 28]
        mem[388 len 4] = ext_call.return_data[20 len 4]
        call 0x4b0f1812e5df2a09796481ff14017e6005508003.0xdd608c7f with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[360 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
            mem[296] = 3
            mem[328] = 0x4b0f1812e5df2a09796481ff14017e6005508003
            mem[360] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[392] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[424] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[428] = ext_call.return_data[0]
            mem[460] = 0
            mem[524] = this.address
            mem[556] = block.timestamp + 1800
            mem[492] = 160
            mem[588] = 3
            mem[620 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[620 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[424 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 424
            require return_data.size >= 32
            _15491 = mem[424 len 4], ext_call.return_data[0 len 28]
            require mem[424 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[424 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424] <= 4294967296 and mem[424 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 424] = mem[mem[424 len 4], ext_call.return_data[0 len 28] + 424]
            _15638 = mem[_15491 + 424]
            mem[ceil32(return_data.size) + 456 len floor32(mem[_15491 + 424])] = mem[_15491 + 456 len floor32(mem[_15491 + 424])]
            require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
            staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _15638) + ceil32(return_data.size) + 556 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15638) + ceil32(return_data.size) + 620 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _15638) + ceil32(return_data.size) + 666 len 22]
            else:
                mem[(32 * _15638) + ceil32(return_data.size) + 588 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _15638) + ceil32(return_data.size) + 588]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _15638) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
            return ext_call.return_data[0]
        mem[296] = return_data.size
        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[328]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 407 len 22]
            mem[ceil32(return_data.size) + 297] = 3
            mem[ceil32(return_data.size) + 329] = 0x4b0f1812e5df2a09796481ff14017e6005508003
            mem[ceil32(return_data.size) + 361] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 461] = 0
            mem[ceil32(return_data.size) + 525] = this.address
            mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
            mem[ceil32(return_data.size) + 493] = 160
            mem[ceil32(return_data.size) + 589] = 3
            mem[ceil32(return_data.size) + 621 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
            require return_data.size >= 32
            _15495 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
            _15640 = mem[ceil32(return_data.size) + _15495 + 425]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15495 + 425])] = mem[ceil32(return_data.size) + _15495 + 457 len floor32(mem[ceil32(return_data.size) + _15495 + 425])]
            require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
            staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _15640) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15640) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _15640) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
            else:
                mem[(32 * _15640) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _15640) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _15640) + (4 * ceil32(return_data.size)) + 668 len 22]
            return ext_call.return_data[0]
        mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
        if block.timestamp + 1800 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 461] = 0
        mem[ceil32(return_data.size) + 525] = this.address
        mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
        mem[ceil32(return_data.size) + 493] = 160
        mem[ceil32(return_data.size) + 589] = 3
        mem[ceil32(return_data.size) + 621 len 0] = None
        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
        require return_data.size >= 32
        _15493 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
        _15639 = mem[ceil32(return_data.size) + _15493 + 425]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15493 + 425])] = mem[ceil32(return_data.size) + _15493 + 457 len floor32(mem[ceil32(return_data.size) + _15493 + 425])]
        require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
        staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).vaults(address rg1) with:
                gas gas_remaining wei
               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, '!vault'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _15639) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
        mem[(32 * _15639) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4] = ext_call.return_data[20 len 4]
        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15639) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _15639) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
            return ext_call.return_data[0]
        mem[(32 * _15639) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = return_data.size
        mem[(32 * _15639) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(32 * _15639) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _15639) + (4 * ceil32(return_data.size)) + 562] = 32
            mem[(32 * _15639) + (4 * ceil32(return_data.size)) + 594] = 32
            mem[(32 * _15639) + (4 * ceil32(return_data.size)) + 626] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * _15639) + (4 * ceil32(return_data.size)) + 558
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            mem[(32 * _15639) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
            return memory
              from (32 * _15639) + (4 * ceil32(return_data.size)) + 558
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
        require return_data.size >= 32
        if mem[(32 * _15639) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
            mem[(32 * _15639) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
            return memory
              from (32 * _15639) + (4 * ceil32(return_data.size)) + 558
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
        mem[(32 * _15639) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _15639) + (4 * ceil32(return_data.size)) + 562] = 32
        mem[(32 * _15639) + (4 * ceil32(return_data.size)) + 594] = 42
        mem[(32 * _15639) + (4 * ceil32(return_data.size)) + 626 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (32 * _15639) + (4 * ceil32(return_data.size)) + 558
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[196] = return_data.size
    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if not return_data.size:
        if not ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 233] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
            mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 197] = 68
            mem[ceil32(return_data.size) + 233 len 28] = 0x5ff2b0db69458a0750badebc4f9e13a
            mem[ceil32(return_data.size) + 229 len 4] = approve(address rg1, uint256 rg2)
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 297 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
            call 0x4b0f1812e5df2a09796481ff14017e6005508003.0xdd608c7f with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
            if return_data.size:
                mem[ceil32(return_data.size) + 297] = return_data.size
                mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 329]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 462] = 0
                    mem[(2 * ceil32(return_data.size)) + 526] = this.address
                    mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
                    mem[(2 * ceil32(return_data.size)) + 494] = 160
                    mem[(2 * ceil32(return_data.size)) + 590] = 3
                    mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
                    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                    call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 426
                    require return_data.size >= 32
                    _15503 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
                    _15644 = mem[(2 * ceil32(return_data.size)) + _15503 + 426]
                    mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15503 + 426])] = mem[(2 * ceil32(return_data.size)) + _15503 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15503 + 426])]
                    require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                    staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _15644) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15644) + (4 * ceil32(return_data.size)) + 622 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _15644) + (4 * ceil32(return_data.size)) + 668 len 22]
                    else:
                        mem[(32 * _15644) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _15644) + (4 * ceil32(return_data.size)) + 590]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _15644) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 298] = 3
                    mem[(2 * ceil32(return_data.size)) + 330] = 0x4b0f1812e5df2a09796481ff14017e6005508003
                    mem[(2 * ceil32(return_data.size)) + 362] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                    mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                    mem[(2 * ceil32(return_data.size)) + 462] = 0
                    mem[(2 * ceil32(return_data.size)) + 526] = this.address
                    mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
                    mem[(2 * ceil32(return_data.size)) + 494] = 160
                    mem[(2 * ceil32(return_data.size)) + 590] = 3
                    mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
                    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                    call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (4 * ceil32(return_data.size)) + 426
                    require return_data.size >= 32
                    _15501 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                    require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
                    mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
                    _15643 = mem[(2 * ceil32(return_data.size)) + _15501 + 426]
                    mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15501 + 426])] = mem[(2 * ceil32(return_data.size)) + _15501 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15501 + 426])]
                    require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                    staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(controllerAddress))
                    staticcall address(controllerAddress).vaults(address rg1) with:
                            gas gas_remaining wei
                           args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, '!vault'
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * _15643) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15643) + (4 * ceil32(return_data.size)) + 622 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _15643) + (4 * ceil32(return_data.size)) + 668 len 22]
                    else:
                        mem[(32 * _15643) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _15643) + (4 * ceil32(return_data.size)) + 590]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _15643) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
                return ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 407 len 22]
            mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 461] = 0
            mem[ceil32(return_data.size) + 525] = this.address
            mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
            mem[ceil32(return_data.size) + 493] = 160
            mem[ceil32(return_data.size) + 589] = 3
            mem[ceil32(return_data.size) + 621 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
            require return_data.size >= 32
            _15499 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
            _15642 = mem[ceil32(return_data.size) + _15499 + 425]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15499 + 425])] = mem[ceil32(return_data.size) + _15499 + 457 len floor32(mem[ceil32(return_data.size) + _15499 + 425])]
            require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
            staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _15642) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
            mem[(32 * _15642) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4] = ext_call.return_data[20 len 4]
            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15642) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _15642) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                return ext_call.return_data[0]
            mem[(32 * _15642) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = return_data.size
            mem[(32 * _15642) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(32 * _15642) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _15642) + (4 * ceil32(return_data.size)) + 562] = 32
                mem[(32 * _15642) + (4 * ceil32(return_data.size)) + 594] = 32
                mem[(32 * _15642) + (4 * ceil32(return_data.size)) + 626] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * _15642) + (4 * ceil32(return_data.size)) + 558
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if not return_data.size:
                mem[(32 * _15642) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                return memory
                  from (32 * _15642) + (4 * ceil32(return_data.size)) + 558
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            if mem[(32 * _15642) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
                mem[(32 * _15642) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                return memory
                  from (32 * _15642) + (4 * ceil32(return_data.size)) + 558
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
            mem[(32 * _15642) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _15642) + (4 * ceil32(return_data.size)) + 562] = 32
            mem[(32 * _15642) + (4 * ceil32(return_data.size)) + 594] = 42
            mem[(32 * _15642) + (4 * ceil32(return_data.size)) + 626 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (32 * _15642) + (4 * ceil32(return_data.size)) + 558
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        require ext_code.size(0x4b0f1812e5df2a09796481ff14017e6005508003)
        staticcall 0x4b0f1812e5df2a09796481ff14017e6005508003.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 319 len 10]
        mem[ceil32(return_data.size) + 233] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
        mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 197] = 68
        mem[ceil32(return_data.size) + 233 len 28] = 0x5ff2b0db69458a0750badebc4f9e13a
        mem[ceil32(return_data.size) + 229 len 4] = approve(address rg1, uint256 rg2)
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 297 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, ext_call.return_data[0 len 28]
        mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
        call 0x4b0f1812e5df2a09796481ff14017e6005508003.0xdd608c7f with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 407 len 22]
            mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 461] = 0
            mem[ceil32(return_data.size) + 525] = this.address
            mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
            mem[ceil32(return_data.size) + 493] = 160
            mem[ceil32(return_data.size) + 589] = 3
            mem[ceil32(return_data.size) + 621 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
            require return_data.size >= 32
            _15507 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
            _15646 = mem[ceil32(return_data.size) + _15507 + 425]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15507 + 425])] = mem[ceil32(return_data.size) + _15507 + 457 len floor32(mem[ceil32(return_data.size) + _15507 + 425])]
            require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
            staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _15646) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
            mem[(32 * _15646) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4] = ext_call.return_data[20 len 4]
            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15646) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _15646) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
                return ext_call.return_data[0]
            mem[(32 * _15646) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = return_data.size
            mem[(32 * _15646) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[(32 * _15646) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(32 * _15646) + (4 * ceil32(return_data.size)) + 562] = 32
                mem[(32 * _15646) + (4 * ceil32(return_data.size)) + 594] = 32
                mem[(32 * _15646) + (4 * ceil32(return_data.size)) + 626] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (32 * _15646) + (4 * ceil32(return_data.size)) + 558
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if not return_data.size:
                mem[(32 * _15646) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                return memory
                  from (32 * _15646) + (4 * ceil32(return_data.size)) + 558
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
            require return_data.size >= 32
            if mem[(32 * _15646) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
                mem[(32 * _15646) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
                return memory
                  from (32 * _15646) + (4 * ceil32(return_data.size)) + 558
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
            mem[(32 * _15646) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _15646) + (4 * ceil32(return_data.size)) + 562] = 32
            mem[(32 * _15646) + (4 * ceil32(return_data.size)) + 594] = 42
            mem[(32 * _15646) + (4 * ceil32(return_data.size)) + 626 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (32 * _15646) + (4 * ceil32(return_data.size)) + 558
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[ceil32(return_data.size) + 297] = return_data.size
        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not return_data.size:
            mem[(2 * ceil32(return_data.size)) + 298] = 3
            mem[(2 * ceil32(return_data.size)) + 330] = 0x4b0f1812e5df2a09796481ff14017e6005508003
            mem[(2 * ceil32(return_data.size)) + 362] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 462] = 0
            mem[(2 * ceil32(return_data.size)) + 526] = this.address
            mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
            mem[(2 * ceil32(return_data.size)) + 494] = 160
            mem[(2 * ceil32(return_data.size)) + 590] = 3
            mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 426
            require return_data.size >= 32
            _15509 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
            _15647 = mem[(2 * ceil32(return_data.size)) + _15509 + 426]
            mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15509 + 426])] = mem[(2 * ceil32(return_data.size)) + _15509 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15509 + 426])]
            require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
            staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _15647) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15647) + (4 * ceil32(return_data.size)) + 622 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _15647) + (4 * ceil32(return_data.size)) + 668 len 22]
            else:
                mem[(32 * _15647) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _15647) + (4 * ceil32(return_data.size)) + 590]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _15647) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
        else:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 329]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            mem[(2 * ceil32(return_data.size)) + 298] = 3
            mem[(2 * ceil32(return_data.size)) + 330] = 0x4b0f1812e5df2a09796481ff14017e6005508003
            mem[(2 * ceil32(return_data.size)) + 362] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
            mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 462] = 0
            mem[(2 * ceil32(return_data.size)) + 526] = this.address
            mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
            mem[(2 * ceil32(return_data.size)) + 494] = 160
            mem[(2 * ceil32(return_data.size)) + 590] = 3
            mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 426
            require return_data.size >= 32
            _15511 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
            _15648 = mem[(2 * ceil32(return_data.size)) + _15511 + 426]
            mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15511 + 426])] = mem[(2 * ceil32(return_data.size)) + _15511 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15511 + 426])]
            require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
            staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _15648) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15648) + (4 * ceil32(return_data.size)) + 622 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _15648) + (4 * ceil32(return_data.size)) + 668 len 22]
            else:
                mem[(32 * _15648) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _15648) + (4 * ceil32(return_data.size)) + 590]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _15648) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
        return ext_call.return_data[0]
    require return_data.size >= 32
    if not mem[228]:
        revert with 0, 
                    32,
                    42,
                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[ceil32(return_data.size) + 307 len 22]
    if not ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 233] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
        mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 197] = 68
        mem[ceil32(return_data.size) + 233 len 28] = 0x5ff2b0db69458a0750badebc4f9e13a
        mem[ceil32(return_data.size) + 229 len 4] = approve(address rg1, uint256 rg2)
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 297 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, ext_call.return_data[0 len 28]
        mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
        call 0x4b0f1812e5df2a09796481ff14017e6005508003.0xdd608c7f with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
        if return_data.size:
            mem[ceil32(return_data.size) + 297] = return_data.size
            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 329]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 462] = 0
                mem[(2 * ceil32(return_data.size)) + 526] = this.address
                mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
                mem[(2 * ceil32(return_data.size)) + 494] = 160
                mem[(2 * ceil32(return_data.size)) + 590] = 3
                mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 426
                require return_data.size >= 32
                _15519 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
                _15652 = mem[(2 * ceil32(return_data.size)) + _15519 + 426]
                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15519 + 426])] = mem[(2 * ceil32(return_data.size)) + _15519 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15519 + 426])]
                require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _15652) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15652) + (4 * ceil32(return_data.size)) + 622 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _15652) + (4 * ceil32(return_data.size)) + 668 len 22]
                else:
                    mem[(32 * _15652) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _15652) + (4 * ceil32(return_data.size)) + 590]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _15652) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 298] = 3
                mem[(2 * ceil32(return_data.size)) + 330] = 0x4b0f1812e5df2a09796481ff14017e6005508003
                mem[(2 * ceil32(return_data.size)) + 362] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
                mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
                if block.timestamp + 1800 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                mem[(2 * ceil32(return_data.size)) + 462] = 0
                mem[(2 * ceil32(return_data.size)) + 526] = this.address
                mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
                mem[(2 * ceil32(return_data.size)) + 494] = 160
                mem[(2 * ceil32(return_data.size)) + 590] = 3
                mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
                require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
                call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 426
                require return_data.size >= 32
                _15517 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
                mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
                _15651 = mem[(2 * ceil32(return_data.size)) + _15517 + 426]
                mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15517 + 426])] = mem[(2 * ceil32(return_data.size)) + _15517 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15517 + 426])]
                require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
                staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(controllerAddress))
                staticcall address(controllerAddress).vaults(address rg1) with:
                        gas gas_remaining wei
                       args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, '!vault'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[(32 * _15651) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
                call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15651) + (4 * ceil32(return_data.size)) + 622 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _15651) + (4 * ceil32(return_data.size)) + 668 len 22]
                else:
                    mem[(32 * _15651) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _15651) + (4 * ceil32(return_data.size)) + 590]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _15651) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
            return ext_call.return_data[0]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 407 len 22]
        mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
        if block.timestamp + 1800 < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
        mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 461] = 0
        mem[ceil32(return_data.size) + 525] = this.address
        mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
        mem[ceil32(return_data.size) + 493] = 160
        mem[ceil32(return_data.size) + 589] = 3
        mem[ceil32(return_data.size) + 621 len 0] = None
        require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
        call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
        require return_data.size >= 32
        _15515 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
        _15650 = mem[ceil32(return_data.size) + _15515 + 425]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15515 + 425])] = mem[ceil32(return_data.size) + _15515 + 457 len floor32(mem[ceil32(return_data.size) + _15515 + 425])]
        require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
        staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).vaults(address rg1) with:
                gas gas_remaining wei
               args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, '!vault'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[(32 * _15650) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
        mem[(32 * _15650) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4] = ext_call.return_data[20 len 4]
        call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15650) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(32 * _15650) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
            return ext_call.return_data[0]
        mem[(32 * _15650) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = return_data.size
        mem[(32 * _15650) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            mem[(32 * _15650) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(32 * _15650) + (4 * ceil32(return_data.size)) + 562] = 32
            mem[(32 * _15650) + (4 * ceil32(return_data.size)) + 594] = 32
            mem[(32 * _15650) + (4 * ceil32(return_data.size)) + 626] = 'SafeERC20: low-level call failed'
            revert with memory
              from (32 * _15650) + (4 * ceil32(return_data.size)) + 558
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            mem[(32 * _15650) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
            return memory
              from (32 * _15650) + (4 * ceil32(return_data.size)) + 558
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
        require return_data.size >= 32
        if mem[(32 * _15650) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
            mem[(32 * _15650) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
            return memory
              from (32 * _15650) + (4 * ceil32(return_data.size)) + 558
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
        mem[(32 * _15650) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _15650) + (4 * ceil32(return_data.size)) + 562] = 32
        mem[(32 * _15650) + (4 * ceil32(return_data.size)) + 594] = 42
        mem[(32 * _15650) + (4 * ceil32(return_data.size)) + 626 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (32 * _15650) + (4 * ceil32(return_data.size)) + 558
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    require ext_code.size(0x4b0f1812e5df2a09796481ff14017e6005508003)
    staticcall 0x4b0f1812e5df2a09796481ff14017e6005508003.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args this.address, 0x5ff2b0db69458a0750badebc4f9e13add608c7f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[ceil32(return_data.size) + 319 len 10]
    mem[ceil32(return_data.size) + 233] = 0x5ff2b0db69458a0750badebc4f9e13add608c7f
    mem[ceil32(return_data.size) + 265] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 197] = 68
    mem[ceil32(return_data.size) + 233 len 28] = 0x5ff2b0db69458a0750badebc4f9e13a
    mem[ceil32(return_data.size) + 229 len 4] = approve(address rg1, uint256 rg2)
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(0x4b0f1812e5df2a09796481ff14017e6005508003):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[ceil32(return_data.size) + 297 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, ext_call.return_data[0 len 28]
    mem[ceil32(return_data.size) + 389 len 4] = ext_call.return_data[20 len 4]
    call 0x4b0f1812e5df2a09796481ff14017e6005508003.0xdd608c7f with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 361 len 4]
    if return_data.size:
        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 398 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not return_data.size:
            mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 462] = 0
            mem[(2 * ceil32(return_data.size)) + 526] = this.address
            mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
            mem[(2 * ceil32(return_data.size)) + 494] = 160
            mem[(2 * ceil32(return_data.size)) + 590] = 3
            mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 426
            require return_data.size >= 32
            _15525 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
            _15655 = mem[(2 * ceil32(return_data.size)) + _15525 + 426]
            mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15525 + 426])] = mem[(2 * ceil32(return_data.size)) + _15525 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15525 + 426])]
            require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
            staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _15655) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15655) + (4 * ceil32(return_data.size)) + 622 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _15655) + (4 * ceil32(return_data.size)) + 668 len 22]
            else:
                mem[(32 * _15655) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _15655) + (4 * ceil32(return_data.size)) + 590]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _15655) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
        else:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 329]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 408 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            mem[(2 * ceil32(return_data.size)) + 394] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(2 * ceil32(return_data.size)) + 426] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 462] = 0
            mem[(2 * ceil32(return_data.size)) + 526] = this.address
            mem[(2 * ceil32(return_data.size)) + 558] = block.timestamp + 1800
            mem[(2 * ceil32(return_data.size)) + 494] = 160
            mem[(2 * ceil32(return_data.size)) + 590] = 3
            mem[(2 * ceil32(return_data.size)) + 622 len 0] = None
            require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
            call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[(2 * ceil32(return_data.size)) + 622 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 426 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 426
            require return_data.size >= 32
            _15527 = mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28]
            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] <= 4294967296
            require mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
            require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426] <= 4294967296 and mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]) + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 426] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 426 len 4], ext_call.return_data[0 len 28] + 426]
            _15656 = mem[(2 * ceil32(return_data.size)) + _15527 + 426]
            mem[(4 * ceil32(return_data.size)) + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15527 + 426])] = mem[(2 * ceil32(return_data.size)) + _15527 + 458 len floor32(mem[(2 * ceil32(return_data.size)) + _15527 + 426])]
            require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
            staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address rg1) with:
                    gas gas_remaining wei
                   args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[(32 * _15656) + (4 * ceil32(return_data.size)) + 558 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
            call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15656) + (4 * ceil32(return_data.size)) + 622 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * _15656) + (4 * ceil32(return_data.size)) + 668 len 22]
            else:
                mem[(32 * _15656) + (4 * ceil32(return_data.size)) + 590 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _15656) + (4 * ceil32(return_data.size)) + 590]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _15656) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 669 len 22]
        return ext_call.return_data[0]
    if not ext_call.success:
        revert with 0, 'SafeERC20: low-level call failed'
    if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
        revert with 0, 
                    32,
                    42,
                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                    mem[ceil32(return_data.size) + 407 len 22]
    mem[ceil32(return_data.size) + 297] = 3
    mem[ceil32(return_data.size) + 329] = 0x4b0f1812e5df2a09796481ff14017e6005508003
    mem[ceil32(return_data.size) + 361] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    mem[ceil32(return_data.size) + 393] = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce
    if block.timestamp + 1800 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[ceil32(return_data.size) + 425] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 429] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 461] = 0
    mem[ceil32(return_data.size) + 525] = this.address
    mem[ceil32(return_data.size) + 557] = block.timestamp + 1800
    mem[ceil32(return_data.size) + 493] = 160
    mem[ceil32(return_data.size) + 589] = 3
    mem[ceil32(return_data.size) + 621 len 0] = None
    require ext_code.size(0x5ff2b0db69458a0750badebc4f9e13add608c7f)
    call 0x05ff2b0db69458a0750badebc4f9e13add608c7f.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, 3, mem[ceil32(return_data.size) + 621 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 425 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 425
    require return_data.size >= 32
    _15523 = mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28]
    require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425] <= 4294967296 and mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 425 len 4], ext_call.return_data[0 len 28] + 425]
    _15654 = mem[ceil32(return_data.size) + _15523 + 425]
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len floor32(mem[ceil32(return_data.size) + _15523 + 425])] = mem[ceil32(return_data.size) + _15523 + 457 len floor32(mem[ceil32(return_data.size) + _15523 + 425])]
    require ext_code.size(0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce)
    staticcall 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(controllerAddress))
    staticcall address(controllerAddress).vaults(address rg1) with:
            gas gas_remaining wei
           args 0xfe0000000000000000000000000e09fabb73bd3ade0a17ecc321fd13a19e81ce
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, '!vault'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[(32 * _15654) + ceil32(return_data.size) + ceil32(return_data.size) + 557 len 64] = transfer(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
    mem[(32 * _15654) + ceil32(return_data.size) + ceil32(return_data.size) + 649 len 4] = ext_call.return_data[20 len 4]
    call 0x000e09fabb73bd3ade0a17ecc321fd13a19e81ce with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[(32 * _15654) + ceil32(return_data.size) + ceil32(return_data.size) + 621 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(32 * _15654) + ceil32(return_data.size) + ceil32(return_data.size) + 667 len 22]
        return ext_call.return_data[0]
    mem[(32 * _15654) + ceil32(return_data.size) + ceil32(return_data.size) + 557] = return_data.size
    mem[(32 * _15654) + ceil32(return_data.size) + ceil32(return_data.size) + 589 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        mem[(32 * _15654) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(32 * _15654) + (4 * ceil32(return_data.size)) + 562] = 32
        mem[(32 * _15654) + (4 * ceil32(return_data.size)) + 594] = 32
        mem[(32 * _15654) + (4 * ceil32(return_data.size)) + 626] = 'SafeERC20: low-level call failed'
        revert with memory
          from (32 * _15654) + (4 * ceil32(return_data.size)) + 558
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        mem[(32 * _15654) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
        return memory
          from (32 * _15654) + (4 * ceil32(return_data.size)) + 558
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
    require return_data.size >= 32
    if mem[(32 * _15654) + ceil32(return_data.size) + ceil32(return_data.size) + 589]:
        mem[(32 * _15654) + (4 * ceil32(return_data.size)) + 558] = ext_call.return_data[0]
        return memory
          from (32 * _15654) + (4 * ceil32(return_data.size)) + 558
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32
    mem[(32 * _15654) + (4 * ceil32(return_data.size)) + 558] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * _15654) + (4 * ceil32(return_data.size)) + 562] = 32
    mem[(32 * _15654) + (4 * ceil32(return_data.size)) + 594] = 42
    mem[(32 * _15654) + (4 * ceil32(return_data.size)) + 626 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
    revert with memory
      from (32 * _15654) + (4 * ceil32(return_data.size)) + 558
       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
