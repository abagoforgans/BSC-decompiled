contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address operatorAddress;
uint256 stor0;
array of address lpTokens;
address farmingTokenAddress;
address wantTokenAddress;
uint32 stor4;
address rewardPoolAddress;
uint256 stor4;
address pancakeRouterAddress;
array of struct uniswapPaths;

function lpTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < lpTokens.length
    return lpTokens[arg1]
}

function uniswapPaths(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 < uniswapPaths[arg1][arg2].field_0
    return uniswapPaths[arg1][arg2][arg3].field_0
}

function operator() payable {
    return address(operatorAddress)
}

function rewardPool() payable {
    return address(rewardPoolAddress)
}

function farmingToken() payable {
    return farmingTokenAddress
}

function pancakeRouter() payable {
    return pancakeRouterAddress
}

function wantToken() payable {
    return wantTokenAddress
}

function _fallback() payable {
    revert
}

function sub_fabbd8ae(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(rewardPoolAddress))
    staticcall address(rewardPoolAddress).0x1c2ba697 with:
            gas gas_remaining wei
           args arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setWantToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    wantTokenAddress = arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    address(operatorAddress) = arg1
}

function harvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    require ext_code.size(address(rewardPoolAddress))
    call address(rewardPoolAddress).0x441a3e70 with:
         gas gas_remaining wei
        args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    require ext_code.size(address(rewardPoolAddress))
    call address(rewardPoolAddress).0xe2bbb158 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    require ext_code.size(address(rewardPoolAddress))
    call address(rewardPoolAddress).0x441a3e70 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositAll() payable {
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    idx = 0
    while idx < lpTokens.length:
        mem[0] = 1
        mem[100] = this.address
        require ext_code.size(lpTokens[idx])
        staticcall lpTokens[idx].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            mem[96] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
            mem[100] = idx
            mem[132] = ext_call.return_data[0]
            require ext_code.size(address(rewardPoolAddress))
            call address(rewardPoolAddress).0xe2bbb158 with:
                 gas gas_remaining wei
                args idx, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function withdrawAll() payable {
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    idx = 0
    while idx < lpTokens.length:
        mem[132] = this.address
        require ext_code.size(address(rewardPoolAddress))
        staticcall address(rewardPoolAddress).userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args idx, this.address
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > 0:
            mem[96] = 0x441a3e7000000000000000000000000000000000000000000000000000000000
            mem[100] = idx
            mem[132] = ext_call.return_data[0]
            require ext_code.size(address(rewardPoolAddress))
            call address(rewardPoolAddress).0x441a3e70 with:
                 gas gas_remaining wei
                args idx, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function setUnirouterPath(address arg1, address arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if address(operatorAddress) != msg.sender:
        revert with 0, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[(32 * arg3.length) + 237 len 23]
    uniswapPaths[address(arg1)][address(arg2)].field_0 = arg3.length
    if not arg3.length:
        idx = 0
        while uniswapPaths[address(arg1)][address(arg2)].field_0 > idx:
            uniswapPaths[address(arg1)][address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg3.length) + 128 > idx:
            uniswapPaths[address(arg1)][address(arg2)][s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
        while uniswapPaths[address(arg1)][address(arg2)].field_0 > idx:
            uniswapPaths[address(arg1)][address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function harvestAll() payable {
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    idx = 0
    while idx < lpTokens.length:
        mem[100] = idx
        mem[132] = this.address
        require ext_code.size(address(rewardPoolAddress))
        staticcall address(rewardPoolAddress).0x1c2ba697 with:
                gas gas_remaining wei
               args idx, this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if address(operatorAddress) != msg.sender:
                revert with 0, 32, 41, 0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f, mem[205 len 23]
            mem[96] = 0x441a3e7000000000000000000000000000000000000000000000000000000000
            mem[100] = idx
            mem[132] = 0
            require ext_code.size(address(rewardPoolAddress))
            call address(rewardPoolAddress).0x441a3e70 with:
                 gas gas_remaining wei
                args idx, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_73c8dbc6(?) payable {
    idx = 0
    s = 0
    while idx < lpTokens.length:
        mem[100] = idx
        mem[132] = this.address
        require ext_code.size(address(rewardPoolAddress))
        staticcall address(rewardPoolAddress).0x1c2ba697 with:
                gas gas_remaining wei
               args idx, this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if s + ext_call.return_data[0] < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + ext_call.return_data[0]
        continue 
    return (s * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length * lpTokens.length)
}

function sub_1ea4a8d7(?) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
        call arg1 with:
           funct uint32(stor0)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
                revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
}

function sub_bbf0c85d(?) payable {
    require calldata.size - 4 >= 64
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    require arg1 < lpTokens.length
    lpTokens[arg1] = arg2
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(rewardPoolAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if ext_code.size(arg2) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call arg2 with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), -1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor4):
            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function addLpToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    lpTokens.length++
    lpTokens[lpTokens.length] = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(rewardPoolAddress)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor4)
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor4), uint32(stor4), -1
        if not approve(address rg1, uint256 rg2), Mask(224, 0, stor4):
            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function approveForSpender(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    if not arg3:
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address rg1, uint256 rg2), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
        mem[324 len 0] = 0
    else:
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[218 len 10]
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address rg1, uint256 rg2), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), address(arg2) << 64, 0, arg3
        if not approve(address rg1, uint256 rg2), address(arg2) << 64:
            revert with 0, 32, 42, 0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_2d1e242f(?) payable {
    mem[64] = 96
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    idx = 0
    while idx < lpTokens.length:
        mem[0] = 1
        if address(operatorAddress) != msg.sender:
            revert with 0, 
                        32,
                        41,
                        0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                        mem[mem[64] + 109 len 23]
        mem[mem[64] + 4] = this.address
        require ext_code.size(lpTokens[idx])
        staticcall lpTokens[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            idx = idx + 1
            continue 
        _58 = mem[64]
        mem[mem[64] + 36] = address(operatorAddress)
        mem[mem[64] + 68] = ext_call.return_data[0]
        _59 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_59 + 32] = mem[_59 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[64] = _58 + 164
        mem[_58 + 100] = 32
        mem[_58 + 132] = 'SafeERC20: low-level call failed'
        if ext_code.size(lpTokens[idx]) <= 0:
            revert with 0, 'Address: call to non-contract'
        _63 = mem[_59]
        t = _59 + 32
        u = mem[64]
        s = mem[_59]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_59])] = mem[_59 + floor32(mem[_59]) + -(mem[_59] % 32) + 64 len mem[_59] % 32] or Mask(8 * -(mem[_59] % 32) + 32, -(8 * -(mem[_59] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_59])])
        call lpTokens[idx].mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _63 + _58 + -mem[64] + 160]
        if not return_data.size:
            if ext_call.success:
                if mem[96] > 0:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                idx = idx + 1
                continue 
            if mem[96] > 0:
                revert with memory
                  from 128
                   len mem[96]
            _106 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_58 + 100]
            _108 = mem[_58 + 100]
            idx = 0
            while idx < _108:
                mem[_106 + idx + 68] = mem[_58 + idx + 132]
                idx = idx + 32
                continue 
            if not _108 % 32:
                revert with memory
                  from mem[64]
                   len _108 + _106 + -mem[64] + 68
            mem[floor32(_108) + _106 + 68] = mem[floor32(_108) + _106 + -(_108 % 32) + 100 len _108 % 32]
            revert with memory
              from mem[64]
               len floor32(_108) + _106 + -mem[64] + 100
        _103 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_103] = return_data.size
        mem[_103 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[_103 + 32]:
                    revert with 0, 
                                32,
                                42,
                                0x2e5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[mem[64] + 110 len 22]
            idx = idx + 1
            continue 
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        _110 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_58 + 100]
        _112 = mem[_58 + 100]
        idx = 0
        while idx < _112:
            mem[_110 + idx + 68] = mem[_58 + idx + 132]
            idx = idx + 32
            continue 
        if not _112 % 32:
            revert with memory
              from mem[64]
               len _112 + _110 + -mem[64] + 68
        mem[floor32(_112) + _110 + 68] = mem[floor32(_112) + _110 + -(_112 % 32) + 100 len _112 % 32]
        revert with memory
          from mem[64]
           len floor32(_112) + _110 + -mem[64] + 100
}

function sellAll() payable {
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    mem[100] = this.address
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if ext_call.return_data[0]:
            mem[0] = wantTokenAddress
            mem[32] = sha3(farmingTokenAddress, 6)
            mem[96] = uniswapPaths[stor2][stor3].field_0
            if not uniswapPaths[stor2][stor3].field_0:
                if uniswapPaths[stor2][stor3].field_0:
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 132] = ext_call.return_data[0]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 164] = 1
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 228] = this.address
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 260] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 196] = 160
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 292] = uniswapPaths[stor2][stor3].field_0
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 324 len floor32(uniswapPaths[stor2][stor3].field_0)] = mem[128 len floor32(uniswapPaths[stor2][stor3].field_0)]
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, Array(len=uniswapPaths[stor2][stor3].field_0, data=mem[128 len floor32(uniswapPaths[stor2][stor3].field_0)], mem[(32 * uniswapPaths[stor2][stor3].field_0) + floor32(uniswapPaths[stor2][stor3].field_0) + 324 len (32 * uniswapPaths[stor2][stor3].field_0) - floor32(uniswapPaths[stor2][stor3].field_0)]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 128] <= 4294967296 and mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 128]) + 32 <= return_data.size
                else:
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 192] = wantTokenAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 228] = ext_call.return_data[0]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 260] = 1
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 324] = this.address
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 356] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 292] = 160
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 388] = 2
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 420 len 0] = None
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, Array(len=2, data=mem[(32 * uniswapPaths[stor2][stor3].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 224] <= 4294967296 and mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 224]) + 32 <= return_data.size
            else:
                mem[0] = sha3(wantTokenAddress, sha3(farmingTokenAddress, 6))
                mem[128] = uniswapPaths[stor2][stor3].field_0
                idx = 128
                s = 0
                while (32 * uniswapPaths[stor2][stor3].field_0) + 96 > idx:
                    mem[idx + 32] = uniswapPaths[stor2][stor3][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if uniswapPaths[stor2][stor3].field_0:
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 132] = ext_call.return_data[0]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 164] = 1
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 228] = this.address
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 260] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 196] = 160
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 292] = uniswapPaths[stor2][stor3].field_0
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 324 len floor32(uniswapPaths[stor2][stor3].field_0)] = mem[128 len floor32(uniswapPaths[stor2][stor3].field_0)]
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, Array(len=uniswapPaths[stor2][stor3].field_0, data=mem[128 len floor32(uniswapPaths[stor2][stor3].field_0)], mem[(32 * uniswapPaths[stor2][stor3].field_0) + floor32(uniswapPaths[stor2][stor3].field_0) + 324 len (32 * uniswapPaths[stor2][stor3].field_0) - floor32(uniswapPaths[stor2][stor3].field_0)]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 128] <= 4294967296 and mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 128]) + 32 <= return_data.size
                else:
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128] = 2
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 160] = farmingTokenAddress
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 192] = wantTokenAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 228] = ext_call.return_data[0]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 260] = 1
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 324] = this.address
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 356] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 292] = 160
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 388] = 2
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 420 len 0] = None
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, Array(len=2, data=mem[(32 * uniswapPaths[stor2][stor3].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 224] <= 4294967296 and mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 224]) + 32 <= return_data.size
}

function compound() payable {
    if address(operatorAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    idx = 0
    while idx < lpTokens.length:
        mem[100] = idx
        mem[132] = this.address
        require ext_code.size(address(rewardPoolAddress))
        staticcall address(rewardPoolAddress).0x1c2ba697 with:
                gas gas_remaining wei
               args idx, this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            if address(operatorAddress) != msg.sender:
                revert with 0, 32, 41, 0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f, mem[205 len 23]
            mem[96] = 0x441a3e7000000000000000000000000000000000000000000000000000000000
            mem[100] = idx
            mem[132] = 0
            require ext_code.size(address(rewardPoolAddress))
            call address(rewardPoolAddress).0x441a3e70 with:
                 gas gas_remaining wei
                args idx, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if address(operatorAddress) != msg.sender:
        revert with 0, 32, 41, 0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f, mem[205 len 23]
    mem[100] = this.address
    require ext_code.size(farmingTokenAddress)
    staticcall farmingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        if address(operatorAddress) != msg.sender:
            revert with 0, 32, 41, 0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f, mem[205 len 23]
        idx = 0
        while idx < lpTokens.length:
            mem[0] = 1
            mem[100] = this.address
            require ext_code.size(lpTokens[idx])
            staticcall lpTokens[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                mem[96] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                mem[100] = idx
                mem[132] = ext_call.return_data[0]
                require ext_code.size(address(rewardPoolAddress))
                call address(rewardPoolAddress).0xe2bbb158 with:
                     gas gas_remaining wei
                    args idx, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        if not ext_call.return_data[0]:
            if address(operatorAddress) != msg.sender:
                revert with 0, 32, 41, 0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f, mem[205 len 23]
            idx = 0
            while idx < lpTokens.length:
                mem[0] = 1
                mem[100] = this.address
                require ext_code.size(lpTokens[idx])
                staticcall lpTokens[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > 0:
                    mem[96] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                    mem[100] = idx
                    mem[132] = ext_call.return_data[0]
                    require ext_code.size(address(rewardPoolAddress))
                    call address(rewardPoolAddress).0xe2bbb158 with:
                         gas gas_remaining wei
                        args idx, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                continue 
        else:
            mem[0] = wantTokenAddress
            mem[32] = sha3(farmingTokenAddress, 6)
            mem[96] = uniswapPaths[stor2][stor3].field_0
            if not uniswapPaths[stor2][stor3].field_0:
                if uniswapPaths[stor2][stor3].field_0:
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 132] = ext_call.return_data[0]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 164] = 1
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 228] = this.address
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 260] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 196] = 160
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 292] = uniswapPaths[stor2][stor3].field_0
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 324 len floor32(uniswapPaths[stor2][stor3].field_0)] = mem[128 len floor32(uniswapPaths[stor2][stor3].field_0)]
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, Array(len=uniswapPaths[stor2][stor3].field_0, data=mem[128 len floor32(uniswapPaths[stor2][stor3].field_0)], mem[(32 * uniswapPaths[stor2][stor3].field_0) + floor32(uniswapPaths[stor2][stor3].field_0) + 324 len (32 * uniswapPaths[stor2][stor3].field_0) - floor32(uniswapPaths[stor2][stor3].field_0)]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _184 = mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 128] <= 4294967296 and mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 128]) + 32 <= return_data.size
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 128] = mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 128]
                    _197 = mem[_184 + (32 * uniswapPaths[stor2][stor3].field_0) + 128]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 160 len floor32(mem[_184 + (32 * uniswapPaths[stor2][stor3].field_0) + 128])] = mem[_184 + (32 * uniswapPaths[stor2][stor3].field_0) + 160 len floor32(mem[_184 + (32 * uniswapPaths[stor2][stor3].field_0) + 128])]
                    if address(operatorAddress) != msg.sender:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                                    mem[(32 * _197) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 269 len 23]
                    idx = 0
                    while idx < lpTokens.length:
                        mem[0] = 1
                        mem[(32 * _197) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 164] = this.address
                        require ext_code.size(lpTokens[idx])
                        staticcall lpTokens[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * _197) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            mem[(32 * _197) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 160] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                            mem[(32 * _197) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 164] = idx
                            mem[(32 * _197) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).0xe2bbb158 with:
                                 gas gas_remaining wei
                                args idx, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128] = 2
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 160] = farmingTokenAddress
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 192] = wantTokenAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 228] = ext_call.return_data[0]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 260] = 1
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 324] = this.address
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 356] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 292] = 160
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 388] = 2
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 420 len 0] = None
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, Array(len=2, data=mem[(32 * uniswapPaths[stor2][stor3].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _186 = mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 224] <= 4294967296 and mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 224]) + 32 <= return_data.size
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 224] = mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 224]
                    _198 = mem[_186 + (32 * uniswapPaths[stor2][stor3].field_0) + 224]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 256 len floor32(mem[_186 + (32 * uniswapPaths[stor2][stor3].field_0) + 224])] = mem[_186 + (32 * uniswapPaths[stor2][stor3].field_0) + 256 len floor32(mem[_186 + (32 * uniswapPaths[stor2][stor3].field_0) + 224])]
                    if address(operatorAddress) != msg.sender:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                                    mem[(32 * _198) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 365 len 23]
                    idx = 0
                    while idx < lpTokens.length:
                        mem[0] = 1
                        mem[(32 * _198) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 260] = this.address
                        require ext_code.size(lpTokens[idx])
                        staticcall lpTokens[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * _198) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            mem[(32 * _198) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 256] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                            mem[(32 * _198) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 260] = idx
                            mem[(32 * _198) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).0xe2bbb158 with:
                                 gas gas_remaining wei
                                args idx, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
            else:
                mem[0] = sha3(wantTokenAddress, sha3(farmingTokenAddress, 6))
                mem[128] = uniswapPaths[stor2][stor3].field_0
                s = 128
                t = 0
                while (32 * uniswapPaths[stor2][stor3].field_0) + 96 > s:
                    mem[s + 32] = uniswapPaths[stor2][stor3][t].field_256
                    s = s + 32
                    t = t + 1
                    continue 
                if uniswapPaths[stor2][stor3].field_0:
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 132] = ext_call.return_data[0]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 164] = 1
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 228] = this.address
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 260] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 196] = 160
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 292] = uniswapPaths[stor2][stor3].field_0
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 324 len floor32(uniswapPaths[stor2][stor3].field_0)] = mem[128 len floor32(uniswapPaths[stor2][stor3].field_0)]
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, Array(len=uniswapPaths[stor2][stor3].field_0, data=mem[128 len floor32(uniswapPaths[stor2][stor3].field_0)], mem[(32 * uniswapPaths[stor2][stor3].field_0) + floor32(uniswapPaths[stor2][stor3].field_0) + 324 len (32 * uniswapPaths[stor2][stor3].field_0) - floor32(uniswapPaths[stor2][stor3].field_0)]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 128
                    require return_data.size >= 32
                    _301 = mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 128] <= 4294967296 and mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 128]) + 32 <= return_data.size
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 128] = mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 128]
                    _313 = mem[_301 + (32 * uniswapPaths[stor2][stor3].field_0) + 128]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 160 len floor32(mem[_301 + (32 * uniswapPaths[stor2][stor3].field_0) + 128])] = mem[_301 + (32 * uniswapPaths[stor2][stor3].field_0) + 160 len floor32(mem[_301 + (32 * uniswapPaths[stor2][stor3].field_0) + 128])]
                    if address(operatorAddress) != msg.sender:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                                    mem[(32 * _313) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 269 len 23]
                    idx = 0
                    while idx < lpTokens.length:
                        mem[0] = 1
                        mem[(32 * _313) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 164] = this.address
                        require ext_code.size(lpTokens[idx])
                        staticcall lpTokens[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * _313) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            mem[(32 * _313) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 160] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                            mem[(32 * _313) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 164] = idx
                            mem[(32 * _313) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 196] = ext_call.return_data[0]
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).0xe2bbb158 with:
                                 gas gas_remaining wei
                                args idx, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
                else:
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 128] = 2
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 160] = farmingTokenAddress
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 192] = wantTokenAddress
                    if block.timestamp + 1800 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 228] = ext_call.return_data[0]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 260] = 1
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 324] = this.address
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 356] = block.timestamp + 1800
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 292] = 160
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 388] = 2
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 420 len 0] = None
                    require ext_code.size(pancakeRouterAddress)
                    call pancakeRouterAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 1, Array(len=2, data=mem[(32 * uniswapPaths[stor2][stor3].field_0) + 420 len 64]), address(this.address), block.timestamp + 1800
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 224
                    require return_data.size >= 32
                    _303 = mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28]
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 224] <= 4294967296 and mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 224]) + 32 <= return_data.size
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 224] = mem[mem[(32 * uniswapPaths[stor2][stor3].field_0) + 224 len 4], ext_call.return_data[0 len 28] + (32 * uniswapPaths[stor2][stor3].field_0) + 224]
                    _314 = mem[_303 + (32 * uniswapPaths[stor2][stor3].field_0) + 224]
                    mem[(32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 256 len floor32(mem[_303 + (32 * uniswapPaths[stor2][stor3].field_0) + 224])] = mem[_303 + (32 * uniswapPaths[stor2][stor3].field_0) + 256 len floor32(mem[_303 + (32 * uniswapPaths[stor2][stor3].field_0) + 224])]
                    if address(operatorAddress) != msg.sender:
                        revert with 0, 
                                    32,
                                    41,
                                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                                    mem[(32 * _314) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 365 len 23]
                    idx = 0
                    while idx < lpTokens.length:
                        mem[0] = 1
                        mem[(32 * _314) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 260] = this.address
                        require ext_code.size(lpTokens[idx])
                        staticcall lpTokens[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * _314) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 256] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > 0:
                            mem[(32 * _314) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 256] = 0xe2bbb15800000000000000000000000000000000000000000000000000000000
                            mem[(32 * _314) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 260] = idx
                            mem[(32 * _314) + (32 * uniswapPaths[stor2][stor3].field_0) + ceil32(return_data.size) + 292] = ext_call.return_data[0]
                            require ext_code.size(address(rewardPoolAddress))
                            call address(rewardPoolAddress).0xe2bbb158 with:
                                 gas gas_remaining wei
                                args idx, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        idx = idx + 1
                        continue 
}

function executeTransaction(address arg1, uint256 arg2, string arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    if address(operatorAddress) != msg.sender:
        revert with 0, 
                    32,
                    41,
                    0xfe436f6d6d756e69747946756e643a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[ceil32(arg3.length) + ceil32(arg4.length) + 269 len 23]
    if not arg3.length:
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] = mem[ceil32(arg3.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
        call arg1 with:
           funct Mask(32, -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256, 0) >> -(8 * ceil32(arg4.length) + -arg4.length + 4) + 256
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + ceil32(arg4.length) + 164 len arg4.length - 4]
        if not return_data.size:
            mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + 288
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = 66
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len 66] = 0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564
            if not ext_call.success:
                revert with 0, 
                            32,
                            66,
                            0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564, mem[ceil32(arg3.length) + ceil32(arg4.length) + 258 len 30] >> 256,
                            mem[ceil32(arg3.length) + ceil32(arg4.length) + 350 len 2]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 288] = arg2
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 320] = 96
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 384] = arg3.length
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 416 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + 352] = arg3.length + 128
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 416] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                                        arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 448] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 480 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                        mem[ceil32(arg3.length) + ceil32(arg4.length) + 288 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                                        arg1,
            return Array(len=arg3.length, data=arg3[all])
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = return_data.size
        mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 161] = 66
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 193 len 66] = 0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564
        if not ext_call.success:
            revert with 0, 
                        32,
                        66,
                        0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564, mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 259 len 30] >> 256,
                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 351 len 2]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289] = arg2
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 321] = 96
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 385] = arg3.length
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 417 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 353] = arg3.length + 128
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 417] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 449 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                                        arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 449] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 481 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                                        arg1,
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 417] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(arg3.length % 32) + 449 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 353] = floor32(arg3.length) + 160
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 449] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 481 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
            if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
                emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 192],
                                        arg1,
            else:
                mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 481] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 513 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
                emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 224],
                                        arg1,
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289] = 32
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 321] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 353 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
        if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32:
            return memory
              from ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289
               len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] + 64
        mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 353] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 385 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
        return memory
          from ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 289
           len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 96
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192] = Mask(32, 224, sha3(arg3[all]))
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 196 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 196] = mem[ceil32(arg3.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 32) + 256, mem[ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + 196])
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg4.length + 4
    mem[64] = arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196
    _249 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 228 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + 224 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
    call arg1.mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 200 len _249 - 4]
    if not return_data.size:
        mem[64] = arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 324
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196] = 66
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 228 len 66] = 0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564
        if not ext_call.success:
            revert with 0, 
                        32,
                        66,
                        0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564, mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 294 len 30] >> 256,
                        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 386 len 2]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 324] = arg2
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 356] = 96
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 420] = arg3.length
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 452 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 388] = arg3.length + 128
        mem[arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 452] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 484 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                                    arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 484] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 516 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 324 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                                    arg1,
        return Array(len=arg3.length, data=arg3[all])
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 196] = return_data.size
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 325
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 197] = 66
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 229 len 66] = 0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564
    if not ext_call.success:
        revert with 0, 
                    32,
                    66,
                    0x72436f6d6d756e69747946756e643a3a657865637574655472616e73616374696f6e3a205472616e73616374696f6e20657865637574696f6e207265766572746564, mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 295 len 30] >> 256,
                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 387 len 2]
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 325] = arg2
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 357] = 96
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 421] = arg3.length
    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 453 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = arg3.length + 128
        mem[arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 453] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 485 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 325 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 160],
                                    arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 485] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 517 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 325 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 192],
                                    arg1,
    else:
        mem[floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 453] = mem[floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(arg3.length % 32) + 485 len arg3.length % 32]
        mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 389] = floor32(arg3.length) + 160
        mem[floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 485] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 517 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 325 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 192],
                                    arg1,
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 517] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 549 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            emit ExecuteTransaction(address rg1, uint256 rg2, string rg3, bytes rg4):
                                    mem[arg4.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(return_data.size) + 325 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 224],
                                    arg1,
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}



}
