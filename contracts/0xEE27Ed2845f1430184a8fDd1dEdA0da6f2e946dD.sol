contract main {




// =====================  Runtime code  =====================


#
#  - sub_cd1a2fd0(?)
#
const balanceOfPool = ext_call.return_data[0]

const want = 0xe02df9e3e622debdd69fb838bb799e3f168902

const busd = 0xe9e7cea3dedca5984780bafc599bd69add087d56

const masterChef = 0x20ec291bb8459b6145317e7126532ce7ece5056f

const balanceOf = (2 * ext_call.return_data[0])

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const balanceOfWant = ext_call.return_data[0]


address owner;
address devAddr;
address bakeryRouterAddress;
uint32 stor3;
address vaultAddress;
uint256 stor3;
array of address sub_b1dcffad;
array of address sub_f3db0d8e;
array of uint256 name;

function getName() payable {
    return name[0 len name.length]
}

function owner() payable {
    return owner
}

function sub_b1dcffad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b1dcffad.length
    return sub_b1dcffad[arg1]
}

function bakeryRouter() payable {
    return bakeryRouterAddress
}

function devAddr() payable {
    return devAddr
}

function sub_f3db0d8e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_f3db0d8e.length
    return sub_f3db0d8e[arg1]
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

function emergencyWithdrawal() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x20ec291bb8459b6145317e7126532ce7ece5056f)
    call 0x20ec291bb8459b6145317e7126532ce7ece5056f.emergencyWithdraw(address rg1) with:
         gas gas_remaining wei
        args 0x65000000000000000000000000e02df9e3e622debdd69fb838bb799e3f168902
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

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(vaultAddress) != msg.sender:
        revert with 0, '!fryVault'
    require ext_code.size(0x65000000000000000000000000e02df9e3e622debdd69fb838bb799e3f168902)
    staticcall 0x65000000000000000000000000e02df9e3e622debdd69fb838bb799e3f168902.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg1:
        if not ext_code.size(0xe02df9e3e622debdd69fb838bb799e3f168902):
            revert with 0, 'Address: call to non-contract'
        if ext_call.return_data[0] <= arg1:
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call 0x00e02df9e3e622debdd69fb838bb799e3f168902 with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
            mem[324 len 0] = 0
            call 0x00e02df9e3e622debdd69fb838bb799e3f168902 with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), arg1
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
    else:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(0x20ec291bb8459b6145317e7126532ce7ece5056f)
        call 0x20ec291bb8459b6145317e7126532ce7ece5056f.withdraw(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args 0xe02df9e3e622debdd69fb838bb799e3f168902, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x65000000000000000000000000e02df9e3e622debdd69fb838bb799e3f168902)
        staticcall 0x65000000000000000000000000e02df9e3e622debdd69fb838bb799e3f168902.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(0xe02df9e3e622debdd69fb838bb799e3f168902):
            revert with 0, 'Address: call to non-contract'
        if ext_call.return_data[0] > arg1:
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 32, arg1) >> 32
            call 0x00e02df9e3e622debdd69fb838bb799e3f168902 with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[388 len 4]
        else:
            mem[324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), ext_call.return_data[0 len 28]
            mem[388 len 0] = 0
            call 0x00e02df9e3e622debdd69fb838bb799e3f168902 with:
               funct uint32(stor3)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: subtraction overflow'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
}

function deposit() payable {
    require ext_code.size(0x65000000000000000000000000e02df9e3e622debdd69fb838bb799e3f168902)
    staticcall 0x65000000000000000000000000e02df9e3e622debdd69fb838bb799e3f168902.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not ext_code.size(0xe02df9e3e622debdd69fb838bb799e3f168902):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address rg1, uint256 rg2), 0x20ec291bb8459b6145317e71, 0, 0
        mem[324 len 0] = 0
        call 0x00e02df9e3e622debdd69fb838bb799e3f168902.0xece5056f with:
             gas gas_remaining wei
            args Mask(480, -256, approve(address rg1, uint256 rg2), 0x20ec291bb8459b6145317e71, 0, 0) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x20ec291bb8459b6145317e71, 0, 0
            if not approve(address rg1, uint256 rg2), 0x20ec291bb8459b6145317e71:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(0xe02df9e3e622debdd69fb838bb799e3f168902)
                staticcall 0xe02df9e3e622debdd69fb838bb799e3f168902.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x20ec291bb8459b6145317e7126532ce7ece5056f
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[382 len 10]
            if not ext_code.size(0xe02df9e3e622debdd69fb838bb799e3f168902):
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = 0, 0x20ec291bb8459b6145317e7126532ce7ece5056f, ext_call.return_data[0 len 28]
            call 0x00e02df9e3e622debdd69fb838bb799e3f168902.0xece5056f with:
                 gas gas_remaining wei
                args ext_call.return_data[0], mem[360 len 28], mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x20ec291bb8459b6145317e71, 0, 0
                if not approve(address rg1, uint256 rg2), 0x20ec291bb8459b6145317e71:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
            else:
                mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[456]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
            require ext_code.size(0x20ec291bb8459b6145317e7126532ce7ece5056f)
            call 0x20ec291bb8459b6145317e7126532ce7ece5056f.deposit(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args 0x65000000000000000000000000e02df9e3e622debdd69fb838bb799e3f168902, ext_call.return_data[0]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if ext_call.return_data[0]:
                    require ext_code.size(0xe02df9e3e622debdd69fb838bb799e3f168902)
                    staticcall 0xe02df9e3e622debdd69fb838bb799e3f168902.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x20ec291bb8459b6145317e7126532ce7ece5056f
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 383 len 10]
                if not ext_code.size(0xe02df9e3e622debdd69fb838bb799e3f168902):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = 0, 0x20ec291bb8459b6145317e7126532ce7ece5056f, ext_call.return_data[0 len 28]
                call 0x00e02df9e3e622debdd69fb838bb799e3f168902.0xece5056f with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with approve(address rg1, uint256 rg2), 0x20ec291bb8459b6145317e71, 0, 0
                    if not approve(address rg1, uint256 rg2), 0x20ec291bb8459b6145317e71:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                else:
                    mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 457]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len 22]
                require ext_code.size(0x20ec291bb8459b6145317e7126532ce7ece5056f)
                call 0x20ec291bb8459b6145317e7126532ce7ece5056f.deposit(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args 0x65000000000000000000000000e02df9e3e622debdd69fb838bb799e3f168902, ext_call.return_data[0]
            else:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
                if not ext_call.return_data[0]:
                    if not ext_code.size(0xe02df9e3e622debdd69fb838bb799e3f168902):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, 0x20ec291bb8459b6145317e7126532ce7ece5056f, ext_call.return_data[0 len 28]
                    mem[ceil32(return_data.size) + 517 len 4] = 0
                    call 0x00e02df9e3e622debdd69fb838bb799e3f168902.0xece5056f with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x20ec291bb8459b6145317e71, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x20ec291bb8459b6145317e71:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                        require ext_code.size(0x20ec291bb8459b6145317e7126532ce7ece5056f)
                        call 0x20ec291bb8459b6145317e7126532ce7ece5056f.deposit(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x65000000000000000000000000e02df9e3e622debdd69fb838bb799e3f168902, ext_call.return_data[0]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
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
                        require ext_code.size(0x20ec291bb8459b6145317e7126532ce7ece5056f)
                        call 0x20ec291bb8459b6145317e7126532ce7ece5056f.deposit(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args 0x65000000000000000000000000e02df9e3e622debdd69fb838bb799e3f168902, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                else:
                    require ext_code.size(0xe02df9e3e622debdd69fb838bb799e3f168902)
                    staticcall 0xe02df9e3e622debdd69fb838bb799e3f168902.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, 0x20ec291bb8459b6145317e7126532ce7ece5056f
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(return_data.size) + 383 len 10]
                    if not ext_code.size(0xe02df9e3e622debdd69fb838bb799e3f168902):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 425 len 64] = 0, 0x20ec291bb8459b6145317e7126532ce7ece5056f, ext_call.return_data[0 len 28]
                    call 0x00e02df9e3e622debdd69fb838bb799e3f168902.0xece5056f with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with approve(address rg1, uint256 rg2), 0x20ec291bb8459b6145317e71, 0, 0
                        if not approve(address rg1, uint256 rg2), 0x20ec291bb8459b6145317e71:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
                    else:
                        mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 457]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 536 len 22]
                    require ext_code.size(0x20ec291bb8459b6145317e7126532ce7ece5056f)
                    call 0x20ec291bb8459b6145317e7126532ce7ece5056f.deposit(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args 0x65000000000000000000000000e02df9e3e622debdd69fb838bb799e3f168902, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
