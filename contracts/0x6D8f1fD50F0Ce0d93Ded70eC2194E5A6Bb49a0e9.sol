contract main {




// =====================  Runtime code  =====================


#
#  - sub_15146d13(?)
#
const unirouter = 0x5ff2b0db69458a0750badebc4f9e13add608c7f

const fuel = 0x2090c8295769791ab7a3cf1cc6e0aa19f35e441a

const treasury = 0x305b0ecf72634825f7231058444c65d885e1f327

const balanceOfCake = ext_call.return_data[0]

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const rewards = 0xf6488205957f0b4497053d6422f49e27944ee3dd

const cake = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82

const REWARDS_FEE = 667

const WITHDRAWAL_MAX = 10000

const TREASURY_FEE = 250

const CALL_FEE = 83

const WITHDRAWAL_FEE = 50

const MAX_FEE = 1000


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of struct pools;
array of struct sub_73554cbf;
uint8 currentPool;
uint256 approvalDelay;
address outputAddress;
uint32 stor6;
address sub_fcde5e1cAddress;
uint256 stor6;
uint32 stor7;
address vaultAddress;
uint256 stor7;
array of address sub_30041650;
array of address outputToWbnbRoute;
array of address wbnbToFuelRoute;

function poolsLength() payable {
    return pools.length
}

function outputToWbnbRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < outputToWbnbRoute.length
    return outputToWbnbRoute[arg1]
}

function sub_30041650(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_30041650.length
    return sub_30041650[arg1]
}

function sub_480b3796(?) payable {
    return sub_73554cbf.length
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function currentPool() payable {
    return currentPool
}

function sub_73554cbf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_73554cbf.length
    return sub_73554cbf[arg1].field_0, sub_73554cbf[arg1].field_256, bool(sub_73554cbf[arg1].field_512)
}

function owner() payable {
    return owner
}

function pools(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pools.length
    return pools[arg1].field_0, pools[arg1].field_256, bool(pools[arg1].field_416)
}

function wbnbToFuelRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < wbnbToFuelRoute.length
    return wbnbToFuelRoute[arg1]
}

function approvalDelay() payable {
    return approvalDelay
}

function output() payable {
    return outputAddress
}

function vault() payable {
    return address(vaultAddress)
}

function sub_fcde5e1c(?) payable {
    return address(sub_fcde5e1cAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_8c7d6fab(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < pools.length
    pools[2 * uint8(arg1)].field_416 = 1
}

function sub_f14beb8f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < pools.length
    pools[2 * uint8(arg1)].field_416 = 0
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor0.field_160):
        revert with 0, 'Pausable: not paused'
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
}

function sub_efac7270(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_73554cbf.length++
    sub_73554cbf[sub_73554cbf.length].field_0 = arg1
    sub_73554cbf[sub_73554cbf.length].field_256 = block.timestamp
    sub_73554cbf[sub_73554cbf.length].field_512 = 0
    emit 0xda3c7ba9: arg1
}

function balanceOfPool() payable {
    require ext_code.size(address(sub_fcde5e1cAddress))
    staticcall address(sub_fcde5e1cAddress).userInfo(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function stopWork() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    require ext_code.size(address(sub_fcde5e1cAddress))
    call address(sub_fcde5e1cAddress).emergencyWithdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf() payable {
    require ext_code.size(address(sub_fcde5e1cAddress))
    staticcall address(sub_fcde5e1cAddress).userInfo(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function retireStrat() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    require ext_code.size(address(sub_fcde5e1cAddress))
    call address(sub_fcde5e1cAddress).emergencyWithdraw() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xa9059cbb with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_0667233e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= sub_73554cbf.length:
        revert with 0, 'Pool out of bounds'
    if sub_73554cbf[arg1].field_256 + approvalDelay < sub_73554cbf[arg1].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if sub_73554cbf[arg1].field_256 + approvalDelay >= block.timestamp:
        revert with 0, 'Delay hasn't fully ocurred'
    if sub_73554cbf[arg1].field_512:
        revert with 0, 'Pool already added'
    sub_73554cbf[arg1].field_512 = 1
    require ext_code.size(sub_73554cbf[arg1].field_0)
    staticcall sub_73554cbf[arg1].field_0.rewardToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.size(address(ext_call.return_data[0])) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0
    call address(ext_call.return_data[0]).0xdd608c7f with:
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0
        if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x5ff2b0db69458a0750badebc4f9e13add608c7f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call address(ext_call.return_data[0]).0xdd608c7f with:
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0
            if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
        pools.length++
        pools[pools.length].field_0 = sub_73554cbf[arg1].field_0
        pools[pools.length].field_256 = address(ext_call.return_data[0])
        pools[pools.length].field_416 = 1
        emit 0x5c86ed4d: sub_73554cbf[arg1].field_0
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), 0x5ff2b0db69458a0750badebc4f9e13add608c7f
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[ceil32(return_data.size) + 383 len 10]
        if ext_code.size(address(ext_call.return_data[0])) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call address(ext_call.return_data[0]).0xdd608c7f with:
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb, 0, 0
            if not approve(address rg1, uint256 rg2), 0x5ff2b0db69458a0750badeb:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            pools.length++
            pools[pools.length].field_0 = sub_73554cbf[arg1].field_0
            pools[pools.length].field_256 = address(ext_call.return_data[0])
            pools[pools.length].field_416 = 1
            emit 0x5c86ed4d: sub_73554cbf[arg1].field_0
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            pools.length++
            pools[pools.length].field_0 = sub_73554cbf[arg1].field_0
            pools[pools.length].field_256 = address(ext_call.return_data[0])
            pools[pools.length].field_416 = 1
            emit 0x5c86ed4d: sub_73554cbf[arg1].field_0, mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
}

function deposit() payable {
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor6), uint32(stor6), 0
        call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
           funct uint32(stor6)
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor6), uint32(stor6), 0
            if not approve(address rg1, uint256 rg2), Mask(224, 0, stor6):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_fcde5e1cAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[382 len 10]
            if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
               funct uint32(stor6)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor6), uint32(stor6), 0
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor6):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(address(sub_fcde5e1cAddress))
            call address(sub_fcde5e1cAddress).0xb6b55f25 with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
                staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), address(sub_fcde5e1cAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 383 len 10]
            if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor6), uint32(stor6), ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
               funct uint32(stor6)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), Mask(224, 0, stor6), uint32(stor6), 0
                if not approve(address rg1, uint256 rg2), Mask(224, 0, stor6):
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(address(sub_fcde5e1cAddress))
                call address(sub_fcde5e1cAddress).0xb6b55f25 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(address(sub_fcde5e1cAddress))
                call address(sub_fcde5e1cAddress).0xb6b55f25 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
    staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x85e1f327 with:
                     gas gas_remaining wei
                    args 0, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), ext_call.return_data[0 len 28]
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor7)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 617 len 4]
            else:
                require ext_call.return_data[0]
                if 50 * ext_call.return_data[0] / ext_call.return_data[0] != 50:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, Mask(224, 32, 50 * ext_call.return_data[0] / 10000) >> 32
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x85e1f327 with:
                     gas gas_remaining wei
                    args Mask(224, 32, 50 * ext_call.return_data[0] / 10000) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                if 50 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) >> 32
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor7)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 617 len 4]
        else:
            if not arg1:
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x85e1f327 with:
                     gas gas_remaining wei
                    args 0, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
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
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, arg1) >> 32
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor7)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 617 len 4]
            else:
                require arg1
                if 50 * arg1 / arg1 != 50:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, Mask(224, 32, 50 * arg1 / 10000) >> 32
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x85e1f327 with:
                     gas gas_remaining wei
                    args Mask(224, 32, 50 * arg1 / 10000) << 224, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                if 50 * arg1 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, arg1 - (50 * arg1 / 10000)) >> 32
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor7)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (50 * arg1 / 10000)) << 224, mem[ceil32(return_data.size) + 617 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 585]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(sub_fcde5e1cAddress))
        call address(sub_fcde5e1cAddress).0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82)
        staticcall 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x85e1f327 with:
                     gas gas_remaining wei
                    args 0, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), ext_call.return_data[0 len 28]
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor7)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 681 len 4]
            else:
                require ext_call.return_data[0]
                if 50 * ext_call.return_data[0] / ext_call.return_data[0] != 50:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, Mask(224, 32, 50 * ext_call.return_data[0] / 10000) >> 32
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x85e1f327 with:
                     gas gas_remaining wei
                    args Mask(224, 32, 50 * ext_call.return_data[0] / 10000) << 224, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
                if 50 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) >> 32
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor7)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) << 224, mem[ceil32(return_data.size) + 681 len 4]
        else:
            if not arg1:
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, 0
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x85e1f327 with:
                     gas gas_remaining wei
                    args 0, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, arg1) >> 32
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor7)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 681 len 4]
            else:
                require arg1
                if 50 * arg1 / arg1 != 50:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, Mask(224, 32, 50 * arg1 / 10000) >> 32
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82.0x85e1f327 with:
                     gas gas_remaining wei
                    args Mask(224, 32, 50 * arg1 / 10000) << 224, mem[452 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: subtraction overflow'
                mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[420]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 499 len 22]
                if 50 * arg1 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7), uint32(stor7), Mask(224, 32, arg1 - (50 * arg1 / 10000)) >> 32
                call 0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82 with:
                   funct uint32(stor7)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (50 * arg1 / 10000)) << 224, mem[ceil32(return_data.size) + 681 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 649]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}



}
