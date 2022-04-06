contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const balanceOfPool = ext_call.return_data[0]

const unirouter = 0x5ff2b0db69458a0750badebc4f9e13add608c7f

const bamboo = 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0

const treasury = 0xd54307a8edfa93b1794861f091c714d752400d13

const balanceOf = (2 * ext_call.return_data[0])

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const balanceOfbamboo = ext_call.return_data[0]

const masterchef = 0x76fcefffcf5325c6156ca89639b17464ea833ecd

const WITHDRAWAL_MAX = 10000

const WITHDRAWAL_FEE = 10


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint32 stor1;
address vaultAddress;
uint256 stor1;
array of address bambooToWbnbRoute;

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function owner() payable {
    return owner
}

function bambooToWbnbRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < bambooToWbnbRoute.length
    return bambooToWbnbRoute[arg1]
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

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    require ext_code.size(0x76fcefffcf5325c6156ca89639b17464ea833ecd)
    call 0x76fcefffcf5325c6156ca89639b17464ea833ecd.emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function retireStrat() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
    require ext_code.size(0x76fcefffcf5325c6156ca89639b17464ea833ecd)
    call 0x76fcefffcf5325c6156ca89639b17464ea833ecd.emergencyWithdraw(uint256 rg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0)
    staticcall 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0)
    call 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0.0xa9059cbb with:
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
    require ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0)
    staticcall 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg1) >> 32
            mem[452 len 0] = 0
            call 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0 with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[452 len 4]
        else:
            require arg1
            if 10 * arg1 / arg1 != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10 * arg1 / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[388 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg1 - (10 * arg1 / 10000)) >> 32
            mem[452 len 0] = 0
            call 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0 with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args Mask(224, 32, arg1 - (10 * arg1 / 10000)) << 224, mem[452 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
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
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0x76fcefffcf5325c6156ca89639b17464ea833ecd)
        call 0x76fcefffcf5325c6156ca89639b17464ea833ecd.leaveStaking(uint256 rg1) with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0)
        staticcall 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
            call 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0 with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
        else:
            require ext_call.return_data[0]
            if 10 * ext_call.return_data[0] / ext_call.return_data[0] != 10:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 10 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[452 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000)) >> 32
            call 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0 with:
               funct uint32(stor1)
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] - (10 * ext_call.return_data[0] / 10000)) << 224, mem[516 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[484]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 563 len 22]
}

function deposit() payable {
    if uint8(stor0.field_160):
        revert with 0, 'Pausable: paused'
    require ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0)
    staticcall 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address rg1, uint256 rg2), 0x76fcefffcf5325c6156ca896, 0, 0
        mem[324 len 0] = 0
        call 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0.0xea833ecd with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address rg1, uint256 rg2), 0x76fcefffcf5325c6156ca896, 0, 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x76fcefffcf5325c6156ca896, 0, 0
            if not approve(address rg1, uint256 rg2), 0x76fcefffcf5325c6156ca896:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0)
                staticcall 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x76fcefffcf5325c6156ca89639b17464ea833ecd
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[382 len 10]
            if ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, 0x76fcefffcf5325c6156ca89639b17464ea833ecd, ext_call.return_data[0 len 28]
            call 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0.0xea833ecd with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x76fcefffcf5325c6156ca896, 0, 0
                if not approve(address rg1, uint256 rg2), 0x76fcefffcf5325c6156ca896:
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
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if ext_call.return_data[0]:
                    require ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0)
                    staticcall 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x76fcefffcf5325c6156ca89639b17464ea833ecd
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 383 len 10]
                if ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, 0x76fcefffcf5325c6156ca89639b17464ea833ecd, ext_call.return_data[0 len 28]
                call 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0.0xea833ecd with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x76fcefffcf5325c6156ca896, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x76fcefffcf5325c6156ca896:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
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
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                if not ext_call.return_data[0]:
                    if ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, 0x76fcefffcf5325c6156ca89639b17464ea833ecd, ext_call.return_data[0 len 28]
                    call 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0.0xea833ecd with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x76fcefffcf5325c6156ca896, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x76fcefffcf5325c6156ca896:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
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
                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                else:
                    require ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0)
                    staticcall 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x76fcefffcf5325c6156ca89639b17464ea833ecd
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 383 len 10]
                    if ext_code.size(0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, 0x76fcefffcf5325c6156ca89639b17464ea833ecd, ext_call.return_data[0 len 28]
                    call 0x2eb5ecc40e403b12ee4428d70fddf34e2c2c27b0.0xea833ecd with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x76fcefffcf5325c6156ca896, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x76fcefffcf5325c6156ca896:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
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
        require ext_code.size(0x76fcefffcf5325c6156ca89639b17464ea833ecd)
        call 0x76fcefffcf5325c6156ca89639b17464ea833ecd.enterStaking(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
