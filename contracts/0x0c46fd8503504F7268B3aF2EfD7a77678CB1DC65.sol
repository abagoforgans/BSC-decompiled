contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const fortube = 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672

const max = 1000

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const withdrawalMax = 10000

const output = 0x658a109c5900bc6d2357c87549b651670e5b0539


address wantAddress;
address unirouterAddress;
address fortube_rewardAddress;
uint32 stor3;
address rewardsAddress;
uint256 stor3;
uint32 stor4;
address vaultAddress;
uint256 stor4;
uint256 fee;
uint256 callfee;
uint256 withdrawalFee;
array of uint256 name;
array of address swap2TokenRouting;
array of address sub_b1dcffad;

function swap2TokenRouting(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < swap2TokenRouting.length
    return swap2TokenRouting[arg1]
}

function getName() payable {
    return name[0 len name.length]
}

function want() payable {
    return wantAddress
}

function unirouter() payable {
    return unirouterAddress
}

function fortube_reward() payable {
    return fortube_rewardAddress
}

function withdrawalFee() payable {
    return withdrawalFee
}

function rewards() payable {
    return address(rewardsAddress)
}

function sub_b1dcffad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b1dcffad.length
    return sub_b1dcffad[arg1]
}

function callfee() payable {
    return callfee
}

function fee() payable {
    return fee
}

function vault() payable {
    return address(vaultAddress)
}

function _fallback() payable {
    revert
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    staticcall 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getFTokeAddress(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).calcBalanceOfUnderlying(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf() payable {
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    staticcall 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getFTokeAddress(address rg1) with:
            gas gas_remaining wei
           args wantAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).calcBalanceOfUnderlying(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
}

function deposit() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    staticcall 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        mem[132] = ext_call.return_data[12 len 20]
        if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = 0, ext_call.return_data[12 len 20], 0
        call wantAddress.mem[160 len 4] with:
             gas gas_remaining wei
            args Mask(480, -256, 0, ext_call.return_data[12 len 20], 0) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not 0, mem[132 len 28]:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[318 len 10]
            if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[296 len 64] = 0, address(ext_call.return_data[0]), ext_call.return_data[0 len 28]
            call wantAddress with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(224, 32, address(ext_call.return_data[0]), ext_call.return_data[0 len 28]) >> 32, mem[360 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not 0, mem[132 len 28]:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
            else:
                mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[328]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 407 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 319 len 10]
            if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(return_data.size) + 297 len 64] = 0, address(ext_call.return_data[0]), ext_call.return_data[0 len 28]
            call wantAddress with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(224, 32, address(ext_call.return_data[0]), ext_call.return_data[0 len 28]) >> 32, mem[ceil32(return_data.size) + 361 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not 0, mem[132 len 28]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 407 len 22]
            else:
                mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 329]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 408 len 22]
        require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
        call 0x0cea0832e9cdbb5d476040d58ea07ecfbebb7672.deposit(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args wantAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(wantAddress)
    staticcall wantAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if withdrawalFee <= 0:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
            call wantAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        else:
            if not arg1:
                if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), 0
                call wantAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args 0, mem[324 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                require arg1
                if arg1 * withdrawalFee / arg1 != withdrawalFee:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1 * withdrawalFee / 10000) >> 32
                call wantAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 * withdrawalFee / 10000) << 224, mem[324 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
                if arg1 * withdrawalFee / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) >> 32
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args arg1 - (arg1 * withdrawalFee / 10000), Mask(224, 32, address(vaultAddress), Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) >> 32) >> 32, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
        call 0x0cea0832e9cdbb5d476040d58ea07ecfbebb7672.withdrawUnderlying(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args wantAddress, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg1 < arg1 - ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if withdrawalFee <= 0:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1) >> 32
            call wantAddress with:
               funct uint32(stor4)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
        else:
            if not arg1:
                if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), 0
                call wantAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), 0) << 256, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args arg1, Mask(224, 32, address(vaultAddress), Mask(224, 32, arg1) >> 32) >> 32, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 600 len 22]
            else:
                require arg1
                if arg1 * withdrawalFee / arg1 != withdrawalFee:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1 * withdrawalFee / 10000) >> 32
                call wantAddress with:
                   funct uint32(stor3)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 * withdrawalFee / 10000) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                if arg1 * withdrawalFee / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(wantAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[ceil32(return_data.size) + 489 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor4), uint32(stor4), Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) >> 32
                call wantAddress with:
                   funct uint32(stor4)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (arg1 * withdrawalFee / 10000)) << 224, mem[ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}



}
