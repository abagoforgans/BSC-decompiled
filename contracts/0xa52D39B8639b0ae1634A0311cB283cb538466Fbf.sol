contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
const sub_0a7c9ce0(?) = ext_call.return_data[0]

const balanceOfPool = ext_call.return_data[0]

const unirouter = 0x5ff2b0db69458a0750badebc4f9e13add608c7f

const busd = 0xe9e7cea3dedca5984780bafc599bd69add087d56

const xvs = 0xcf6bb5389c92bdda8a3747ddb454cb7a64626c63

const treasury = 0xd54307a8edfa93b1794861f091c714d752400d13

const balanceOf = (2 * ext_call.return_data[0])

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const sub_8f98e2d7(?) = 0x667eed0a0aab930af74a3dfedd263a73994f216

const token = 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
uint32 stor1;
address vaultAddress;
uint256 stor1;
address routerAddress;
array of address sub_dab82056;
array of address sub_f9dde7f5;

function paused() payable {
    return bool(paused)
}

function owner() payable {
    return owner
}

function sub_dab82056(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_dab82056.length
    return sub_dab82056[arg1]
}

function router() payable {
    return routerAddress
}

function sub_f9dde7f5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f9dde7f5.length
    return sub_f9dde7f5[arg1]
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
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
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

function retireStrat() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
    require ext_code.size(0x667eed0a0aab930af74a3dfedd263a73994f216)
    staticcall 0x667eed0a0aab930af74a3dfedd263a73994f216.userInfo(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(0x667eed0a0aab930af74a3dfedd263a73994f216)
    call 0x0667eed0a0aab930af74a3dfedd263a73994f216.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7)
    staticcall 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7)
    call 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.0xa9059cbb with:
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
    require ext_code.size(0x667eed0a0aab930af74a3dfedd263a73994f216)
    call 0x0667eed0a0aab930af74a3dfedd263a73994f216.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
}

function deposit() payable {
    if paused:
        revert with 0, 'Pausable: paused'
    require ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7)
    staticcall 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address rg1, uint256 rg2), 0x667eed0a0aab930af74a3df, 0, 0
        call 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.0x3994f216 with:
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x667eed0a0aab930af74a3df, 0, 0
            if not approve(address rg1, uint256 rg2), 0x667eed0a0aab930af74a3df:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if not ext_call.return_data[0]:
                if ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = approve(address rg1, uint256 rg2), 0x667eed0a0aab930af74a3df, 0, ext_call.return_data[0 len 28]
                mem[488 len 0] = 0
            else:
                require ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7)
                staticcall 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x667eed0a0aab930af74a3dfedd263a73994f216
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[382 len 10]
                if ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = approve(address rg1, uint256 rg2), 0x667eed0a0aab930af74a3df, 0, ext_call.return_data[0 len 28]
            call 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.0x3994f216 with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x667eed0a0aab930af74a3df, 0, 0
                if not approve(address rg1, uint256 rg2), 0x667eed0a0aab930af74a3df:
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
            require ext_code.size(0x667eed0a0aab930af74a3dfedd263a73994f216)
            call 0x0667eed0a0aab930af74a3dfedd263a73994f216.deposit(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if ext_call.return_data[0]:
                    require ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7)
                    staticcall 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x667eed0a0aab930af74a3dfedd263a73994f216
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 383 len 10]
                if ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0x667eed0a0aab930af74a3df, 0, ext_call.return_data[0 len 28]
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.0x3994f216 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x667eed0a0aab930af74a3df, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x667eed0a0aab930af74a3df:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(0x667eed0a0aab930af74a3dfedd263a73994f216)
                    call 0x0667eed0a0aab930af74a3dfedd263a73994f216.deposit(uint256 rg1) with:
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
                    require ext_code.size(0x667eed0a0aab930af74a3dfedd263a73994f216)
                    call 0x0667eed0a0aab930af74a3dfedd263a73994f216.deposit(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 462 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                if ext_call.return_data[0]:
                    require ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7)
                    staticcall 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x667eed0a0aab930af74a3dfedd263a73994f216
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 383 len 10]
                if ext_code.size(0x4bd17003473389a42daf6a0a729f6fdb328bbbd7) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0x667eed0a0aab930af74a3df, 0, ext_call.return_data[0 len 28]
                mem[ceil32(return_data.size) + 489 len 0] = 0
                call 0x4bd17003473389a42daf6a0a729f6fdb328bbbd7.0x3994f216 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x667eed0a0aab930af74a3df, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x667eed0a0aab930af74a3df:
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
                require ext_code.size(0x667eed0a0aab930af74a3dfedd263a73994f216)
                call 0x0667eed0a0aab930af74a3dfedd263a73994f216.deposit(uint256 rg1) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
