contract main {




// =====================  Runtime code  =====================


const want = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const sub_4bf69ca4(?) = 0x66d5544a0b05b19f08e45dbc13758a3590386c4


uint256 stor0;

function _fallback() payable {
    revert
}

function getBalance() payable {
    require ext_code.size(0x66d5544a0b05b19f08e45dbc13758a3590386c4)
    call 0x066d5544a0b05b19f08e45dbc13758a3590386c4.0xd120b476 with:
         gas gas_remaining wei
        args stor0, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_98573833(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0x66d5544a0b05b19f08e45dbc13758a3590386c4)
    call 0x066d5544a0b05b19f08e45dbc13758a3590386c4.userInfo(uint256 rg1, address rg2) with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function deposit() payable {
    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address rg1, uint256 rg2), 0x66d5544a0b05b19f08e45db, 0, 0
        mem[324 len 0] = 0
        call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x590386c4 with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address rg1, uint256 rg2), 0x66d5544a0b05b19f08e45db, 0, 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x66d5544a0b05b19f08e45db, 0, 0
            if not approve(address rg1, uint256 rg2), 0x66d5544a0b05b19f08e45db:
                revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x66d5544a0b05b19f08e45dbc13758a3590386c4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[382 len 10]
            if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, 0x66d5544a0b05b19f08e45dbc13758a3590386c4, ext_call.return_data[0 len 28]
            call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x590386c4 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x66d5544a0b05b19f08e45db, 0, 0
                if not approve(address rg1, uint256 rg2), 0x66d5544a0b05b19f08e45db:
                    revert with 0, 32, 42, 0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(0x66d5544a0b05b19f08e45dbc13758a3590386c4)
            call 0x066d5544a0b05b19f08e45dbc13758a3590386c4.deposit(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args stor0, ext_call.return_data[0]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if ext_call.return_data[0]:
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x66d5544a0b05b19f08e45dbc13758a3590386c4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 383 len 10]
                if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, 0x66d5544a0b05b19f08e45dbc13758a3590386c4, ext_call.return_data[0 len 28]
                mem[ceil32(return_data.size) + 517 len 4] = 0
                call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x590386c4 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x66d5544a0b05b19f08e45db, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x66d5544a0b05b19f08e45db:
                        revert with 0, 
                                    32,
                                    42,
                                    0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    require ext_code.size(0x66d5544a0b05b19f08e45dbc13758a3590386c4)
                    call 0x066d5544a0b05b19f08e45dbc13758a3590386c4.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0]
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
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0x66d5544a0b05b19f08e45dbc13758a3590386c4)
                    call 0x066d5544a0b05b19f08e45dbc13758a3590386c4.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                if not ext_call.return_data[0]:
                    if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, 0x66d5544a0b05b19f08e45dbc13758a3590386c4, ext_call.return_data[0 len 28]
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x590386c4 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x66d5544a0b05b19f08e45db, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x66d5544a0b05b19f08e45db:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    require ext_code.size(0x66d5544a0b05b19f08e45dbc13758a3590386c4)
                    call 0x066d5544a0b05b19f08e45dbc13758a3590386c4.deposit(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args stor0, ext_call.return_data[0]
                else:
                    require ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c)
                    staticcall 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x66d5544a0b05b19f08e45dbc13758a3590386c4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 383 len 10]
                    if ext_code.size(0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, 0x66d5544a0b05b19f08e45dbc13758a3590386c4, ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 517 len 4] = 0
                    call 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c.0x590386c4 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x66d5544a0b05b19f08e45db, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x66d5544a0b05b19f08e45db:
                            revert with 0, 
                                        32,
                                        42,
                                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(0x66d5544a0b05b19f08e45dbc13758a3590386c4)
                        call 0x066d5544a0b05b19f08e45dbc13758a3590386c4.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor0, ext_call.return_data[0]
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
                                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(0x66d5544a0b05b19f08e45dbc13758a3590386c4)
                        call 0x066d5544a0b05b19f08e45dbc13758a3590386c4.deposit(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args stor0, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
