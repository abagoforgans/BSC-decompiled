contract main {




// =====================  Runtime code  =====================


#
#  - sub_218c0d74(?)
#
address owner;
mapping of uint8 stor1;
array of address paths;
mapping of uint8 stor3;
uint256 callFee;
uint256 sub_b336e988;
uint256 sub_ea77966c;
uint256 stor7; offset 32
uint256 sub_471049a7;
big480 stor7;
uint256 harvestPeriod;
address routerAddress;
address sub_41f55b11Address;
address rewardPoolAddress;
uint32 stor12;
address deadAddress;
uint256 stor12;
uint256 minThreshold;
mapping of uint256 sub_941e7d75;

function paths(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(paths[arg1])
    return address(paths[arg1][arg2])
}

function burns(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function crops(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function dead() payable {
    return address(deadAddress)
}

function sub_41f55b11(?) payable {
    return sub_41f55b11Address
}

function sub_471049a7(?) payable {
    return sub_471049a7
}

function rewardPool() payable {
    return rewardPoolAddress
}

function owner() payable {
    return owner
}

function callFee() payable {
    return callFee
}

function sub_941e7d75(?) payable {
    require calldata.size - 4 >= 32
    return sub_941e7d75[arg1]
}

function sub_b336e988(?) payable {
    return sub_b336e988
}

function minThreshold() payable {
    return minThreshold
}

function harvestPeriod() payable {
    return harvestPeriod
}

function sub_ea77966c(?) payable {
    return sub_ea77966c
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_651f3fac(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_ea77966c = arg1
}

function sub_73693934(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    minThreshold = arg1
}

function setCallFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    callFee = arg1
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    routerAddress = arg1
}

function setRewardPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    rewardPoolAddress = arg1
}

function updateHarvestPeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    harvestPeriod = arg1
}

function setBurnable(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor3[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_d8127701(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2.length <= 0:
        revert with 0, 'empty path'
    require 0 < arg2.length
    if arg1 != mem[140 len 20]:
        revert with 0, 'invalid path'
    uint256(paths[address(arg1)]) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(paths[address(arg1)]) > idx:
            address(paths[address(arg1)][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg2.length) + 128 > idx:
            address(paths[address(arg1)][s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while uint256(paths[address(arg1)]) > idx:
            address(paths[address(arg1)][idx]) = 0
            idx = idx + 1
            continue 
}

function burn(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor3[address(arg1)]:
        revert with 0, 'Not burnable'
    if block.timestamp <= sub_941e7d75[address(arg1)]:
        revert with 0, 'Burn time is not up'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'LP balance is 0'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor12)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor12):
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        if sub_471049a7 > 0:
            require ext_code.size(sub_41f55b11Address)
            staticcall sub_41f55b11Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= sub_471049a7:
                if not ext_code.size(sub_41f55b11Address):
                    revert with 0, 'Address: call to non-contract'
                mem[424 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor7.field_32)
                call sub_41f55b11Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, 0, stor7.field_0), mem[488 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor12):
                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 535 len 22]
        if harvestPeriod + block.timestamp < block.timestamp:
            revert with 0, 'SafeMath: addition overflow'
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        if sub_471049a7 <= 0:
            if harvestPeriod + block.timestamp < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
        else:
            require ext_code.size(sub_41f55b11Address)
            staticcall sub_41f55b11Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < sub_471049a7:
                if harvestPeriod + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if not ext_code.size(sub_41f55b11Address):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, stor7.field_32)
                call sub_41f55b11Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, 0, stor7.field_0), mem[ceil32(return_data.size) + 489 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0]
                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor12):
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 535 len 22]
                    if harvestPeriod + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
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
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if harvestPeriod + block.timestamp < block.timestamp:
                        revert with 0, 
                                    'SafeMath: addition overflow',
                                    mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    ('ge', ('add', ('stor', ('name', 'harvestPeriod', 8)), 'timestamp'), 'timestamp')
    sub_941e7d75[address(arg1)] = harvestPeriod + block.timestamp
}

function sub_a0d224e8(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2.length
    require 0 < arg3.length
    if address(ext_call.return_data[0]) != mem[140 len 20]:
        if address(ext_call.return_data[0]) != mem[(32 * arg2.length) + 172 len 20]:
            revert with 0, 'invalid paths'
        require 0 < arg2.length
        if ext_call.return_data[12 len 20] != mem[140 len 20]:
            revert with 0, 'invalid paths'
        if owner != msg.sender:
            revert with 0, 'wOwnable: caller is not the owne'
        if arg3.length <= 0:
            revert with 0, 'empty path'
        require 0 < arg3.length
        if address(ext_call.return_data[0]) != mem[(32 * arg2.length) + 172 len 20]:
            revert with 0, 'invalid path'
        uint256(paths[address(ext_call.return_data[0])]) = arg3.length
        if not arg3.length:
            idx = 0
            while uint256(paths[address(ext_call.return_data[0])]) > idx:
                address(paths[address(ext_call.return_data[0])][idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = (32 * arg2.length) + 160
            while (32 * arg2.length) + (32 * arg3.length) + 160 > idx:
                address(paths[address(ext_call.return_data[0])][s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            while uint256(paths[address(ext_call.return_data[0])]) > idx:
                address(paths[address(ext_call.return_data[0])][idx]) = 0
                idx = idx + 1
                continue 
        if owner != msg.sender:
            revert with 0, 'wOwnable: caller is not the owne'
        if arg2.length <= 0:
            revert with 0, 'empty path'
        require 0 < arg2.length
        if address(ext_call.return_data[0]) != mem[140 len 20]:
            revert with 0, 'invalid path'
        uint256(paths[address(ext_call.return_data[0])]) = arg2.length
        if not arg2.length:
            idx = 0
            while uint256(paths[address(ext_call.return_data[0])]) > idx:
                address(paths[address(ext_call.return_data[0])][idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg2.length) + 128 > idx:
                address(paths[address(ext_call.return_data[0])][s]) = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
            while uint256(paths[address(ext_call.return_data[0])]) > idx:
                address(paths[address(ext_call.return_data[0])][idx]) = 0
                idx = idx + 1
                continue 
    else:
        if ext_call.return_data[12 len 20] == mem[(32 * arg2.length) + 172 len 20]:
            if owner != msg.sender:
                revert with 0, 'wOwnable: caller is not the owne'
            if arg2.length <= 0:
                revert with 0, 'empty path'
            require 0 < arg2.length
            if address(ext_call.return_data[0]) != mem[140 len 20]:
                revert with 0, 'invalid path'
            uint256(paths[address(ext_call.return_data[0])]) = arg2.length
            if not arg2.length:
                idx = 0
                while uint256(paths[address(ext_call.return_data[0])]) > idx:
                    address(paths[address(ext_call.return_data[0])][idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg2.length) + 128 > idx:
                    address(paths[address(ext_call.return_data[0])][s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while uint256(paths[address(ext_call.return_data[0])]) > idx:
                    address(paths[address(ext_call.return_data[0])][idx]) = 0
                    idx = idx + 1
                    continue 
            if owner != msg.sender:
                revert with 0, 'wOwnable: caller is not the owne'
            if arg3.length <= 0:
                revert with 0, 'empty path'
            require 0 < arg3.length
            if address(ext_call.return_data[0]) != mem[(32 * arg2.length) + 172 len 20]:
                revert with 0, 'invalid path'
            uint256(paths[address(ext_call.return_data[0])]) = arg3.length
            if not arg3.length:
                idx = 0
                while uint256(paths[address(ext_call.return_data[0])]) > idx:
                    address(paths[address(ext_call.return_data[0])][idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = (32 * arg2.length) + 160
                while (32 * arg2.length) + (32 * arg3.length) + 160 > idx:
                    address(paths[address(ext_call.return_data[0])][s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
                while uint256(paths[address(ext_call.return_data[0])]) > idx:
                    address(paths[address(ext_call.return_data[0])][idx]) = 0
                    idx = idx + 1
                    continue 
        else:
            require 0 < arg3.length
            if address(ext_call.return_data[0]) != mem[(32 * arg2.length) + 172 len 20]:
                revert with 0, 'invalid paths'
            require 0 < arg2.length
            if ext_call.return_data[12 len 20] != mem[140 len 20]:
                revert with 0, 'invalid paths'
            if owner != msg.sender:
                revert with 0, 'wOwnable: caller is not the owne'
            if arg3.length <= 0:
                revert with 0, 'empty path'
            require 0 < arg3.length
            if address(ext_call.return_data[0]) != mem[(32 * arg2.length) + 172 len 20]:
                revert with 0, 'invalid path'
            uint256(paths[address(ext_call.return_data[0])]) = arg3.length
            if not arg3.length:
                idx = 0
                while uint256(paths[address(ext_call.return_data[0])]) > idx:
                    address(paths[address(ext_call.return_data[0])][idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = (32 * arg2.length) + 160
                while (32 * arg2.length) + (32 * arg3.length) + 160 > idx:
                    address(paths[address(ext_call.return_data[0])][s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
                while uint256(paths[address(ext_call.return_data[0])]) > idx:
                    address(paths[address(ext_call.return_data[0])][idx]) = 0
                    idx = idx + 1
                    continue 
            if owner != msg.sender:
                revert with 0, 'wOwnable: caller is not the owne'
            if arg2.length <= 0:
                revert with 0, 'empty path'
            require 0 < arg2.length
            if address(ext_call.return_data[0]) != mem[140 len 20]:
                revert with 0, 'invalid path'
            uint256(paths[address(ext_call.return_data[0])]) = arg2.length
            if not arg2.length:
                idx = 0
                while uint256(paths[address(ext_call.return_data[0])]) > idx:
                    address(paths[address(ext_call.return_data[0])][idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg2.length) + 128 > idx:
                    address(paths[address(ext_call.return_data[0])][s]) = mem[idx + 12 len 20]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
                while uint256(paths[address(ext_call.return_data[0])]) > idx:
                    address(paths[address(ext_call.return_data[0])][idx]) = 0
                    idx = idx + 1
                    continue 
    stor1[address(arg1)] = 1
}



}
