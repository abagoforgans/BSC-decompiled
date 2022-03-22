contract main {




// =====================  Runtime code  =====================


const eth_address = 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb

const fortube = 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672


address fortube_rewardAddress;
address wantAddress;
uint32 stor2;
address unirouterAddress;
uint256 stor2;
array of struct swap2TokenRouting;
address owner;

function swap2TokenRouting(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < swap2TokenRouting.length
    return swap2TokenRouting[arg1].field_0
}

function want() {
    return wantAddress
}

function unirouter() {
    return address(unirouterAddress)
}

function fortube_reward() {
    return fortube_rewardAddress
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function sub_5c6c1e4e(?) {
    require calldata.size - 4 >= 32
    fortube_rewardAddress = arg1
}

function setUnirouter(address arg1) {
    require calldata.size - 4 >= 32
    address(unirouterAddress) = arg1
}

function setWant(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    wantAddress = arg1
}

function harvest() {
    require ext_code.size(fortube_rewardAddress)
    call fortube_rewardAddress.claimReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function inCaseETHGetsStuck() {
    if owner != msg.sender:
        revert with 0, '!owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'transfer of ETH failed'
}

function balanceOfWant() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function depositETH() payable {
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    call 0x0cea0832e9cdbb5d476040d58ea07ecfbebb7672.deposit(address rg1, uint256 rg2) with:
       value msg.value wei
         gas gas_remaining wei
        args 0xbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _withdrawSome(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    call 0x0cea0832e9cdbb5d476040d58ea07ecfbebb7672.withdrawUnderlying(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args wantAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return arg1
}

function inCaseTokenGetsStuck(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setSwapRouting(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    swap2TokenRouting.length = arg1.length
    if not arg1.length:
        idx = 0
        while swap2TokenRouting.length > idx:
            swap2TokenRouting[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            swap2TokenRouting[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while swap2TokenRouting.length > idx:
            swap2TokenRouting[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function balanceOfPool() {
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    staticcall 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672.controller() with:
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

function _withdrawAll() {
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    staticcall 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672.controller() with:
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
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    call 0x0cea0832e9cdbb5d476040d58ea07ecfbebb7672.withdraw(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args wantAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() {
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    staticcall 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672.controller() with:
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
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function deposit1() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    staticcall 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672.controller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(wantAddress)
        staticcall wantAddress.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args this.address, address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
        if not ext_code.hash(wantAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, ext_call.return_data[0 len 28]
        call wantAddress with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64:
                revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
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
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
        call 0x0cea0832e9cdbb5d476040d58ea07ecfbebb7672.deposit(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args wantAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function deposit() {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
    staticcall 0xcea0832e9cdbb5d476040d58ea07ecfbebb7672.controller() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[132] = ext_call.return_data[12 len 20]
        if not ext_code.hash(wantAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = 0, ext_call.return_data[12 len 20], 0
        call wantAddress.mem[160 len 4] with:
             gas gas_remaining wei
            args Mask(480, -256, 0, ext_call.return_data[12 len 20], 0) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not 0, mem[132 len 28]:
                revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args this.address, address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[318 len 10]
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[296 len 64] = 0, address(ext_call.return_data[0]), ext_call.return_data[0 len 28]
            call wantAddress with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Mask(224, 32, address(ext_call.return_data[0]), ext_call.return_data[0 len 28]) >> 32, mem[360 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not 0, mem[132 len 28]:
                    revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
            else:
                mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[328]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 407 len 22]
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
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.allowance(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args this.address, address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 319 len 10]
            if not ext_code.hash(wantAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(wantAddress) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
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
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 407 len 22]
            else:
                mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 329]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 408 len 22]
        require ext_code.size(0xcea0832e9cdbb5d476040d58ea07ecfbebb7672)
        call 0x0cea0832e9cdbb5d476040d58ea07ecfbebb7672.deposit(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args wantAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function swapToken(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.hash(arg1):
        revert with 0, 'SafeERC20: call to non-contract'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), 0
    call arg1 with:
       funct uint32(stor2)
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), 0) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor2):
            revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        require ext_code.size(arg1)
        staticcall arg1.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args this.address, address(unirouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[318 len 10]
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[296 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg1 with:
           funct uint32(stor2)
             gas gas_remaining wei
            args -1, Mask(224, 32, 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[360 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor2):
                revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[406 len 22]
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if not swap2TokenRouting.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, swap2TokenRouting.length
            else:
                mem[492] = address(swap2TokenRouting.field_0)
                idx = 492
                s = 0
                while (32 * swap2TokenRouting.length) + 492 > idx + 32:
                    mem[idx + 32] = swap2TokenRouting[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, swap2TokenRouting.length, mem[492 len 32 * swap2TokenRouting.length]
        else:
            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[328]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 407 len 22]
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if not swap2TokenRouting.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, swap2TokenRouting.length
            else:
                mem[ceil32(return_data.size) + 493] = address(swap2TokenRouting.field_0)
                idx = ceil32(return_data.size) + 493
                s = 0
                while ceil32(return_data.size) + (32 * swap2TokenRouting.length) + 493 > idx + 32:
                    mem[idx + 32] = swap2TokenRouting[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, swap2TokenRouting.length, mem[ceil32(return_data.size) + 493 len 32 * swap2TokenRouting.length]
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
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
        require ext_code.size(arg1)
        staticcall arg1.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args this.address, address(unirouterAddress)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 319 len 10]
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(return_data.size) + 297 len 64] = 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call arg1 with:
           funct uint32(stor2)
             gas gas_remaining wei
            args -1, Mask(224, 32, 0, address(unirouterAddress), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) >> 32, mem[ceil32(return_data.size) + 361 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor2):
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 407 len 22]
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if not swap2TokenRouting.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, swap2TokenRouting.length
            else:
                mem[ceil32(return_data.size) + 493] = address(swap2TokenRouting.field_0)
                idx = ceil32(return_data.size) + 493
                s = 0
                while ceil32(return_data.size) + (32 * swap2TokenRouting.length) + 493 > idx + 32:
                    mem[idx + 32] = swap2TokenRouting[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, swap2TokenRouting.length, mem[ceil32(return_data.size) + 493 len 32 * swap2TokenRouting.length]
        else:
            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 329]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 408 len 22]
            if block.timestamp + 1800 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            if not swap2TokenRouting.length:
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, swap2TokenRouting.length
            else:
                mem[(2 * ceil32(return_data.size)) + 494] = address(swap2TokenRouting.field_0)
                idx = (2 * ceil32(return_data.size)) + 494
                s = 0
                while (2 * ceil32(return_data.size)) + (32 * swap2TokenRouting.length) + 494 > idx + 32:
                    mem[idx + 32] = swap2TokenRouting[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(address(unirouterAddress))
                call address(unirouterAddress).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 1800, swap2TokenRouting.length, mem[(2 * ceil32(return_data.size)) + 494 len 32 * swap2TokenRouting.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
