contract main {




// =====================  Runtime code  =====================


#
#  - sub_15c0c354(?)
#  - withdraw(uint256 arg1, uint256 arg2)
#
const busd = 0xe9e7cea3dedca5984780bafc599bd69add087d56

const sub_4bf69ca4(?) = 0x73feaa1ee314f8c655e354234017be2193c9e24e

const max = 1000

const fries = 0x393b312c01048b3ed2720bf1b090084c09e408a1

const sub_85b52d82(?) = 0x15b3d410fcd0d695e1bbe4f717f8e1b6d0fb2d0c

const wbnb = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c

const withdrawalMax = 10000

const output = 0xe09fabb73bd3ade0a17ecc321fd13a19e81ce82


address wantAddress;
address sub_dd543f13Address;
address sub_0640c496Address;
address devAddr;
address unirouterAddress;
address sub_7cac8f5aAddress;
address rewardsAddress;
address vaultAddress;
uint256 callfee;
uint256 withdrawalFee;
array of address sub_40efb966;
array of address sub_24f1baf4;
array of address sub_9a68480e;
array of address sub_b1dcffad;
array of uint256 name;
uint256 sub_4ce272ee;

function sub_0640c496(?) payable {
    return sub_0640c496Address
}

function getName() payable {
    return name[0 len name.length]
}

function want() payable {
    return wantAddress
}

function sub_24f1baf4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_24f1baf4.length
    return sub_24f1baf4[arg1]
}

function unirouter() payable {
    return unirouterAddress
}

function sub_40efb966(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_40efb966.length
    return sub_40efb966[arg1]
}

function sub_4ce272ee(?) payable {
    return sub_4ce272ee
}

function sub_7cac8f5a(?) payable {
    return sub_7cac8f5aAddress
}

function withdrawalFee() payable {
    return withdrawalFee
}

function sub_9a68480e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_9a68480e.length
    return sub_9a68480e[arg1]
}

function rewards() payable {
    return rewardsAddress
}

function sub_b1dcffad(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b1dcffad.length
    return sub_b1dcffad[arg1]
}

function devAddr() payable {
    return devAddr
}

function callfee() payable {
    return callfee
}

function sub_dd543f13(?) payable {
    return sub_dd543f13Address
}

function vault() payable {
    return vaultAddress
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
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
            gas gas_remaining wei
           args sub_4ce272ee, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function balanceOf() payable {
    require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
    staticcall 0x73feaa1ee314f8c655e354234017be2193c9e24e.0x93f1a40b with:
            gas gas_remaining wei
           args sub_4ce272ee, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
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
    if ext_call.return_data[0]:
        if not ext_code.size(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = approve(address rg1, uint256 rg2), 0x73feaa1ee314f8c655e35423, 0, 0
        call wantAddress.0x93c9e24e with:
             gas gas_remaining wei
            args 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), 0x73feaa1ee314f8c655e35423, 0, 0
            if not approve(address rg1, uint256 rg2), 0x73feaa1ee314f8c655e35423:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x73feaa1ee314f8c655e354234017be2193c9e24e
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[382 len 10]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[424 len 64] = approve(address rg1, uint256 rg2), 0x73feaa1ee314f8c655e35423, 2479481422, ext_call.return_data[0 len 28]
            call wantAddress.0x93c9e24e with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[488 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x73feaa1ee314f8c655e35423, 0, 0
                if not approve(address rg1, uint256 rg2), 0x73feaa1ee314f8c655e35423:
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
            require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
            call 0x73feaa1ee314f8c655e354234017be2193c9e24e.0xe2bbb158 with:
                 gas gas_remaining wei
                args sub_4ce272ee, ext_call.return_data[0]
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
            if ext_call.return_data[0]:
                require ext_code.size(wantAddress)
                staticcall wantAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x73feaa1ee314f8c655e354234017be2193c9e24e
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(return_data.size) + 383 len 10]
            if not ext_code.size(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = approve(address rg1, uint256 rg2), 0x73feaa1ee314f8c655e35423, 0, ext_call.return_data[0 len 28]
            mem[ceil32(return_data.size) + 517 len 4] = 0
            call wantAddress.0x93c9e24e with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), 0x73feaa1ee314f8c655e35423, 0, 0
                if not approve(address rg1, uint256 rg2), 0x73feaa1ee314f8c655e35423:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
                require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                call 0x73feaa1ee314f8c655e354234017be2193c9e24e.0xe2bbb158 with:
                     gas gas_remaining wei
                    args sub_4ce272ee, ext_call.return_data[0]
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
                require ext_code.size(0x73feaa1ee314f8c655e354234017be2193c9e24e)
                call 0x73feaa1ee314f8c655e354234017be2193c9e24e.0xe2bbb158 with:
                     gas gas_remaining wei
                    args sub_4ce272ee, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
