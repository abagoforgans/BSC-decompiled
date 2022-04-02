contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const balanceOfPool = ext_call.return_data[0]

const unirouter = 0x3bc677674df90a9e5d741f28f6ca303357d0e4ec

const bifi = 0xca3f508b8e4dd382ee878a314789373d80a5190a

const balanceOf = (2 * ext_call.return_data[0])

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const rewards = 0x453d4ba9a2d594314df88564248497f7d74d6b2c

const balanceOfBifi = ext_call.return_data[0]

const REWARDS_FEE = 5

const WITHDRAWAL_MAX = 10000

const CALL_FEE = 5

const WITHDRAWAL_FEE = 5

const MAX_FEE = 1000


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
uint32 stor1;
address vaultAddress;
uint256 stor1;
array of address wbnbToBifiRoute;

function paused() payable {
    return bool(paused)
}

function owner() payable {
    return owner
}

function wbnbToBifiRoute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < wbnbToBifiRoute.length
    return wbnbToBifiRoute[arg1]
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
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a)
    staticcall 0xca3f508b8e4dd382ee878a314789373d80a5190a.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
        call 0x453d4ba9a2d594314df88564248497f7d74d6b2c.stake(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, 0
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x57d0e4ec with:
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, 0
        if not approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address rg1, uint256 rg2), 0x453d4ba9a2d594314df88564, 0, 0
        call 0xca3f508b8e4dd382ee878a314789373d80a5190a.0xd74d6b2c with:
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, 0
            if not approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28:
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
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0x453d4ba9a2d594314df88564, 0, 0
        mem[ceil32(return_data.size) + 489 len 0] = 0
        call 0xca3f508b8e4dd382ee878a314789373d80a5190a.0xd74d6b2c with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address rg1, uint256 rg2), 0x453d4ba9a2d594314df88564, 0, 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, 0
            if not approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28:
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
}

function panic() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, 0
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x57d0e4ec with:
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, 0
        if not approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address rg1, uint256 rg2), 0x453d4ba9a2d594314df88564, 0, 0
        call 0xca3f508b8e4dd382ee878a314789373d80a5190a.0xd74d6b2c with:
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, 0
            if not approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28:
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
        require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
        staticcall 0x453d4ba9a2d594314df88564248497f7d74d6b2c.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
        call 0x453d4ba9a2d594314df88564248497f7d74d6b2c.0x2e1a7d4d with:
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
        if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0x453d4ba9a2d594314df88564, 0, 0
        mem[ceil32(return_data.size) + 517 len 4] = 0
        call 0xca3f508b8e4dd382ee878a314789373d80a5190a.0xd74d6b2c with:
             gas gas_remaining wei
            args 0, mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, 0
            if not approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
            staticcall 0x453d4ba9a2d594314df88564248497f7d74d6b2c.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
            call 0x453d4ba9a2d594314df88564248497f7d74d6b2c.0x2e1a7d4d with:
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
            require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
            staticcall 0x453d4ba9a2d594314df88564248497f7d74d6b2c.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address), mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
            call 0x453d4ba9a2d594314df88564248497f7d74d6b2c.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!vault'
    require ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a)
    staticcall 0xca3f508b8e4dd382ee878a314789373d80a5190a.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if ext_call.return_data[0] > arg1:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg1) >> 32
                call 0xca3f508b8e4dd382ee878a314789373d80a5190a with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[452 len 4]
            else:
                require arg1
                if 5 * arg1 / arg1 != 5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 5 * arg1 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg1 - (5 * arg1 / 10000)) >> 32
                call 0xca3f508b8e4dd382ee878a314789373d80a5190a with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (5 * arg1 / 10000)) << 224, mem[452 len 4]
        else:
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
                mem[452 len 0] = 0
                call 0xca3f508b8e4dd382ee878a314789373d80a5190a with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
            else:
                require ext_call.return_data[0]
                if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 5 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[388 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 10000)) >> 32
                mem[452 len 0] = 0
                call 0xca3f508b8e4dd382ee878a314789373d80a5190a with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 10000)) << 224, mem[452 len 4]
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
        require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
        call 0x453d4ba9a2d594314df88564248497f7d74d6b2c.0x2e1a7d4d with:
             gas gas_remaining wei
            args (arg1 - ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a)
        staticcall 0xca3f508b8e4dd382ee878a314789373d80a5190a.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= arg1:
            if not ext_call.return_data[0]:
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
                call 0xca3f508b8e4dd382ee878a314789373d80a5190a with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[516 len 4]
            else:
                require ext_call.return_data[0]
                if 5 * ext_call.return_data[0] / ext_call.return_data[0] != 5:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 5 * ext_call.return_data[0] / 10000 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 10000)) >> 32
                call 0xca3f508b8e4dd382ee878a314789373d80a5190a with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] - (5 * ext_call.return_data[0] / 10000)) << 224, mem[516 len 4]
        else:
            if not arg1:
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg1) >> 32
                mem[516 len 0] = 0
                call 0xca3f508b8e4dd382ee878a314789373d80a5190a with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[516 len 4]
            else:
                require arg1
                if 5 * arg1 / arg1 != 5:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if 5 * arg1 / 10000 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[452 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg1 - (5 * arg1 / 10000)) >> 32
                call 0xca3f508b8e4dd382ee878a314789373d80a5190a with:
                   funct uint32(stor1)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1 - (5 * arg1 / 10000)) << 224, mem[516 len 4]
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

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(this.address), 0x3bc677674df90a9e5d741f28f6ca303357d0e4ec
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                    mem[218 len 10]
    if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x57d0e4ec with:
         gas gas_remaining wei
        args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, -1
        if not approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a)
        staticcall 0xca3f508b8e4dd382ee878a314789373d80a5190a.allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(this.address), 0x453d4ba9a2d594314df88564248497f7d74d6b2c
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address rg1, uint256 rg2), 0x453d4ba9a2d594314df88564, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call 0xca3f508b8e4dd382ee878a314789373d80a5190a.0xd74d6b2c with:
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, -1
            if not approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28:
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
            require ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a)
            staticcall 0xca3f508b8e4dd382ee878a314789373d80a5190a.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0x453d4ba9a2d594314df88564248497f7d74d6b2c
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0x453d4ba9a2d594314df88564, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call 0xca3f508b8e4dd382ee878a314789373d80a5190a.0xd74d6b2c with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), 0x453d4ba9a2d594314df88564, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, -1
                if not approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28:
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
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a)
            staticcall 0xca3f508b8e4dd382ee878a314789373d80a5190a.allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(this.address), 0x453d4ba9a2d594314df88564248497f7d74d6b2c
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0x453d4ba9a2d594314df88564, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call 0xca3f508b8e4dd382ee878a314789373d80a5190a.0xd74d6b2c with:
                 gas gas_remaining wei
                args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, -1
                if not approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28:
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
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function retireStrat() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, 0
    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x57d0e4ec with:
         gas gas_remaining wei
        args 0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, 0
        if not approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = approve(address rg1, uint256 rg2), 0x453d4ba9a2d594314df88564, 0, 0
        call 0xca3f508b8e4dd382ee878a314789373d80a5190a.0xd74d6b2c with:
             gas gas_remaining wei
            args 0, mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, 0
            if not approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28:
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
        require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
        staticcall 0x453d4ba9a2d594314df88564248497f7d74d6b2c.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
        call 0x453d4ba9a2d594314df88564248497f7d74d6b2c.0x2e1a7d4d with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a)
        staticcall 0xca3f508b8e4dd382ee878a314789373d80a5190a.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a)
        call 0xca3f508b8e4dd382ee878a314789373d80a5190a.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(vaultAddress), ext_call.return_data[0]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0x453d4ba9a2d594314df88564, 0, 0
            mem[ceil32(return_data.size) + 489 len 0] = 0
            call 0xca3f508b8e4dd382ee878a314789373d80a5190a.0xd74d6b2c with:
                 gas gas_remaining wei
                args Mask(480, -256, approve(address rg1, uint256 rg2), 0x453d4ba9a2d594314df88564, 0, 0) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, 0
                if not approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28:
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
            require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
            staticcall 0x453d4ba9a2d594314df88564248497f7d74d6b2c.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
            call 0x453d4ba9a2d594314df88564248497f7d74d6b2c.0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a)
            staticcall 0xca3f508b8e4dd382ee878a314789373d80a5190a.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a)
            call 0xca3f508b8e4dd382ee878a314789373d80a5190a.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(vaultAddress), ext_call.return_data[0]
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            if ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0x453d4ba9a2d594314df88564, 0, 0
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call 0xca3f508b8e4dd382ee878a314789373d80a5190a.0xd74d6b2c with:
                 gas gas_remaining wei
                args 0, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28, 0, 0
                if not approve(address rg1, uint256 rg2), 0x3bc677674df90a9e5d741f28:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
                staticcall 0x453d4ba9a2d594314df88564248497f7d74d6b2c.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
                call 0x453d4ba9a2d594314df88564248497f7d74d6b2c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a)
                staticcall 0xca3f508b8e4dd382ee878a314789373d80a5190a.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a)
                call 0xca3f508b8e4dd382ee878a314789373d80a5190a.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(vaultAddress), ext_call.return_data[0]
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
                require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
                staticcall 0x453d4ba9a2d594314df88564248497f7d74d6b2c.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address), mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x453d4ba9a2d594314df88564248497f7d74d6b2c)
                call 0x453d4ba9a2d594314df88564248497f7d74d6b2c.0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a)
                staticcall 0xca3f508b8e4dd382ee878a314789373d80a5190a.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address), mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0xca3f508b8e4dd382ee878a314789373d80a5190a)
                call 0xca3f508b8e4dd382ee878a314789373d80a5190a.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(vaultAddress), ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
