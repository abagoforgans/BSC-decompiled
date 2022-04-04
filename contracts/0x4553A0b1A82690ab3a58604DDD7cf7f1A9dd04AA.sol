contract main {




// =====================  Runtime code  =====================


#
#  - unpause()
#  - harvest()
#  - pause()
#
const fuel = 0x2090c8295769791ab7a3cf1cc6e0aa19f35e441a

const treasury = 0x305b0ecf72634825f7231058444c65d885e1f327

const sub_8be192bc(?) = 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const rewards = 0xf6488205957f0b4497053d6422f49e27944ee3dd

const REWARDS_FEE = 667

const WITHDRAWAL_MAX = 10000

const TREASURY_FEE = 250

const CALL_FEE = 83

const WITHDRAWAL_FEE = 50

const MAX_FEE = 1000


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address lpPairAddress;
address lpToken0Address;
address lpToken1Address;
uint8 stor4;
uint8 poolId; offset 160
uint32 stor4;
address unirouterAddress;
uint256 stor4;
uint32 stor5;
address vaultAddress;
array of address sub_e2b7a87d;
array of address wbnbToFuelRoute;
array of address sub_ce48ca50;
array of address sub_9b38a65f;

function unirouter() payable {
    return unirouterAddress
}

function poolId() payable {
    return poolId
}

function lpPair() payable {
    return lpPairAddress
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function lpToken0() payable {
    return lpToken0Address
}

function lpToken1() payable {
    return lpToken1Address
}

function owner() payable {
    return owner
}

function sub_9b38a65f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9b38a65f.length
    return sub_9b38a65f[arg1]
}

function wbnbToFuelRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < wbnbToFuelRoute.length
    return wbnbToFuelRoute[arg1]
}

function sub_ce48ca50(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_ce48ca50.length
    return sub_ce48ca50[arg1]
}

function sub_e2b7a87d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e2b7a87d.length
    return sub_e2b7a87d[arg1]
}

function vault() payable {
    return address(vaultAddress)
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

function balanceOfLpPair() payable {
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOfPool() payable {
    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
    staticcall 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args uint8(stor4.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
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

function deposit() payable {
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
        call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.deposit(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args uint8(stor4.field_0), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf() payable {
    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
    staticcall 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args uint8(stor4.field_0), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
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
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lpPairAddress)
    call lpPairAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(vaultAddress), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(lpPairAddress)
    staticcall lpPairAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, 0
                mem[388 len 0] = 0
                call lpPairAddress.0x85e1f327 with:
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, 0) << 256, mem[388 len 4]
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
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                call lpPairAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 585]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                require ext_call.return_data[0]
                if 50 * ext_call.return_data[0] / ext_call.return_data[0] != 50:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, Mask(224, 32, 50 * ext_call.return_data[0] / 10000) >> 32
                mem[388 len 0] = 0
                call lpPairAddress.0x85e1f327 with:
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
                if return_data.size <= 0:
                    if 50 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_code.size(lpPairAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) >> 32
                    call lpPairAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 585]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    if 50 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_code.size(lpPairAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) >> 32
                    call lpPairAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
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
                                        mem[(2 * ceil32(return_data.size)) + 664 len 22]
        else:
            if not arg1:
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, 0
                mem[388 len 0] = 0
                call lpPairAddress.0x85e1f327 with:
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, 0) << 256, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 'SafeMath: division by zero'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_code.size(lpPairAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                    call lpPairAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args arg1, mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 585]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_code.size(lpPairAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                    call lpPairAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args arg1, mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
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
                                        mem[(2 * ceil32(return_data.size)) + 664 len 22]
            else:
                require arg1
                if 50 * arg1 / arg1 != 50:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[324 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, Mask(224, 32, 50 * arg1 / 10000) >> 32
                mem[388 len 0] = 0
                call lpPairAddress.0x85e1f327 with:
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
                if return_data.size <= 0:
                    if 50 * arg1 / 10000 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_code.size(lpPairAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1 - (50 * arg1 / 10000)) >> 32
                    call lpPairAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args arg1 - (50 * arg1 / 10000), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 654 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 585]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 664 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
                    if 50 * arg1 / 10000 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if ext_code.size(lpPairAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 553 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1 - (50 * arg1 / 10000)) >> 32
                    call lpPairAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args arg1 - (50 * arg1 / 10000), mem[ceil32(return_data.size) + 489 len 28], mem[ceil32(return_data.size) + 617 len 4]
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
                                        mem[(2 * ceil32(return_data.size)) + 664 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
        call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.withdraw(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args uint8(stor4.field_0), arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(lpPairAddress)
        staticcall lpPairAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, 0
                mem[452 len 0] = 0
                call lpPairAddress.0x85e1f327 with:
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, 0) << 256, mem[452 len 4]
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
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = 0, address(vaultAddress), ext_call.return_data[0 len 28]
                call lpPairAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
            else:
                require ext_call.return_data[0]
                if 50 * ext_call.return_data[0] / ext_call.return_data[0] != 50:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, Mask(224, 32, 50 * ext_call.return_data[0] / 10000) >> 32
                mem[452 len 0] = 0
                call lpPairAddress.0x85e1f327 with:
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
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = 0, address(vaultAddress), Mask(224, 32, ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000)) >> 32
                call lpPairAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args ext_call.return_data[0] - (50 * ext_call.return_data[0] / 10000), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
        else:
            if not arg1:
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, 0
                mem[452 len 0] = 0
                call lpPairAddress.0x85e1f327 with:
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, 0) << 256, mem[452 len 4]
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
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1) >> 32
                call lpPairAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args arg1, mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
            else:
                require arg1
                if 50 * arg1 / arg1 != 50:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = unknown_0xa9059cbb(?????), 0x305b0ecf72634825f7231058, 0, Mask(224, 32, 50 * arg1 / 10000) >> 32
                mem[452 len 0] = 0
                call lpPairAddress.0x85e1f327 with:
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
                if ext_code.size(lpPairAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 617 len 64] = 0, address(vaultAddress), Mask(224, 32, arg1 - (50 * arg1 / 10000)) >> 32
                call lpPairAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args arg1 - (50 * arg1 / 10000), mem[ceil32(return_data.size) + 553 len 28], mem[ceil32(return_data.size) + 681 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[ceil32(return_data.size) + 649 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 718 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 649]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 728 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    if ext_code.size(lpPairAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
    mem[324 len 0] = 0
    call lpPairAddress.0x707d4b56 with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(0x2090c8295769791ab7a3cf1cc6e0aa19f35e441a) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, unirouterAddress, 0
        call 0x2090c8295769791ab7a3cf1cc6e0aa19f35e441a with:
           funct uint32(stor4.field_0)
             gas gas_remaining wei
            args 0, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
            if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[588 len 64] = 0, unirouterAddress, 0
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[524 len 28], mem[652 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[698 len 22]
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[752 len 64] = 0, unirouterAddress, 0
                call lpToken0Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[688 len 28], mem[816 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[862 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[916 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0
                    mem[980 len 0] = 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0) << 256, mem[980 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[1026 len 22]
                    else:
                        mem[948 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[948]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1027 len 22]
                else:
                    mem[784 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[784]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 863 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 917 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0
                    mem[ceil32(return_data.size) + 981 len 0] = 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0) << 256, mem[ceil32(return_data.size) + 981 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 1027 len 22]
                    else:
                        mem[ceil32(return_data.size) + 949 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 949]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 1028 len 22]
            else:
                mem[620 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[620]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 699 len 22]
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = 0, unirouterAddress, 0
                call lpToken0Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 917 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 853 len 28], mem[ceil32(return_data.size) + 981 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 1027 len 22]
                    else:
                        mem[ceil32(return_data.size) + 949 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 1018 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 949]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 1028 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 918 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 854 len 28], mem[(2 * ceil32(return_data.size)) + 982 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 950]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
            require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
            call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
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
        if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 589 len 64] = 0, unirouterAddress, 0
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
           funct uint32(stor4.field_0)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
            if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 699 len 22]
            if ext_code.size(lpToken0Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 753 len 64] = 0, unirouterAddress, 0
            call lpToken0Address with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 863 len 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 917 len 64] = 0, unirouterAddress, 0
                call lpToken1Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 853 len 28], mem[ceil32(return_data.size) + 981 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 1027 len 22]
                else:
                    mem[ceil32(return_data.size) + 949 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 1018 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 949]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 785]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 918 len 64] = 0, unirouterAddress, 0
                call lpToken1Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 854 len 28], mem[(2 * ceil32(return_data.size)) + 982 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 950]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
            require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
            call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 621]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        if ext_code.size(lpToken0Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, unirouterAddress, 0
        call lpToken0Address with:
           funct uint32(stor4.field_0)
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
            if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 864 len 22]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 918 len 64] = 0, unirouterAddress, 0
            call lpToken1Address with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 854 len 28], mem[(2 * ceil32(return_data.size)) + 982 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 1028 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 950]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
            require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
            call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + 786]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
        if ext_code.size(lpToken1Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = 0, unirouterAddress, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
        call lpToken1Address with:
           funct uint32(stor4.field_0)
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 855 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
            if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
            require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
            call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 924] = 32
            mem[(4 * ceil32(return_data.size)) + 956] = 32
            mem[(4 * ceil32(return_data.size)) + 988] = 'SafeERC20: low-level call failed'
            revert with memory
              from (4 * ceil32(return_data.size)) + 920
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size <= 0:
            require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
            call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
            require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
            call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args poolId
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 924] = 32
        mem[(4 * ceil32(return_data.size)) + 956] = 42
        mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
        revert with memory
          from (4 * ceil32(return_data.size)) + 920
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size <= 0:
        if ext_code.size(0x2090c8295769791ab7a3cf1cc6e0aa19f35e441a) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, unirouterAddress, 0
        call 0x2090c8295769791ab7a3cf1cc6e0aa19f35e441a with:
           funct uint32(stor4.field_0)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
            if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, unirouterAddress, 0
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = 0, unirouterAddress, 0
                call lpToken0Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 917 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 853 len 28], mem[ceil32(return_data.size) + 981 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 1027 len 22]
                    else:
                        mem[ceil32(return_data.size) + 949 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 1018 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 949]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 1028 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 918 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 854 len 28], mem[(2 * ceil32(return_data.size)) + 982 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 950]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 621]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if ext_code.size(lpToken0Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, unirouterAddress, 0
            call lpToken0Address with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 864 len 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 918 len 64] = 0, unirouterAddress, 0
                call lpToken1Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 854 len 28], mem[(2 * ceil32(return_data.size)) + 982 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 950]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 786]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = 0, unirouterAddress, 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
            call lpToken1Address with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 855 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 924] = 32
                mem[(4 * ceil32(return_data.size)) + 956] = 32
                mem[(4 * ceil32(return_data.size)) + 988] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 920
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size <= 0:
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 924] = 32
            mem[(4 * ceil32(return_data.size)) + 956] = 42
            mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (4 * ceil32(return_data.size)) + 920
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size <= 0:
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, unirouterAddress, 0
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len 22]
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, unirouterAddress, 0
                call lpToken0Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 918 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 854 len 28], mem[(2 * ceil32(return_data.size)) + 982 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 950]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 855 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(4 * ceil32(return_data.size)) + 1030 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 786]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = 0, unirouterAddress, 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
                call lpToken1Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 855 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 924] = 32
                    mem[(4 * ceil32(return_data.size)) + 956] = 32
                    mem[(4 * ceil32(return_data.size)) + 988] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 920
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size <= 0:
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 924] = 32
                mem[(4 * ceil32(return_data.size)) + 956] = 42
                mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (4 * ceil32(return_data.size)) + 920
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, unirouterAddress, 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
                call lpToken0Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = 0, unirouterAddress, 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 855 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                        require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                        call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args poolId
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 924] = 32
                        mem[(4 * ceil32(return_data.size)) + 956] = 32
                        mem[(4 * ceil32(return_data.size)) + 988] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 920
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if return_data.size <= 0:
                        require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                        call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args poolId
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                        require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                        call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args poolId
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 924] = 32
                    mem[(4 * ceil32(return_data.size)) + 956] = 42
                    mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 920
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 760] = 32
                    mem[(4 * ceil32(return_data.size)) + 792] = 32
                    mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 756
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                        mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 760] = 32
                        mem[(4 * ceil32(return_data.size)) + 792] = 42
                        mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 756
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 920 len 64] = 0, unirouterAddress, 0
                call lpToken1Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(4 * ceil32(return_data.size)) + 856 len 28], mem[(4 * ceil32(return_data.size)) + 984 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(4 * ceil32(return_data.size)) + 1030 len 22]
                else:
                    mem[(4 * ceil32(return_data.size)) + 952 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(4 * ceil32(return_data.size)) + 952]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1031 len 22]
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + 622]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
            if ext_code.size(lpToken0Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, unirouterAddress, 0
            call lpToken0Address with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 0] = 0
                call lpToken1Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0) << 256, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 924] = 32
                    mem[(4 * ceil32(return_data.size)) + 956] = 32
                    mem[(4 * ceil32(return_data.size)) + 988] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 920
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size <= 0:
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 924] = 32
                mem[(4 * ceil32(return_data.size)) + 956] = 42
                mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (4 * ceil32(return_data.size)) + 920
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(4 * ceil32(return_data.size)) + 866 len 22]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 920 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0
            mem[(4 * ceil32(return_data.size)) + 1012 len 4] = 0
            mem[(4 * ceil32(return_data.size)) + 984 len 0] = 0
            call lpToken1Address with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0) << 256, mem[(4 * ceil32(return_data.size)) + 984 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 924] = 32
                mem[(4 * ceil32(return_data.size)) + 956] = 42
                mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (4 * ceil32(return_data.size)) + 920
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[(4 * ceil32(return_data.size)) + 952 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 921] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 925] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 957] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 989] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 921
                   len (7 * ceil32(return_data.size)) + 100
            if return_data.size <= 0:
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(4 * ceil32(return_data.size)) + 952]:
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 921] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 925] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 957] = 42
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 989 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 921
               len (7 * ceil32(return_data.size)) + 132
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 457]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, unirouterAddress, 0
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
           funct uint32(stor4.field_0)
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
            if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 700 len 22]
            if ext_code.size(lpToken0Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, unirouterAddress, 0
            call lpToken0Address with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 864 len 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 918 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0
                call lpToken1Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 982 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + 950]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 786]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 0] = 0
            call lpToken1Address with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0) << 256, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 924] = 32
                mem[(4 * ceil32(return_data.size)) + 956] = 32
                mem[(4 * ceil32(return_data.size)) + 988] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 920
                   len (7 * ceil32(return_data.size)) + 100
            if return_data.size <= 0:
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 924] = 32
            mem[(4 * ceil32(return_data.size)) + 956] = 42
            mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (4 * ceil32(return_data.size)) + 920
               len (7 * ceil32(return_data.size)) + 132
        mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if ext_code.size(lpToken0Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, unirouterAddress, 0
            call lpToken0Address with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 0] = 0
                call lpToken1Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0) << 256, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 924] = 32
                    mem[(4 * ceil32(return_data.size)) + 956] = 32
                    mem[(4 * ceil32(return_data.size)) + 988] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 920
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size <= 0:
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 924] = 32
                mem[(4 * ceil32(return_data.size)) + 956] = 42
                mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (4 * ceil32(return_data.size)) + 920
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 920 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0
                mem[(4 * ceil32(return_data.size)) + 1012 len 4] = 0
                call lpToken1Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(4 * ceil32(return_data.size)) + 984 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(4 * ceil32(return_data.size)) + 1030 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                else:
                    mem[(4 * ceil32(return_data.size)) + 952 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(4 * ceil32(return_data.size)) + 952]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1031 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args uint8(stor4.field_0), mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 957 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(4 * ceil32(return_data.size)) + 866 len 22]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 920 len 64] = approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0
            mem[(4 * ceil32(return_data.size)) + 1012 len 4] = 0
            mem[(4 * ceil32(return_data.size)) + 984 len 0] = 0
            call lpToken1Address with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), Mask(224, 0, stor4.field_0), uint32(stor4.field_0), 0) << 256, mem[(4 * ceil32(return_data.size)) + 984 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 924] = 32
                mem[(4 * ceil32(return_data.size)) + 956] = 42
                mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (4 * ceil32(return_data.size)) + 920
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[(4 * ceil32(return_data.size)) + 952 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 921] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 925] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 957] = 32
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 989] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 921
                   len (7 * ceil32(return_data.size)) + 100
            if return_data.size <= 0:
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(4 * ceil32(return_data.size)) + 952]:
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 921] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 925] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 957] = 42
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 989 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 921
               len (7 * ceil32(return_data.size)) + 132
        require return_data.size >= 32
        if not mem[(2 * ceil32(return_data.size)) + 622]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
        if ext_code.size(lpToken0Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, unirouterAddress, 0
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
        call lpToken0Address with:
           funct uint32(stor4.field_0)
             gas gas_remaining wei
            args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
            if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = 0, unirouterAddress, 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
            call lpToken1Address with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 855 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 924] = 32
                mem[(4 * ceil32(return_data.size)) + 956] = 32
                mem[(4 * ceil32(return_data.size)) + 988] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 920
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size <= 0:
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 924] = 32
            mem[(4 * ceil32(return_data.size)) + 956] = 42
            mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (4 * ceil32(return_data.size)) + 920
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 760] = 32
            mem[(4 * ceil32(return_data.size)) + 792] = 32
            mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
            revert with memory
              from (4 * ceil32(return_data.size)) + 756
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 760] = 32
                mem[(4 * ceil32(return_data.size)) + 792] = 42
                mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (4 * ceil32(return_data.size)) + 756
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        if ext_code.size(lpToken1Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 920 len 64] = 0, unirouterAddress, 0
        call lpToken1Address with:
           funct uint32(stor4.field_0)
             gas gas_remaining wei
            args 0, mem[(4 * ceil32(return_data.size)) + 856 len 28], mem[(4 * ceil32(return_data.size)) + 984 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
            if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(4 * ceil32(return_data.size)) + 1030 len 22]
        else:
            mem[(4 * ceil32(return_data.size)) + 952 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(4 * ceil32(return_data.size)) + 952]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1031 len 22]
    else:
        require return_data.size >= 32
        if not mem[292]:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(return_data.size) + 371 len 22]
        if ext_code.size(0x2090c8295769791ab7a3cf1cc6e0aa19f35e441a) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, unirouterAddress, 0
        call 0x2090c8295769791ab7a3cf1cc6e0aa19f35e441a with:
           funct uint32(stor4.field_0)
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
            if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 589 len 64] = 0, unirouterAddress, 0
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 525 len 28], mem[ceil32(return_data.size) + 653 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 699 len 22]
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 753 len 64] = 0, unirouterAddress, 0
                call lpToken0Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[ceil32(return_data.size) + 689 len 28], mem[ceil32(return_data.size) + 817 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 863 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 917 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[ceil32(return_data.size) + 853 len 28], mem[ceil32(return_data.size) + 981 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 1027 len 22]
                    else:
                        mem[ceil32(return_data.size) + 949 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 1018 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 949]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 1028 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    mem[ceil32(return_data.size) + 785 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 854 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 785]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 864 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 918 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 854 len 28], mem[(2 * ceil32(return_data.size)) + 982 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 950]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 621 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 690 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size <= 0:
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, unirouterAddress, 0
                call lpToken0Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 918 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 854 len 28], mem[(2 * ceil32(return_data.size)) + 982 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 950]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 786]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            else:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 621]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, unirouterAddress, 0
                call lpToken0Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 918 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 854 len 28], mem[(2 * ceil32(return_data.size)) + 982 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 950]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size <= 0:
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 855 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(4 * ceil32(return_data.size)) + 1030 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 786]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = 0, unirouterAddress, 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
            call lpToken1Address with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 855 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 924] = 32
                mem[(4 * ceil32(return_data.size)) + 956] = 32
                mem[(4 * ceil32(return_data.size)) + 988] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 920
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size <= 0:
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args poolId
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 924] = 32
            mem[(4 * ceil32(return_data.size)) + 956] = 42
            mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
            revert with memory
              from (4 * ceil32(return_data.size)) + 920
               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 
                        'SafeERC20: low-level call failed',
                        mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size <= 0:
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, unirouterAddress, 0
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len 22]
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, unirouterAddress, 0
                call lpToken0Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 918 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 854 len 28], mem[(2 * ceil32(return_data.size)) + 982 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 950]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 786]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 855 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(4 * ceil32(return_data.size)) + 1030 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = 0, unirouterAddress, 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
                call lpToken1Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 855 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 924] = 32
                    mem[(4 * ceil32(return_data.size)) + 956] = 32
                    mem[(4 * ceil32(return_data.size)) + 988] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 920
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size <= 0:
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 924] = 32
                mem[(4 * ceil32(return_data.size)) + 956] = 42
                mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (4 * ceil32(return_data.size)) + 920
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 622]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
            if ext_code.size(lpToken0Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, unirouterAddress, 0
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
            call lpToken0Address with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = 0, unirouterAddress, 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
                call lpToken1Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 855 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 924] = 32
                    mem[(4 * ceil32(return_data.size)) + 956] = 32
                    mem[(4 * ceil32(return_data.size)) + 988] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 920
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size <= 0:
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 924] = 32
                mem[(4 * ceil32(return_data.size)) + 956] = 42
                mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (4 * ceil32(return_data.size)) + 920
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 760] = 32
                mem[(4 * ceil32(return_data.size)) + 792] = 32
                mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (4 * ceil32(return_data.size)) + 756
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                    mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 760] = 32
                    mem[(4 * ceil32(return_data.size)) + 792] = 42
                    mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 756
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            if ext_code.size(lpToken1Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 920 len 64] = 0, unirouterAddress, 0
            call lpToken1Address with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[(4 * ceil32(return_data.size)) + 856 len 28], mem[(4 * ceil32(return_data.size)) + 984 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(4 * ceil32(return_data.size)) + 1030 len 22]
            else:
                mem[(4 * ceil32(return_data.size)) + 952 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(4 * ceil32(return_data.size)) + 952]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1031 len 22]
        else:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 457]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 590 len 64] = 0, unirouterAddress, 0
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c with:
               funct uint32(stor4.field_0)
                 gas gas_remaining wei
                args 0, mem[(2 * ceil32(return_data.size)) + 526 len 28], mem[(2 * ceil32(return_data.size)) + 654 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 700 len 22]
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 754 len 64] = 0, unirouterAddress, 0
                call lpToken0Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + 690 len 28], mem[(2 * ceil32(return_data.size)) + 818 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 864 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + 918 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + 854 len 28], mem[(2 * ceil32(return_data.size)) + 982 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 1028 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 950 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + 950]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 786 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 786]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = 0, unirouterAddress, 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
                call lpToken1Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 855 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 924] = 32
                    mem[(4 * ceil32(return_data.size)) + 956] = 32
                    mem[(4 * ceil32(return_data.size)) + 988] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 920
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size <= 0:
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args poolId
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 924] = 32
                mem[(4 * ceil32(return_data.size)) + 956] = 42
                mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                revert with memory
                  from (4 * ceil32(return_data.size)) + 920
                   len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            mem[(2 * ceil32(return_data.size)) + 622 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, unirouterAddress, 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
                call lpToken0Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 855 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                    else:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(4 * ceil32(return_data.size)) + 1030 len 22]
                else:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 760] = 32
                        mem[(4 * ceil32(return_data.size)) + 792] = 32
                        mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 756
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                            mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 760] = 32
                            mem[(4 * ceil32(return_data.size)) + 792] = 42
                            mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 756
                               len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(4 * ceil32(return_data.size)) + 920 len 64] = 0, unirouterAddress, 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(4 * ceil32(return_data.size)) + 856 len 28], mem[(4 * ceil32(return_data.size)) + 984 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(4 * ceil32(return_data.size)) + 1030 len 22]
                    else:
                        mem[(4 * ceil32(return_data.size)) + 952 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[(4 * ceil32(return_data.size)) + 952]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1031 len 22]
            else:
                require return_data.size >= 32
                if not mem[(2 * ceil32(return_data.size)) + 622]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 701 len 22]
                if ext_code.size(lpToken0Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755 len 64] = 0, unirouterAddress, 0
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 847 len 4] = 0
                call lpToken0Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 691 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 819 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 865 len 22]
                    if ext_code.size(lpToken1Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919 len 64] = 0, unirouterAddress, 0
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1011 len 4] = 0
                    call lpToken1Address with:
                       funct uint32(stor4.field_0)
                         gas gas_remaining wei
                        args 0, mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 855 len 28], mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 983 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1029 len 22]
                        require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                        call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args poolId
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 919] = return_data.size
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 924] = 32
                        mem[(4 * ceil32(return_data.size)) + 956] = 32
                        mem[(4 * ceil32(return_data.size)) + 988] = 'SafeERC20: low-level call failed'
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 920
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                    if return_data.size <= 0:
                        require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                        call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args poolId
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 951]:
                        require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
                        call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
                             gas gas_remaining wei
                            args poolId
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 920] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 924] = 32
                    mem[(4 * ceil32(return_data.size)) + 956] = 42
                    mem[(4 * ceil32(return_data.size)) + 988 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 920
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 755] = return_data.size
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 760] = 32
                    mem[(4 * ceil32(return_data.size)) + 792] = 32
                    mem[(4 * ceil32(return_data.size)) + 824] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 756
                       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 787]:
                        mem[(4 * ceil32(return_data.size)) + 756] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 760] = 32
                        mem[(4 * ceil32(return_data.size)) + 792] = 42
                        mem[(4 * ceil32(return_data.size)) + 824 len 42] = 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                        revert with memory
                          from (4 * ceil32(return_data.size)) + 756
                           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                if ext_code.size(lpToken1Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 920 len 64] = 0, unirouterAddress, 0
                call lpToken1Address with:
                   funct uint32(stor4.field_0)
                     gas gas_remaining wei
                    args 0, mem[(4 * ceil32(return_data.size)) + 856 len 28], mem[(4 * ceil32(return_data.size)) + 984 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x86f4bc1ebf2c209d12d3587b:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(4 * ceil32(return_data.size)) + 1030 len 22]
                else:
                    mem[(4 * ceil32(return_data.size)) + 952 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(4 * ceil32(return_data.size)) + 952]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1031 len 22]
    require ext_code.size(0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56)
    call 0x86f4bc1ebf2c209d12d3587b7085aea5707d4b56.emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args poolId
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
