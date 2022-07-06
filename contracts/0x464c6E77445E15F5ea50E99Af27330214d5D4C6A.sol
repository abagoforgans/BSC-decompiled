contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_2ee10f01(?)
#  - transfer(address arg1, uint256 arg2)
#  - sub_be272aeb(?)
#  - sub_d29597e6(?)
#  - _fallback()
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals;
array of struct stor25;
array of struct stor26;
address owner;
array of struct stor93;
uint256 maxWalletAmount;
uint256 maxTxAmount;
address swapPairAddress;
uint64 sub_b0070177; offset 160
address stor121;
uint256 sub_7407e4a6;
mapping of uint8 stor123;
mapping of uint8 stor124;
address stor125;
address stor126;
address stor127;
address stor128;
address stor129;
address stor130;
array of struct stor131;
uint8 stor132;
uint8 stor132; offset 8
uint8 stor132; offset 16
uint256 stor132; offset 32
array of struct stor133;

function totalSupply() {
    return totalSupply
}

function swapPair() {
    return swapPairAddress
}

function decimals() {
    return decimals
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor123[arg1])
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_7407e4a6(?) {
    return sub_7407e4a6
}

function maxTxAmount() {
    return maxTxAmount
}

function owner() {
    return owner
}

function maxWalletAmount() {
    return maxWalletAmount
}

function sub_b0070177(?) {
    return sub_b0070177
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_eb39f914(?) {
    return stor125, stor126, stor127, stor128, stor129, stor130
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function getClaimWait() {
    if not stor133.length:
        return 0
    if 0 >= stor133.length:
        revert with 0, 50
    return stor133.field_928 % 16777216
}

function sub_e44f5c50(?) {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return stor131[arg1].field_0, 
           stor131[arg1].field_0,
           stor131[arg1].field_0,
           stor131[arg1].field_0,
           bool(stor131[arg1].field_32)
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    stor123[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    if not arg1:
        revert with 0, 'Ownable: can't be 0 address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
    stor123[address(arg1)] = 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'ERC20: approve from 0 address'
    if not arg1:
        revert with 0, 'ERC20: approve to 0 address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from 0 address'
    if not arg1:
        revert with 0, 'ERC20: approve to 0 address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 'ERC20: allowance below zero'
    if not msg.sender:
        revert with 0, 'ERC20: approve from 0 address'
    if not arg1:
        revert with 0, 'ERC20: approve to 0 address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_9d5b845f(?) {
    require calldata.size - 4 >= 64
    require 35 < calldata.size
    mem[64] = 160
    require 68 <= calldata.size
    idx = 4
    s = 96
    while idx < 68:
        require cd[idx] == bool(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    stor131.length.field_32 = Mask(224, 0, bool(mem[96]))
    Mask(224, 0, stor132.field_32) = Mask(224, 0, bool(mem[128]))
    idx = 0
    s = 96
    t = mem[64]
    while idx < 2:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x601d2982: mem[mem[64] len -mem[64] + 224]
}

function claim() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor133.length:
        mem[0] = 133
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 0
        call stor133[idx].field_512.processAccount(address arg1, bool arg2) with:
             gas gas_remaining wei
            args msg.sender, 0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _9 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_9] == bool(mem[_9])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function excludeFromAllDividends(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    emit 0xe884bfdd: arg1
    idx = 0
    while idx < stor133.length:
        mem[0] = 133
        mem[96] = 0x31e79db000000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        require ext_code.size(stor133[idx].field_512)
        call stor133[idx].field_512.excludeFromDividends(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getRewardTokens() {
    if stor133.length > test266151307():
        revert with 0, 65
    mem[96] = stor133.length
    mem[64] = (32 * stor133.length) + 128
    if stor133.length:
        mem[128 len 32 * stor133.length] = call.data[calldata.size len 32 * stor133.length]
    idx = 0
    while idx < stor133.length:
        mem[0] = 133
        if idx >= stor133.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor133[idx].field_768
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * stor133.length) + 128] = 32
    mem[(32 * stor133.length) + 160] = stor133.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor133.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor133.length) + -mem[64] + 192
}

function sub_425c1bbc(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1 % 16777216
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    if not stor133.length:
        emit 0xac1d61aa: 0, arg1 % 16777216
    else:
        if 0 >= stor133.length:
            revert with 0, 50
        emit 0xac1d61aa: stor133.field_768 % 16777216, arg1 % 16777216
    idx = 0
    while idx < stor133.length:
        mem[96] = 0x96da2ec000000000000000000000000000000000000000000000000000000000
        mem[100] = arg1 % 16777216
        require ext_code.size(stor133[idx].field_512)
        call stor133[idx].field_512.0x96da2ec0 with:
             gas gas_remaining wei
            args (arg1 % 16777216)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= stor133.length:
            revert with 0, 50
        mem[0] = 133
        stor133[idx].field_928 = arg1 % 16777216
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_4e750651(?) {
    if not stor133.length:
        return 0
    if not decimals:
        if 0 >= stor133.length:
            revert with 0, 50
        if uint256(stor133.field_1024) and 1 > -1 / uint256(stor133.field_1024):
            revert with 0, 17
        return uint256(stor133.field_1024)
    if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
        if 0 >= stor133.length:
            revert with 0, 50
        if uint256(stor133.field_1024) and 10^decimals > -1 / uint256(stor133.field_1024):
            revert with 0, 17
        return (uint256(stor133.field_1024) * 10^decimals)
    s = 10
    t = 1
    idx = decimals
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if 0 >= stor133.length:
        revert with 0, 50
    if uint256(stor133.field_1024) and s * t > -1 / uint256(stor133.field_1024):
        revert with 0, 17
    return (uint256(stor133.field_1024) * s * t)
}

function getTotalDividendsDistributed() {
    if stor133.length > test266151307():
        revert with 0, 65
    mem[96] = stor133.length
    mem[64] = (32 * stor133.length) + 128
    if not stor133.length:
        idx = 0
        while idx < stor133.length:
            mem[0] = 133
            staticcall stor133[idx].field_512.0x30bb4cff with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_31]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor133.length] = call.data[calldata.size len 32 * stor133.length]
        idx = 0
        while idx < stor133.length:
            mem[0] = 133
            staticcall stor133[idx].field_512.0x30bb4cff with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = mem[_33]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function setVersion(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    if bool(stor93.length):
        if bool(stor93.length) == uint255(stor93.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor93.length = 0
            idx = 0
            while (uint255(stor93.length) * 0.5) + 31 / 32 > idx:
                stor93[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor93.length = (2 * arg1.length) + 1
            if arg1.length <= 0:
                idx = 0
                while (uint255(stor93.length) * 0.5) + 31 / 32 > idx:
                    stor93[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor93.field_0) = mem[128]
                s = 1
                idx = 160
                while arg1.length + 128 > idx:
                    stor93[s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
                while (uint255(stor93.length) * 0.5) + 31 / 32 > idx:
                    stor93[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if bool(stor93.length) == stor93.length.field_1 < 32:
            revert with 0, 34
        if not arg1.length:
            stor93.length = 0
            idx = 0
            while stor93.length.field_1 + 31 / 32 > idx:
                stor93[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor93.length = (2 * arg1.length) + 1
            if arg1.length <= 0:
                idx = 0
                while stor93.length.field_1 + 31 / 32 > idx:
                    stor93[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor93.field_0) = mem[128]
                s = 1
                idx = 160
                while arg1.length + 128 > idx:
                    stor93[s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
                while stor93.length.field_1 + 31 / 32 > idx:
                    stor93[idx].field_0 = 0
                    idx = idx + 1
                    continue 
}

function name() {
    if bool(stor25.length):
        if bool(stor25.length) == uint255(stor25.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor25.length):
            if bool(stor25.length) == uint255(stor25.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor25.length):
                if 31 < uint255(stor25.length) * 0.5:
                    mem[128] = uint256(stor25.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor25.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor25[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor25.length), data=mem[128 len ceil32(uint255(stor25.length) * 0.5)])
                mem[128] = 256 * stor25.length.field_8
        else:
            if bool(stor25.length) == stor25.length.field_1 < 32:
                revert with 0, 34
            if stor25.length.field_1:
                if 31 < stor25.length.field_1:
                    mem[128] = uint256(stor25.field_0)
                    idx = 128
                    s = 0
                    while stor25.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor25[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor25.length), data=mem[128 len ceil32(uint255(stor25.length) * 0.5)])
                mem[128] = 256 * stor25.length.field_8
        mem[ceil32(uint255(stor25.length) * 0.5) + 192 len ceil32(uint255(stor25.length) * 0.5)] = mem[128 len ceil32(uint255(stor25.length) * 0.5)]
        if ceil32(uint255(stor25.length) * 0.5) > uint255(stor25.length) * 0.5:
            mem[(uint255(stor25.length) * 0.5) + ceil32(uint255(stor25.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor25.length), data=mem[128 len ceil32(uint255(stor25.length) * 0.5)], mem[(2 * ceil32(uint255(stor25.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor25.length) * 0.5)]), 
    if bool(stor25.length) == stor25.length.field_1 < 32:
        revert with 0, 34
    if bool(stor25.length):
        if bool(stor25.length) == uint255(stor25.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor25.length):
            if 31 < uint255(stor25.length) * 0.5:
                mem[128] = uint256(stor25.field_0)
                idx = 128
                s = 0
                while (uint255(stor25.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor25.length % 128, data=mem[128 len ceil32(stor25.length.field_1)])
            mem[128] = 256 * stor25.length.field_8
    else:
        if bool(stor25.length) == stor25.length.field_1 < 32:
            revert with 0, 34
        if stor25.length.field_1:
            if 31 < stor25.length.field_1:
                mem[128] = uint256(stor25.field_0)
                idx = 128
                s = 0
                while stor25.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor25[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor25.length % 128, data=mem[128 len ceil32(stor25.length.field_1)])
            mem[128] = 256 * stor25.length.field_8
    mem[ceil32(stor25.length.field_1) + 192 len ceil32(stor25.length.field_1)] = mem[128 len ceil32(stor25.length.field_1)]
    if ceil32(stor25.length.field_1) > stor25.length.field_1:
        mem[stor25.length.field_1 + ceil32(stor25.length.field_1) + 192] = 0
    return Array(len=stor25.length % 128, data=mem[128 len ceil32(stor25.length.field_1)], mem[(2 * ceil32(stor25.length.field_1)) + 192 len 2 * ceil32(stor25.length.field_1)]), 
}

function symbol() {
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor26.length):
                if 31 < uint255(stor26.length) * 0.5:
                    mem[128] = uint256(stor26.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor26.length), data=mem[128 len ceil32(uint255(stor26.length) * 0.5)])
                mem[128] = 256 * stor26.length.field_8
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if stor26.length.field_1:
                if 31 < stor26.length.field_1:
                    mem[128] = uint256(stor26.field_0)
                    idx = 128
                    s = 0
                    while stor26.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor26.length), data=mem[128 len ceil32(uint255(stor26.length) * 0.5)])
                mem[128] = 256 * stor26.length.field_8
        mem[ceil32(uint255(stor26.length) * 0.5) + 192 len ceil32(uint255(stor26.length) * 0.5)] = mem[128 len ceil32(uint255(stor26.length) * 0.5)]
        if ceil32(uint255(stor26.length) * 0.5) > uint255(stor26.length) * 0.5:
            mem[(uint255(stor26.length) * 0.5) + ceil32(uint255(stor26.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor26.length), data=mem[128 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor26.length) * 0.5)]), 
    if bool(stor26.length) == stor26.length.field_1 < 32:
        revert with 0, 34
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor26.length):
            if 31 < uint255(stor26.length) * 0.5:
                mem[128] = uint256(stor26.field_0)
                idx = 128
                s = 0
                while (uint255(stor26.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1)])
            mem[128] = 256 * stor26.length.field_8
    else:
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 0, 34
        if stor26.length.field_1:
            if 31 < stor26.length.field_1:
                mem[128] = uint256(stor26.field_0)
                idx = 128
                s = 0
                while stor26.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1)])
            mem[128] = 256 * stor26.length.field_8
    mem[ceil32(stor26.length.field_1) + 192 len ceil32(stor26.length.field_1)] = mem[128 len ceil32(stor26.length.field_1)]
    if ceil32(stor26.length.field_1) > stor26.length.field_1:
        mem[stor26.length.field_1 + ceil32(stor26.length.field_1) + 192] = 0
    return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 192 len 2 * ceil32(stor26.length.field_1)]), 
}

function getVersion() {
    if bool(stor93.length):
        if bool(stor93.length) == uint255(stor93.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor93.length):
            if bool(stor93.length) == uint255(stor93.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor93.length):
                if 31 < uint255(stor93.length) * 0.5:
                    mem[128] = uint256(stor93.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor93.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor93[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor93.length), data=mem[128 len ceil32(uint255(stor93.length) * 0.5)])
                mem[128] = 256 * stor93.length.field_8
        else:
            if bool(stor93.length) == stor93.length.field_1 < 32:
                revert with 0, 34
            if stor93.length.field_1:
                if 31 < stor93.length.field_1:
                    mem[128] = uint256(stor93.field_0)
                    idx = 128
                    s = 0
                    while stor93.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor93[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor93.length), data=mem[128 len ceil32(uint255(stor93.length) * 0.5)])
                mem[128] = 256 * stor93.length.field_8
        mem[ceil32(uint255(stor93.length) * 0.5) + 192 len ceil32(uint255(stor93.length) * 0.5)] = mem[128 len ceil32(uint255(stor93.length) * 0.5)]
        if ceil32(uint255(stor93.length) * 0.5) > uint255(stor93.length) * 0.5:
            mem[(uint255(stor93.length) * 0.5) + ceil32(uint255(stor93.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor93.length), data=mem[128 len ceil32(uint255(stor93.length) * 0.5)], mem[(2 * ceil32(uint255(stor93.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor93.length) * 0.5)]), 
    if bool(stor93.length) == stor93.length.field_1 < 32:
        revert with 0, 34
    if bool(stor93.length):
        if bool(stor93.length) == uint255(stor93.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor93.length):
            if 31 < uint255(stor93.length) * 0.5:
                mem[128] = uint256(stor93.field_0)
                idx = 128
                s = 0
                while (uint255(stor93.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor93[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor93.length % 128, data=mem[128 len ceil32(stor93.length.field_1)])
            mem[128] = 256 * stor93.length.field_8
    else:
        if bool(stor93.length) == stor93.length.field_1 < 32:
            revert with 0, 34
        if stor93.length.field_1:
            if 31 < stor93.length.field_1:
                mem[128] = uint256(stor93.field_0)
                idx = 128
                s = 0
                while stor93.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor93[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor93.length % 128, data=mem[128 len ceil32(stor93.length.field_1)])
            mem[128] = 256 * stor93.length.field_8
    mem[ceil32(stor93.length.field_1) + 192 len ceil32(stor93.length.field_1)] = mem[128 len ceil32(stor93.length.field_1)]
    if ceil32(stor93.length.field_1) > stor93.length.field_1:
        mem[stor93.length.field_1 + ceil32(stor93.length.field_1) + 192] = 0
    return Array(len=stor93.length % 128, data=mem[128 len ceil32(stor93.length.field_1)], mem[(2 * ceil32(stor93.length.field_1)) + 192 len 2 * ceil32(stor93.length.field_1)]), 
}

function sub_a74e1f11(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor26.length):
                if 31 >= uint255(stor26.length) * 0.5:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if stor26.length.field_1:
                if 31 >= stor26.length.field_1:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while stor26.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 'Don't use' << 184
        if msg.sender == stor121:
            stor128 = address(arg1)
            stor129 = address(arg2)
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 239] = 32
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 271] = mem[ceil32(uint255(stor26.length) * 0.5) + 192]
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 303 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])] = mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
        if ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor26.length) * 0.5) + 192]:
            revert with 0, 
                        32,
                        mem[ceil32(uint255(stor26.length) * 0.5) + 192],
                        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 303 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
        mem[mem[ceil32(uint255(stor26.length) * 0.5) + 192] + ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 303] = 0
        revert with 0, 
                    32,
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 271 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) + 32]
    if bool(stor26.length) == stor26.length.field_1 < 32:
        revert with 0, 34
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor26.length):
            if 31 >= uint255(stor26.length) * 0.5:
                mem[192] = 256 * stor26.length.field_8
            else:
                mem[192] = uint256(stor26.field_0)
                idx = 192
                s = 0
                while (uint255(stor26.length) * 0.5) + 160 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 0, 34
        if stor26.length.field_1:
            if 31 >= stor26.length.field_1:
                mem[192] = 256 * stor26.length.field_8
            else:
                mem[192] = uint256(stor26.field_0)
                idx = 192
                s = 0
                while stor26.length.field_1 + 160 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 'Don't use' << 184
    if msg.sender == stor121:
        stor128 = address(arg1)
        stor129 = address(arg2)
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 235] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 239] = 32
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 271] = mem[ceil32(stor26.length.field_1) + 192]
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 303 len ceil32(mem[ceil32(stor26.length.field_1) + 192])] = mem[ceil32(stor26.length.field_1) + 224 len ceil32(mem[ceil32(stor26.length.field_1) + 192])]
    if ceil32(mem[ceil32(stor26.length.field_1) + 192]) <= mem[ceil32(stor26.length.field_1) + 192]:
        revert with 0, 
                    32,
                    mem[ceil32(stor26.length.field_1) + 192],
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 303 len ceil32(mem[ceil32(stor26.length.field_1) + 192])]
    mem[mem[ceil32(stor26.length.field_1) + 192] + ceil32(stor26.length.field_1) + stor26.length.field_1 + 303] = 0
    revert with 0, 
                32,
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 271 len ceil32(mem[ceil32(stor26.length.field_1) + 192]) + 32]
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor26.length):
                if 31 >= uint255(stor26.length) * 0.5:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if stor26.length.field_1:
                if 31 >= stor26.length.field_1:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while stor26.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 'address(0)' << 176
        if arg1:
            emit MarketingWalletChanged(stor125, arg1);
            stor123[address(arg1)] = 1
            emit ExcludeFromFees(1, arg1);
            stor125 = arg1
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 236] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 240] = 32
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 272] = mem[ceil32(uint255(stor26.length) * 0.5) + 192]
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 304 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])] = mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
        if ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor26.length) * 0.5) + 192]:
            revert with 0, 
                        32,
                        mem[ceil32(uint255(stor26.length) * 0.5) + 192],
                        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 304 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
        mem[mem[ceil32(uint255(stor26.length) * 0.5) + 192] + ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 304] = 0
        revert with 0, 
                    32,
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 272 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) + 32]
    if bool(stor26.length) == stor26.length.field_1 < 32:
        revert with 0, 34
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor26.length):
            if 31 >= uint255(stor26.length) * 0.5:
                mem[192] = 256 * stor26.length.field_8
            else:
                mem[192] = uint256(stor26.field_0)
                idx = 192
                s = 0
                while (uint255(stor26.length) * 0.5) + 160 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 0, 34
        if stor26.length.field_1:
            if 31 >= stor26.length.field_1:
                mem[192] = 256 * stor26.length.field_8
            else:
                mem[192] = uint256(stor26.field_0)
                idx = 192
                s = 0
                while stor26.length.field_1 + 160 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 'address(0)' << 176
    if arg1:
        emit MarketingWalletChanged(stor125, arg1);
        stor123[address(arg1)] = 1
        emit ExcludeFromFees(1, arg1);
        stor125 = arg1
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 236] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 240] = 32
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 272] = mem[ceil32(stor26.length.field_1) + 192]
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 304 len ceil32(mem[ceil32(stor26.length.field_1) + 192])] = mem[ceil32(stor26.length.field_1) + 224 len ceil32(mem[ceil32(stor26.length.field_1) + 192])]
    if ceil32(mem[ceil32(stor26.length.field_1) + 192]) <= mem[ceil32(stor26.length.field_1) + 192]:
        revert with 0, 
                    32,
                    mem[ceil32(stor26.length.field_1) + 192],
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 304 len ceil32(mem[ceil32(stor26.length.field_1) + 192])]
    mem[mem[ceil32(stor26.length.field_1) + 192] + ceil32(stor26.length.field_1) + stor26.length.field_1 + 304] = 0
    revert with 0, 
                32,
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 272 len ceil32(mem[ceil32(stor26.length.field_1) + 192]) + 32]
}

function getAccountDividendsInfo(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor26.length):
                if 31 >= uint255(stor26.length) * 0.5:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if stor26.length.field_1:
                if 31 >= stor26.length.field_1:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while stor26.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 'ID too big' << 176
        if arg2 >= stor133.length:
            if floor32((uint255(stor26.length) * 0.5) + 43) > (uint255(stor26.length) * 0.5) + 12:
                revert with 0, 
                            32,
                            (uint255(stor26.length) * 0.5) + 12,
                            Mask(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 12, -(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 12) + 256, mem[192 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 12], 0, Mask(8 * floor32((uint255(stor26.length) * 0.5) + 43) + -(uint255(stor26.length) * 0.5) - 16, -(8 * floor32((uint255(stor26.length) * 0.5) + 43) + -(uint255(stor26.length) * 0.5) - 16) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 43) + -(uint255(stor26.length) * 0.5) - 16) - 256) << (8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 12) - 256,
                            Mask(8 * floor32((uint255(stor26.length) * 0.5) + 43) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 12, -(8 * floor32((uint255(stor26.length) * 0.5) + 43) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 12) + 256, 0) << (8 * floor32((uint255(stor26.length) * 0.5) + 43) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 12) - 256
            revert with 0, 
                        32,
                        (uint255(stor26.length) * 0.5) + 12,
                        mem[192 len ceil32(uint255(stor26.length) * 0.5)],
                        mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 12],
                        0,
                        Mask(8 * floor32((uint255(stor26.length) * 0.5) + 43) + -(uint255(stor26.length) * 0.5) - 16, -(8 * floor32((uint255(stor26.length) * 0.5) + 43) + -(uint255(stor26.length) * 0.5) - 16) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 43) + -(uint255(stor26.length) * 0.5) - 16) - 256
    else:
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor26.length):
                if 31 >= uint255(stor26.length) * 0.5:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if stor26.length.field_1:
                if 31 >= stor26.length.field_1:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while stor26.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
        mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 'ID too big' << 176
        if arg2 >= stor133.length:
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 304 len floor32(stor26.length.field_1 + 43)] = mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 12], 0, Mask(8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16, -(8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16) + 256, 32) << (8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16) - 256
            if floor32(stor26.length.field_1 + 43) <= stor26.length.field_1 + 12:
                revert with 0, 
                            32,
                            stor26.length.field_1 + 12,
                            mem[192 len ceil32(stor26.length.field_1)],
                            mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 12],
                            0,
                            Mask(8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16, -(8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16) + 256, 32) << (8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16) - 256
            mem[(2 * stor26.length.field_1) + ceil32(stor26.length.field_1) + 316] = 0
            revert with 0, 
                        32,
                        stor26.length.field_1 + 12,
                        Mask(8 * stor26.length.field_1 + 12, -(8 * stor26.length.field_1 + 12) + 256, mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 12], 0, Mask(8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16, -(8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16) + 256, 32) << (8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16) - 256) << (8 * stor26.length.field_1 + 12) - 256,
                        mem[ceil32(stor26.length.field_1) + (2 * stor26.length.field_1) + 316 len floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 12]
    ('lt', ('param', 'arg2'), ('stor', ('length', ('name', 'stor133', 133))))
    staticcall stor133[arg2].field_512.getAccount(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function sub_3430deaf(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    if uint16(arg1) < 1:
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor26.length):
                    if 31 >= uint255(stor26.length) * 0.5:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while (uint255(stor26.length) * 0.5) + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if stor26.length.field_1:
                    if 31 >= stor26.length.field_1:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while stor26.length.field_1 + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4d757374206265203e312026203c3d3130303000000000000000000000000000
            if uint16(arg1) < 1:
                if floor32((uint255(stor26.length) * 0.5) + 52) > (uint255(stor26.length) * 0.5) + 21:
                    revert with 0, 
                                32,
                                (uint255(stor26.length) * 0.5) + 21,
                                Mask(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 21, -(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 21) + 256, mem[192 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 21], 0, Mask(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25, -(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) - 256) << (8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 21) - 256,
                                Mask(8 * floor32((uint255(stor26.length) * 0.5) + 52) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 21, -(8 * floor32((uint255(stor26.length) * 0.5) + 52) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 21) + 256, 0) << (8 * floor32((uint255(stor26.length) * 0.5) + 52) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 21) - 256
                revert with 0, 
                            32,
                            (uint255(stor26.length) * 0.5) + 21,
                            mem[192 len ceil32(uint255(stor26.length) * 0.5)],
                            mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 21],
                            0,
                            Mask(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25, -(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) - 256
            if totalSupply and uint16(arg1) > -1 / totalSupply:
                revert with 0, 17
            emit MaxTxAmountChanged(maxTxAmount, totalSupply * uint16(arg1) / 1000);
            maxTxAmount = totalSupply * uint16(arg1) / 1000
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor26.length):
                if 31 >= uint255(stor26.length) * 0.5:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if stor26.length.field_1:
                if 31 >= stor26.length.field_1:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while stor26.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
        mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4d757374206265203e312026203c3d3130303000000000000000000000000000
        if uint16(arg1) >= 1:
            if totalSupply and uint16(arg1) > -1 / totalSupply:
                revert with 0, 17
            emit MaxTxAmountChanged(maxTxAmount, totalSupply * uint16(arg1) / 1000);
            maxTxAmount = totalSupply * uint16(arg1) / 1000
    else:
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor26.length):
                    if 31 >= uint255(stor26.length) * 0.5:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while (uint255(stor26.length) * 0.5) + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if stor26.length.field_1:
                    if 31 >= stor26.length.field_1:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while stor26.length.field_1 + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4d757374206265203e312026203c3d3130303000000000000000000000000000
            if uint16(arg1) > 1000:
                if floor32((uint255(stor26.length) * 0.5) + 52) > (uint255(stor26.length) * 0.5) + 21:
                    revert with 0, 
                                32,
                                (uint255(stor26.length) * 0.5) + 21,
                                Mask(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 21, -(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 21) + 256, mem[192 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 21], 0, Mask(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25, -(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) - 256) << (8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 21) - 256,
                                Mask(8 * floor32((uint255(stor26.length) * 0.5) + 52) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 21, -(8 * floor32((uint255(stor26.length) * 0.5) + 52) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 21) + 256, 0) << (8 * floor32((uint255(stor26.length) * 0.5) + 52) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 21) - 256
                revert with 0, 
                            32,
                            (uint255(stor26.length) * 0.5) + 21,
                            mem[192 len ceil32(uint255(stor26.length) * 0.5)],
                            mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 21],
                            0,
                            Mask(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25, -(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) - 256
            if totalSupply and uint16(arg1) > -1 / totalSupply:
                revert with 0, 17
            emit MaxTxAmountChanged(maxTxAmount, totalSupply * uint16(arg1) / 1000);
            maxTxAmount = totalSupply * uint16(arg1) / 1000
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor26.length):
                if 31 >= uint255(stor26.length) * 0.5:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if stor26.length.field_1:
                if 31 >= stor26.length.field_1:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while stor26.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
        mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4d757374206265203e312026203c3d3130303000000000000000000000000000
        if uint16(arg1) <= 1000:
            if totalSupply and uint16(arg1) > -1 / totalSupply:
                revert with 0, 17
            emit MaxTxAmountChanged(maxTxAmount, totalSupply * uint16(arg1) / 1000);
            maxTxAmount = totalSupply * uint16(arg1) / 1000
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 313 len floor32(stor26.length.field_1 + 52)] = mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 21], 0, Mask(8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25, -(8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25) + 256, 32) << (8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25) - 256
    if floor32(stor26.length.field_1 + 52) <= stor26.length.field_1 + 21:
        revert with 0, 
                    32,
                    stor26.length.field_1 + 21,
                    mem[192 len ceil32(stor26.length.field_1)],
                    mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 21],
                    0,
                    Mask(8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25, -(8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25) + 256, 32) << (8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25) - 256
    mem[(2 * stor26.length.field_1) + ceil32(stor26.length.field_1) + 334] = 0
    revert with 0, 
                32,
                stor26.length.field_1 + 21,
                Mask(8 * stor26.length.field_1 + 21, -(8 * stor26.length.field_1 + 21) + 256, mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 21], 0, Mask(8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25, -(8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25) + 256, 32) << (8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25) - 256) << (8 * stor26.length.field_1 + 21) - 256,
                mem[ceil32(stor26.length.field_1) + (2 * stor26.length.field_1) + 334 len floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 21]
}

function sub_9b405806(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    if uint16(arg1) < 1:
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor26.length):
                    if 31 >= uint255(stor26.length) * 0.5:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while (uint255(stor26.length) * 0.5) + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if stor26.length.field_1:
                    if 31 >= stor26.length.field_1:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while stor26.length.field_1 + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4d757374206265203e312026203c3d3130303000000000000000000000000000
            if uint16(arg1) < 1:
                if floor32((uint255(stor26.length) * 0.5) + 52) > (uint255(stor26.length) * 0.5) + 21:
                    revert with 0, 
                                32,
                                (uint255(stor26.length) * 0.5) + 21,
                                Mask(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 21, -(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 21) + 256, mem[192 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 21], 0, Mask(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25, -(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) - 256) << (8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 21) - 256,
                                Mask(8 * floor32((uint255(stor26.length) * 0.5) + 52) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 21, -(8 * floor32((uint255(stor26.length) * 0.5) + 52) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 21) + 256, 0) << (8 * floor32((uint255(stor26.length) * 0.5) + 52) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 21) - 256
                revert with 0, 
                            32,
                            (uint255(stor26.length) * 0.5) + 21,
                            mem[192 len ceil32(uint255(stor26.length) * 0.5)],
                            mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 21],
                            0,
                            Mask(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25, -(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) - 256
            if totalSupply and uint16(arg1) > -1 / totalSupply:
                revert with 0, 17
            emit MaxWalletAmountChanged(maxWalletAmount, totalSupply * uint16(arg1) / 1000);
            maxWalletAmount = totalSupply * uint16(arg1) / 1000
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor26.length):
                if 31 >= uint255(stor26.length) * 0.5:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if stor26.length.field_1:
                if 31 >= stor26.length.field_1:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while stor26.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
        mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4d757374206265203e312026203c3d3130303000000000000000000000000000
        if uint16(arg1) >= 1:
            if totalSupply and uint16(arg1) > -1 / totalSupply:
                revert with 0, 17
            emit MaxWalletAmountChanged(maxWalletAmount, totalSupply * uint16(arg1) / 1000);
            maxWalletAmount = totalSupply * uint16(arg1) / 1000
    else:
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor26.length):
                    if 31 >= uint255(stor26.length) * 0.5:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while (uint255(stor26.length) * 0.5) + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if stor26.length.field_1:
                    if 31 >= stor26.length.field_1:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while stor26.length.field_1 + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4d757374206265203e312026203c3d3130303000000000000000000000000000
            if uint16(arg1) > 1000:
                if floor32((uint255(stor26.length) * 0.5) + 52) > (uint255(stor26.length) * 0.5) + 21:
                    revert with 0, 
                                32,
                                (uint255(stor26.length) * 0.5) + 21,
                                Mask(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 21, -(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 21) + 256, mem[192 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 21], 0, Mask(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25, -(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) - 256) << (8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 21) - 256,
                                Mask(8 * floor32((uint255(stor26.length) * 0.5) + 52) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 21, -(8 * floor32((uint255(stor26.length) * 0.5) + 52) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 21) + 256, 0) << (8 * floor32((uint255(stor26.length) * 0.5) + 52) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 21) - 256
                revert with 0, 
                            32,
                            (uint255(stor26.length) * 0.5) + 21,
                            mem[192 len ceil32(uint255(stor26.length) * 0.5)],
                            mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 21],
                            0,
                            Mask(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25, -(8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 52) + -(uint255(stor26.length) * 0.5) - 25) - 256
            if totalSupply and uint16(arg1) > -1 / totalSupply:
                revert with 0, 17
            emit MaxWalletAmountChanged(maxWalletAmount, totalSupply * uint16(arg1) / 1000);
            maxWalletAmount = totalSupply * uint16(arg1) / 1000
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor26.length):
                if 31 >= uint255(stor26.length) * 0.5:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if stor26.length.field_1:
                if 31 >= stor26.length.field_1:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while stor26.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
        mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4d757374206265203e312026203c3d3130303000000000000000000000000000
        if uint16(arg1) <= 1000:
            if totalSupply and uint16(arg1) > -1 / totalSupply:
                revert with 0, 17
            emit MaxWalletAmountChanged(maxWalletAmount, totalSupply * uint16(arg1) / 1000);
            maxWalletAmount = totalSupply * uint16(arg1) / 1000
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 313 len floor32(stor26.length.field_1 + 52)] = mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 21], 0, Mask(8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25, -(8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25) + 256, 32) << (8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25) - 256
    if floor32(stor26.length.field_1 + 52) <= stor26.length.field_1 + 21:
        revert with 0, 
                    32,
                    stor26.length.field_1 + 21,
                    mem[192 len ceil32(stor26.length.field_1)],
                    mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 21],
                    0,
                    Mask(8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25, -(8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25) + 256, 32) << (8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25) - 256
    mem[(2 * stor26.length.field_1) + ceil32(stor26.length.field_1) + 334] = 0
    revert with 0, 
                32,
                stor26.length.field_1 + 21,
                Mask(8 * stor26.length.field_1 + 21, -(8 * stor26.length.field_1 + 21) + 256, mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 21], 0, Mask(8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25, -(8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25) + 256, 32) << (8 * floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 25) - 256) << (8 * stor26.length.field_1 + 21) - 256,
                mem[ceil32(stor26.length.field_1) + (2 * stor26.length.field_1) + 334 len floor32(stor26.length.field_1 + 52) + -stor26.length.field_1 - 21]
}

function setBuyFees(uint8 arg1, uint8 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    if arg1 > -arg2 + 255:
        revert with 0, 17
    if uint8(arg2 + arg1) > -arg3 + 255:
        revert with 0, 17
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor26.length):
                mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                    emit 0xcef6a011: 224, uint8(stor131.length), arg1 << 248, uint8(stor131.length), arg2 << 248, uint8(stor131.length), arg3, 3, 4355449, 0
                    stor131.length.field_8 = arg1
                    uint8(stor131.length) = arg2
                    stor131.length.field_16 = arg3
            else:
                if 31 >= uint255(stor26.length) * 0.5:
                    mem[192] = 256 * stor26.length.field_8
                    mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                    if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                        emit 0xcef6a011: 224, uint8(stor131.length), arg1 << 248, uint8(stor131.length), arg2 << 248, uint8(stor131.length), arg3, 3, 4355449, 0
                        stor131.length.field_8 = arg1
                        uint8(stor131.length) = arg2
                        stor131.length.field_16 = arg3
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                    if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                        emit 0xcef6a011: 224, uint8(stor131.length), arg1 << 248, uint8(stor131.length), arg2 << 248, uint8(stor131.length), arg3, 3, 0, 0
                        stor131.length.field_8 = arg1
                        uint8(stor131.length) = arg2
                        stor131.length.field_16 = arg3
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if not stor26.length.field_1:
                mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                    emit 0xcef6a011: 224, uint8(stor131.length), arg1 << 248, uint8(stor131.length), arg2 << 248, uint8(stor131.length), arg3, 3, 4355449, 0
                    stor131.length.field_8 = arg1
                    uint8(stor131.length) = arg2
                    stor131.length.field_16 = arg3
            else:
                if 31 >= stor26.length.field_1:
                    mem[192] = 256 * stor26.length.field_8
                    mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                    if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                        emit 0xcef6a011: 224, uint8(stor131.length), arg1 << 248, uint8(stor131.length), arg2 << 248, uint8(stor131.length), arg3, 3, 4355449, 0
                        stor131.length.field_8 = arg1
                        uint8(stor131.length) = arg2
                        stor131.length.field_16 = arg3
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while stor26.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                    if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                        emit 0xcef6a011: 224, uint8(stor131.length), arg1 << 248, uint8(stor131.length), arg2 << 248, uint8(stor131.length), arg3, 3, 0, 0
                        stor131.length.field_8 = arg1
                        uint8(stor131.length) = arg2
                        stor131.length.field_16 = arg3
        ('gt', ('mask_shl', 8, 0, 0, ('add', ('param', 'arg3'), ('mask_shl', 8, 0, 0, ('add', ('param', 'arg2'), ('param', 'arg1'))))), 25)
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 239] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 243] = 32
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 275] = mem[ceil32(uint255(stor26.length) * 0.5) + 192]
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 307 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])] = mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
        if ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor26.length) * 0.5) + 192]:
            revert with 0, 
                        32,
                        mem[ceil32(uint255(stor26.length) * 0.5) + 192],
                        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 307 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
        mem[mem[ceil32(uint255(stor26.length) * 0.5) + 192] + ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 307] = 0
        revert with 0, 
                    32,
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 275 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) + 32]
    if bool(stor26.length) == stor26.length.field_1 < 32:
        revert with 0, 34
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor26.length):
            mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
            if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                emit 0xcef6a011: 224, uint8(stor131.length), arg1 << 248, uint8(stor131.length), arg2 << 248, uint8(stor131.length), arg3, 3, 4355449, 0
                stor131.length.field_8 = arg1
                uint8(stor131.length) = arg2
                stor131.length.field_16 = arg3
        else:
            if 31 >= uint255(stor26.length) * 0.5:
                mem[192] = 256 * stor26.length.field_8
                mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                    emit 0xcef6a011: 224, uint8(stor131.length), arg1 << 248, uint8(stor131.length), arg2 << 248, uint8(stor131.length), arg3, 3, 4355449, 0
                    stor131.length.field_8 = arg1
                    uint8(stor131.length) = arg2
                    stor131.length.field_16 = arg3
            else:
                mem[192] = uint256(stor26.field_0)
                idx = 192
                s = 0
                while (uint255(stor26.length) * 0.5) + 160 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                    emit 0xcef6a011: 224, uint8(stor131.length), arg1 << 248, uint8(stor131.length), arg2 << 248, uint8(stor131.length), arg3, 3, 0, 0
                    stor131.length.field_8 = arg1
                    uint8(stor131.length) = arg2
                    stor131.length.field_16 = arg3
    else:
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 0, 34
        if not stor26.length.field_1:
            mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
            if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                emit 0xcef6a011: 224, uint8(stor131.length), arg1 << 248, uint8(stor131.length), arg2 << 248, uint8(stor131.length), arg3, 3, 4355449, 0
                stor131.length.field_8 = arg1
                uint8(stor131.length) = arg2
                stor131.length.field_16 = arg3
        else:
            if 31 >= stor26.length.field_1:
                mem[192] = 256 * stor26.length.field_8
                mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                    emit 0xcef6a011: 224, uint8(stor131.length), arg1 << 248, uint8(stor131.length), arg2 << 248, uint8(stor131.length), arg3, 3, 4355449, 0
                    stor131.length.field_8 = arg1
                    uint8(stor131.length) = arg2
                    stor131.length.field_16 = arg3
            else:
                mem[192] = uint256(stor26.field_0)
                idx = 192
                s = 0
                while stor26.length.field_1 + 160 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                    emit 0xcef6a011: 224, uint8(stor131.length), arg1 << 248, uint8(stor131.length), arg2 << 248, uint8(stor131.length), arg3, 3, 0, 0
                    stor131.length.field_8 = arg1
                    uint8(stor131.length) = arg2
                    stor131.length.field_16 = arg3
    ('gt', ('mask_shl', 8, 0, 0, ('add', ('param', 'arg3'), ('mask_shl', 8, 0, 0, ('add', ('param', 'arg2'), ('param', 'arg1'))))), 25)
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 239] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 243] = 32
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 275] = mem[ceil32(stor26.length.field_1) + 192]
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 307 len ceil32(mem[ceil32(stor26.length.field_1) + 192])] = mem[ceil32(stor26.length.field_1) + 224 len ceil32(mem[ceil32(stor26.length.field_1) + 192])]
    if ceil32(mem[ceil32(stor26.length.field_1) + 192]) <= mem[ceil32(stor26.length.field_1) + 192]:
        revert with 0, 
                    32,
                    mem[ceil32(stor26.length.field_1) + 192],
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 307 len ceil32(mem[ceil32(stor26.length.field_1) + 192])]
    mem[mem[ceil32(stor26.length.field_1) + 192] + ceil32(stor26.length.field_1) + stor26.length.field_1 + 307] = 0
    revert with 0, 
                32,
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 275 len ceil32(mem[ceil32(stor26.length.field_1) + 192]) + 32]
}

function setSellFees(uint8 arg1, uint8 arg2, uint8 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    if arg1 > -arg2 + 255:
        revert with 0, 17
    if uint8(arg2 + arg1) > -arg3 + 255:
        revert with 0, 17
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor26.length):
                mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                    emit 0xcef6a011: 224, uint8(stor132.field_0), arg1 << 248, uint8(stor132.field_0), arg2 << 248, uint8(stor132.field_0), arg3, 4, 1399155820, 0
                    uint8(stor132.field_8) = arg1
                    uint8(stor132.field_0) = arg2
                    uint8(stor132.field_16) = arg3
            else:
                if 31 >= uint255(stor26.length) * 0.5:
                    mem[192] = 256 * stor26.length.field_8
                    mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                    if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                        emit 0xcef6a011: 224, uint8(stor132.field_0), arg1 << 248, uint8(stor132.field_0), arg2 << 248, uint8(stor132.field_0), arg3, 4, 1399155820, 0
                        uint8(stor132.field_8) = arg1
                        uint8(stor132.field_0) = arg2
                        uint8(stor132.field_16) = arg3
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                    if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                        emit 0xcef6a011: 224, uint8(stor132.field_0), arg1 << 248, uint8(stor132.field_0), arg2 << 248, uint8(stor132.field_0), arg3, 4, 0, 0
                        uint8(stor132.field_8) = arg1
                        uint8(stor132.field_0) = arg2
                        uint8(stor132.field_16) = arg3
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if not stor26.length.field_1:
                mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                    emit 0xcef6a011: 224, uint8(stor132.field_0), arg1 << 248, uint8(stor132.field_0), arg2 << 248, uint8(stor132.field_0), arg3, 4, 1399155820, 0
                    uint8(stor132.field_8) = arg1
                    uint8(stor132.field_0) = arg2
                    uint8(stor132.field_16) = arg3
            else:
                if 31 >= stor26.length.field_1:
                    mem[192] = 256 * stor26.length.field_8
                    mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                    if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                        emit 0xcef6a011: 224, uint8(stor132.field_0), arg1 << 248, uint8(stor132.field_0), arg2 << 248, uint8(stor132.field_0), arg3, 4, 1399155820, 0
                        uint8(stor132.field_8) = arg1
                        uint8(stor132.field_0) = arg2
                        uint8(stor132.field_16) = arg3
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while stor26.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                    if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                        emit 0xcef6a011: 224, uint8(stor132.field_0), arg1 << 248, uint8(stor132.field_0), arg2 << 248, uint8(stor132.field_0), arg3, 4, 0, 0
                        uint8(stor132.field_8) = arg1
                        uint8(stor132.field_0) = arg2
                        uint8(stor132.field_16) = arg3
        ('gt', ('mask_shl', 8, 0, 0, ('add', ('param', 'arg3'), ('mask_shl', 8, 0, 0, ('add', ('param', 'arg2'), ('param', 'arg1'))))), 25)
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 239] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 243] = 32
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 275] = mem[ceil32(uint255(stor26.length) * 0.5) + 192]
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 307 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])] = mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
        if ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor26.length) * 0.5) + 192]:
            revert with 0, 
                        32,
                        mem[ceil32(uint255(stor26.length) * 0.5) + 192],
                        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 307 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
        mem[mem[ceil32(uint255(stor26.length) * 0.5) + 192] + ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 307] = 0
        revert with 0, 
                    32,
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 275 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) + 32]
    if bool(stor26.length) == stor26.length.field_1 < 32:
        revert with 0, 34
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor26.length):
            mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
            if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                emit 0xcef6a011: 224, uint8(stor132.field_0), arg1 << 248, uint8(stor132.field_0), arg2 << 248, uint8(stor132.field_0), arg3, 4, 1399155820, 0
                uint8(stor132.field_8) = arg1
                uint8(stor132.field_0) = arg2
                uint8(stor132.field_16) = arg3
        else:
            if 31 >= uint255(stor26.length) * 0.5:
                mem[192] = 256 * stor26.length.field_8
                mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                    emit 0xcef6a011: 224, uint8(stor132.field_0), arg1 << 248, uint8(stor132.field_0), arg2 << 248, uint8(stor132.field_0), arg3, 4, 1399155820, 0
                    uint8(stor132.field_8) = arg1
                    uint8(stor132.field_0) = arg2
                    uint8(stor132.field_16) = arg3
            else:
                mem[192] = uint256(stor26.field_0)
                idx = 192
                s = 0
                while (uint255(stor26.length) * 0.5) + 160 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                    emit 0xcef6a011: 224, uint8(stor132.field_0), arg1 << 248, uint8(stor132.field_0), arg2 << 248, uint8(stor132.field_0), arg3, 4, 0, 0
                    uint8(stor132.field_8) = arg1
                    uint8(stor132.field_0) = arg2
                    uint8(stor132.field_16) = arg3
    else:
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 0, 34
        if not stor26.length.field_1:
            mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
            if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                emit 0xcef6a011: 224, uint8(stor132.field_0), arg1 << 248, uint8(stor132.field_0), arg2 << 248, uint8(stor132.field_0), arg3, 4, 1399155820, 0
                uint8(stor132.field_8) = arg1
                uint8(stor132.field_0) = arg2
                uint8(stor132.field_16) = arg3
        else:
            if 31 >= stor26.length.field_1:
                mem[192] = 256 * stor26.length.field_8
                mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                    emit 0xcef6a011: 224, uint8(stor132.field_0), arg1 << 248, uint8(stor132.field_0), arg2 << 248, uint8(stor132.field_0), arg3, 4, 1399155820, 0
                    uint8(stor132.field_8) = arg1
                    uint8(stor132.field_0) = arg2
                    uint8(stor132.field_16) = arg3
            else:
                mem[192] = uint256(stor26.field_0)
                idx = 192
                s = 0
                while stor26.length.field_1 + 160 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x4665657320746f6f206869676800000000000000000000000000000000000000
                if uint8(arg3 + uint8(arg2 + arg1)) <= 25:
                    emit 0xcef6a011: 224, uint8(stor132.field_0), arg1 << 248, uint8(stor132.field_0), arg2 << 248, uint8(stor132.field_0), arg3, 4, 0, 0
                    uint8(stor132.field_8) = arg1
                    uint8(stor132.field_0) = arg2
                    uint8(stor132.field_16) = arg3
    ('gt', ('mask_shl', 8, 0, 0, ('add', ('param', 'arg3'), ('mask_shl', 8, 0, 0, ('add', ('param', 'arg2'), ('param', 'arg1'))))), 25)
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 239] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 243] = 32
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 275] = mem[ceil32(stor26.length.field_1) + 192]
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 307 len ceil32(mem[ceil32(stor26.length.field_1) + 192])] = mem[ceil32(stor26.length.field_1) + 224 len ceil32(mem[ceil32(stor26.length.field_1) + 192])]
    if ceil32(mem[ceil32(stor26.length.field_1) + 192]) <= mem[ceil32(stor26.length.field_1) + 192]:
        revert with 0, 
                    32,
                    mem[ceil32(stor26.length.field_1) + 192],
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 307 len ceil32(mem[ceil32(stor26.length.field_1) + 192])]
    mem[mem[ceil32(stor26.length.field_1) + 192] + ceil32(stor26.length.field_1) + stor26.length.field_1 + 307] = 0
    revert with 0, 
                32,
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 275 len ceil32(mem[ceil32(stor26.length.field_1) + 192]) + 32]
}

function sub_e18fbc1c(?) {
    require calldata.size - 4 >= 32
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor26.length):
                if 31 >= uint255(stor26.length) * 0.5:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if stor26.length.field_1:
                if 31 >= stor26.length.field_1:
                    mem[192] = 256 * stor26.length.field_8
                else:
                    mem[192] = uint256(stor26.field_0)
                    idx = 192
                    s = 0
                    while stor26.length.field_1 + 160 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 'ID too big' << 176
        if arg1 >= stor133.length:
            if floor32((uint255(stor26.length) * 0.5) + 43) > (uint255(stor26.length) * 0.5) + 12:
                revert with 0, 
                            32,
                            (uint255(stor26.length) * 0.5) + 12,
                            Mask(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 12, -(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 12) + 256, mem[192 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 12], 0, Mask(8 * floor32((uint255(stor26.length) * 0.5) + 43) + -(uint255(stor26.length) * 0.5) - 16, -(8 * floor32((uint255(stor26.length) * 0.5) + 43) + -(uint255(stor26.length) * 0.5) - 16) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 43) + -(uint255(stor26.length) * 0.5) - 16) - 256) << (8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 12) - 256,
                            Mask(8 * floor32((uint255(stor26.length) * 0.5) + 43) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 12, -(8 * floor32((uint255(stor26.length) * 0.5) + 43) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 12) + 256, 0) << (8 * floor32((uint255(stor26.length) * 0.5) + 43) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 12) - 256
            revert with 0, 
                        32,
                        (uint255(stor26.length) * 0.5) + 12,
                        mem[192 len ceil32(uint255(stor26.length) * 0.5)],
                        mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 12],
                        0,
                        Mask(8 * floor32((uint255(stor26.length) * 0.5) + 43) + -(uint255(stor26.length) * 0.5) - 16, -(8 * floor32((uint255(stor26.length) * 0.5) + 43) + -(uint255(stor26.length) * 0.5) - 16) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 43) + -(uint255(stor26.length) * 0.5) - 16) - 256
        if stor133[arg1].field_1280:
            if stor133[arg1].field_1280 == uint255(stor133[arg1].field_1280) * 0.5 < 32:
                revert with 0, 34
            if stor133[arg1].field_1280:
                if stor133[arg1].field_1280 == uint255(stor133[arg1].field_1280) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor133[arg1].field_1280):
                    if 31 >= uint255(stor133[arg1].field_1280) * 0.5:
                        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 268] = 256 * stor133[arg1].field_1288
                    else:
                        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 268] = stor[sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_0
                        idx = ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 268
                        s = 0
                        while ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + (uint255(stor133[arg1].field_1280) * 0.5) + 236 > idx:
                            mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor133[arg1].field_1280 == stor133[arg1].field_1281 < 32:
                    revert with 0, 34
                if stor133[arg1].field_1281:
                    if 31 >= stor133[arg1].field_1281:
                        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 268] = 256 * stor133[arg1].field_1288
                    else:
                        mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 268] = stor[sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_0
                        idx = ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 268
                        s = 0
                        while ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + stor133[arg1].field_1281 + 236 > idx:
                            mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if arg1 >= stor133.length:
                revert with 0, 50
            return Array(len=2 * Mask(256, -1, stor133[arg1].field_1280), data=mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 268 len ceil32(uint255(stor133[arg1].field_1280) * 0.5)]), 
                   stor133[arg1].field_0,
                   stor133[arg1].field_0,
                   stor133[arg1].field_512
        if stor133[arg1].field_1280 == stor133[arg1].field_1281 < 32:
            revert with 0, 34
        if stor133[arg1].field_1280:
            if stor133[arg1].field_1280 == uint255(stor133[arg1].field_1280) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor133[arg1].field_1280):
                if 31 >= uint255(stor133[arg1].field_1280) * 0.5:
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 268] = 256 * stor133[arg1].field_1288
                else:
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 268] = stor[sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_0
                    idx = ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 268
                    s = 0
                    while ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + (uint255(stor133[arg1].field_1280) * 0.5) + 236 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor133[arg1].field_1280 == stor133[arg1].field_1281 < 32:
                revert with 0, 34
            if stor133[arg1].field_1281:
                if 31 >= stor133[arg1].field_1281:
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 268] = 256 * stor133[arg1].field_1288
                else:
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 268] = stor[sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_0
                    idx = ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 268
                    s = 0
                    while ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + stor133[arg1].field_1281 + 236 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if arg1 >= stor133.length:
            revert with 0, 50
        return Array(len=stor133[arg1].field_1280, data=mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 268 len ceil32(stor133[arg1].field_1281)]), 
               stor133[arg1].field_0,
               stor133[arg1].field_0,
               stor133[arg1].field_512
    if bool(stor26.length) == stor26.length.field_1 < 32:
        revert with 0, 34
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor26.length):
            if 31 >= uint255(stor26.length) * 0.5:
                mem[192] = 256 * stor26.length.field_8
            else:
                mem[192] = uint256(stor26.field_0)
                idx = 192
                s = 0
                while (uint255(stor26.length) * 0.5) + 160 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor26.length) == stor26.length.field_1 < 32:
            revert with 0, 34
        if stor26.length.field_1:
            if 31 >= stor26.length.field_1:
                mem[192] = 256 * stor26.length.field_8
            else:
                mem[192] = uint256(stor26.field_0)
                idx = 192
                s = 0
                while stor26.length.field_1 + 160 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 'ID too big' << 176
    if arg1 >= stor133.length:
        mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 304 len floor32(stor26.length.field_1 + 43)] = mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 12], 0, Mask(8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16, -(8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16) + 256, 32) << (8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16) - 256
        if floor32(stor26.length.field_1 + 43) <= stor26.length.field_1 + 12:
            revert with 0, 
                        32,
                        stor26.length.field_1 + 12,
                        mem[192 len ceil32(stor26.length.field_1)],
                        mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 12],
                        0,
                        Mask(8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16, -(8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16) + 256, 32) << (8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16) - 256
        mem[(2 * stor26.length.field_1) + ceil32(stor26.length.field_1) + 316] = 0
        revert with 0, 
                    32,
                    stor26.length.field_1 + 12,
                    Mask(8 * stor26.length.field_1 + 12, -(8 * stor26.length.field_1 + 12) + 256, mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 12], 0, Mask(8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16, -(8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16) + 256, 32) << (8 * floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 16) - 256) << (8 * stor26.length.field_1 + 12) - 256,
                    mem[ceil32(stor26.length.field_1) + (2 * stor26.length.field_1) + 316 len floor32(stor26.length.field_1 + 43) + -stor26.length.field_1 - 12]
    if stor133[arg1].field_1280:
        if stor133[arg1].field_1280 == uint255(stor133[arg1].field_1280) * 0.5 < 32:
            revert with 0, 34
        if stor133[arg1].field_1280:
            if stor133[arg1].field_1280 == uint255(stor133[arg1].field_1280) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor133[arg1].field_1280):
                if 31 >= uint255(stor133[arg1].field_1280) * 0.5:
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 268] = 256 * stor133[arg1].field_1288
                else:
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 268] = stor[sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_0
                    idx = ceil32(stor26.length.field_1) + stor26.length.field_1 + 268
                    s = 0
                    while ceil32(stor26.length.field_1) + stor26.length.field_1 + (uint255(stor133[arg1].field_1280) * 0.5) + 236 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor133[arg1].field_1280 == stor133[arg1].field_1281 < 32:
                revert with 0, 34
            if stor133[arg1].field_1281:
                if 31 >= stor133[arg1].field_1281:
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 268] = 256 * stor133[arg1].field_1288
                else:
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 268] = stor[sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_0
                    idx = ceil32(stor26.length.field_1) + stor26.length.field_1 + 268
                    s = 0
                    while ceil32(stor26.length.field_1) + stor26.length.field_1 + stor133[arg1].field_1281 + 236 > idx:
                        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if arg1 >= stor133.length:
            revert with 0, 50
        return Array(len=2 * Mask(256, -1, stor133[arg1].field_1280), data=mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 268 len ceil32(uint255(stor133[arg1].field_1280) * 0.5)]), 
               stor133[arg1].field_0,
               stor133[arg1].field_0,
               stor133[arg1].field_512
    if stor133[arg1].field_1280 == stor133[arg1].field_1281 < 32:
        revert with 0, 34
    if stor133[arg1].field_1280:
        if stor133[arg1].field_1280 == uint255(stor133[arg1].field_1280) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor133[arg1].field_1280):
            if 31 >= uint255(stor133[arg1].field_1280) * 0.5:
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 268] = 256 * stor133[arg1].field_1288
            else:
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 268] = stor[sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_0
                idx = ceil32(stor26.length.field_1) + stor26.length.field_1 + 268
                s = 0
                while ceil32(stor26.length.field_1) + stor26.length.field_1 + (uint255(stor133[arg1].field_1280) * 0.5) + 236 > idx:
                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor133[arg1].field_1280 == stor133[arg1].field_1281 < 32:
            revert with 0, 34
        if stor133[arg1].field_1281:
            if 31 >= stor133[arg1].field_1281:
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 268] = 256 * stor133[arg1].field_1288
            else:
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 268] = stor[sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_0
                idx = ceil32(stor26.length.field_1) + stor26.length.field_1 + 268
                s = 0
                while ceil32(stor26.length.field_1) + stor26.length.field_1 + stor133[arg1].field_1281 + 236 > idx:
                    mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'stor133', 133) + 5)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if arg1 >= stor133.length:
        revert with 0, 50
    return Array(len=stor133[arg1].field_1280, data=mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 268 len ceil32(stor133[arg1].field_1281)]), 
           stor133[arg1].field_0,
           stor133[arg1].field_0,
           stor133[arg1].field_512
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    if swapPairAddress != arg1:
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor26.length):
                    if 31 >= uint255(stor26.length) * 0.5:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while (uint255(stor26.length) * 0.5) + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if stor26.length.field_1:
                    if 31 >= stor26.length.field_1:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while stor26.length.field_1 + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x43616e27742072656d6f76652070616972000000000000000000000000000000
            if swapPairAddress == arg1:
                if floor32((uint255(stor26.length) * 0.5) + 50) > (uint255(stor26.length) * 0.5) + 19:
                    revert with 0, 
                                32,
                                (uint255(stor26.length) * 0.5) + 19,
                                Mask(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 19, -(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 19) + 256, mem[192 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 19], 0, Mask(8 * floor32((uint255(stor26.length) * 0.5) + 50) + -(uint255(stor26.length) * 0.5) - 23, -(8 * floor32((uint255(stor26.length) * 0.5) + 50) + -(uint255(stor26.length) * 0.5) - 23) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 50) + -(uint255(stor26.length) * 0.5) - 23) - 256) << (8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 19) - 256,
                                Mask(8 * floor32((uint255(stor26.length) * 0.5) + 50) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 19, -(8 * floor32((uint255(stor26.length) * 0.5) + 50) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 19) + 256, 0) << (8 * floor32((uint255(stor26.length) * 0.5) + 50) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 19) - 256
                revert with 0, 
                            32,
                            (uint255(stor26.length) * 0.5) + 19,
                            mem[192 len ceil32(uint255(stor26.length) * 0.5)],
                            mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 19],
                            0,
                            Mask(8 * floor32((uint255(stor26.length) * 0.5) + 50) + -(uint255(stor26.length) * 0.5) - 23, -(8 * floor32((uint255(stor26.length) * 0.5) + 50) + -(uint255(stor26.length) * 0.5) - 23) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 50) + -(uint255(stor26.length) * 0.5) - 23) - 256
            stor124[address(arg1)] = uint8(arg2)
            emit SetAutomatedMarketMakerPair(arg2, arg1);
            if arg2:
                if owner != msg.sender:
                    revert with 0, 'Ownable: owner only'
                emit 0xe884bfdd: arg1
                idx = 0
                while idx < stor133.length:
                    mem[0] = 133
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 243] = 0x31e79db000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 247] = arg1
                    require ext_code.size(stor133[idx].field_512)
                    call stor133[idx].field_512.excludeFromDividends(address arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor26.length):
                    if 31 >= uint255(stor26.length) * 0.5:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while (uint255(stor26.length) * 0.5) + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if stor26.length.field_1:
                    if 31 >= stor26.length.field_1:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while stor26.length.field_1 + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x43616e27742072656d6f76652070616972000000000000000000000000000000
            if swapPairAddress == arg1:
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 311 len floor32(stor26.length.field_1 + 50)] = mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 19], 0, Mask(8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23, -(8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23) + 256, 32) << (8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23) - 256
                if floor32(stor26.length.field_1 + 50) <= stor26.length.field_1 + 19:
                    revert with 0, 
                                32,
                                stor26.length.field_1 + 19,
                                mem[192 len ceil32(stor26.length.field_1)],
                                mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 19],
                                0,
                                Mask(8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23, -(8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23) + 256, 32) << (8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23) - 256
                mem[(2 * stor26.length.field_1) + ceil32(stor26.length.field_1) + 330] = 0
                revert with 0, 
                            32,
                            stor26.length.field_1 + 19,
                            Mask(8 * stor26.length.field_1 + 19, -(8 * stor26.length.field_1 + 19) + 256, mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 19], 0, Mask(8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23, -(8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23) + 256, 32) << (8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23) - 256) << (8 * stor26.length.field_1 + 19) - 256,
                            mem[ceil32(stor26.length.field_1) + (2 * stor26.length.field_1) + 330 len floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 19]
            stor124[address(arg1)] = uint8(arg2)
            emit SetAutomatedMarketMakerPair(arg2, arg1);
            if arg2:
                if owner != msg.sender:
                    revert with 0, 'Ownable: owner only'
                emit 0xe884bfdd: arg1
                idx = 0
                while idx < stor133.length:
                    mem[0] = 133
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 243] = 0x31e79db000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 247] = arg1
                    require ext_code.size(stor133[idx].field_512)
                    call stor133[idx].field_512.excludeFromDividends(address arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    else:
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor26.length):
                    if 31 >= uint255(stor26.length) * 0.5:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while (uint255(stor26.length) * 0.5) + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if stor26.length.field_1:
                    if 31 >= stor26.length.field_1:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while stor26.length.field_1 + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 0x43616e27742072656d6f76652070616972000000000000000000000000000000
            if arg2 != 1:
                if floor32((uint255(stor26.length) * 0.5) + 50) > (uint255(stor26.length) * 0.5) + 19:
                    revert with 0, 
                                32,
                                (uint255(stor26.length) * 0.5) + 19,
                                Mask(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 19, -(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 19) + 256, mem[192 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 19], 0, Mask(8 * floor32((uint255(stor26.length) * 0.5) + 50) + -(uint255(stor26.length) * 0.5) - 23, -(8 * floor32((uint255(stor26.length) * 0.5) + 50) + -(uint255(stor26.length) * 0.5) - 23) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 50) + -(uint255(stor26.length) * 0.5) - 23) - 256) << (8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 19) - 256,
                                Mask(8 * floor32((uint255(stor26.length) * 0.5) + 50) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 19, -(8 * floor32((uint255(stor26.length) * 0.5) + 50) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 19) + 256, 0) << (8 * floor32((uint255(stor26.length) * 0.5) + 50) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 19) - 256
                revert with 0, 
                            32,
                            (uint255(stor26.length) * 0.5) + 19,
                            mem[192 len ceil32(uint255(stor26.length) * 0.5)],
                            mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 19],
                            0,
                            Mask(8 * floor32((uint255(stor26.length) * 0.5) + 50) + -(uint255(stor26.length) * 0.5) - 23, -(8 * floor32((uint255(stor26.length) * 0.5) + 50) + -(uint255(stor26.length) * 0.5) - 23) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 50) + -(uint255(stor26.length) * 0.5) - 23) - 256
            stor124[address(arg1)] = uint8(arg2)
            emit SetAutomatedMarketMakerPair(arg2, arg1);
            if arg2:
                if owner != msg.sender:
                    revert with 0, 'Ownable: owner only'
                emit 0xe884bfdd: arg1
                idx = 0
                while idx < stor133.length:
                    mem[0] = 133
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 243] = 0x31e79db000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 247] = arg1
                    require ext_code.size(stor133[idx].field_512)
                    call stor133[idx].field_512.excludeFromDividends(address arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor26.length):
                    if 31 >= uint255(stor26.length) * 0.5:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while (uint255(stor26.length) * 0.5) + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if stor26.length.field_1:
                    if 31 >= stor26.length.field_1:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while stor26.length.field_1 + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 0x43616e27742072656d6f76652070616972000000000000000000000000000000
            if arg2 != 1:
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 311 len floor32(stor26.length.field_1 + 50)] = mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 19], 0, Mask(8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23, -(8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23) + 256, 32) << (8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23) - 256
                if floor32(stor26.length.field_1 + 50) <= stor26.length.field_1 + 19:
                    revert with 0, 
                                32,
                                stor26.length.field_1 + 19,
                                mem[192 len ceil32(stor26.length.field_1)],
                                mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 19],
                                0,
                                Mask(8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23, -(8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23) + 256, 32) << (8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23) - 256
                mem[(2 * stor26.length.field_1) + ceil32(stor26.length.field_1) + 330] = 0
                revert with 0, 
                            32,
                            stor26.length.field_1 + 19,
                            Mask(8 * stor26.length.field_1 + 19, -(8 * stor26.length.field_1 + 19) + 256, mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 19], 0, Mask(8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23, -(8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23) + 256, 32) << (8 * floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 23) - 256) << (8 * stor26.length.field_1 + 19) - 256,
                            mem[ceil32(stor26.length.field_1) + (2 * stor26.length.field_1) + 330 len floor32(stor26.length.field_1 + 50) + -stor26.length.field_1 - 19]
            stor124[address(arg1)] = uint8(arg2)
            emit SetAutomatedMarketMakerPair(arg2, arg1);
            if arg2:
                if owner != msg.sender:
                    revert with 0, 'Ownable: owner only'
                emit 0xe884bfdd: arg1
                idx = 0
                while idx < stor133.length:
                    mem[0] = 133
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 243] = 0x31e79db000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 247] = arg1
                    require ext_code.size(stor133[idx].field_512)
                    call stor133[idx].field_512.excludeFromDividends(address arg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
}

function sub_36472df3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    if not decimals:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        if arg1 < totalSupply / 10^6:
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor26.length):
                    if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor26.length):
                        if 31 >= uint255(stor26.length) * 0.5:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            s = 0
                            while (uint255(stor26.length) * 0.5) + 160 > idx:
                                mem[idx + 32] = stor26[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor26.length) == stor26.length.field_1 < 32:
                        revert with 0, 34
                    if stor26.length.field_1:
                        if 31 >= stor26.length.field_1:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            s = 0
                            while stor26.length.field_1 + 160 > idx:
                                mem[idx + 32] = stor26[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 'Must be >0.0001% & <0.1% supply'
                if arg1 >= totalSupply / 10^6:
                    emit 0xa67fbc2e: sub_7407e4a6, arg1
                    sub_7407e4a6 = arg1
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 261] = 32
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 293] = mem[ceil32(uint255(stor26.length) * 0.5) + 192]
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])] = mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor26.length) * 0.5) + 192]:
                    revert with 0, 
                                32,
                                mem[ceil32(uint255(stor26.length) * 0.5) + 192],
                                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
                mem[mem[ceil32(uint255(stor26.length) * 0.5) + 192] + ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325] = 0
                revert with 0, 
                            32,
                            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 293 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) + 32]
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor26.length):
                    if 31 >= uint255(stor26.length) * 0.5:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while (uint255(stor26.length) * 0.5) + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if stor26.length.field_1:
                    if 31 >= stor26.length.field_1:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while stor26.length.field_1 + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 'Must be >0.0001% & <0.1% supply'
            if arg1 >= totalSupply / 10^6:
                emit 0xa67fbc2e: sub_7407e4a6, arg1
                sub_7407e4a6 = arg1
        else:
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor26.length):
                    if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor26.length):
                        if 31 >= uint255(stor26.length) * 0.5:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            s = 0
                            while (uint255(stor26.length) * 0.5) + 160 > idx:
                                mem[idx + 32] = stor26[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor26.length) == stor26.length.field_1 < 32:
                        revert with 0, 34
                    if stor26.length.field_1:
                        if 31 >= stor26.length.field_1:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            s = 0
                            while stor26.length.field_1 + 160 > idx:
                                mem[idx + 32] = stor26[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 'Must be >0.0001% & <0.1% supply'
                if arg1 <= totalSupply / 1000:
                    emit 0xa67fbc2e: sub_7407e4a6, arg1
                    sub_7407e4a6 = arg1
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 261] = 32
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 293] = mem[ceil32(uint255(stor26.length) * 0.5) + 192]
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])] = mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
                if ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor26.length) * 0.5) + 192]:
                    revert with 0, 
                                32,
                                mem[ceil32(uint255(stor26.length) * 0.5) + 192],
                                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
                mem[mem[ceil32(uint255(stor26.length) * 0.5) + 192] + ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325] = 0
                revert with 0, 
                            32,
                            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 293 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) + 32]
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor26.length):
                    if 31 >= uint255(stor26.length) * 0.5:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while (uint255(stor26.length) * 0.5) + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if stor26.length.field_1:
                    if 31 >= stor26.length.field_1:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while stor26.length.field_1 + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 'Must be >0.0001% & <0.1% supply'
            if arg1 <= totalSupply / 1000:
                emit 0xa67fbc2e: sub_7407e4a6, arg1
                sub_7407e4a6 = arg1
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if arg1 and 10^decimals > -1 / arg1:
                revert with 0, 17
            if arg1 * 10^decimals < totalSupply / 10^6:
                if bool(stor26.length):
                    if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor26.length):
                        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor26.length):
                            if 31 >= uint255(stor26.length) * 0.5:
                                mem[192] = 256 * stor26.length.field_8
                            else:
                                mem[192] = uint256(stor26.field_0)
                                idx = 192
                                s = 0
                                while (uint255(stor26.length) * 0.5) + 160 > idx:
                                    mem[idx + 32] = stor26[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor26.length) == stor26.length.field_1 < 32:
                            revert with 0, 34
                        if stor26.length.field_1:
                            if 31 >= stor26.length.field_1:
                                mem[192] = 256 * stor26.length.field_8
                            else:
                                mem[192] = uint256(stor26.field_0)
                                idx = 192
                                s = 0
                                while stor26.length.field_1 + 160 > idx:
                                    mem[idx + 32] = stor26[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 'Must be >0.0001% & <0.1% supply'
                    if arg1 * 10^decimals >= totalSupply / 10^6:
                        emit 0xa67fbc2e: sub_7407e4a6, arg1 * 10^decimals
                        sub_7407e4a6 = arg1 * 10^decimals
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 261] = 32
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 293] = mem[ceil32(uint255(stor26.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])] = mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor26.length) * 0.5) + 192]:
                        revert with 0, 
                                    32,
                                    mem[ceil32(uint255(stor26.length) * 0.5) + 192],
                                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
                    mem[mem[ceil32(uint255(stor26.length) * 0.5) + 192] + ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325] = 0
                    revert with 0, 
                                32,
                                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 293 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) + 32]
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor26.length):
                    if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor26.length):
                        if 31 >= uint255(stor26.length) * 0.5:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            s = 0
                            while (uint255(stor26.length) * 0.5) + 160 > idx:
                                mem[idx + 32] = stor26[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor26.length) == stor26.length.field_1 < 32:
                        revert with 0, 34
                    if stor26.length.field_1:
                        if 31 >= stor26.length.field_1:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            s = 0
                            while stor26.length.field_1 + 160 > idx:
                                mem[idx + 32] = stor26[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 'Must be >0.0001% & <0.1% supply'
                if arg1 * 10^decimals >= totalSupply / 10^6:
                    emit 0xa67fbc2e: sub_7407e4a6, arg1 * 10^decimals
                    sub_7407e4a6 = arg1 * 10^decimals
            else:
                if bool(stor26.length):
                    if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor26.length):
                        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor26.length):
                            if 31 >= uint255(stor26.length) * 0.5:
                                mem[192] = 256 * stor26.length.field_8
                            else:
                                mem[192] = uint256(stor26.field_0)
                                idx = 192
                                s = 0
                                while (uint255(stor26.length) * 0.5) + 160 > idx:
                                    mem[idx + 32] = stor26[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if bool(stor26.length) == stor26.length.field_1 < 32:
                            revert with 0, 34
                        if stor26.length.field_1:
                            if 31 >= stor26.length.field_1:
                                mem[192] = 256 * stor26.length.field_8
                            else:
                                mem[192] = uint256(stor26.field_0)
                                idx = 192
                                s = 0
                                while stor26.length.field_1 + 160 > idx:
                                    mem[idx + 32] = stor26[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 'Must be >0.0001% & <0.1% supply'
                    if arg1 * 10^decimals <= totalSupply / 1000:
                        emit 0xa67fbc2e: sub_7407e4a6, arg1 * 10^decimals
                        sub_7407e4a6 = arg1 * 10^decimals
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 261] = 32
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 293] = mem[ceil32(uint255(stor26.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])] = mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor26.length) * 0.5) + 192]:
                        revert with 0, 
                                    32,
                                    mem[ceil32(uint255(stor26.length) * 0.5) + 192],
                                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
                    mem[mem[ceil32(uint255(stor26.length) * 0.5) + 192] + ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325] = 0
                    revert with 0, 
                                32,
                                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 293 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) + 32]
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor26.length):
                    if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor26.length):
                        if 31 >= uint255(stor26.length) * 0.5:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            s = 0
                            while (uint255(stor26.length) * 0.5) + 160 > idx:
                                mem[idx + 32] = stor26[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor26.length) == stor26.length.field_1 < 32:
                        revert with 0, 34
                    if stor26.length.field_1:
                        if 31 >= stor26.length.field_1:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            s = 0
                            while stor26.length.field_1 + 160 > idx:
                                mem[idx + 32] = stor26[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 'Must be >0.0001% & <0.1% supply'
                if arg1 * 10^decimals <= totalSupply / 1000:
                    emit 0xa67fbc2e: sub_7407e4a6, arg1 * 10^decimals
                    sub_7407e4a6 = arg1 * 10^decimals
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg1 and s * t > -1 / arg1:
                revert with 0, 17
            if arg1 * s * t < totalSupply / 10^6:
                if bool(stor26.length):
                    if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor26.length):
                        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor26.length):
                            if 31 >= uint255(stor26.length) * 0.5:
                                mem[192] = 256 * stor26.length.field_8
                            else:
                                mem[192] = uint256(stor26.field_0)
                                idx = 192
                                u = 0
                                while (uint255(stor26.length) * 0.5) + 160 > idx:
                                    mem[idx + 32] = stor26[u].field_256
                                    idx = idx + 32
                                    u = u + 1
                                    continue 
                    else:
                        if bool(stor26.length) == stor26.length.field_1 < 32:
                            revert with 0, 34
                        if stor26.length.field_1:
                            if 31 >= stor26.length.field_1:
                                mem[192] = 256 * stor26.length.field_8
                            else:
                                mem[192] = uint256(stor26.field_0)
                                idx = 192
                                u = 0
                                while stor26.length.field_1 + 160 > idx:
                                    mem[idx + 32] = stor26[u].field_256
                                    idx = idx + 32
                                    u = u + 1
                                    continue 
                    mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 'Must be >0.0001% & <0.1% supply'
                    if arg1 * s * t >= totalSupply / 10^6:
                        emit 0xa67fbc2e: sub_7407e4a6, arg1 * s * t
                        sub_7407e4a6 = arg1 * s * t
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 261] = 32
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 293] = mem[ceil32(uint255(stor26.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])] = mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor26.length) * 0.5) + 192]:
                        revert with 0, 
                                    32,
                                    mem[ceil32(uint255(stor26.length) * 0.5) + 192],
                                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
                    mem[mem[ceil32(uint255(stor26.length) * 0.5) + 192] + ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325] = 0
                    revert with 0, 
                                32,
                                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 293 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) + 32]
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor26.length):
                    if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor26.length):
                        if 31 >= uint255(stor26.length) * 0.5:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            u = 0
                            while (uint255(stor26.length) * 0.5) + 160 > idx:
                                mem[idx + 32] = stor26[u].field_256
                                idx = idx + 32
                                u = u + 1
                                continue 
                else:
                    if bool(stor26.length) == stor26.length.field_1 < 32:
                        revert with 0, 34
                    if stor26.length.field_1:
                        if 31 >= stor26.length.field_1:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            u = 0
                            while stor26.length.field_1 + 160 > idx:
                                mem[idx + 32] = stor26[u].field_256
                                idx = idx + 32
                                u = u + 1
                                continue 
                mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 'Must be >0.0001% & <0.1% supply'
                if arg1 * s * t >= totalSupply / 10^6:
                    emit 0xa67fbc2e: sub_7407e4a6, arg1 * s * t
                    sub_7407e4a6 = arg1 * s * t
            else:
                if bool(stor26.length):
                    if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor26.length):
                        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor26.length):
                            if 31 >= uint255(stor26.length) * 0.5:
                                mem[192] = 256 * stor26.length.field_8
                            else:
                                mem[192] = uint256(stor26.field_0)
                                idx = 192
                                u = 0
                                while (uint255(stor26.length) * 0.5) + 160 > idx:
                                    mem[idx + 32] = stor26[u].field_256
                                    idx = idx + 32
                                    u = u + 1
                                    continue 
                    else:
                        if bool(stor26.length) == stor26.length.field_1 < 32:
                            revert with 0, 34
                        if stor26.length.field_1:
                            if 31 >= stor26.length.field_1:
                                mem[192] = 256 * stor26.length.field_8
                            else:
                                mem[192] = uint256(stor26.field_0)
                                idx = 192
                                u = 0
                                while stor26.length.field_1 + 160 > idx:
                                    mem[idx + 32] = stor26[u].field_256
                                    idx = idx + 32
                                    u = u + 1
                                    continue 
                    mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = 'Must be >0.0001% & <0.1% supply'
                    if arg1 * s * t <= totalSupply / 1000:
                        emit 0xa67fbc2e: sub_7407e4a6, arg1 * s * t
                        sub_7407e4a6 = arg1 * s * t
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 261] = 32
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 293] = mem[ceil32(uint255(stor26.length) * 0.5) + 192]
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])] = mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
                    if ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) <= mem[ceil32(uint255(stor26.length) * 0.5) + 192]:
                        revert with 0, 
                                    32,
                                    mem[ceil32(uint255(stor26.length) * 0.5) + 192],
                                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192])]
                    mem[mem[ceil32(uint255(stor26.length) * 0.5) + 192] + ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 325] = 0
                    revert with 0, 
                                32,
                                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 293 len ceil32(mem[ceil32(uint255(stor26.length) * 0.5) + 192]) + 32]
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor26.length):
                    if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor26.length):
                        if 31 >= uint255(stor26.length) * 0.5:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            u = 0
                            while (uint255(stor26.length) * 0.5) + 160 > idx:
                                mem[idx + 32] = stor26[u].field_256
                                idx = idx + 32
                                u = u + 1
                                continue 
                else:
                    if bool(stor26.length) == stor26.length.field_1 < 32:
                        revert with 0, 34
                    if stor26.length.field_1:
                        if 31 >= stor26.length.field_1:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            u = 0
                            while stor26.length.field_1 + 160 > idx:
                                mem[idx + 32] = stor26[u].field_256
                                idx = idx + 32
                                u = u + 1
                                continue 
                mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = 'Must be >0.0001% & <0.1% supply'
                if arg1 * s * t <= totalSupply / 1000:
                    emit 0xa67fbc2e: sub_7407e4a6, arg1 * s * t
                    sub_7407e4a6 = arg1 * s * t
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 257] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 261] = 32
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 293] = mem[ceil32(stor26.length.field_1) + 192]
    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 325 len ceil32(mem[ceil32(stor26.length.field_1) + 192])] = mem[ceil32(stor26.length.field_1) + 224 len ceil32(mem[ceil32(stor26.length.field_1) + 192])]
    if ceil32(mem[ceil32(stor26.length.field_1) + 192]) <= mem[ceil32(stor26.length.field_1) + 192]:
        revert with 0, 
                    32,
                    mem[ceil32(stor26.length.field_1) + 192],
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 325 len ceil32(mem[ceil32(stor26.length.field_1) + 192])]
    mem[mem[ceil32(stor26.length.field_1) + 192] + ceil32(stor26.length.field_1) + stor26.length.field_1 + 325] = 0
    revert with 0, 
                32,
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 293 len ceil32(mem[ceil32(stor26.length.field_1) + 192]) + 32]
}

function updateMinimumBalanceForDividends(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: owner only'
    if not decimals:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor26.length):
                    if 31 >= uint255(stor26.length) * 0.5:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while (uint255(stor26.length) * 0.5) + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if stor26.length.field_1:
                    if 31 >= stor26.length.field_1:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while stor26.length.field_1 + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = '>0.001% supply' << 144
            if arg1 > totalSupply / 100000:
                if floor32((uint255(stor26.length) * 0.5) + 47) > (uint255(stor26.length) * 0.5) + 16:
                    revert with 0, 
                                32,
                                (uint255(stor26.length) * 0.5) + 16,
                                Mask(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 16, -(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 16) + 256, mem[192 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 16], 0, Mask(8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20, -(8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20) - 256) << (8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 16) - 256,
                                Mask(8 * floor32((uint255(stor26.length) * 0.5) + 47) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 16, -(8 * floor32((uint255(stor26.length) * 0.5) + 47) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 16) + 256, 0) << (8 * floor32((uint255(stor26.length) * 0.5) + 47) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 16) - 256
                revert with 0, 
                            32,
                            (uint255(stor26.length) * 0.5) + 16,
                            mem[192 len ceil32(uint255(stor26.length) * 0.5)],
                            mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 16],
                            0,
                            Mask(8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20, -(8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20) - 256
            if not stor133.length:
                emit 0x78f67509: 0, arg1
            else:
                if not decimals:
                    if 0 >= stor133.length:
                        revert with 0, 50
                    if uint256(stor133.field_1024) and 1 > -1 / uint256(stor133.field_1024):
                        revert with 0, 17
                    emit 0x78f67509: uint256(stor133.field_1024), arg1
                else:
                    if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                        if 0 >= stor133.length:
                            revert with 0, 50
                        if uint256(stor133.field_1024) and 10^decimals > -1 / uint256(stor133.field_1024):
                            revert with 0, 17
                        emit 0x78f67509: uint256(stor133.field_1024) * 10^decimals, arg1
                    else:
                        s = 10
                        t = 1
                        idx = decimals
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if 0 >= stor133.length:
                            revert with 0, 50
                        if uint256(stor133.field_1024) and s * t > -1 / uint256(stor133.field_1024):
                            revert with 0, 17
                        emit 0x78f67509: uint256(stor133.field_1024) * s * t, arg1
            idx = 0
            while idx < stor133.length:
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 240] = 0x3b364da800000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 244] = arg1
                require ext_code.size(stor133[idx].field_512)
                call stor133[idx].field_512.0x3b364da8 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= stor133.length:
                    revert with 0, 50
                mem[0] = 133
                stor133[idx].field_1024 = arg1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if bool(stor26.length) == stor26.length.field_1 < 32:
                revert with 0, 34
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor26.length):
                    if 31 >= uint255(stor26.length) * 0.5:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while (uint255(stor26.length) * 0.5) + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if stor26.length.field_1:
                    if 31 >= stor26.length.field_1:
                        mem[192] = 256 * stor26.length.field_8
                    else:
                        mem[192] = uint256(stor26.field_0)
                        idx = 192
                        s = 0
                        while stor26.length.field_1 + 160 > idx:
                            mem[idx + 32] = stor26[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = '>0.001% supply' << 144
            if arg1 > totalSupply / 100000:
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 308 len floor32(stor26.length.field_1 + 47)] = mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 16], 0, Mask(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20, -(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) + 256, 32) << (8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) - 256
                if floor32(stor26.length.field_1 + 47) <= stor26.length.field_1 + 16:
                    revert with 0, 
                                32,
                                stor26.length.field_1 + 16,
                                mem[192 len ceil32(stor26.length.field_1)],
                                mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 16],
                                0,
                                Mask(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20, -(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) + 256, 32) << (8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) - 256
                mem[(2 * stor26.length.field_1) + ceil32(stor26.length.field_1) + 324] = 0
                revert with 0, 
                            32,
                            stor26.length.field_1 + 16,
                            Mask(8 * stor26.length.field_1 + 16, -(8 * stor26.length.field_1 + 16) + 256, mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 16], 0, Mask(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20, -(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) + 256, 32) << (8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) - 256) << (8 * stor26.length.field_1 + 16) - 256,
                            mem[ceil32(stor26.length.field_1) + (2 * stor26.length.field_1) + 324 len floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 16]
            if not stor133.length:
                emit 0x78f67509: 0, arg1
            else:
                if not decimals:
                    if 0 >= stor133.length:
                        revert with 0, 50
                    if uint256(stor133.field_1024) and 1 > -1 / uint256(stor133.field_1024):
                        revert with 0, 17
                    emit 0x78f67509: uint256(stor133.field_1024), arg1
                else:
                    if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                        if 0 >= stor133.length:
                            revert with 0, 50
                        if uint256(stor133.field_1024) and 10^decimals > -1 / uint256(stor133.field_1024):
                            revert with 0, 17
                        emit 0x78f67509: uint256(stor133.field_1024) * 10^decimals, arg1
                    else:
                        s = 10
                        t = 1
                        idx = decimals
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if 0 >= stor133.length:
                            revert with 0, 50
                        if uint256(stor133.field_1024) and s * t > -1 / uint256(stor133.field_1024):
                            revert with 0, 17
                        emit 0x78f67509: uint256(stor133.field_1024) * s * t, arg1
            idx = 0
            while idx < stor133.length:
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 240] = 0x3b364da800000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 244] = arg1
                require ext_code.size(stor133[idx].field_512)
                call stor133[idx].field_512.0x3b364da8 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= stor133.length:
                    revert with 0, 50
                mem[0] = 133
                stor133[idx].field_1024 = arg1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if arg1 and 10^decimals > -1 / arg1:
                revert with 0, 17
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor26.length):
                    if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor26.length):
                        if 31 >= uint255(stor26.length) * 0.5:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            s = 0
                            while (uint255(stor26.length) * 0.5) + 160 > idx:
                                mem[idx + 32] = stor26[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor26.length) == stor26.length.field_1 < 32:
                        revert with 0, 34
                    if stor26.length.field_1:
                        if 31 >= stor26.length.field_1:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            s = 0
                            while stor26.length.field_1 + 160 > idx:
                                mem[idx + 32] = stor26[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = '>0.001% supply' << 144
                if arg1 * 10^decimals > totalSupply / 100000:
                    if floor32((uint255(stor26.length) * 0.5) + 47) > (uint255(stor26.length) * 0.5) + 16:
                        revert with 0, 
                                    32,
                                    (uint255(stor26.length) * 0.5) + 16,
                                    Mask(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 16, -(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 16) + 256, mem[192 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 16], 0, Mask(8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20, -(8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20) - 256) << (8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 16) - 256,
                                    Mask(8 * floor32((uint255(stor26.length) * 0.5) + 47) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 16, -(8 * floor32((uint255(stor26.length) * 0.5) + 47) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 16) + 256, 0) << (8 * floor32((uint255(stor26.length) * 0.5) + 47) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 16) - 256
                    revert with 0, 
                                32,
                                (uint255(stor26.length) * 0.5) + 16,
                                mem[192 len ceil32(uint255(stor26.length) * 0.5)],
                                mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 16],
                                0,
                                Mask(8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20, -(8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20) - 256
                if not stor133.length:
                    emit 0x78f67509: 0, arg1 * 10^decimals
                else:
                    if not decimals:
                        if 0 >= stor133.length:
                            revert with 0, 50
                        if uint256(stor133.field_1024) and 1 > -1 / uint256(stor133.field_1024):
                            revert with 0, 17
                        emit 0x78f67509: uint256(stor133.field_1024), arg1 * 10^decimals
                    else:
                        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                            if 0 >= stor133.length:
                                revert with 0, 50
                            if uint256(stor133.field_1024) and 10^decimals > -1 / uint256(stor133.field_1024):
                                revert with 0, 17
                            emit 0x78f67509: uint256(stor133.field_1024) * 10^decimals, arg1 * 10^decimals
                        else:
                            s = 10
                            t = 1
                            idx = decimals
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = s * t
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 0, 17
                            if 0 >= stor133.length:
                                revert with 0, 50
                            if uint256(stor133.field_1024) and s * t > -1 / uint256(stor133.field_1024):
                                revert with 0, 17
                            emit 0x78f67509: uint256(stor133.field_1024) * s * t, arg1 * 10^decimals
                idx = 0
                while idx < stor133.length:
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 240] = 0x3b364da800000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 244] = arg1 * 10^decimals
                    require ext_code.size(stor133[idx].field_512)
                    call stor133[idx].field_512.0x3b364da8 with:
                         gas gas_remaining wei
                        args (arg1 * 10^decimals)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= stor133.length:
                        revert with 0, 50
                    mem[0] = 133
                    stor133[idx].field_1024 = arg1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor26.length):
                    if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor26.length):
                        if 31 >= uint255(stor26.length) * 0.5:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            s = 0
                            while (uint255(stor26.length) * 0.5) + 160 > idx:
                                mem[idx + 32] = stor26[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if bool(stor26.length) == stor26.length.field_1 < 32:
                        revert with 0, 34
                    if stor26.length.field_1:
                        if 31 >= stor26.length.field_1:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            s = 0
                            while stor26.length.field_1 + 160 > idx:
                                mem[idx + 32] = stor26[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = '>0.001% supply' << 144
                if arg1 * 10^decimals > totalSupply / 100000:
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 308 len floor32(stor26.length.field_1 + 47)] = mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 16], 0, Mask(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20, -(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) + 256, 32) << (8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) - 256
                    if floor32(stor26.length.field_1 + 47) <= stor26.length.field_1 + 16:
                        revert with 0, 
                                    32,
                                    stor26.length.field_1 + 16,
                                    mem[192 len ceil32(stor26.length.field_1)],
                                    mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 16],
                                    0,
                                    Mask(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20, -(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) + 256, 32) << (8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) - 256
                    mem[(2 * stor26.length.field_1) + ceil32(stor26.length.field_1) + 324] = 0
                    revert with 0, 
                                32,
                                stor26.length.field_1 + 16,
                                Mask(8 * stor26.length.field_1 + 16, -(8 * stor26.length.field_1 + 16) + 256, mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 16], 0, Mask(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20, -(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) + 256, 32) << (8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) - 256) << (8 * stor26.length.field_1 + 16) - 256,
                                mem[ceil32(stor26.length.field_1) + (2 * stor26.length.field_1) + 324 len floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 16]
                if not stor133.length:
                    emit 0x78f67509: 0, arg1 * 10^decimals
                else:
                    if not decimals:
                        if 0 >= stor133.length:
                            revert with 0, 50
                        if uint256(stor133.field_1024) and 1 > -1 / uint256(stor133.field_1024):
                            revert with 0, 17
                        emit 0x78f67509: uint256(stor133.field_1024), arg1 * 10^decimals
                    else:
                        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                            if 0 >= stor133.length:
                                revert with 0, 50
                            if uint256(stor133.field_1024) and 10^decimals > -1 / uint256(stor133.field_1024):
                                revert with 0, 17
                            emit 0x78f67509: uint256(stor133.field_1024) * 10^decimals, arg1 * 10^decimals
                        else:
                            s = 10
                            t = 1
                            idx = decimals
                            while idx > 1:
                                if s > -1 / s:
                                    revert with 0, 17
                                if not bool(idx):
                                    s = s * s
                                    t = t
                                    idx = uint255(idx) * 0.5
                                    continue 
                                s = s * s
                                t = s * t
                                idx = uint255(idx) * 0.5
                                continue 
                            if t > -1 / s:
                                revert with 0, 17
                            if 0 >= stor133.length:
                                revert with 0, 50
                            if uint256(stor133.field_1024) and s * t > -1 / uint256(stor133.field_1024):
                                revert with 0, 17
                            emit 0x78f67509: uint256(stor133.field_1024) * s * t, arg1 * 10^decimals
                idx = 0
                while idx < stor133.length:
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 240] = 0x3b364da800000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 244] = arg1 * 10^decimals
                    require ext_code.size(stor133[idx].field_512)
                    call stor133[idx].field_512.0x3b364da8 with:
                         gas gas_remaining wei
                        args (arg1 * 10^decimals)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= stor133.length:
                        revert with 0, 50
                    mem[0] = 133
                    stor133[idx].field_1024 = arg1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            s = 10
            t = 1
            idx = decimals
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg1 and s * t > -1 / arg1:
                revert with 0, 17
            if bool(stor26.length):
                if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor26.length):
                    if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor26.length):
                        if 31 >= uint255(stor26.length) * 0.5:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            u = 0
                            while (uint255(stor26.length) * 0.5) + 160 > idx:
                                mem[idx + 32] = stor26[u].field_256
                                idx = idx + 32
                                u = u + 1
                                continue 
                else:
                    if bool(stor26.length) == stor26.length.field_1 < 32:
                        revert with 0, 34
                    if stor26.length.field_1:
                        if 31 >= stor26.length.field_1:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            u = 0
                            while stor26.length.field_1 + 160 > idx:
                                mem[idx + 32] = stor26[u].field_256
                                idx = idx + 32
                                u = u + 1
                                continue 
                mem[ceil32(uint255(stor26.length) * 0.5) + 224 len ceil32(uint255(stor26.length) * 0.5)] = mem[192 len ceil32(uint255(stor26.length) * 0.5)]
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 226] = '>0.001% supply' << 144
                if arg1 * s * t > totalSupply / 100000:
                    if floor32((uint255(stor26.length) * 0.5) + 47) > (uint255(stor26.length) * 0.5) + 16:
                        revert with 0, 
                                    32,
                                    (uint255(stor26.length) * 0.5) + 16,
                                    Mask(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 16, -(8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 16) + 256, mem[192 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 16], 0, Mask(8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20, -(8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20) - 256) << (8 * Mask(254, 1, stor26.length) + -(uint255(stor26.length) * 0.5) + 16) - 256,
                                    Mask(8 * floor32((uint255(stor26.length) * 0.5) + 47) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 16, -(8 * floor32((uint255(stor26.length) * 0.5) + 47) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 16) + 256, 0) << (8 * floor32((uint255(stor26.length) * 0.5) + 47) + (uint255(stor26.length) * 0.5) + -Mask(254, 1, stor26.length) - 16) - 256
                    revert with 0, 
                                32,
                                (uint255(stor26.length) * 0.5) + 16,
                                mem[192 len ceil32(uint255(stor26.length) * 0.5)],
                                mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 224 len (uint255(stor26.length) * 0.5) + -ceil32(uint255(stor26.length) * 0.5) + 16],
                                0,
                                Mask(8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20, -(8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20) + 256, 32) << (8 * floor32((uint255(stor26.length) * 0.5) + 47) + -(uint255(stor26.length) * 0.5) - 20) - 256
                if not stor133.length:
                    emit 0x78f67509: 0, arg1 * s * t
                else:
                    if not decimals:
                        if 0 >= stor133.length:
                            revert with 0, 50
                        if uint256(stor133.field_1024) and 1 > -1 / uint256(stor133.field_1024):
                            revert with 0, 17
                        emit 0x78f67509: uint256(stor133.field_1024), arg1 * s * t
                    else:
                        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                            if 0 >= stor133.length:
                                revert with 0, 50
                            if uint256(stor133.field_1024) and 10^decimals > -1 / uint256(stor133.field_1024):
                                revert with 0, 17
                            emit 0x78f67509: uint256(stor133.field_1024) * 10^decimals, arg1 * s * t
                        else:
                            u = 10
                            v = 1
                            idx = decimals
                            while idx > 1:
                                if u > -1 / u:
                                    revert with 0, 17
                                if not bool(idx):
                                    u = u * u
                                    v = v
                                    idx = uint255(idx) * 0.5
                                    continue 
                                u = u * u
                                v = u * v
                                idx = uint255(idx) * 0.5
                                continue 
                            if v > -1 / u:
                                revert with 0, 17
                            if 0 >= stor133.length:
                                revert with 0, 50
                            if uint256(stor133.field_1024) and u * v > -1 / uint256(stor133.field_1024):
                                revert with 0, 17
                            emit 0x78f67509: uint256(stor133.field_1024) * u * v, arg1 * s * t
                idx = 0
                while idx < stor133.length:
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 240] = 0x3b364da800000000000000000000000000000000000000000000000000000000
                    mem[ceil32(uint255(stor26.length) * 0.5) + (uint255(stor26.length) * 0.5) + 244] = arg1 * s * t
                    require ext_code.size(stor133[idx].field_512)
                    call stor133[idx].field_512.0x3b364da8 with:
                         gas gas_remaining wei
                        args (arg1 * s * t)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= stor133.length:
                        revert with 0, 50
                    mem[0] = 133
                    stor133[idx].field_1024 = arg1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if bool(stor26.length) == stor26.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor26.length):
                    if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor26.length):
                        if 31 >= uint255(stor26.length) * 0.5:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            u = 0
                            while (uint255(stor26.length) * 0.5) + 160 > idx:
                                mem[idx + 32] = stor26[u].field_256
                                idx = idx + 32
                                u = u + 1
                                continue 
                else:
                    if bool(stor26.length) == stor26.length.field_1 < 32:
                        revert with 0, 34
                    if stor26.length.field_1:
                        if 31 >= stor26.length.field_1:
                            mem[192] = 256 * stor26.length.field_8
                        else:
                            mem[192] = uint256(stor26.field_0)
                            idx = 192
                            u = 0
                            while stor26.length.field_1 + 160 > idx:
                                mem[idx + 32] = stor26[u].field_256
                                idx = idx + 32
                                u = u + 1
                                continue 
                mem[ceil32(stor26.length.field_1) + 224 len ceil32(stor26.length.field_1)] = mem[192 len ceil32(stor26.length.field_1)]
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 224] = 0x3a20000000000000000000000000000000000000000000000000000000000000
                mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 226] = '>0.001% supply' << 144
                if arg1 * s * t > totalSupply / 100000:
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 308 len floor32(stor26.length.field_1 + 47)] = mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 16], 0, Mask(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20, -(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) + 256, 32) << (8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) - 256
                    if floor32(stor26.length.field_1 + 47) <= stor26.length.field_1 + 16:
                        revert with 0, 
                                    32,
                                    stor26.length.field_1 + 16,
                                    mem[192 len ceil32(stor26.length.field_1)],
                                    mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 16],
                                    0,
                                    Mask(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20, -(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) + 256, 32) << (8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) - 256
                    mem[(2 * stor26.length.field_1) + ceil32(stor26.length.field_1) + 324] = 0
                    revert with 0, 
                                32,
                                stor26.length.field_1 + 16,
                                Mask(8 * stor26.length.field_1 + 16, -(8 * stor26.length.field_1 + 16) + 256, mem[192 len ceil32(stor26.length.field_1)], mem[(2 * ceil32(stor26.length.field_1)) + 224 len stor26.length.field_1 + -ceil32(stor26.length.field_1) + 16], 0, Mask(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20, -(8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) + 256, 32) << (8 * floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 20) - 256) << (8 * stor26.length.field_1 + 16) - 256,
                                mem[ceil32(stor26.length.field_1) + (2 * stor26.length.field_1) + 324 len floor32(stor26.length.field_1 + 47) + -stor26.length.field_1 - 16]
                if not stor133.length:
                    emit 0x78f67509: 0, arg1 * s * t
                else:
                    if not decimals:
                        if 0 >= stor133.length:
                            revert with 0, 50
                        if uint256(stor133.field_1024) and 1 > -1 / uint256(stor133.field_1024):
                            revert with 0, 17
                        emit 0x78f67509: uint256(stor133.field_1024), arg1 * s * t
                    else:
                        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                            if 0 >= stor133.length:
                                revert with 0, 50
                            if uint256(stor133.field_1024) and 10^decimals > -1 / uint256(stor133.field_1024):
                                revert with 0, 17
                            emit 0x78f67509: uint256(stor133.field_1024) * 10^decimals, arg1 * s * t
                        else:
                            u = 10
                            v = 1
                            idx = decimals
                            while idx > 1:
                                if u > -1 / u:
                                    revert with 0, 17
                                if not bool(idx):
                                    u = u * u
                                    v = v
                                    idx = uint255(idx) * 0.5
                                    continue 
                                u = u * u
                                v = u * v
                                idx = uint255(idx) * 0.5
                                continue 
                            if v > -1 / u:
                                revert with 0, 17
                            if 0 >= stor133.length:
                                revert with 0, 50
                            if uint256(stor133.field_1024) and u * v > -1 / uint256(stor133.field_1024):
                                revert with 0, 17
                            emit 0x78f67509: uint256(stor133.field_1024) * u * v, arg1 * s * t
                idx = 0
                while idx < stor133.length:
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 240] = 0x3b364da800000000000000000000000000000000000000000000000000000000
                    mem[ceil32(stor26.length.field_1) + stor26.length.field_1 + 244] = arg1 * s * t
                    require ext_code.size(stor133[idx].field_512)
                    call stor133[idx].field_512.0x3b364da8 with:
                         gas gas_remaining wei
                        args (arg1 * s * t)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= stor133.length:
                        revert with 0, 50
                    mem[0] = 133
                    stor133[idx].field_1024 = arg1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
}



}
