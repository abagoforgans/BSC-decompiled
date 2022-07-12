contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const parent = 0x8918bb91882ce41d9d9892246e4b56e4571a9fd5

const router = 0x10ed43c718714eb63d5aa57b78b54704e25602


mapping of struct balanceOf;
mapping of struct allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 decimals;
address owner; offset 8
address rewardTokenAddress;
address marketingWalletAddress;
address teamWalletAddress;
address pairAddress;
mapping of uint8 stor10;
mapping of uint256 sub_16ec4968;
mapping of uint8 stor12;
mapping of uint256 sub_2183e9fc;
uint256 sub_6f60a4b3;
uint256 sub_61e0269c;
uint256 stor16; offset 1
uint256 sub_1678c929;
uint256 stor17;
uint256 sub_66f8520b;
uint256 stor18;
uint256 stor19;
uint8 liquidityFee;
uint8 buyBackFee; offset 8
uint8 reflectionFee; offset 16
uint8 marketingWalletFee; offset 24
uint8 sub_c18a8c47; offset 32
uint8 totalFee; offset 40
uint8 sub_2acd85c4; offset 48
uint8 sub_0f2a8d53; offset 56
uint256 withdrawalInterval;
uint8 launched;
uint256 stor44AD;

function sub_0f2a8d53(?) {
    return sub_0f2a8d53
}

function teamWalletAddress() {
    return teamWalletAddress
}

function sub_1678c929(?) {
    return sub_1678c929
}

function sub_16ec4968(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_16ec4968[arg1]
}

function totalSupply() {
    return totalSupply
}

function totalFee() {
    return totalFee
}

function sub_2183e9fc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_2183e9fc[arg1]
}

function sub_2acd85c4(?) {
    return sub_2acd85c4
}

function withdrawalInterval() {
    return withdrawalInterval
}

function decimals() {
    return decimals
}

function excluded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function buyBackFee() {
    return buyBackFee
}

function sub_61e0269c(?) {
    return sub_61e0269c
}

function sub_66f8520b(?) {
    return uint256(sub_66f8520b)
}

function sub_6f60a4b3(?) {
    return sub_6f60a4b3
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_0
}

function launched() {
    return bool(launched)
}

function reflectionFee() {
    return reflectionFee
}

function owner() {
    return owner
}

function liquidityFee() {
    return liquidityFee
}

function pair() {
    return pairAddress
}

function marketingWalletFee() {
    return marketingWalletFee
}

function sub_c18a8c47(?) {
    return sub_c18a8c47
}

function marketingWalletAddress() {
    return marketingWalletAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function rewardToken() {
    return rewardTokenAddress
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_f7815b9a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    withdrawalInterval = arg1
}

function addExcluded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = 1
}

function removeExcluded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getWithdrawableAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if balanceOf[address(arg1)].field_0 and 10^9 > -1 / balanceOf[address(arg1)].field_0:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if 10^9 * balanceOf[address(arg1)].field_0 / totalSupply and sub_6f60a4b3 > -1 / 10^9 * balanceOf[address(arg1)].field_0 / totalSupply:
        revert with 0, 17
    if 10^9 * balanceOf[address(arg1)].field_0 / totalSupply * sub_6f60a4b3 / 10^9 < sub_16ec4968[msg.sender]:
        revert with 0, 17
    return ((10^9 * balanceOf[address(arg1)].field_0 / totalSupply * sub_6f60a4b3 / 10^9) - sub_16ec4968[msg.sender])
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function addToBlacklist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        stor10[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function removeFromBlacklist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        stor10[mem[(32 * idx) + 140 len 20]] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdraw() {
    if block.timestamp <= sub_2183e9fc[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Please wait for the next timeinterval'
    if balanceOf[address(msg.sender)].field_0 and 10^9 > -1 / balanceOf[address(msg.sender)].field_0:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if 10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply and sub_6f60a4b3 > -1 / 10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply:
        revert with 0, 17
    if 10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9 < sub_16ec4968[msg.sender]:
        revert with 0, 17
    if (10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9) - sub_16ec4968[msg.sender] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: Reflection greater then zero.'
    if balanceOf[address(msg.sender)].field_0 and 10^9 > -1 / balanceOf[address(msg.sender)].field_0:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if 10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply and sub_6f60a4b3 > -1 / 10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply:
        revert with 0, 17
    if 10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9 < sub_16ec4968[msg.sender]:
        revert with 0, 17
    if balanceOf[address(this.address)].field_0 < (10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9) - sub_16ec4968[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contract do not have sufficient balance for rewards'
    mem[128] = this.address
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[192] = rewardTokenAddress
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = (10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9) - sub_16ec4968[msg.sender]
    emit Approval(((10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9) - sub_16ec4968[msg.sender]), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
    mem[ceil32(return_data.size) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = (10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9) - sub_16ec4968[msg.sender]
    idx = 0
    s = ceil32(return_data.size) + 420
    t = 128
    while idx < 3:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args (10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9) - sub_16ec4968[msg.sender], 0, 160, msg.sender, block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp > !withdrawalInterval:
        revert with 0, 17
    sub_2183e9fc[msg.sender] = block.timestamp + withdrawalInterval
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function launch() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    launched = 1
    if balanceOf[address(this.address)].field_0:
        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_1:
            revert with 0, 17
        mem[128] = this.address
        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                gas gas_remaining wei
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[160] = ext_call.return_data[12 len 20]
        if balanceOf[address(this.address)].field_1 and 2 > -1 / balanceOf[address(this.address)].field_1:
            revert with 0, 17
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = balanceOf[address(this.address)].field_1
        emit Approval((2 * balanceOf[address(this.address)].field_1), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
        mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)].field_1
        idx = 0
        s = ceil32(return_data.size) + 388
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
        call ????????????????????????????????????????.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args 2 * Mask(256, -1, balanceOf[address(this.address)].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < eth.balance(this.address):
            revert with 0, 17
        if balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1 and 2 > -1 / balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1:
            revert with 0, 17
        if not this.address:
            revert with 0, 'ERC20: approve from the zero address'
        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = uint255(balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1)
        emit Approval((2 * balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
        call ????????????????????????????????????????.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
             gas gas_remaining wei
            args this.address, balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1, 0, 0, 0, block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        emit SwapAndLiquify(2 * Mask(256, -1, balanceOf[address(this.address)].field_1), 0, balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor10[address(msg.sender)]:
        revert with 0, 'ERC20: Address blacklisted.'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)].field_0 -= arg2
    if not launched:
        if pairAddress != msg.sender:
            if balanceOf[arg1].field_0 > !arg2:
                revert with 0, 17
            balanceOf[arg1].field_0 += arg2
            emit 0x4eddf252: arg2, msg.sender, arg1
        else:
            if balanceOf[this.address].field_0 > !arg2:
                revert with 0, 17
            balanceOf[this.address].field_0 += arg2
            stor10[address(arg1)] = 1
            emit 0x4eddf252: arg2, msg.sender, this.address
    else:
        if stor12[address(msg.sender)]:
            if balanceOf[arg1].field_0 > !arg2:
                revert with 0, 17
            balanceOf[arg1].field_0 += arg2
            emit 0x4eddf252: arg2, msg.sender, arg1
        else:
            if pairAddress == msg.sender:
                if this.address == msg.sender:
                    if balanceOf[address(arg1)].field_0 > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)].field_0 += arg2
                    emit 0x4eddf252: arg2, msg.sender, arg1
                else:
                    if this.address == arg1:
                        if balanceOf[address(arg1)].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 += arg2
                        emit 0x4eddf252: arg2, msg.sender, arg1
                    else:
                        if liquidityFee and arg2 > -1 / liquidityFee:
                            revert with 0, 17
                        if buyBackFee and arg2 > -1 / buyBackFee:
                            revert with 0, 17
                        if marketingWalletFee and arg2 > -1 / marketingWalletFee:
                            revert with 0, 17
                        if sub_c18a8c47 and arg2 > -1 / sub_c18a8c47:
                            revert with 0, 17
                        if reflectionFee and arg2 > -1 / reflectionFee:
                            revert with 0, 17
                        if sub_0f2a8d53 and arg2 > -1 / sub_0f2a8d53:
                            revert with 0, 17
                        if sub_2acd85c4 and arg2 > -1 / sub_2acd85c4:
                            revert with 0, 17
                        if stor44AD > !(buyBackFee * arg2 / 100):
                            revert with 0, 17
                        stor44AD += buyBackFee * arg2 / 100
                        if liquidityFee * arg2 / 100 > !(reflectionFee * arg2 / 100):
                            revert with 0, 17
                        if (liquidityFee * arg2 / 100) + (reflectionFee * arg2 / 100) > !(sub_0f2a8d53 * arg2 / 100):
                            revert with 0, 17
                        if (liquidityFee * arg2 / 100) + (reflectionFee * arg2 / 100) + (sub_0f2a8d53 * arg2 / 100) > !(marketingWalletFee * arg2 / 100):
                            revert with 0, 17
                        if (liquidityFee * arg2 / 100) + (reflectionFee * arg2 / 100) + (sub_0f2a8d53 * arg2 / 100) + (marketingWalletFee * arg2 / 100) > !(sub_c18a8c47 * arg2 / 100):
                            revert with 0, 17
                        if balanceOf[this.address].field_0 > !((liquidityFee * arg2 / 100) + (reflectionFee * arg2 / 100) + (sub_0f2a8d53 * arg2 / 100) + (marketingWalletFee * arg2 / 100) + (sub_c18a8c47 * arg2 / 100)):
                            revert with 0, 17
                        balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * arg2 / 100) + (reflectionFee * arg2 / 100) + (sub_0f2a8d53 * arg2 / 100) + (marketingWalletFee * arg2 / 100) + (sub_c18a8c47 * arg2 / 100)
                        if balanceOf[address(arg1)].field_0 > !(sub_2acd85c4 * arg2 / 100):
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 += sub_2acd85c4 * arg2 / 100
                        if sub_1678c929 > !(liquidityFee * arg2 / 100):
                            revert with 0, 17
                        sub_1678c929 += liquidityFee * arg2 / 100
                        if uint256(sub_66f8520b) > !(sub_0f2a8d53 * arg2 / 100):
                            revert with 0, 17
                        uint256(sub_66f8520b) += sub_0f2a8d53 * arg2 / 100
                        if stor18 > !(marketingWalletFee * arg2 / 100):
                            revert with 0, 17
                        stor18 += marketingWalletFee * arg2 / 100
                        if stor19 > !(sub_c18a8c47 * arg2 / 100):
                            revert with 0, 17
                        stor19 += sub_c18a8c47 * arg2 / 100
                        if sub_6f60a4b3 > !(reflectionFee * arg2 / 100):
                            revert with 0, 17
                        sub_6f60a4b3 += reflectionFee * arg2 / 100
                        emit 0x4eddf252: (sub_2acd85c4 * arg2 / 100), msg.sender, arg1
            else:
                if this.address == msg.sender:
                    if balanceOf[address(arg1)].field_0 > !arg2:
                        revert with 0, 17
                    balanceOf[address(arg1)].field_0 += arg2
                    emit 0x4eddf252: arg2, msg.sender, arg1
                else:
                    if not balanceOf[address(this.address)].field_0:
                        if uint256(sub_66f8520b) < 10^18:
                            revert with 0, 'Require at least one token'
                        if not balanceOf[address(this.address)].field_0:
                            if balanceOf[address(this.address)].field_0 < stor18:
                                if balanceOf[address(this.address)].field_0 >= stor19:
                                    mem[128] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[192] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                    emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[ceil32(return_data.size) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = stor19
                                    idx = 0
                                    s = ceil32(return_data.size) + 420
                                    t = 128
                                    while idx < 3:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor19 < 0:
                                        revert with 0, 17
                            else:
                                mem[96] = 3
                                mem[128] = this.address
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                        gas gas_remaining wei
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                mem[192] = rewardTokenAddress
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                mem[ceil32(return_data.size) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = stor18
                                mem[ceil32(return_data.size) + 388] = 3
                                idx = 0
                                s = ceil32(return_data.size) + 420
                                t = 128
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 356] = block.timestamp
                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor18, 0, 160, marketingWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                    revert with 0, 17
                                if stor18 < 0:
                                    revert with 0, 17
                                if balanceOf[address(this.address)].field_0 >= stor19:
                                    mem[ceil32(return_data.size) + 224] = 3
                                    mem[ceil32(return_data.size) + 256] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 352
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 320] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                    emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[(2 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                    mem[(2 * ceil32(return_data.size)) + 356] = stor19
                                    mem[(2 * ceil32(return_data.size)) + 388] = 0
                                    mem[(2 * ceil32(return_data.size)) + 420] = 160
                                    mem[(2 * ceil32(return_data.size)) + 516] = 3
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 548
                                    t = ceil32(return_data.size) + 256
                                    while idx < mem[ceil32(return_data.size) + 224]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 516 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor19 < 0:
                                        revert with 0, 17
                        else:
                            if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                if balanceOf[address(this.address)].field_0 < stor18:
                                    if balanceOf[address(this.address)].field_0 >= stor19:
                                        mem[128] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[192] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[ceil32(return_data.size) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 228] = stor19
                                        idx = 0
                                        s = ceil32(return_data.size) + 420
                                        t = 128
                                        while idx < 3:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                                else:
                                    mem[96] = 3
                                    mem[128] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[192] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                    emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[ceil32(return_data.size) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = stor18
                                    mem[ceil32(return_data.size) + 388] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + 420
                                    t = 128
                                    while idx < 3:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 356] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor18, 0, 160, marketingWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor18 < 0:
                                        revert with 0, 17
                                    if balanceOf[address(this.address)].field_0 >= stor19:
                                        mem[ceil32(return_data.size) + 224] = 3
                                        mem[ceil32(return_data.size) + 256] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 352
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 320] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(2 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                        mem[(2 * ceil32(return_data.size)) + 356] = stor19
                                        mem[(2 * ceil32(return_data.size)) + 388] = 0
                                        mem[(2 * ceil32(return_data.size)) + 420] = 160
                                        mem[(2 * ceil32(return_data.size)) + 516] = 3
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 548
                                        t = ceil32(return_data.size) + 256
                                        while idx < mem[ceil32(return_data.size) + 224]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 452] = teamWalletAddress
                                        mem[(2 * ceil32(return_data.size)) + 484] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 224]) + -mem[64] + 544]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                            else:
                                if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                'Contract do not have sufficient balance for rewards'
                                mem[96] = 3
                                mem[128] = this.address
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                        gas gas_remaining wei
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                mem[192] = 0x8918bb91882ce41d9d9892246e4b56e4571a9fd5
                                if uint256(sub_66f8520b) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = uint255(stor17)
                                emit Approval((2 * uint256(sub_66f8520b)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                mem[ceil32(return_data.size) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = uint256(sub_66f8520b)
                                mem[ceil32(return_data.size) + 388] = 3
                                idx = 0
                                s = ceil32(return_data.size) + 420
                                t = 128
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 356] = block.timestamp
                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(sub_66f8520b), 0, 160, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                    revert with 0, 17
                                if uint256(sub_66f8520b) < 0:
                                    revert with 0, 17
                                if balanceOf[address(this.address)].field_0 < stor18:
                                    if balanceOf[address(this.address)].field_0 >= stor19:
                                        mem[ceil32(return_data.size) + 224] = 3
                                        mem[ceil32(return_data.size) + 256] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 352
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 320] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(2 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                        mem[(2 * ceil32(return_data.size)) + 356] = stor19
                                        mem[(2 * ceil32(return_data.size)) + 388] = 0
                                        mem[(2 * ceil32(return_data.size)) + 420] = 160
                                        mem[(2 * ceil32(return_data.size)) + 516] = 3
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 548
                                        t = ceil32(return_data.size) + 256
                                        while idx < mem[ceil32(return_data.size) + 224]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 452] = teamWalletAddress
                                        mem[(2 * ceil32(return_data.size)) + 484] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + 224]) + -mem[64] + 544]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                                else:
                                    mem[ceil32(return_data.size) + 224] = 3
                                    mem[ceil32(return_data.size) + 256] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (2 * ceil32(return_data.size)) + 352
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 320] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                    emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[(2 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                    mem[(2 * ceil32(return_data.size)) + 356] = stor18
                                    mem[(2 * ceil32(return_data.size)) + 388] = 0
                                    mem[(2 * ceil32(return_data.size)) + 420] = 160
                                    mem[(2 * ceil32(return_data.size)) + 516] = 3
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 548
                                    t = ceil32(return_data.size) + 256
                                    while idx < mem[ceil32(return_data.size) + 224]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 452] = marketingWalletAddress
                                    mem[(2 * ceil32(return_data.size)) + 484] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor18, 0, 160, marketingWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 516 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor18 < 0:
                                        revert with 0, 17
                                    if balanceOf[address(this.address)].field_0 >= stor19:
                                        mem[(2 * ceil32(return_data.size)) + 352] = 3
                                        mem[(2 * ceil32(return_data.size)) + 384] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 480
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(4 * ceil32(return_data.size)) + 480] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                        mem[(4 * ceil32(return_data.size)) + 484] = stor19
                                        mem[(4 * ceil32(return_data.size)) + 516] = 0
                                        mem[(4 * ceil32(return_data.size)) + 548] = 160
                                        mem[(4 * ceil32(return_data.size)) + 644] = 3
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 676
                                        t = (2 * ceil32(return_data.size)) + 384
                                        while idx < mem[(2 * ceil32(return_data.size)) + 352]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 580] = teamWalletAddress
                                        mem[(4 * ceil32(return_data.size)) + 612] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 352]) + -mem[64] + 672]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                    else:
                        if balanceOf[address(this.address)].field_0 < sub_1678c929:
                            if uint256(sub_66f8520b) < 10^18:
                                revert with 0, 'Require at least one token'
                            if not balanceOf[address(this.address)].field_0:
                                if balanceOf[address(this.address)].field_0 < stor18:
                                    if balanceOf[address(this.address)].field_0 >= stor19:
                                        mem[128] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[192] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[ceil32(return_data.size) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 228] = stor19
                                        idx = 0
                                        s = ceil32(return_data.size) + 420
                                        t = 128
                                        while idx < 3:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                                else:
                                    mem[96] = 3
                                    mem[128] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[192] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                    emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[ceil32(return_data.size) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = stor18
                                    mem[ceil32(return_data.size) + 388] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + 420
                                    t = 128
                                    while idx < 3:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 356] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor18, 0, 160, marketingWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor18 < 0:
                                        revert with 0, 17
                                    if balanceOf[address(this.address)].field_0 >= stor19:
                                        mem[ceil32(return_data.size) + 224] = 3
                                        mem[ceil32(return_data.size) + 256] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 352
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 320] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(2 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                        mem[(2 * ceil32(return_data.size)) + 356] = stor19
                                        mem[(2 * ceil32(return_data.size)) + 388] = 0
                                        mem[(2 * ceil32(return_data.size)) + 420] = 160
                                        mem[(2 * ceil32(return_data.size)) + 516] = 3
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 548
                                        t = ceil32(return_data.size) + 256
                                        while idx < mem[ceil32(return_data.size) + 224]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 516 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                            else:
                                if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                    if balanceOf[address(this.address)].field_0 < stor18:
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[128] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[224] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[160] = ext_call.return_data[12 len 20]
                                            mem[192] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[ceil32(return_data.size) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 228] = stor19
                                            idx = 0
                                            s = ceil32(return_data.size) + 420
                                            t = 128
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                    else:
                                        mem[96] = 3
                                        mem[128] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[224] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        mem[192] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                        emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[ceil32(return_data.size) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 228] = stor18
                                        mem[ceil32(return_data.size) + 388] = 3
                                        idx = 0
                                        s = ceil32(return_data.size) + 420
                                        t = 128
                                        while idx < 3:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(return_data.size) + 356] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor18, 0, 160, marketingWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor18 < 0:
                                            revert with 0, 17
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[ceil32(return_data.size) + 224] = 3
                                            mem[ceil32(return_data.size) + 256] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (2 * ceil32(return_data.size)) + 352
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 320] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(2 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                            mem[(2 * ceil32(return_data.size)) + 356] = stor19
                                            mem[(2 * ceil32(return_data.size)) + 388] = 0
                                            mem[(2 * ceil32(return_data.size)) + 420] = 160
                                            mem[(2 * ceil32(return_data.size)) + 516] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + 548
                                            t = ceil32(return_data.size) + 256
                                            while idx < mem[ceil32(return_data.size) + 224]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 516 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                else:
                                    if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    'Contract do not have sufficient balance for rewards'
                                    mem[96] = 3
                                    mem[128] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    mem[192] = 0x8918bb91882ce41d9d9892246e4b56e4571a9fd5
                                    if uint256(sub_66f8520b) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = uint255(stor17)
                                    emit Approval((2 * uint256(sub_66f8520b)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[ceil32(return_data.size) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 228] = uint256(sub_66f8520b)
                                    mem[ceil32(return_data.size) + 388] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + 420
                                    t = 128
                                    while idx < 3:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 356] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args uint256(sub_66f8520b), 0, 160, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 420 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if uint256(sub_66f8520b) < 0:
                                        revert with 0, 17
                                    if balanceOf[address(this.address)].field_0 < stor18:
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[ceil32(return_data.size) + 224] = 3
                                            mem[ceil32(return_data.size) + 256] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (2 * ceil32(return_data.size)) + 352
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 320] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(2 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                            mem[(2 * ceil32(return_data.size)) + 356] = stor19
                                            mem[(2 * ceil32(return_data.size)) + 388] = 0
                                            mem[(2 * ceil32(return_data.size)) + 420] = 160
                                            mem[(2 * ceil32(return_data.size)) + 516] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + 548
                                            t = ceil32(return_data.size) + 256
                                            while idx < mem[ceil32(return_data.size) + 224]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 516 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                    else:
                                        mem[ceil32(return_data.size) + 224] = 3
                                        mem[ceil32(return_data.size) + 256] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 352] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (2 * ceil32(return_data.size)) + 352
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 288] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 320] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                        emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(2 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                        mem[(2 * ceil32(return_data.size)) + 356] = stor18
                                        mem[(2 * ceil32(return_data.size)) + 388] = 0
                                        mem[(2 * ceil32(return_data.size)) + 420] = 160
                                        mem[(2 * ceil32(return_data.size)) + 516] = 3
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 548
                                        t = ceil32(return_data.size) + 256
                                        while idx < mem[ceil32(return_data.size) + 224]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 452] = marketingWalletAddress
                                        mem[(2 * ceil32(return_data.size)) + 484] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor18, 0, 160, marketingWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 516 len (32 * mem[ceil32(return_data.size) + 224]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor18 < 0:
                                            revert with 0, 17
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[(2 * ceil32(return_data.size)) + 352] = 3
                                            mem[(2 * ceil32(return_data.size)) + 384] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(2 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (4 * ceil32(return_data.size)) + 480
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 416] = ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(4 * ceil32(return_data.size)) + 480] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                            mem[(4 * ceil32(return_data.size)) + 484] = stor19
                                            mem[(4 * ceil32(return_data.size)) + 516] = 0
                                            mem[(4 * ceil32(return_data.size)) + 548] = 160
                                            mem[(4 * ceil32(return_data.size)) + 644] = 3
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 676
                                            t = (2 * ceil32(return_data.size)) + 384
                                            while idx < mem[(2 * ceil32(return_data.size)) + 352]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(4 * ceil32(return_data.size)) + 644 len (32 * mem[(2 * ceil32(return_data.size)) + 352]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                        else:
                            if sub_1678c929 < stor16:
                                revert with 0, 17
                            mem[96] = 2
                            mem[128] = this.address
                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                    gas gas_remaining wei
                            mem[192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[160] = ext_call.return_data[12 len 20]
                            if stor16 and 2 > -1 / stor16:
                                revert with 0, 17
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = stor16
                            emit Approval((2 * stor16), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 196] = stor16
                            idx = 0
                            s = ceil32(return_data.size) + 388
                            t = 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                            call ????????????????????????????????????????.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 2 * Mask(256, -1, stor16), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if sub_1678c929 - stor16 and 2 > -1 / sub_1678c929 - stor16:
                                revert with 0, 17
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = uint255(sub_1678c929 - stor16)
                            emit Approval((2 * sub_1678c929 - stor16), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                            mem[ceil32(return_data.size) + 260] = 0
                            mem[ceil32(return_data.size) + 292] = 0
                            mem[ceil32(return_data.size) + 324] = 0
                            mem[ceil32(return_data.size) + 356] = block.timestamp
                            call ????????????????????????????????????????.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args this.address, sub_1678c929 - stor16, 0, 0, 0, block.timestamp
                            mem[ceil32(return_data.size) + 192 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit SwapAndLiquify(2 * Mask(256, -1, stor16), 0, sub_1678c929 - stor16);
                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                revert with 0, 17
                            if sub_1678c929 < 0:
                                revert with 0, 17
                            if uint256(sub_66f8520b) < 10^18:
                                revert with 0, 'Require at least one token'
                            if not balanceOf[address(this.address)].field_0:
                                if balanceOf[address(this.address)].field_0 < stor18:
                                    if balanceOf[address(this.address)].field_0 >= stor19:
                                        mem[(2 * ceil32(return_data.size)) + 192] = 3
                                        mem[(2 * ceil32(return_data.size)) + 224] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 320
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 288] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(4 * ceil32(return_data.size)) + 320] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                        mem[(4 * ceil32(return_data.size)) + 324] = stor19
                                        mem[(4 * ceil32(return_data.size)) + 356] = 0
                                        mem[(4 * ceil32(return_data.size)) + 388] = 160
                                        mem[(4 * ceil32(return_data.size)) + 484] = 3
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 516
                                        t = (2 * ceil32(return_data.size)) + 224
                                        while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 420] = teamWalletAddress
                                        mem[(4 * ceil32(return_data.size)) + 452] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + -mem[64] + 512]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 192] = 3
                                    mem[(2 * ceil32(return_data.size)) + 224] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 320
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 288] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                    emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                    mem[(4 * ceil32(return_data.size)) + 324] = stor18
                                    mem[(4 * ceil32(return_data.size)) + 356] = 0
                                    mem[(4 * ceil32(return_data.size)) + 388] = 160
                                    mem[(4 * ceil32(return_data.size)) + 484] = 3
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 516
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 420] = marketingWalletAddress
                                    mem[(4 * ceil32(return_data.size)) + 452] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor18, 0, 160, marketingWalletAddress, block.timestamp, mem[(4 * ceil32(return_data.size)) + 484 len (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor18 < 0:
                                        revert with 0, 17
                                    if balanceOf[address(this.address)].field_0 >= stor19:
                                        mem[(4 * ceil32(return_data.size)) + 320] = 3
                                        mem[(4 * ceil32(return_data.size)) + 352] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[(4 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 448
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
                                        mem[(4 * ceil32(return_data.size)) + 416] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(6 * ceil32(return_data.size)) + 448] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                        mem[(6 * ceil32(return_data.size)) + 452] = stor19
                                        mem[(6 * ceil32(return_data.size)) + 484] = 0
                                        mem[(6 * ceil32(return_data.size)) + 516] = 160
                                        mem[(6 * ceil32(return_data.size)) + 612] = 3
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 644
                                        t = (4 * ceil32(return_data.size)) + 352
                                        while idx < mem[(4 * ceil32(return_data.size)) + 320]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(6 * ceil32(return_data.size)) + 612 len (32 * mem[(4 * ceil32(return_data.size)) + 320]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                            else:
                                if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                    if balanceOf[address(this.address)].field_0 < stor18:
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[(2 * ceil32(return_data.size)) + 192] = 3
                                            mem[(2 * ceil32(return_data.size)) + 224] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (4 * ceil32(return_data.size)) + 320
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 288] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(4 * ceil32(return_data.size)) + 320] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                            mem[(4 * ceil32(return_data.size)) + 324] = stor19
                                            mem[(4 * ceil32(return_data.size)) + 356] = 0
                                            mem[(4 * ceil32(return_data.size)) + 388] = 160
                                            mem[(4 * ceil32(return_data.size)) + 484] = 3
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 516
                                            t = (2 * ceil32(return_data.size)) + 224
                                            while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(4 * ceil32(return_data.size)) + 420] = teamWalletAddress
                                            mem[(4 * ceil32(return_data.size)) + 452] = block.timestamp
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 192]) + -mem[64] + 512]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 192] = 3
                                        mem[(2 * ceil32(return_data.size)) + 224] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 320
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 288] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                        emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(4 * ceil32(return_data.size)) + 320] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                        mem[(4 * ceil32(return_data.size)) + 324] = stor18
                                        mem[(4 * ceil32(return_data.size)) + 356] = 0
                                        mem[(4 * ceil32(return_data.size)) + 388] = 160
                                        mem[(4 * ceil32(return_data.size)) + 484] = 3
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 516
                                        t = (2 * ceil32(return_data.size)) + 224
                                        while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 420] = marketingWalletAddress
                                        mem[(4 * ceil32(return_data.size)) + 452] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor18, 0, 160, marketingWalletAddress, block.timestamp, mem[(4 * ceil32(return_data.size)) + 484 len (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor18 < 0:
                                            revert with 0, 17
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[(4 * ceil32(return_data.size)) + 320] = 3
                                            mem[(4 * ceil32(return_data.size)) + 352] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(4 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (6 * ceil32(return_data.size)) + 448
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
                                            mem[(4 * ceil32(return_data.size)) + 416] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(6 * ceil32(return_data.size)) + 448] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                            mem[(6 * ceil32(return_data.size)) + 452] = stor19
                                            mem[(6 * ceil32(return_data.size)) + 484] = 0
                                            mem[(6 * ceil32(return_data.size)) + 516] = 160
                                            mem[(6 * ceil32(return_data.size)) + 612] = 3
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 644
                                            t = (4 * ceil32(return_data.size)) + 352
                                            while idx < mem[(4 * ceil32(return_data.size)) + 320]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(6 * ceil32(return_data.size)) + 548] = teamWalletAddress
                                            mem[(6 * ceil32(return_data.size)) + 580] = block.timestamp
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + 320]) + -mem[64] + 640]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                else:
                                    if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                        revert with 0, 'Contract do not have sufficient balance for rewards'
                                    mem[(2 * ceil32(return_data.size)) + 192] = 3
                                    mem[(2 * ceil32(return_data.size)) + 224] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 320
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 288] = 0x8918bb91882ce41d9d9892246e4b56e4571a9fd5
                                    if uint256(sub_66f8520b) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = uint255(stor17)
                                    emit Approval((2 * uint256(sub_66f8520b)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[(4 * ceil32(return_data.size)) + 320] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                    mem[(4 * ceil32(return_data.size)) + 324] = uint256(sub_66f8520b)
                                    mem[(4 * ceil32(return_data.size)) + 356] = 0
                                    mem[(4 * ceil32(return_data.size)) + 388] = 160
                                    mem[(4 * ceil32(return_data.size)) + 484] = 3
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 516
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 420] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 452] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args uint256(sub_66f8520b), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 484 len (32 * mem[(2 * ceil32(return_data.size)) + 192]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if uint256(sub_66f8520b) < 0:
                                        revert with 0, 17
                                    if balanceOf[address(this.address)].field_0 < stor18:
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[(4 * ceil32(return_data.size)) + 320] = 3
                                            mem[(4 * ceil32(return_data.size)) + 352] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(4 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (6 * ceil32(return_data.size)) + 448
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
                                            mem[(4 * ceil32(return_data.size)) + 416] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(6 * ceil32(return_data.size)) + 448] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                            mem[(6 * ceil32(return_data.size)) + 452] = stor19
                                            mem[(6 * ceil32(return_data.size)) + 484] = 0
                                            mem[(6 * ceil32(return_data.size)) + 516] = 160
                                            mem[(6 * ceil32(return_data.size)) + 612] = 3
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 644
                                            t = (4 * ceil32(return_data.size)) + 352
                                            while idx < mem[(4 * ceil32(return_data.size)) + 320]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(6 * ceil32(return_data.size)) + 612 len (32 * mem[(4 * ceil32(return_data.size)) + 320]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 320] = 3
                                        mem[(4 * ceil32(return_data.size)) + 352] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[(4 * ceil32(return_data.size)) + 448] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 448
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
                                        mem[(4 * ceil32(return_data.size)) + 416] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                        emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(6 * ceil32(return_data.size)) + 448] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                        mem[(6 * ceil32(return_data.size)) + 452] = stor18
                                        mem[(6 * ceil32(return_data.size)) + 484] = 0
                                        mem[(6 * ceil32(return_data.size)) + 516] = 160
                                        mem[(6 * ceil32(return_data.size)) + 612] = 3
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 644
                                        t = (4 * ceil32(return_data.size)) + 352
                                        while idx < mem[(4 * ceil32(return_data.size)) + 320]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(6 * ceil32(return_data.size)) + 548] = marketingWalletAddress
                                        mem[(6 * ceil32(return_data.size)) + 580] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + 320]) + -mem[64] + 640]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor18 < 0:
                                            revert with 0, 17
                                        mem[0] = this.address
                                        mem[32] = 0
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            _3584 = mem[64]
                                            mem[mem[64]] = 3
                                            mem[64] = mem[64] + 128
                                            mem[_3584 + 32 len 96] = call.data[calldata.size len 96]
                                            if 0 >= mem[_3584]:
                                                revert with 0, 50
                                            mem[_3584 + 32] = this.address
                                            mem[0] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[_3584 + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _3584 + ceil32(return_data.size) + 128
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if 1 >= mem[_3584]:
                                                revert with 0, 50
                                            mem[_3584 + 64] = ext_call.return_data[12 len 20]
                                            if 2 >= mem[_3584]:
                                                revert with 0, 50
                                            mem[_3584 + 96] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[_3584 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                            mem[_3584 + ceil32(return_data.size) + 132] = stor19
                                            mem[_3584 + ceil32(return_data.size) + 164] = 0
                                            mem[_3584 + ceil32(return_data.size) + 196] = 160
                                            mem[_3584 + ceil32(return_data.size) + 292] = mem[_3584]
                                            idx = 0
                                            s = _3584 + ceil32(return_data.size) + 324
                                            t = _3584 + 32
                                            while idx < mem[_3584]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_3584 + ceil32(return_data.size) + 228] = teamWalletAddress
                                            mem[_3584 + ceil32(return_data.size) + 260] = block.timestamp
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _3584 + ceil32(return_data.size) + (32 * mem[_3584]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                    if this.address == msg.sender:
                        if balanceOf[address(arg1)].field_0 > !arg2:
                            revert with 0, 17
                        balanceOf[address(arg1)].field_0 += arg2
                        emit 0x4eddf252: arg2, msg.sender, arg1
                    else:
                        if this.address == arg1:
                            if balanceOf[address(arg1)].field_0 > !arg2:
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += arg2
                            emit 0x4eddf252: arg2, msg.sender, arg1
                        else:
                            if liquidityFee and arg2 > -1 / liquidityFee:
                                revert with 0, 17
                            if buyBackFee and arg2 > -1 / buyBackFee:
                                revert with 0, 17
                            if marketingWalletFee and arg2 > -1 / marketingWalletFee:
                                revert with 0, 17
                            if sub_c18a8c47 and arg2 > -1 / sub_c18a8c47:
                                revert with 0, 17
                            if reflectionFee and arg2 > -1 / reflectionFee:
                                revert with 0, 17
                            if sub_0f2a8d53 and arg2 > -1 / sub_0f2a8d53:
                                revert with 0, 17
                            if sub_2acd85c4 and arg2 > -1 / sub_2acd85c4:
                                revert with 0, 17
                            if stor44AD > !(buyBackFee * arg2 / 100):
                                revert with 0, 17
                            stor44AD += buyBackFee * arg2 / 100
                            if liquidityFee * arg2 / 100 > !(reflectionFee * arg2 / 100):
                                revert with 0, 17
                            if (liquidityFee * arg2 / 100) + (reflectionFee * arg2 / 100) > !(sub_0f2a8d53 * arg2 / 100):
                                revert with 0, 17
                            if (liquidityFee * arg2 / 100) + (reflectionFee * arg2 / 100) + (sub_0f2a8d53 * arg2 / 100) > !(marketingWalletFee * arg2 / 100):
                                revert with 0, 17
                            if (liquidityFee * arg2 / 100) + (reflectionFee * arg2 / 100) + (sub_0f2a8d53 * arg2 / 100) + (marketingWalletFee * arg2 / 100) > !(sub_c18a8c47 * arg2 / 100):
                                revert with 0, 17
                            if balanceOf[this.address].field_0 > !((liquidityFee * arg2 / 100) + (reflectionFee * arg2 / 100) + (sub_0f2a8d53 * arg2 / 100) + (marketingWalletFee * arg2 / 100) + (sub_c18a8c47 * arg2 / 100)):
                                revert with 0, 17
                            balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * arg2 / 100) + (reflectionFee * arg2 / 100) + (sub_0f2a8d53 * arg2 / 100) + (marketingWalletFee * arg2 / 100) + (sub_c18a8c47 * arg2 / 100)
                            if balanceOf[address(arg1)].field_0 > !(sub_2acd85c4 * arg2 / 100):
                                revert with 0, 17
                            balanceOf[address(arg1)].field_0 += sub_2acd85c4 * arg2 / 100
                            if sub_1678c929 > !(liquidityFee * arg2 / 100):
                                revert with 0, 17
                            sub_1678c929 += liquidityFee * arg2 / 100
                            if uint256(sub_66f8520b) > !(sub_0f2a8d53 * arg2 / 100):
                                revert with 0, 17
                            uint256(sub_66f8520b) += sub_0f2a8d53 * arg2 / 100
                            if stor18 > !(marketingWalletFee * arg2 / 100):
                                revert with 0, 17
                            stor18 += marketingWalletFee * arg2 / 100
                            if stor19 > !(sub_c18a8c47 * arg2 / 100):
                                revert with 0, 17
                            stor19 += sub_c18a8c47 * arg2 / 100
                            if sub_6f60a4b3 > !(reflectionFee * arg2 / 100):
                                revert with 0, 17
                            sub_6f60a4b3 += reflectionFee * arg2 / 100
                            emit 0x4eddf252: (sub_2acd85c4 * arg2 / 100), msg.sender, arg1
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x70a08231(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x23b872dd(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x1678c929(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x1678c929(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_1678c929
                if unknown_0x16ec4968(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return sub_16ec4968[cd[4]]
                if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalSupply
                if unknown_0x1cc13fe6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor12[address(cd[4])] = 0
                if unknown_0x1df4ccfc(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalFee
                require unknown_0x2183e9fc(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return sub_2183e9fc[cd[4]]
            if uint32(call.func_hash) >> 224 != launch():
                if uint32(call.func_hash) >> 224 != name():
                    if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                        if unknown_0x0f2a8d53(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_0f2a8d53
                        require unknown_0x1245e347(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return teamWalletAddress
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(cd[4])].field_0 = cd[36]
                    emit Approval(cd[36], msg.sender, address(cd[4]));
                    return 1
                require not msg.value
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor3.length):
                        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3.length):
                            if 31 < uint255(stor3.length) * 0.5:
                                mem[160] = uint256(stor3.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor3.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor3[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                            mem[160] = 256 * stor3.length.field_8
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 0, 34
                        if stor3.length.field_1:
                            if 31 < stor3.length.field_1:
                                mem[160] = uint256(stor3.field_0)
                                idx = 160
                                s = 0
                                while stor3.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor3[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                            mem[160] = 256 * stor3.length.field_8
                    mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                    if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                        mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3.length):
                        if 31 < uint255(stor3.length) * 0.5:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor3.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                        mem[160] = 256 * stor3.length.field_8
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 0, 34
                    if stor3.length.field_1:
                        if 31 < stor3.length.field_1:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while stor3.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                        mem[160] = 256 * stor3.length.field_8
                mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
                if ceil32(stor3.length.field_1) > stor3.length.field_1:
                    mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 224] = 0
                return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
            require not msg.value
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            launched = 1
            if balanceOf[address(this.address)].field_0:
                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_1:
                    revert with 0, 17
                mem[160] = this.address
                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                        gas gas_remaining wei
                mem[224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[192] = ext_call.return_data[12 len 20]
                if balanceOf[address(this.address)].field_1 and 2 > -1 / balanceOf[address(this.address)].field_1:
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = balanceOf[address(this.address)].field_1
                emit Approval((2 * balanceOf[address(this.address)].field_1), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 228] = balanceOf[address(this.address)].field_1
                idx = 0
                s = ceil32(return_data.size) + 420
                t = 160
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                call ????????????????????????????????????????.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 2 * Mask(256, -1, balanceOf[address(this.address)].field_1), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1 and 2 > -1 / balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1:
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = uint255(balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1)
                emit Approval((2 * balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                call ????????????????????????????????????????.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1, 0, 0, 0, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(2 * Mask(256, -1, balanceOf[address(this.address)].field_1), 0, balanceOf[address(this.address)].field_0 - balanceOf[address(this.address)].field_1);
        if unknown_0x429cead1(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x429cead1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return bool(stor12[cd[4]])
            if unknown_0x4be8f8b1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return buyBackFee
            if unknown_0x60f96a8f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 0x8918bb91882ce41d9d9892246e4b56e4571a9fd5
            if unknown_0x61e0269c(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_61e0269c
            if unknown_0x66f8520b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return uint256(sub_66f8520b)
            require unknown_0x6f60a4b3(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return sub_6f60a4b3
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if unknown_0x2acd85c4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_2acd85c4
            if unknown_0x2f0c370e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return withdrawalInterval
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return decimals
            if unknown_0x39509351(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                if allowance[msg.sender][address(cd[4])].field_0 > !cd[36]:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: approve from the zero address'
                if not address(cd[4]):
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(msg.sender)][address(cd[4])].field_0 = allowance[msg.sender][address(cd[4])].field_0 + cd[36]
                emit Approval((allowance[msg.sender][address(cd[4])].field_0 + cd[36]), msg.sender, address(cd[4]));
                return 1
            require unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            if block.timestamp <= sub_2183e9fc[msg.sender]:
                revert with 0, 'Please wait for the next timeinterval'
            if balanceOf[address(msg.sender)].field_0 and 10^9 > -1 / balanceOf[address(msg.sender)].field_0:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if 10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply and sub_6f60a4b3 > -1 / 10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply:
                revert with 0, 17
            if 10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9 < sub_16ec4968[msg.sender]:
                revert with 0, 17
            if (10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9) - sub_16ec4968[msg.sender] <= 0:
                revert with 0, 'ERC20: Reflection greater then zero.'
            if balanceOf[address(msg.sender)].field_0 and 10^9 > -1 / balanceOf[address(msg.sender)].field_0:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if 10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply and sub_6f60a4b3 > -1 / 10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply:
                revert with 0, 17
            if 10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9 < sub_16ec4968[msg.sender]:
                revert with 0, 17
            if balanceOf[address(this.address)].field_0 < (10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9) - sub_16ec4968[msg.sender]:
                revert with 0, 'Contract do not have sufficient balance for rewards'
            mem[160] = this.address
            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                    gas gas_remaining wei
            mem[256] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[192] = ext_call.return_data[12 len 20]
            mem[224] = rewardTokenAddress
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = (10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9) - sub_16ec4968[msg.sender]
            emit Approval(((10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9) - sub_16ec4968[msg.sender]), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
            mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 260] = (10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9) - sub_16ec4968[msg.sender]
            idx = 0
            s = ceil32(return_data.size) + 452
            t = 160
            while idx < 3:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args (10^9 * balanceOf[address(msg.sender)].field_0 / totalSupply * sub_6f60a4b3 / 10^9) - sub_16ec4968[msg.sender], 0, 160, msg.sender, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.timestamp > !withdrawalInterval:
                revert with 0, 17
            sub_2183e9fc[msg.sender] = block.timestamp + withdrawalInterval
        require not msg.value
        require calldata.size - 4 >= 96
        require cd[4] == address(cd[4])
        require cd[36] == address(cd[36])
        if stor10[address(cd[4])]:
            revert with 0, 'ERC20: Address blacklisted.'
        if not address(cd[4]):
            revert with 0, 'ERC20: transfer from the zero address'
        if not address(cd[36]):
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(cd[4])].field_0 < cd[68]:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(cd[4])].field_0 -= cd[68]
        if not launched:
            if pairAddress != address(cd[4]):
                if balanceOf[address(cd[36])].field_0 > !cd[68]:
                    revert with 0, 17
                balanceOf[address(cd[36])].field_0 += cd[68]
                emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
            else:
                if balanceOf[this.address].field_0 > !cd[68]:
                    revert with 0, 17
                balanceOf[this.address].field_0 += cd[68]
                stor10[address(cd[36])] = 1
                emit 0x4eddf252: cd[68], address(cd[4]), this.address
            if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                revert with 0, 'ERC20: transfer amount exceeds allowance'
            if not address(cd[4]):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
        else:
            if stor12[address(cd[4])]:
                if balanceOf[address(cd[36])].field_0 > !cd[68]:
                    revert with 0, 17
                balanceOf[address(cd[36])].field_0 += cd[68]
                emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                    revert with 0, 'ERC20: transfer amount exceeds allowance'
                if not address(cd[4]):
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
            else:
                if pairAddress == address(cd[4]):
                    if this.address == address(cd[4]):
                        if balanceOf[address(cd[36])].field_0 > !cd[68]:
                            revert with 0, 17
                        balanceOf[address(cd[36])].field_0 += cd[68]
                        emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                    else:
                        if this.address == address(cd[36]):
                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                revert with 0, 17
                            balanceOf[address(cd[36])].field_0 += cd[68]
                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                        else:
                            if liquidityFee and cd[68] > -1 / liquidityFee:
                                revert with 0, 17
                            if buyBackFee and cd[68] > -1 / buyBackFee:
                                revert with 0, 17
                            if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                revert with 0, 17
                            if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                revert with 0, 17
                            if reflectionFee and cd[68] > -1 / reflectionFee:
                                revert with 0, 17
                            if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                revert with 0, 17
                            if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                revert with 0, 17
                            if stor44AD > !(buyBackFee * cd[68] / 100):
                                revert with 0, 17
                            stor44AD += buyBackFee * cd[68] / 100
                            if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                revert with 0, 17
                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                revert with 0, 17
                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                revert with 0, 17
                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                revert with 0, 17
                            if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                revert with 0, 17
                            balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                            if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                revert with 0, 17
                            balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                            if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                revert with 0, 17
                            sub_1678c929 += liquidityFee * cd[68] / 100
                            if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                revert with 0, 17
                            uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                            if stor18 > !(marketingWalletFee * cd[68] / 100):
                                revert with 0, 17
                            stor18 += marketingWalletFee * cd[68] / 100
                            if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                revert with 0, 17
                            stor19 += sub_c18a8c47 * cd[68] / 100
                            if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                revert with 0, 17
                            sub_6f60a4b3 += reflectionFee * cd[68] / 100
                            emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                    if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
                else:
                    if this.address == address(cd[4]):
                        if balanceOf[address(cd[36])].field_0 > !cd[68]:
                            revert with 0, 17
                        balanceOf[address(cd[36])].field_0 += cd[68]
                        emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                        if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                        if not address(cd[4]):
                            revert with 0, 'ERC20: approve from the zero address'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve to the zero address'
                    else:
                        if not balanceOf[address(this.address)].field_0:
                            if uint256(sub_66f8520b) < 10^18:
                                revert with 0, 'Require at least one token'
                            if not balanceOf[address(this.address)].field_0:
                                if balanceOf[address(this.address)].field_0 < stor18:
                                    if balanceOf[address(this.address)].field_0 >= stor19:
                                        mem[160] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        mem[224] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 260] = stor19
                                        idx = 0
                                        s = ceil32(return_data.size) + 452
                                        t = 160
                                        while idx < 3:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                                else:
                                    mem[160] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[256] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[192] = ext_call.return_data[12 len 20]
                                    mem[224] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                    emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 260] = stor18
                                    mem[ceil32(return_data.size) + 420] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + 452
                                    t = 160
                                    while idx < 3:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 388] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor18, 0, 160, marketingWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor18 < 0:
                                        revert with 0, 17
                                    if balanceOf[address(this.address)].field_0 >= stor19:
                                        mem[ceil32(return_data.size) + 256] = 3
                                        mem[ceil32(return_data.size) + 288] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 388] = stor19
                                        mem[(2 * ceil32(return_data.size)) + 420] = 0
                                        mem[(2 * ceil32(return_data.size)) + 452] = 160
                                        mem[(2 * ceil32(return_data.size)) + 548] = 3
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 580
                                        t = ceil32(return_data.size) + 288
                                        while idx < mem[ceil32(return_data.size) + 256]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 484] = teamWalletAddress
                                        mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                            else:
                                if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                    if balanceOf[address(this.address)].field_0 < stor18:
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[160] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[256] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            mem[224] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 260] = stor19
                                            idx = 0
                                            s = ceil32(return_data.size) + 452
                                            t = 160
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                        if this.address == address(cd[4]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if this.address == address(cd[36]):
                                                if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += cd[68]
                                                emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                            else:
                                                if liquidityFee and cd[68] > -1 / liquidityFee:
                                                    revert with 0, 17
                                                if buyBackFee and cd[68] > -1 / buyBackFee:
                                                    revert with 0, 17
                                                if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                    revert with 0, 17
                                                if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                    revert with 0, 17
                                                if reflectionFee and cd[68] > -1 / reflectionFee:
                                                    revert with 0, 17
                                                if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                    revert with 0, 17
                                                if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                    revert with 0, 17
                                                if stor44AD > !(buyBackFee * cd[68] / 100):
                                                    revert with 0, 17
                                                stor44AD += buyBackFee * cd[68] / 100
                                                if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                    revert with 0, 17
                                                balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                                if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                                if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                    revert with 0, 17
                                                sub_1678c929 += liquidityFee * cd[68] / 100
                                                if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                    revert with 0, 17
                                                uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                                if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                    revert with 0, 17
                                                stor18 += marketingWalletFee * cd[68] / 100
                                                if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                    revert with 0, 17
                                                stor19 += sub_c18a8c47 * cd[68] / 100
                                                if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                    revert with 0, 17
                                                sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                                emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                        if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                        emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                        return 1
                                    mem[160] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[256] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[192] = ext_call.return_data[12 len 20]
                                    mem[224] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                    emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 260] = stor18
                                    mem[ceil32(return_data.size) + 420] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + 452
                                    t = 160
                                    while idx < 3:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 388] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor18, 0, 160, marketingWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor18 < 0:
                                        revert with 0, 17
                                    if balanceOf[address(this.address)].field_0 < stor19:
                                        if this.address == address(cd[4]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if this.address == address(cd[36]):
                                                if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += cd[68]
                                                emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                            else:
                                                if liquidityFee and cd[68] > -1 / liquidityFee:
                                                    revert with 0, 17
                                                if buyBackFee and cd[68] > -1 / buyBackFee:
                                                    revert with 0, 17
                                                if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                    revert with 0, 17
                                                if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                    revert with 0, 17
                                                if reflectionFee and cd[68] > -1 / reflectionFee:
                                                    revert with 0, 17
                                                if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                    revert with 0, 17
                                                if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                    revert with 0, 17
                                                if stor44AD > !(buyBackFee * cd[68] / 100):
                                                    revert with 0, 17
                                                stor44AD += buyBackFee * cd[68] / 100
                                                if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                    revert with 0, 17
                                                balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                                if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                                if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                    revert with 0, 17
                                                sub_1678c929 += liquidityFee * cd[68] / 100
                                                if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                    revert with 0, 17
                                                uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                                if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                    revert with 0, 17
                                                stor18 += marketingWalletFee * cd[68] / 100
                                                if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                    revert with 0, 17
                                                stor19 += sub_c18a8c47 * cd[68] / 100
                                                if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                    revert with 0, 17
                                                sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                                emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                        if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                        emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                        return 1
                                    mem[ceil32(return_data.size) + 256] = 3
                                    mem[ceil32(return_data.size) + 288] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                    emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 388] = stor19
                                    mem[(2 * ceil32(return_data.size)) + 420] = 0
                                    mem[(2 * ceil32(return_data.size)) + 452] = 160
                                    mem[(2 * ceil32(return_data.size)) + 548] = 3
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 580
                                    t = ceil32(return_data.size) + 288
                                    while idx < mem[ceil32(return_data.size) + 256]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 484] = teamWalletAddress
                                    mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor19 < 0:
                                        revert with 0, 17
                                    if this.address == address(cd[4]):
                                        if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])].field_0 += cd[68]
                                        emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                    else:
                                        if this.address == address(cd[36]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if liquidityFee and cd[68] > -1 / liquidityFee:
                                                revert with 0, 17
                                            if buyBackFee and cd[68] > -1 / buyBackFee:
                                                revert with 0, 17
                                            if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                revert with 0, 17
                                            if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                revert with 0, 17
                                            if reflectionFee and cd[68] > -1 / reflectionFee:
                                                revert with 0, 17
                                            if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                revert with 0, 17
                                            if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                revert with 0, 17
                                            if stor44AD > !(buyBackFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor44AD += buyBackFee * cd[68] / 100
                                            if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                            if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                            if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_1678c929 += liquidityFee * cd[68] / 100
                                            if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                            if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor18 += marketingWalletFee * cd[68] / 100
                                            if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            stor19 += sub_c18a8c47 * cd[68] / 100
                                            if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                            emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                    if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                        mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 388] = 32
                                        mem[(2 * ceil32(return_data.size)) + 420] = 40
                                        mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: transfer amount exceeds a'
                                        mem[(2 * ceil32(return_data.size)) + 484] = 'llowance' << 192
                                    else:
                                        if not address(cd[4]):
                                            mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 388] = 32
                                            mem[(2 * ceil32(return_data.size)) + 420] = 36
                                            mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: approve from the zero add'
                                            mem[(2 * ceil32(return_data.size)) + 484] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                        else:
                                            if msg.sender:
                                                allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                                emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                                return 1
                                            mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 388] = 32
                                            mem[(2 * ceil32(return_data.size)) + 420] = 34
                                            mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: approve to the zero addre'
                                            mem[(2 * ceil32(return_data.size)) + 484] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 384
                                       len ceil32(return_data.size) + 132
                                if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                    revert with 0, 'Contract do not have sufficient balance for rewards'
                                mem[128] = 3
                                mem[160] = this.address
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                        gas gas_remaining wei
                                mem[256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                mem[224] = 0x8918bb91882ce41d9d9892246e4b56e4571a9fd5
                                if uint256(sub_66f8520b) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = uint255(stor17)
                                emit Approval((2 * uint256(sub_66f8520b)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 260] = uint256(sub_66f8520b)
                                mem[ceil32(return_data.size) + 420] = 3
                                idx = 0
                                s = ceil32(return_data.size) + 452
                                t = 160
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 388] = block.timestamp
                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(sub_66f8520b), 0, 160, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                    revert with 0, 17
                                if uint256(sub_66f8520b) < 0:
                                    revert with 0, 17
                                if balanceOf[address(this.address)].field_0 < stor18:
                                    if balanceOf[address(this.address)].field_0 >= stor19:
                                        mem[ceil32(return_data.size) + 256] = 3
                                        mem[ceil32(return_data.size) + 288] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 388] = stor19
                                        mem[(2 * ceil32(return_data.size)) + 420] = 0
                                        mem[(2 * ceil32(return_data.size)) + 452] = 160
                                        mem[(2 * ceil32(return_data.size)) + 548] = 3
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 580
                                        t = ceil32(return_data.size) + 288
                                        while idx < mem[ceil32(return_data.size) + 256]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 484] = teamWalletAddress
                                        mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                                else:
                                    mem[ceil32(return_data.size) + 256] = 3
                                    mem[ceil32(return_data.size) + 288] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                    emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 388] = stor18
                                    mem[(2 * ceil32(return_data.size)) + 420] = 0
                                    mem[(2 * ceil32(return_data.size)) + 452] = 160
                                    mem[(2 * ceil32(return_data.size)) + 548] = 3
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 580
                                    t = ceil32(return_data.size) + 288
                                    while idx < mem[ceil32(return_data.size) + 256]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 484] = marketingWalletAddress
                                    mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor18, 0, 160, marketingWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor18 < 0:
                                        revert with 0, 17
                                    if balanceOf[address(this.address)].field_0 < stor19:
                                        if this.address == address(cd[4]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if this.address == address(cd[36]):
                                                if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += cd[68]
                                                emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                            else:
                                                if liquidityFee and cd[68] > -1 / liquidityFee:
                                                    revert with 0, 17
                                                if buyBackFee and cd[68] > -1 / buyBackFee:
                                                    revert with 0, 17
                                                if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                    revert with 0, 17
                                                if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                    revert with 0, 17
                                                if reflectionFee and cd[68] > -1 / reflectionFee:
                                                    revert with 0, 17
                                                if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                    revert with 0, 17
                                                if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                    revert with 0, 17
                                                if stor44AD > !(buyBackFee * cd[68] / 100):
                                                    revert with 0, 17
                                                stor44AD += buyBackFee * cd[68] / 100
                                                if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                    revert with 0, 17
                                                balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                                if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                                if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                    revert with 0, 17
                                                sub_1678c929 += liquidityFee * cd[68] / 100
                                                if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                    revert with 0, 17
                                                uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                                if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                    revert with 0, 17
                                                stor18 += marketingWalletFee * cd[68] / 100
                                                if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                    revert with 0, 17
                                                stor19 += sub_c18a8c47 * cd[68] / 100
                                                if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                    revert with 0, 17
                                                sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                                emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                        if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                            mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 388] = 32
                                            mem[(2 * ceil32(return_data.size)) + 420] = 40
                                            mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: transfer amount exceeds a'
                                            mem[(2 * ceil32(return_data.size)) + 484] = 'llowance' << 192
                                        else:
                                            if not address(cd[4]):
                                                mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 388] = 32
                                                mem[(2 * ceil32(return_data.size)) + 420] = 36
                                                mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: approve from the zero add'
                                                mem[(2 * ceil32(return_data.size)) + 484] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                            else:
                                                if msg.sender:
                                                    allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                                    emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                                    return 1
                                                mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 388] = 32
                                                mem[(2 * ceil32(return_data.size)) + 420] = 34
                                                mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: approve to the zero addre'
                                                mem[(2 * ceil32(return_data.size)) + 484] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (2 * ceil32(return_data.size)) + 384
                                           len ceil32(return_data.size) + 132
                                    mem[(2 * ceil32(return_data.size)) + 384] = 3
                                    mem[(2 * ceil32(return_data.size)) + 416] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 512
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 448] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 480] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                    emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[(4 * ceil32(return_data.size)) + 512] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                    mem[(4 * ceil32(return_data.size)) + 516] = stor19
                                    mem[(4 * ceil32(return_data.size)) + 548] = 0
                                    mem[(4 * ceil32(return_data.size)) + 580] = 160
                                    mem[(4 * ceil32(return_data.size)) + 676] = 3
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 708
                                    t = (2 * ceil32(return_data.size)) + 416
                                    while idx < mem[(2 * ceil32(return_data.size)) + 384]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 612] = teamWalletAddress
                                    mem[(4 * ceil32(return_data.size)) + 644] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 384]) + -mem[64] + 704]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor19 < 0:
                                        revert with 0, 17
                            if this.address == address(cd[4]):
                                if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                    revert with 0, 17
                                balanceOf[address(cd[36])].field_0 += cd[68]
                                emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                            else:
                                if this.address == address(cd[36]):
                                    if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])].field_0 += cd[68]
                                    emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                else:
                                    if liquidityFee and cd[68] > -1 / liquidityFee:
                                        revert with 0, 17
                                    if buyBackFee and cd[68] > -1 / buyBackFee:
                                        revert with 0, 17
                                    if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                        revert with 0, 17
                                    if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                        revert with 0, 17
                                    if reflectionFee and cd[68] > -1 / reflectionFee:
                                        revert with 0, 17
                                    if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                        revert with 0, 17
                                    if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                        revert with 0, 17
                                    if stor44AD > !(buyBackFee * cd[68] / 100):
                                        revert with 0, 17
                                    stor44AD += buyBackFee * cd[68] / 100
                                    if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                        revert with 0, 17
                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                        revert with 0, 17
                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                        revert with 0, 17
                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                        revert with 0, 17
                                    if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                        revert with 0, 17
                                    balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                    if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                        revert with 0, 17
                                    balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                    if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                        revert with 0, 17
                                    sub_1678c929 += liquidityFee * cd[68] / 100
                                    if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                        revert with 0, 17
                                    uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                    if stor18 > !(marketingWalletFee * cd[68] / 100):
                                        revert with 0, 17
                                    stor18 += marketingWalletFee * cd[68] / 100
                                    if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                        revert with 0, 17
                                    stor19 += sub_c18a8c47 * cd[68] / 100
                                    if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                        revert with 0, 17
                                    sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                    emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                            if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                            if not address(cd[4]):
                                revert with 0, 'ERC20: approve from the zero address'
                            if not msg.sender:
                                revert with 0, 'ERC20: approve to the zero address'
                        else:
                            if balanceOf[address(this.address)].field_0 < sub_1678c929:
                                if uint256(sub_66f8520b) < 10^18:
                                    revert with 0, 'Require at least one token'
                                if not balanceOf[address(this.address)].field_0:
                                    if balanceOf[address(this.address)].field_0 < stor18:
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[160] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[256] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            mem[224] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 260] = stor19
                                            idx = 0
                                            s = ceil32(return_data.size) + 452
                                            t = 160
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                    else:
                                        mem[160] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        mem[224] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                        emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 260] = stor18
                                        mem[ceil32(return_data.size) + 420] = 3
                                        idx = 0
                                        s = ceil32(return_data.size) + 452
                                        t = 160
                                        while idx < 3:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(return_data.size) + 388] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor18, 0, 160, marketingWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor18 < 0:
                                            revert with 0, 17
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[ceil32(return_data.size) + 256] = 3
                                            mem[ceil32(return_data.size) + 288] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 388] = stor19
                                            mem[(2 * ceil32(return_data.size)) + 420] = 0
                                            mem[(2 * ceil32(return_data.size)) + 452] = 160
                                            mem[(2 * ceil32(return_data.size)) + 548] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + 580
                                            t = ceil32(return_data.size) + 288
                                            while idx < mem[ceil32(return_data.size) + 256]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + 484] = teamWalletAddress
                                            mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                    if this.address == address(cd[4]):
                                        if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])].field_0 += cd[68]
                                        emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                    else:
                                        if this.address == address(cd[36]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if liquidityFee and cd[68] > -1 / liquidityFee:
                                                revert with 0, 17
                                            if buyBackFee and cd[68] > -1 / buyBackFee:
                                                revert with 0, 17
                                            if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                revert with 0, 17
                                            if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                revert with 0, 17
                                            if reflectionFee and cd[68] > -1 / reflectionFee:
                                                revert with 0, 17
                                            if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                revert with 0, 17
                                            if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                revert with 0, 17
                                            if stor44AD > !(buyBackFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor44AD += buyBackFee * cd[68] / 100
                                            if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                            if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                            if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_1678c929 += liquidityFee * cd[68] / 100
                                            if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                            if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor18 += marketingWalletFee * cd[68] / 100
                                            if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            stor19 += sub_c18a8c47 * cd[68] / 100
                                            if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                            emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                    if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                    emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                    return 1
                                if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                    if balanceOf[address(this.address)].field_0 < stor18:
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[160] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[256] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            mem[224] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 260] = stor19
                                            idx = 0
                                            s = ceil32(return_data.size) + 452
                                            t = 160
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                    else:
                                        mem[160] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        mem[224] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                        emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 260] = stor18
                                        mem[ceil32(return_data.size) + 420] = 3
                                        idx = 0
                                        s = ceil32(return_data.size) + 452
                                        t = 160
                                        while idx < 3:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(return_data.size) + 388] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor18, 0, 160, marketingWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor18 < 0:
                                            revert with 0, 17
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[ceil32(return_data.size) + 256] = 3
                                            mem[ceil32(return_data.size) + 288] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 388] = stor19
                                            mem[(2 * ceil32(return_data.size)) + 420] = 0
                                            mem[(2 * ceil32(return_data.size)) + 452] = 160
                                            mem[(2 * ceil32(return_data.size)) + 548] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + 580
                                            t = ceil32(return_data.size) + 288
                                            while idx < mem[ceil32(return_data.size) + 256]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + 484] = teamWalletAddress
                                            mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                    if this.address == address(cd[4]):
                                        if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])].field_0 += cd[68]
                                        emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                    else:
                                        if this.address == address(cd[36]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if liquidityFee and cd[68] > -1 / liquidityFee:
                                                revert with 0, 17
                                            if buyBackFee and cd[68] > -1 / buyBackFee:
                                                revert with 0, 17
                                            if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                revert with 0, 17
                                            if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                revert with 0, 17
                                            if reflectionFee and cd[68] > -1 / reflectionFee:
                                                revert with 0, 17
                                            if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                revert with 0, 17
                                            if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                revert with 0, 17
                                            if stor44AD > !(buyBackFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor44AD += buyBackFee * cd[68] / 100
                                            if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                            if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                            if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_1678c929 += liquidityFee * cd[68] / 100
                                            if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                            if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor18 += marketingWalletFee * cd[68] / 100
                                            if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            stor19 += sub_c18a8c47 * cd[68] / 100
                                            if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                            emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                    if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: approve to the zero address'
                                    allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                    emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                    return 1
                                if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                    revert with 0, 'Contract do not have sufficient balance for rewards'
                                mem[128] = 3
                                mem[160] = this.address
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                        gas gas_remaining wei
                                mem[256] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                mem[224] = 0x8918bb91882ce41d9d9892246e4b56e4571a9fd5
                                if uint256(sub_66f8520b) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = uint255(stor17)
                                emit Approval((2 * uint256(sub_66f8520b)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 260] = uint256(sub_66f8520b)
                                mem[ceil32(return_data.size) + 420] = 3
                                idx = 0
                                s = ceil32(return_data.size) + 452
                                t = 160
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(return_data.size) + 388] = block.timestamp
                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args uint256(sub_66f8520b), 0, 160, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                    revert with 0, 17
                                if uint256(sub_66f8520b) < 0:
                                    revert with 0, 17
                                if balanceOf[address(this.address)].field_0 < stor18:
                                    if balanceOf[address(this.address)].field_0 < stor19:
                                        if this.address == address(cd[4]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if this.address == address(cd[36]):
                                                if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += cd[68]
                                                emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                            else:
                                                if liquidityFee and cd[68] > -1 / liquidityFee:
                                                    revert with 0, 17
                                                if buyBackFee and cd[68] > -1 / buyBackFee:
                                                    revert with 0, 17
                                                if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                    revert with 0, 17
                                                if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                    revert with 0, 17
                                                if reflectionFee and cd[68] > -1 / reflectionFee:
                                                    revert with 0, 17
                                                if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                    revert with 0, 17
                                                if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                    revert with 0, 17
                                                if stor44AD > !(buyBackFee * cd[68] / 100):
                                                    revert with 0, 17
                                                stor44AD += buyBackFee * cd[68] / 100
                                                if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                    revert with 0, 17
                                                balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                                if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                                if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                    revert with 0, 17
                                                sub_1678c929 += liquidityFee * cd[68] / 100
                                                if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                    revert with 0, 17
                                                uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                                if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                    revert with 0, 17
                                                stor18 += marketingWalletFee * cd[68] / 100
                                                if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                    revert with 0, 17
                                                stor19 += sub_c18a8c47 * cd[68] / 100
                                                if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                    revert with 0, 17
                                                sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                                emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                        if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                        emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                        return 1
                                    mem[ceil32(return_data.size) + 256] = 3
                                    mem[ceil32(return_data.size) + 288] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                    mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                    emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 388] = stor19
                                    mem[(2 * ceil32(return_data.size)) + 420] = 0
                                    mem[(2 * ceil32(return_data.size)) + 452] = 160
                                    mem[(2 * ceil32(return_data.size)) + 548] = 3
                                    idx = 0
                                    s = (2 * ceil32(return_data.size)) + 580
                                    t = ceil32(return_data.size) + 288
                                    while idx < mem[ceil32(return_data.size) + 256]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(2 * ceil32(return_data.size)) + 484] = teamWalletAddress
                                    mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor19 < 0:
                                        revert with 0, 17
                                    if this.address == address(cd[4]):
                                        if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])].field_0 += cd[68]
                                        emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                    else:
                                        if this.address == address(cd[36]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if liquidityFee and cd[68] > -1 / liquidityFee:
                                                revert with 0, 17
                                            if buyBackFee and cd[68] > -1 / buyBackFee:
                                                revert with 0, 17
                                            if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                revert with 0, 17
                                            if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                revert with 0, 17
                                            if reflectionFee and cd[68] > -1 / reflectionFee:
                                                revert with 0, 17
                                            if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                revert with 0, 17
                                            if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                revert with 0, 17
                                            if stor44AD > !(buyBackFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor44AD += buyBackFee * cd[68] / 100
                                            if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                            if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                            if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_1678c929 += liquidityFee * cd[68] / 100
                                            if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                            if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor18 += marketingWalletFee * cd[68] / 100
                                            if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            stor19 += sub_c18a8c47 * cd[68] / 100
                                            if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                            emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                    if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                        mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 388] = 32
                                        mem[(2 * ceil32(return_data.size)) + 420] = 40
                                        mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: transfer amount exceeds a'
                                        mem[(2 * ceil32(return_data.size)) + 484] = 'llowance' << 192
                                    else:
                                        if not address(cd[4]):
                                            mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 388] = 32
                                            mem[(2 * ceil32(return_data.size)) + 420] = 36
                                            mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: approve from the zero add'
                                            mem[(2 * ceil32(return_data.size)) + 484] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                        else:
                                            if msg.sender:
                                                allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                                emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                                return 1
                                            mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 388] = 32
                                            mem[(2 * ceil32(return_data.size)) + 420] = 34
                                            mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: approve to the zero addre'
                                            mem[(2 * ceil32(return_data.size)) + 484] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 384
                                       len ceil32(return_data.size) + 132
                                mem[ceil32(return_data.size) + 256] = 3
                                mem[ceil32(return_data.size) + 288] = this.address
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                        gas gas_remaining wei
                                mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 388] = stor18
                                mem[(2 * ceil32(return_data.size)) + 420] = 0
                                mem[(2 * ceil32(return_data.size)) + 452] = 160
                                mem[(2 * ceil32(return_data.size)) + 548] = 3
                                idx = 0
                                s = (2 * ceil32(return_data.size)) + 580
                                t = ceil32(return_data.size) + 288
                                while idx < mem[ceil32(return_data.size) + 256]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(2 * ceil32(return_data.size)) + 484] = marketingWalletAddress
                                mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor18, 0, 160, marketingWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                    revert with 0, 17
                                if stor18 < 0:
                                    revert with 0, 17
                                if balanceOf[address(this.address)].field_0 < stor19:
                                    if this.address == address(cd[4]):
                                        if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])].field_0 += cd[68]
                                        emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                    else:
                                        if this.address == address(cd[36]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if liquidityFee and cd[68] > -1 / liquidityFee:
                                                revert with 0, 17
                                            if buyBackFee and cd[68] > -1 / buyBackFee:
                                                revert with 0, 17
                                            if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                revert with 0, 17
                                            if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                revert with 0, 17
                                            if reflectionFee and cd[68] > -1 / reflectionFee:
                                                revert with 0, 17
                                            if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                revert with 0, 17
                                            if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                revert with 0, 17
                                            if stor44AD > !(buyBackFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor44AD += buyBackFee * cd[68] / 100
                                            if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                            if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                            if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_1678c929 += liquidityFee * cd[68] / 100
                                            if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                            if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor18 += marketingWalletFee * cd[68] / 100
                                            if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            stor19 += sub_c18a8c47 * cd[68] / 100
                                            if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                            emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                    if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                        mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 388] = 32
                                        mem[(2 * ceil32(return_data.size)) + 420] = 40
                                        mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: transfer amount exceeds a'
                                        mem[(2 * ceil32(return_data.size)) + 484] = 'llowance' << 192
                                    else:
                                        if not address(cd[4]):
                                            mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 388] = 32
                                            mem[(2 * ceil32(return_data.size)) + 420] = 36
                                            mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: approve from the zero add'
                                            mem[(2 * ceil32(return_data.size)) + 484] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                        else:
                                            if msg.sender:
                                                allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                                emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                                return 1
                                            mem[(2 * ceil32(return_data.size)) + 384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 388] = 32
                                            mem[(2 * ceil32(return_data.size)) + 420] = 34
                                            mem[(2 * ceil32(return_data.size)) + 452] = 'ERC20: approve to the zero addre'
                                            mem[(2 * ceil32(return_data.size)) + 484] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 384
                                       len ceil32(return_data.size) + 132
                                mem[(2 * ceil32(return_data.size)) + 384] = 3
                                mem[(2 * ceil32(return_data.size)) + 416] = this.address
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 512
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 448] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 480] = rewardTokenAddress
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                mem[(4 * ceil32(return_data.size)) + 512] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                mem[(4 * ceil32(return_data.size)) + 516] = stor19
                                mem[(4 * ceil32(return_data.size)) + 548] = 0
                                mem[(4 * ceil32(return_data.size)) + 580] = 160
                                mem[(4 * ceil32(return_data.size)) + 676] = 3
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 708
                                t = (2 * ceil32(return_data.size)) + 416
                                while idx < mem[(2 * ceil32(return_data.size)) + 384]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 612] = teamWalletAddress
                                mem[(4 * ceil32(return_data.size)) + 644] = block.timestamp
                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(4 * ceil32(return_data.size)) + 676 len (32 * mem[(2 * ceil32(return_data.size)) + 384]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                    revert with 0, 17
                                if stor19 < 0:
                                    revert with 0, 17
                                if this.address == address(cd[4]):
                                    if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])].field_0 += cd[68]
                                    emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                else:
                                    if this.address == address(cd[36]):
                                        if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])].field_0 += cd[68]
                                        emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                    else:
                                        if liquidityFee and cd[68] > -1 / liquidityFee:
                                            revert with 0, 17
                                        if buyBackFee and cd[68] > -1 / buyBackFee:
                                            revert with 0, 17
                                        if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                            revert with 0, 17
                                        if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                            revert with 0, 17
                                        if reflectionFee and cd[68] > -1 / reflectionFee:
                                            revert with 0, 17
                                        if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                            revert with 0, 17
                                        if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                            revert with 0, 17
                                        if stor44AD > !(buyBackFee * cd[68] / 100):
                                            revert with 0, 17
                                        stor44AD += buyBackFee * cd[68] / 100
                                        if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                            revert with 0, 17
                                        if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                            revert with 0, 17
                                        if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                            revert with 0, 17
                                        if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                            revert with 0, 17
                                        balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                        if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                        if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                            revert with 0, 17
                                        sub_1678c929 += liquidityFee * cd[68] / 100
                                        if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                            revert with 0, 17
                                        uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                        if stor18 > !(marketingWalletFee * cd[68] / 100):
                                            revert with 0, 17
                                        stor18 += marketingWalletFee * cd[68] / 100
                                        if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                            revert with 0, 17
                                        stor19 += sub_c18a8c47 * cd[68] / 100
                                        if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                            revert with 0, 17
                                        sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                        emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                    mem[(4 * ceil32(return_data.size)) + 512] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 516] = 32
                                    mem[(4 * ceil32(return_data.size)) + 548] = 40
                                    mem[(4 * ceil32(return_data.size)) + 580] = 'ERC20: transfer amount exceeds a'
                                    mem[(4 * ceil32(return_data.size)) + 612] = 'llowance' << 192
                                else:
                                    if not address(cd[4]):
                                        mem[(4 * ceil32(return_data.size)) + 512] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 516] = 32
                                        mem[(4 * ceil32(return_data.size)) + 548] = 36
                                        mem[(4 * ceil32(return_data.size)) + 580] = 'ERC20: approve from the zero add'
                                        mem[(4 * ceil32(return_data.size)) + 612] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                    else:
                                        if msg.sender:
                                            allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                            emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                            return 1
                                        mem[(4 * ceil32(return_data.size)) + 512] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 516] = 32
                                        mem[(4 * ceil32(return_data.size)) + 548] = 34
                                        mem[(4 * ceil32(return_data.size)) + 580] = 'ERC20: approve to the zero addre'
                                        mem[(4 * ceil32(return_data.size)) + 612] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 512
                                   len (5 * ceil32(return_data.size)) + 132
                            if sub_1678c929 < stor16:
                                revert with 0, 17
                            mem[128] = 2
                            mem[160] = this.address
                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                    gas gas_remaining wei
                            mem[224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[192] = ext_call.return_data[12 len 20]
                            if stor16 and 2 > -1 / stor16:
                                revert with 0, 17
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = stor16
                            emit Approval((2 * stor16), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                            mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 228] = stor16
                            idx = 0
                            s = ceil32(return_data.size) + 420
                            t = 160
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                            call ????????????????????????????????????????.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args 2 * Mask(256, -1, stor16), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            if sub_1678c929 - stor16 and 2 > -1 / sub_1678c929 - stor16:
                                revert with 0, 17
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = uint255(sub_1678c929 - stor16)
                            emit Approval((2 * sub_1678c929 - stor16), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                            mem[ceil32(return_data.size) + 292] = 0
                            mem[ceil32(return_data.size) + 324] = 0
                            mem[ceil32(return_data.size) + 356] = 0
                            mem[ceil32(return_data.size) + 388] = block.timestamp
                            call ????????????????????????????????????????.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args this.address, sub_1678c929 - stor16, 0, 0, 0, block.timestamp
                            mem[ceil32(return_data.size) + 224 len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit SwapAndLiquify(2 * Mask(256, -1, stor16), 0, sub_1678c929 - stor16);
                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                revert with 0, 17
                            if sub_1678c929 < 0:
                                revert with 0, 17
                            if uint256(sub_66f8520b) < 10^18:
                                revert with 0, 'Require at least one token'
                            if not balanceOf[address(this.address)].field_0:
                                if balanceOf[address(this.address)].field_0 < stor18:
                                    if balanceOf[address(this.address)].field_0 < stor19:
                                        if this.address == address(cd[4]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if this.address == address(cd[36]):
                                                if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += cd[68]
                                                emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                            else:
                                                if liquidityFee and cd[68] > -1 / liquidityFee:
                                                    revert with 0, 17
                                                if buyBackFee and cd[68] > -1 / buyBackFee:
                                                    revert with 0, 17
                                                if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                    revert with 0, 17
                                                if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                    revert with 0, 17
                                                if reflectionFee and cd[68] > -1 / reflectionFee:
                                                    revert with 0, 17
                                                if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                    revert with 0, 17
                                                if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                    revert with 0, 17
                                                if stor44AD > !(buyBackFee * cd[68] / 100):
                                                    revert with 0, 17
                                                stor44AD += buyBackFee * cd[68] / 100
                                                if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                    revert with 0, 17
                                                balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                                if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                                if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                    revert with 0, 17
                                                sub_1678c929 += liquidityFee * cd[68] / 100
                                                if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                    revert with 0, 17
                                                uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                                if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                    revert with 0, 17
                                                stor18 += marketingWalletFee * cd[68] / 100
                                                if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                    revert with 0, 17
                                                stor19 += sub_c18a8c47 * cd[68] / 100
                                                if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                    revert with 0, 17
                                                sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                                emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                        if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: approve to the zero address'
                                        allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                        emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                        return 1
                                    mem[(2 * ceil32(return_data.size)) + 224] = 3
                                    mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 352
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 320] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                    emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[(4 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                    mem[(4 * ceil32(return_data.size)) + 356] = stor19
                                    mem[(4 * ceil32(return_data.size)) + 388] = 0
                                    mem[(4 * ceil32(return_data.size)) + 420] = 160
                                    mem[(4 * ceil32(return_data.size)) + 516] = 3
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 548
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 452] = teamWalletAddress
                                    mem[(4 * ceil32(return_data.size)) + 484] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(4 * ceil32(return_data.size)) + 516 len (32 * mem[(2 * ceil32(return_data.size)) + 224]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor19 < 0:
                                        revert with 0, 17
                                    if this.address == address(cd[4]):
                                        if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])].field_0 += cd[68]
                                        emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                    else:
                                        if this.address == address(cd[36]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if liquidityFee and cd[68] > -1 / liquidityFee:
                                                revert with 0, 17
                                            if buyBackFee and cd[68] > -1 / buyBackFee:
                                                revert with 0, 17
                                            if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                revert with 0, 17
                                            if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                revert with 0, 17
                                            if reflectionFee and cd[68] > -1 / reflectionFee:
                                                revert with 0, 17
                                            if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                revert with 0, 17
                                            if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                revert with 0, 17
                                            if stor44AD > !(buyBackFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor44AD += buyBackFee * cd[68] / 100
                                            if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                            if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                            if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_1678c929 += liquidityFee * cd[68] / 100
                                            if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                            if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor18 += marketingWalletFee * cd[68] / 100
                                            if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            stor19 += sub_c18a8c47 * cd[68] / 100
                                            if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                            emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                    if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                        mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 356] = 32
                                        mem[(4 * ceil32(return_data.size)) + 388] = 40
                                        mem[(4 * ceil32(return_data.size)) + 420] = 'ERC20: transfer amount exceeds a'
                                        mem[(4 * ceil32(return_data.size)) + 452] = 'llowance' << 192
                                    else:
                                        if not address(cd[4]):
                                            mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 356] = 32
                                            mem[(4 * ceil32(return_data.size)) + 388] = 36
                                            mem[(4 * ceil32(return_data.size)) + 420] = 'ERC20: approve from the zero add'
                                            mem[(4 * ceil32(return_data.size)) + 452] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                        else:
                                            if msg.sender:
                                                allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                                emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                                return 1
                                            mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 356] = 32
                                            mem[(4 * ceil32(return_data.size)) + 388] = 34
                                            mem[(4 * ceil32(return_data.size)) + 420] = 'ERC20: approve to the zero addre'
                                            mem[(4 * ceil32(return_data.size)) + 452] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 352
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(2 * ceil32(return_data.size)) + 224] = 3
                                mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 352
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 320] = rewardTokenAddress
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                mem[32] = sha3(address(this.address), 1)
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                mem[(4 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                mem[(4 * ceil32(return_data.size)) + 356] = stor18
                                mem[(4 * ceil32(return_data.size)) + 388] = 0
                                mem[(4 * ceil32(return_data.size)) + 420] = 160
                                mem[(4 * ceil32(return_data.size)) + 516] = 3
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 548
                                t = (2 * ceil32(return_data.size)) + 256
                                while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 452] = marketingWalletAddress
                                mem[(4 * ceil32(return_data.size)) + 484] = block.timestamp
                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor18, 0, 160, marketingWalletAddress, block.timestamp, mem[(4 * ceil32(return_data.size)) + 516 len (32 * mem[(2 * ceil32(return_data.size)) + 224]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                    revert with 0, 17
                                if stor18 < 0:
                                    revert with 0, 17
                                if balanceOf[address(this.address)].field_0 < stor19:
                                    if this.address == address(cd[4]):
                                        if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])].field_0 += cd[68]
                                        emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                    else:
                                        if this.address == address(cd[36]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if liquidityFee and cd[68] > -1 / liquidityFee:
                                                revert with 0, 17
                                            if buyBackFee and cd[68] > -1 / buyBackFee:
                                                revert with 0, 17
                                            if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                revert with 0, 17
                                            if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                revert with 0, 17
                                            if reflectionFee and cd[68] > -1 / reflectionFee:
                                                revert with 0, 17
                                            if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                revert with 0, 17
                                            if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                revert with 0, 17
                                            if stor44AD > !(buyBackFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor44AD += buyBackFee * cd[68] / 100
                                            if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                            if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                            if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_1678c929 += liquidityFee * cd[68] / 100
                                            if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                            if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor18 += marketingWalletFee * cd[68] / 100
                                            if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            stor19 += sub_c18a8c47 * cd[68] / 100
                                            if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                            emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                    if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                        mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 356] = 32
                                        mem[(4 * ceil32(return_data.size)) + 388] = 40
                                        mem[(4 * ceil32(return_data.size)) + 420] = 'ERC20: transfer amount exceeds a'
                                        mem[(4 * ceil32(return_data.size)) + 452] = 'llowance' << 192
                                    else:
                                        if not address(cd[4]):
                                            mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 356] = 32
                                            mem[(4 * ceil32(return_data.size)) + 388] = 36
                                            mem[(4 * ceil32(return_data.size)) + 420] = 'ERC20: approve from the zero add'
                                            mem[(4 * ceil32(return_data.size)) + 452] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                        else:
                                            if msg.sender:
                                                allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                                emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                                return 1
                                            mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 356] = 32
                                            mem[(4 * ceil32(return_data.size)) + 388] = 34
                                            mem[(4 * ceil32(return_data.size)) + 420] = 'ERC20: approve to the zero addre'
                                            mem[(4 * ceil32(return_data.size)) + 452] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                    revert with memory
                                      from (4 * ceil32(return_data.size)) + 352
                                       len (5 * ceil32(return_data.size)) + 132
                                mem[(4 * ceil32(return_data.size)) + 384] = this.address
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                        gas gas_remaining wei
                                mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                mem[(6 * ceil32(return_data.size)) + 480] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 484] = stor19
                                mem[(6 * ceil32(return_data.size)) + 644] = 3
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 676
                                t = (4 * ceil32(return_data.size)) + 384
                                while idx < 3:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 612] = block.timestamp
                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 676 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                    revert with 0, 17
                                if stor19 < 0:
                                    revert with 0, 17
                                if this.address == address(cd[4]):
                                    if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                        revert with 0, 17
                                    balanceOf[address(cd[36])].field_0 += cd[68]
                                    emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                else:
                                    if this.address == address(cd[36]):
                                        if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])].field_0 += cd[68]
                                        emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                    else:
                                        if liquidityFee and cd[68] > -1 / liquidityFee:
                                            revert with 0, 17
                                        if buyBackFee and cd[68] > -1 / buyBackFee:
                                            revert with 0, 17
                                        if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                            revert with 0, 17
                                        if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                            revert with 0, 17
                                        if reflectionFee and cd[68] > -1 / reflectionFee:
                                            revert with 0, 17
                                        if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                            revert with 0, 17
                                        if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                            revert with 0, 17
                                        if stor44AD > !(buyBackFee * cd[68] / 100):
                                            revert with 0, 17
                                        stor44AD += buyBackFee * cd[68] / 100
                                        if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                            revert with 0, 17
                                        if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                            revert with 0, 17
                                        if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                            revert with 0, 17
                                        if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                            revert with 0, 17
                                        if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                            revert with 0, 17
                                        balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                        if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                            revert with 0, 17
                                        balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                        if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                            revert with 0, 17
                                        sub_1678c929 += liquidityFee * cd[68] / 100
                                        if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                            revert with 0, 17
                                        uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                        if stor18 > !(marketingWalletFee * cd[68] / 100):
                                            revert with 0, 17
                                        stor18 += marketingWalletFee * cd[68] / 100
                                        if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                            revert with 0, 17
                                        stor19 += sub_c18a8c47 * cd[68] / 100
                                        if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                            revert with 0, 17
                                        sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                        emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                    revert with 0, 
                                                'ERC20: transfer amount exceeds allowance',
                                                mem[(6 * ceil32(return_data.size)) + 612 len 9 * ceil32(return_data.size)]
                                if not address(cd[4]):
                                    revert with 0, 'ERC20: approve from the zero address', mem[(6 * ceil32(return_data.size)) + 612 len 9 * ceil32(return_data.size)]
                                if not msg.sender:
                                    revert with 0, 'ERC20: approve to the zero address', mem[(6 * ceil32(return_data.size)) + 612 len 9 * ceil32(return_data.size)]
                            else:
                                if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                    if balanceOf[address(this.address)].field_0 < stor18:
                                        if balanceOf[address(this.address)].field_0 < stor19:
                                            if this.address == address(cd[4]):
                                                if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += cd[68]
                                                emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                            else:
                                                if this.address == address(cd[36]):
                                                    if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[36])].field_0 += cd[68]
                                                    emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                                else:
                                                    if liquidityFee and cd[68] > -1 / liquidityFee:
                                                        revert with 0, 17
                                                    if buyBackFee and cd[68] > -1 / buyBackFee:
                                                        revert with 0, 17
                                                    if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                        revert with 0, 17
                                                    if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                        revert with 0, 17
                                                    if reflectionFee and cd[68] > -1 / reflectionFee:
                                                        revert with 0, 17
                                                    if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                        revert with 0, 17
                                                    if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                        revert with 0, 17
                                                    if stor44AD > !(buyBackFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    stor44AD += buyBackFee * cd[68] / 100
                                                    if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                        revert with 0, 17
                                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                        revert with 0, 17
                                                    if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                        revert with 0, 17
                                                    balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                                    if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                                    if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    sub_1678c929 += liquidityFee * cd[68] / 100
                                                    if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                        revert with 0, 17
                                                    uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                                    if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    stor18 += marketingWalletFee * cd[68] / 100
                                                    if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                        revert with 0, 17
                                                    stor19 += sub_c18a8c47 * cd[68] / 100
                                                    if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                                    emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                            if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not msg.sender:
                                                revert with 0, 'ERC20: approve to the zero address'
                                            allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                            emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                            return 1
                                        mem[(2 * ceil32(return_data.size)) + 224] = 3
                                        mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 352
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 320] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(4 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                        mem[(4 * ceil32(return_data.size)) + 356] = stor19
                                        mem[(4 * ceil32(return_data.size)) + 388] = 0
                                        mem[(4 * ceil32(return_data.size)) + 420] = 160
                                        mem[(4 * ceil32(return_data.size)) + 516] = 3
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 548
                                        t = (2 * ceil32(return_data.size)) + 256
                                        while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 452] = teamWalletAddress
                                        mem[(4 * ceil32(return_data.size)) + 484] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(4 * ceil32(return_data.size)) + 516 len (32 * mem[(2 * ceil32(return_data.size)) + 224]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                                        if this.address == address(cd[4]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if this.address == address(cd[36]):
                                                if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += cd[68]
                                                emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                            else:
                                                if liquidityFee and cd[68] > -1 / liquidityFee:
                                                    revert with 0, 17
                                                if buyBackFee and cd[68] > -1 / buyBackFee:
                                                    revert with 0, 17
                                                if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                    revert with 0, 17
                                                if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                    revert with 0, 17
                                                if reflectionFee and cd[68] > -1 / reflectionFee:
                                                    revert with 0, 17
                                                if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                    revert with 0, 17
                                                if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                    revert with 0, 17
                                                if stor44AD > !(buyBackFee * cd[68] / 100):
                                                    revert with 0, 17
                                                stor44AD += buyBackFee * cd[68] / 100
                                                if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                    revert with 0, 17
                                                balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                                if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                                if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                    revert with 0, 17
                                                sub_1678c929 += liquidityFee * cd[68] / 100
                                                if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                    revert with 0, 17
                                                uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                                if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                    revert with 0, 17
                                                stor18 += marketingWalletFee * cd[68] / 100
                                                if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                    revert with 0, 17
                                                stor19 += sub_c18a8c47 * cd[68] / 100
                                                if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                    revert with 0, 17
                                                sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                                emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                        if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                            mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[(4 * ceil32(return_data.size)) + 356] = 32
                                            mem[(4 * ceil32(return_data.size)) + 388] = 40
                                            mem[(4 * ceil32(return_data.size)) + 420] = 'ERC20: transfer amount exceeds a'
                                            mem[(4 * ceil32(return_data.size)) + 452] = 'llowance' << 192
                                        else:
                                            if not address(cd[4]):
                                                mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 356] = 32
                                                mem[(4 * ceil32(return_data.size)) + 388] = 36
                                                mem[(4 * ceil32(return_data.size)) + 420] = 'ERC20: approve from the zero add'
                                                mem[(4 * ceil32(return_data.size)) + 452] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                            else:
                                                if msg.sender:
                                                    allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                                    emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                                    return 1
                                                mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 356] = 32
                                                mem[(4 * ceil32(return_data.size)) + 388] = 34
                                                mem[(4 * ceil32(return_data.size)) + 420] = 'ERC20: approve to the zero addre'
                                                mem[(4 * ceil32(return_data.size)) + 452] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                        revert with memory
                                          from (4 * ceil32(return_data.size)) + 352
                                           len (5 * ceil32(return_data.size)) + 132
                                    mem[(2 * ceil32(return_data.size)) + 224] = 3
                                    mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 352
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 320] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                    emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[(4 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                    mem[(4 * ceil32(return_data.size)) + 356] = stor18
                                    mem[(4 * ceil32(return_data.size)) + 388] = 0
                                    mem[(4 * ceil32(return_data.size)) + 420] = 160
                                    mem[(4 * ceil32(return_data.size)) + 516] = 3
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 548
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 452] = marketingWalletAddress
                                    mem[(4 * ceil32(return_data.size)) + 484] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 224]) + -mem[64] + 544]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor18 < 0:
                                        revert with 0, 17
                                    mem[0] = this.address
                                    mem[32] = 0
                                    if balanceOf[address(this.address)].field_0 >= stor19:
                                        _8396 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        mem[_8396 + 32 len 96] = call.data[calldata.size len 96]
                                        if 0 >= mem[_8396]:
                                            revert with 0, 50
                                        mem[_8396 + 32] = this.address
                                        mem[0] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[_8396 + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _8396 + ceil32(return_data.size) + 128
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_8396]:
                                            revert with 0, 50
                                        mem[_8396 + 64] = ext_call.return_data[12 len 20]
                                        if 2 >= mem[_8396]:
                                            revert with 0, 50
                                        mem[_8396 + 96] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[_8396 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                        mem[_8396 + ceil32(return_data.size) + 132] = stor19
                                        mem[_8396 + ceil32(return_data.size) + 164] = 0
                                        mem[_8396 + ceil32(return_data.size) + 196] = 160
                                        mem[_8396 + ceil32(return_data.size) + 292] = mem[_8396]
                                        idx = 0
                                        s = _8396 + ceil32(return_data.size) + 324
                                        t = _8396 + 32
                                        while idx < mem[_8396]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_8396 + ceil32(return_data.size) + 228] = teamWalletAddress
                                        mem[_8396 + ceil32(return_data.size) + 260] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8396 + ceil32(return_data.size) + (32 * mem[_8396]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                                    if this.address == address(cd[4]):
                                        if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                            revert with 0, 17
                                        balanceOf[address(cd[36])].field_0 += cd[68]
                                        emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                    else:
                                        if this.address == address(cd[36]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if liquidityFee and cd[68] > -1 / liquidityFee:
                                                revert with 0, 17
                                            if buyBackFee and cd[68] > -1 / buyBackFee:
                                                revert with 0, 17
                                            if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                revert with 0, 17
                                            if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                revert with 0, 17
                                            if reflectionFee and cd[68] > -1 / reflectionFee:
                                                revert with 0, 17
                                            if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                revert with 0, 17
                                            if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                revert with 0, 17
                                            if stor44AD > !(buyBackFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor44AD += buyBackFee * cd[68] / 100
                                            if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                revert with 0, 17
                                            balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                            if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                            if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_1678c929 += liquidityFee * cd[68] / 100
                                            if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                revert with 0, 17
                                            uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                            if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                revert with 0, 17
                                            stor18 += marketingWalletFee * cd[68] / 100
                                            if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                revert with 0, 17
                                            stor19 += sub_c18a8c47 * cd[68] / 100
                                            if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                revert with 0, 17
                                            sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                            emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                    if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                        revert with 0, 'ERC20: transfer amount exceeds allowance'
                                    if not address(cd[4]):
                                        revert with 0, 'ERC20: approve from the zero address'
                                    if not msg.sender:
                                        revert with 0, 'ERC20: approve to the zero address'
                                else:
                                    if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                        revert with 0, 'Contract do not have sufficient balance for rewards'
                                    mem[(2 * ceil32(return_data.size)) + 224] = 3
                                    mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 352
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 320] = 0x8918bb91882ce41d9d9892246e4b56e4571a9fd5
                                    if uint256(sub_66f8520b) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    mem[32] = sha3(address(this.address), 1)
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = uint255(stor17)
                                    emit Approval((2 * uint256(sub_66f8520b)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[(4 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                    mem[(4 * ceil32(return_data.size)) + 356] = uint256(sub_66f8520b)
                                    mem[(4 * ceil32(return_data.size)) + 388] = 0
                                    mem[(4 * ceil32(return_data.size)) + 420] = 160
                                    mem[(4 * ceil32(return_data.size)) + 516] = 3
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 548
                                    t = (2 * ceil32(return_data.size)) + 256
                                    while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 452] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 484] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args uint256(sub_66f8520b), 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 516 len (32 * mem[(2 * ceil32(return_data.size)) + 224]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if uint256(sub_66f8520b) < 0:
                                        revert with 0, 17
                                    if balanceOf[address(this.address)].field_0 < stor18:
                                        if balanceOf[address(this.address)].field_0 < stor19:
                                            if this.address == address(cd[4]):
                                                if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += cd[68]
                                                emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                            else:
                                                if this.address == address(cd[36]):
                                                    if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[36])].field_0 += cd[68]
                                                    emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                                else:
                                                    if liquidityFee and cd[68] > -1 / liquidityFee:
                                                        revert with 0, 17
                                                    if buyBackFee and cd[68] > -1 / buyBackFee:
                                                        revert with 0, 17
                                                    if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                        revert with 0, 17
                                                    if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                        revert with 0, 17
                                                    if reflectionFee and cd[68] > -1 / reflectionFee:
                                                        revert with 0, 17
                                                    if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                        revert with 0, 17
                                                    if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                        revert with 0, 17
                                                    if stor44AD > !(buyBackFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    stor44AD += buyBackFee * cd[68] / 100
                                                    if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                        revert with 0, 17
                                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                        revert with 0, 17
                                                    if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                        revert with 0, 17
                                                    balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                                    if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                                    if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    sub_1678c929 += liquidityFee * cd[68] / 100
                                                    if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                        revert with 0, 17
                                                    uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                                    if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    stor18 += marketingWalletFee * cd[68] / 100
                                                    if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                        revert with 0, 17
                                                    stor19 += sub_c18a8c47 * cd[68] / 100
                                                    if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                                    emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                            if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                                mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[(4 * ceil32(return_data.size)) + 356] = 32
                                                mem[(4 * ceil32(return_data.size)) + 388] = 40
                                                mem[(4 * ceil32(return_data.size)) + 420] = 'ERC20: transfer amount exceeds a'
                                                mem[(4 * ceil32(return_data.size)) + 452] = 'llowance' << 192
                                            else:
                                                if not address(cd[4]):
                                                    mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + 356] = 32
                                                    mem[(4 * ceil32(return_data.size)) + 388] = 36
                                                    mem[(4 * ceil32(return_data.size)) + 420] = 'ERC20: approve from the zero add'
                                                    mem[(4 * ceil32(return_data.size)) + 452] = 0x7265737300000000000000000000000000000000000000000000000000000000
                                                else:
                                                    if msg.sender:
                                                        allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
                                                        emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
                                                        return 1
                                                    mem[(4 * ceil32(return_data.size)) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[(4 * ceil32(return_data.size)) + 356] = 32
                                                    mem[(4 * ceil32(return_data.size)) + 388] = 34
                                                    mem[(4 * ceil32(return_data.size)) + 420] = 'ERC20: approve to the zero addre'
                                                    mem[(4 * ceil32(return_data.size)) + 452] = 0x7373000000000000000000000000000000000000000000000000000000000000
                                            revert with memory
                                              from (4 * ceil32(return_data.size)) + 352
                                               len (5 * ceil32(return_data.size)) + 132
                                        mem[(4 * ceil32(return_data.size)) + 384] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[12 len 20]
                                        mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(6 * ceil32(return_data.size)) + 480] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(6 * ceil32(return_data.size)) + 484] = stor19
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 676
                                        t = (4 * ceil32(return_data.size)) + 384
                                        while idx < 3:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 676 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                                        if this.address == address(cd[4]):
                                            if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                revert with 0, 17
                                            balanceOf[address(cd[36])].field_0 += cd[68]
                                            emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                        else:
                                            if this.address == address(cd[36]):
                                                if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += cd[68]
                                                emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                            else:
                                                if liquidityFee and cd[68] > -1 / liquidityFee:
                                                    revert with 0, 17
                                                if buyBackFee and cd[68] > -1 / buyBackFee:
                                                    revert with 0, 17
                                                if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                    revert with 0, 17
                                                if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                    revert with 0, 17
                                                if reflectionFee and cd[68] > -1 / reflectionFee:
                                                    revert with 0, 17
                                                if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                    revert with 0, 17
                                                if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                    revert with 0, 17
                                                if stor44AD > !(buyBackFee * cd[68] / 100):
                                                    revert with 0, 17
                                                stor44AD += buyBackFee * cd[68] / 100
                                                if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                    revert with 0, 17
                                                if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                    revert with 0, 17
                                                if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                    revert with 0, 17
                                                balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                                if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                                if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                    revert with 0, 17
                                                sub_1678c929 += liquidityFee * cd[68] / 100
                                                if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                    revert with 0, 17
                                                uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                                if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                    revert with 0, 17
                                                stor18 += marketingWalletFee * cd[68] / 100
                                                if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                    revert with 0, 17
                                                stor19 += sub_c18a8c47 * cd[68] / 100
                                                if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                    revert with 0, 17
                                                sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                                emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                        if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                            revert with 0, 'ERC20: transfer amount exceeds allowance'
                                        if not address(cd[4]):
                                            revert with 0, 'ERC20: approve from the zero address'
                                        if not msg.sender:
                                            revert with 0, 'ERC20: approve to the zero address'
                                    else:
                                        mem[(4 * ceil32(return_data.size)) + 352] = 3
                                        mem[(4 * ceil32(return_data.size)) + 384] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[12 len 20]
                                        mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                        emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(6 * ceil32(return_data.size)) + 480] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(6 * ceil32(return_data.size)) + 484] = stor18
                                        mem[(6 * ceil32(return_data.size)) + 644] = 3
                                        idx = 0
                                        s = (6 * ceil32(return_data.size)) + 676
                                        t = (4 * ceil32(return_data.size)) + 384
                                        while idx < 3:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(6 * ceil32(return_data.size)) + 612] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor18, 0, 160, marketingWalletAddress, block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 676 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor18 < 0:
                                            revert with 0, 17
                                        if balanceOf[address(this.address)].field_0 < stor19:
                                            if this.address == address(cd[4]):
                                                if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += cd[68]
                                                emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                            else:
                                                if this.address == address(cd[36]):
                                                    if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[36])].field_0 += cd[68]
                                                    emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                                else:
                                                    if liquidityFee and cd[68] > -1 / liquidityFee:
                                                        revert with 0, 17
                                                    if buyBackFee and cd[68] > -1 / buyBackFee:
                                                        revert with 0, 17
                                                    if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                        revert with 0, 17
                                                    if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                        revert with 0, 17
                                                    if reflectionFee and cd[68] > -1 / reflectionFee:
                                                        revert with 0, 17
                                                    if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                        revert with 0, 17
                                                    if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                        revert with 0, 17
                                                    if stor44AD > !(buyBackFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    stor44AD += buyBackFee * cd[68] / 100
                                                    if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                        revert with 0, 17
                                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                        revert with 0, 17
                                                    if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                        revert with 0, 17
                                                    balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                                    if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                                    if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    sub_1678c929 += liquidityFee * cd[68] / 100
                                                    if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                        revert with 0, 17
                                                    uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                                    if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    stor18 += marketingWalletFee * cd[68] / 100
                                                    if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                        revert with 0, 17
                                                    stor19 += sub_c18a8c47 * cd[68] / 100
                                                    if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                                    emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                            if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                                revert with 0, 
                                                            'ERC20: transfer amount exceeds allowance',
                                                            mem[(6 * ceil32(return_data.size)) + 612 len 9 * ceil32(return_data.size)]
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: approve from the zero address', mem[(6 * ceil32(return_data.size)) + 612 len 9 * ceil32(return_data.size)]
                                            if not msg.sender:
                                                revert with 0, 'ERC20: approve to the zero address', mem[(6 * ceil32(return_data.size)) + 612 len 9 * ceil32(return_data.size)]
                                        else:
                                            mem[(6 * ceil32(return_data.size)) + 480] = 3
                                            mem[(6 * ceil32(return_data.size)) + 512] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(6 * ceil32(return_data.size)) + 608] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (7 * ceil32(return_data.size)) + 608
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(6 * ceil32(return_data.size)) + 544] = ext_call.return_data[12 len 20]
                                            mem[(6 * ceil32(return_data.size)) + 576] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(7 * ceil32(return_data.size)) + 608] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                            mem[(7 * ceil32(return_data.size)) + 612] = stor19
                                            mem[(7 * ceil32(return_data.size)) + 644] = 0
                                            mem[(7 * ceil32(return_data.size)) + 676] = 160
                                            mem[(7 * ceil32(return_data.size)) + 772] = 3
                                            idx = 0
                                            s = (7 * ceil32(return_data.size)) + 804
                                            t = (6 * ceil32(return_data.size)) + 512
                                            while idx < mem[(6 * ceil32(return_data.size)) + 480]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(7 * ceil32(return_data.size)) + 772 len (32 * mem[(6 * ceil32(return_data.size)) + 480]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                            if this.address == address(cd[4]):
                                                if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                    revert with 0, 17
                                                balanceOf[address(cd[36])].field_0 += cd[68]
                                                emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                            else:
                                                if this.address == address(cd[36]):
                                                    if balanceOf[address(cd[36])].field_0 > !cd[68]:
                                                        revert with 0, 17
                                                    balanceOf[address(cd[36])].field_0 += cd[68]
                                                    emit 0x4eddf252: cd[68], address(cd[4]), address(cd[36])
                                                else:
                                                    if liquidityFee and cd[68] > -1 / liquidityFee:
                                                        revert with 0, 17
                                                    if buyBackFee and cd[68] > -1 / buyBackFee:
                                                        revert with 0, 17
                                                    if marketingWalletFee and cd[68] > -1 / marketingWalletFee:
                                                        revert with 0, 17
                                                    if sub_c18a8c47 and cd[68] > -1 / sub_c18a8c47:
                                                        revert with 0, 17
                                                    if reflectionFee and cd[68] > -1 / reflectionFee:
                                                        revert with 0, 17
                                                    if sub_0f2a8d53 and cd[68] > -1 / sub_0f2a8d53:
                                                        revert with 0, 17
                                                    if sub_2acd85c4 and cd[68] > -1 / sub_2acd85c4:
                                                        revert with 0, 17
                                                    if stor44AD > !(buyBackFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    stor44AD += buyBackFee * cd[68] / 100
                                                    if liquidityFee * cd[68] / 100 > !(reflectionFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) > !(sub_0f2a8d53 * cd[68] / 100):
                                                        revert with 0, 17
                                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) > !(marketingWalletFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    if (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) > !(sub_c18a8c47 * cd[68] / 100):
                                                        revert with 0, 17
                                                    if balanceOf[this.address].field_0 > !((liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)):
                                                        revert with 0, 17
                                                    balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[68] / 100) + (reflectionFee * cd[68] / 100) + (sub_0f2a8d53 * cd[68] / 100) + (marketingWalletFee * cd[68] / 100) + (sub_c18a8c47 * cd[68] / 100)
                                                    if balanceOf[address(cd[36])].field_0 > !(sub_2acd85c4 * cd[68] / 100):
                                                        revert with 0, 17
                                                    balanceOf[address(cd[36])].field_0 += sub_2acd85c4 * cd[68] / 100
                                                    if sub_1678c929 > !(liquidityFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    sub_1678c929 += liquidityFee * cd[68] / 100
                                                    if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[68] / 100):
                                                        revert with 0, 17
                                                    uint256(sub_66f8520b) += sub_0f2a8d53 * cd[68] / 100
                                                    if stor18 > !(marketingWalletFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    stor18 += marketingWalletFee * cd[68] / 100
                                                    if stor19 > !(sub_c18a8c47 * cd[68] / 100):
                                                        revert with 0, 17
                                                    stor19 += sub_c18a8c47 * cd[68] / 100
                                                    if sub_6f60a4b3 > !(reflectionFee * cd[68] / 100):
                                                        revert with 0, 17
                                                    sub_6f60a4b3 += reflectionFee * cd[68] / 100
                                                    emit 0x4eddf252: (sub_2acd85c4 * cd[68] / 100), address(cd[4]), address(cd[36])
                                            if allowance[address(cd[4])][msg.sender].field_0 < cd[68]:
                                                revert with 0, 'ERC20: transfer amount exceeds allowance'
                                            if not address(cd[4]):
                                                revert with 0, 'ERC20: approve from the zero address'
                                            if not msg.sender:
                                                revert with 0, 'ERC20: approve to the zero address'
        ('bool', 'msg.sender')
        allowance[address(cd[4])][address(msg.sender)].field_0 = allowance[address(cd[4])][msg.sender].field_0 - cd[68]
        emit Approval((allowance[address(cd[4])][msg.sender].field_0 - cd[68]), address(cd[4]), msg.sender);
    else:
        if unknown_0xa9059cbb(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                if unknown_0x935eb35f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                        revert with 0, 65
                    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
                    s = 160
                    idx = cd[4] + 36
                    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
                        require cd[idx] == address(cd[idx])
                        mem[s] = cd[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = mem[(32 * idx) + 172 len 20]
                        mem[32] = 10
                        stor10[mem[(32 * idx) + 172 len 20]] = 1
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                    if unknown_0x98118cb4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return liquidityFee
                    if uint32(call.func_hash) >> 224 != unknown_0xa457c2d7(?????):
                        require unknown_0xa8aa1b31(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return pairAddress
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    if allowance[msg.sender][address(cd[4])].field_0 < cd[36]:
                        revert with 0, 'ERC20: decreased allowance below zero'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not address(cd[4]):
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(msg.sender)][address(cd[4])].field_0 = allowance[msg.sender][address(cd[4])].field_0 - cd[36]
                    emit Approval((allowance[msg.sender][address(cd[4])].field_0 - cd[36]), msg.sender, address(cd[4]));
                    return 1
                require not msg.value
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4.length):
                            if 31 < uint255(stor4.length) * 0.5:
                                mem[160] = uint256(stor4.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor4.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                            mem[160] = 256 * stor4.length.field_8
                    else:
                        if bool(stor4.length) == stor4.length.field_1 < 32:
                            revert with 0, 34
                        if stor4.length.field_1:
                            if 31 < stor4.length.field_1:
                                mem[160] = uint256(stor4.field_0)
                                idx = 160
                                s = 0
                                while stor4.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor4[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                            mem[160] = 256 * stor4.length.field_8
                    mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                    if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                        mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
                if bool(stor4.length) == stor4.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor4.length):
                        if 31 < uint255(stor4.length) * 0.5:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor4.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                        mem[160] = 256 * stor4.length.field_8
                else:
                    if bool(stor4.length) == stor4.length.field_1 < 32:
                        revert with 0, 34
                    if stor4.length.field_1:
                        if 31 < stor4.length.field_1:
                            mem[160] = uint256(stor4.field_0)
                            idx = 160
                            s = 0
                            while stor4.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                        mem[160] = 256 * stor4.length.field_8
                mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
                if ceil32(stor4.length.field_1) > stor4.length.field_1:
                    mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 224] = 0
                return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
            if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return balanceOf[address(cd[4])].field_0
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                emit OwnershipTransferred(owner, 0);
                owner = 0
            else:
                if unknown_0x8091f3bf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(launched)
                if unknown_0x83ad7994(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return reflectionFee
                require unknown_0x89daf799(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                    revert with 0, 65
                require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
                s = 160
                idx = cd[4] + 36
                while idx < (32 * ('cd', 4).length) + cd[4] + 36:
                    require cd[idx] == address(cd[idx])
                    mem[s] = cd[idx]
                    s = s + 32
                    idx = idx + 32
                    continue 
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 172 len 20]
                    mem[32] = 10
                    stor10[mem[(32 * idx) + 172 len 20]] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        if unknown_0xf2fde38b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(cd[4]):
                    revert with 0, 'Ownable: new owner is the zero address'
                emit OwnershipTransferred(owner, address(cd[4]));
                owner = address(cd[4])
            if unknown_0xf6777175(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if balanceOf[address(cd[4])].field_0 and 10^9 > -1 / balanceOf[address(cd[4])].field_0:
                    revert with 0, 17
                if not totalSupply:
                    revert with 0, 18
                if 10^9 * balanceOf[address(cd[4])].field_0 / totalSupply and sub_6f60a4b3 > -1 / 10^9 * balanceOf[address(cd[4])].field_0 / totalSupply:
                    revert with 0, 17
                if 10^9 * balanceOf[address(cd[4])].field_0 / totalSupply * sub_6f60a4b3 / 10^9 < sub_16ec4968[msg.sender]:
                    revert with 0, 17
                return ((10^9 * balanceOf[address(cd[4])].field_0 / totalSupply * sub_6f60a4b3 / 10^9) - sub_16ec4968[msg.sender])
            if unknown_0xf7815b9a(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                withdrawalInterval = cd[4]
            if unknown_0xf7c618c1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return rewardTokenAddress
            if unknown_0xf887ea40(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 0x10ed43c718714eb63d5aa57b78b54704e25602
            require unknown_0xf9f92be4(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            return bool(stor10[cd[4]])
        if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
            if unknown_0xa9321573(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor12[address(cd[4])] = 1
            if unknown_0xbf8d31f0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return marketingWalletFee
            if unknown_0xc18a8c47(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_c18a8c47
            if unknown_0xd158272d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return marketingWalletAddress
            require unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            return allowance[address(cd[4])][address(cd[36])].field_0
        require not msg.value
        require calldata.size - 4 >= 64
        require cd[4] == address(cd[4])
        if stor10[address(msg.sender)]:
            revert with 0, 'ERC20: Address blacklisted.'
        if not msg.sender:
            revert with 0, 'ERC20: transfer from the zero address'
        if not address(cd[4]):
            revert with 0, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)].field_0 < cd[36]:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)].field_0 -= cd[36]
        if not launched:
            if pairAddress != msg.sender:
                if balanceOf[address(cd[4])].field_0 > !cd[36]:
                    revert with 0, 17
                balanceOf[address(cd[4])].field_0 += cd[36]
                emit 0x4eddf252: cd[36], msg.sender, address(cd[4])
            else:
                if balanceOf[this.address].field_0 > !cd[36]:
                    revert with 0, 17
                balanceOf[this.address].field_0 += cd[36]
                stor10[address(cd[4])] = 1
                emit 0x4eddf252: cd[36], msg.sender, this.address
        else:
            if stor12[address(msg.sender)]:
                if balanceOf[address(cd[4])].field_0 > !cd[36]:
                    revert with 0, 17
                balanceOf[address(cd[4])].field_0 += cd[36]
                emit 0x4eddf252: cd[36], msg.sender, address(cd[4])
            else:
                if pairAddress == msg.sender:
                    if this.address == msg.sender:
                        if balanceOf[address(cd[4])].field_0 > !cd[36]:
                            revert with 0, 17
                        balanceOf[address(cd[4])].field_0 += cd[36]
                        emit 0x4eddf252: cd[36], msg.sender, address(cd[4])
                    else:
                        if this.address == address(cd[4]):
                            if balanceOf[address(cd[4])].field_0 > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])].field_0 += cd[36]
                            emit 0x4eddf252: cd[36], msg.sender, address(cd[4])
                        else:
                            if liquidityFee and cd[36] > -1 / liquidityFee:
                                revert with 0, 17
                            if buyBackFee and cd[36] > -1 / buyBackFee:
                                revert with 0, 17
                            if marketingWalletFee and cd[36] > -1 / marketingWalletFee:
                                revert with 0, 17
                            if sub_c18a8c47 and cd[36] > -1 / sub_c18a8c47:
                                revert with 0, 17
                            if reflectionFee and cd[36] > -1 / reflectionFee:
                                revert with 0, 17
                            if sub_0f2a8d53 and cd[36] > -1 / sub_0f2a8d53:
                                revert with 0, 17
                            if sub_2acd85c4 and cd[36] > -1 / sub_2acd85c4:
                                revert with 0, 17
                            if stor44AD > !(buyBackFee * cd[36] / 100):
                                revert with 0, 17
                            stor44AD += buyBackFee * cd[36] / 100
                            if liquidityFee * cd[36] / 100 > !(reflectionFee * cd[36] / 100):
                                revert with 0, 17
                            if (liquidityFee * cd[36] / 100) + (reflectionFee * cd[36] / 100) > !(sub_0f2a8d53 * cd[36] / 100):
                                revert with 0, 17
                            if (liquidityFee * cd[36] / 100) + (reflectionFee * cd[36] / 100) + (sub_0f2a8d53 * cd[36] / 100) > !(marketingWalletFee * cd[36] / 100):
                                revert with 0, 17
                            if (liquidityFee * cd[36] / 100) + (reflectionFee * cd[36] / 100) + (sub_0f2a8d53 * cd[36] / 100) + (marketingWalletFee * cd[36] / 100) > !(sub_c18a8c47 * cd[36] / 100):
                                revert with 0, 17
                            if balanceOf[this.address].field_0 > !((liquidityFee * cd[36] / 100) + (reflectionFee * cd[36] / 100) + (sub_0f2a8d53 * cd[36] / 100) + (marketingWalletFee * cd[36] / 100) + (sub_c18a8c47 * cd[36] / 100)):
                                revert with 0, 17
                            balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[36] / 100) + (reflectionFee * cd[36] / 100) + (sub_0f2a8d53 * cd[36] / 100) + (marketingWalletFee * cd[36] / 100) + (sub_c18a8c47 * cd[36] / 100)
                            if balanceOf[address(cd[4])].field_0 > !(sub_2acd85c4 * cd[36] / 100):
                                revert with 0, 17
                            balanceOf[address(cd[4])].field_0 += sub_2acd85c4 * cd[36] / 100
                            if sub_1678c929 > !(liquidityFee * cd[36] / 100):
                                revert with 0, 17
                            sub_1678c929 += liquidityFee * cd[36] / 100
                            if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[36] / 100):
                                revert with 0, 17
                            uint256(sub_66f8520b) += sub_0f2a8d53 * cd[36] / 100
                            if stor18 > !(marketingWalletFee * cd[36] / 100):
                                revert with 0, 17
                            stor18 += marketingWalletFee * cd[36] / 100
                            if stor19 > !(sub_c18a8c47 * cd[36] / 100):
                                revert with 0, 17
                            stor19 += sub_c18a8c47 * cd[36] / 100
                            if sub_6f60a4b3 > !(reflectionFee * cd[36] / 100):
                                revert with 0, 17
                            sub_6f60a4b3 += reflectionFee * cd[36] / 100
                            emit 0x4eddf252: (sub_2acd85c4 * cd[36] / 100), msg.sender, address(cd[4])
                else:
                    if this.address == msg.sender:
                        if balanceOf[address(cd[4])].field_0 > !cd[36]:
                            revert with 0, 17
                        balanceOf[address(cd[4])].field_0 += cd[36]
                        emit 0x4eddf252: cd[36], msg.sender, address(cd[4])
                    else:
                        if not balanceOf[address(this.address)].field_0:
                            if uint256(sub_66f8520b) < 10^18:
                                revert with 0, 'Require at least one token'
                            if not balanceOf[address(this.address)].field_0:
                                if balanceOf[address(this.address)].field_0 < stor18:
                                    if balanceOf[address(this.address)].field_0 >= stor19:
                                        mem[160] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        mem[224] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 260] = stor19
                                        idx = 0
                                        s = ceil32(return_data.size) + 452
                                        t = 160
                                        while idx < 3:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                                else:
                                    mem[160] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[256] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[192] = ext_call.return_data[12 len 20]
                                    mem[224] = rewardTokenAddress
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                    emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 260] = stor18
                                    mem[ceil32(return_data.size) + 420] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + 452
                                    t = 160
                                    while idx < 3:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 388] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args stor18, 0, 160, marketingWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if stor18 < 0:
                                        revert with 0, 17
                                    if balanceOf[address(this.address)].field_0 >= stor19:
                                        mem[ceil32(return_data.size) + 256] = 3
                                        mem[ceil32(return_data.size) + 288] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                        emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 388] = stor19
                                        mem[(2 * ceil32(return_data.size)) + 420] = 0
                                        mem[(2 * ceil32(return_data.size)) + 452] = 160
                                        mem[(2 * ceil32(return_data.size)) + 548] = 3
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 580
                                        t = ceil32(return_data.size) + 288
                                        while idx < mem[ceil32(return_data.size) + 256]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor19 < 0:
                                            revert with 0, 17
                            else:
                                if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                    if balanceOf[address(this.address)].field_0 < stor18:
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[160] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[256] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            mem[224] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 260] = stor19
                                            idx = 0
                                            s = ceil32(return_data.size) + 452
                                            t = 160
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                    else:
                                        mem[160] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        mem[224] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                        emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 260] = stor18
                                        mem[ceil32(return_data.size) + 420] = 3
                                        idx = 0
                                        s = ceil32(return_data.size) + 452
                                        t = 160
                                        while idx < 3:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(return_data.size) + 388] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor18, 0, 160, marketingWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor18 < 0:
                                            revert with 0, 17
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[ceil32(return_data.size) + 256] = 3
                                            mem[ceil32(return_data.size) + 288] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 388] = stor19
                                            mem[(2 * ceil32(return_data.size)) + 420] = 0
                                            mem[(2 * ceil32(return_data.size)) + 452] = 160
                                            mem[(2 * ceil32(return_data.size)) + 548] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + 580
                                            t = ceil32(return_data.size) + 288
                                            while idx < mem[ceil32(return_data.size) + 256]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                else:
                                    if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                        revert with 0, 'Contract do not have sufficient balance for rewards'
                                    mem[128] = 3
                                    mem[160] = this.address
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                            gas gas_remaining wei
                                    mem[256] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[192] = ext_call.return_data[12 len 20]
                                    mem[224] = 0x8918bb91882ce41d9d9892246e4b56e4571a9fd5
                                    if uint256(sub_66f8520b) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 0, 17
                                    if not this.address:
                                        revert with 0, 'ERC20: approve from the zero address'
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = uint255(stor17)
                                    emit Approval((2 * uint256(sub_66f8520b)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                    mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 260] = uint256(sub_66f8520b)
                                    mem[ceil32(return_data.size) + 420] = 3
                                    idx = 0
                                    s = ceil32(return_data.size) + 452
                                    t = 160
                                    while idx < 3:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(return_data.size) + 388] = block.timestamp
                                    require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                    call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args uint256(sub_66f8520b), 0, 160, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                        revert with 0, 17
                                    if uint256(sub_66f8520b) < 0:
                                        revert with 0, 17
                                    if balanceOf[address(this.address)].field_0 < stor18:
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[ceil32(return_data.size) + 256] = 3
                                            mem[ceil32(return_data.size) + 288] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 388] = stor19
                                            mem[(2 * ceil32(return_data.size)) + 420] = 0
                                            mem[(2 * ceil32(return_data.size)) + 452] = 160
                                            mem[(2 * ceil32(return_data.size)) + 548] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + 580
                                            t = ceil32(return_data.size) + 288
                                            while idx < mem[ceil32(return_data.size) + 256]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + 484] = teamWalletAddress
                                            mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                    else:
                                        mem[ceil32(return_data.size) + 256] = 3
                                        mem[ceil32(return_data.size) + 288] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                        mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                        emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[(2 * ceil32(return_data.size)) + 388] = stor18
                                        mem[(2 * ceil32(return_data.size)) + 420] = 0
                                        mem[(2 * ceil32(return_data.size)) + 452] = 160
                                        mem[(2 * ceil32(return_data.size)) + 548] = 3
                                        idx = 0
                                        s = (2 * ceil32(return_data.size)) + 580
                                        t = ceil32(return_data.size) + 288
                                        while idx < mem[ceil32(return_data.size) + 256]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(2 * ceil32(return_data.size)) + 484] = marketingWalletAddress
                                        mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor18, 0, 160, marketingWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor18 < 0:
                                            revert with 0, 17
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[(2 * ceil32(return_data.size)) + 384] = 3
                                            mem[(2 * ceil32(return_data.size)) + 416] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (4 * ceil32(return_data.size)) + 512
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 448] = ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 480] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(4 * ceil32(return_data.size)) + 512] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                            mem[(4 * ceil32(return_data.size)) + 516] = stor19
                                            mem[(4 * ceil32(return_data.size)) + 548] = 0
                                            mem[(4 * ceil32(return_data.size)) + 580] = 160
                                            mem[(4 * ceil32(return_data.size)) + 676] = 3
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 708
                                            t = (2 * ceil32(return_data.size)) + 416
                                            while idx < mem[(2 * ceil32(return_data.size)) + 384]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(4 * ceil32(return_data.size)) + 676 len (32 * mem[(2 * ceil32(return_data.size)) + 384]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                        else:
                            if balanceOf[address(this.address)].field_0 < sub_1678c929:
                                if uint256(sub_66f8520b) < 10^18:
                                    revert with 0, 'Require at least one token'
                                if not balanceOf[address(this.address)].field_0:
                                    if balanceOf[address(this.address)].field_0 < stor18:
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[160] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[256] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            mem[224] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 260] = stor19
                                            idx = 0
                                            s = ceil32(return_data.size) + 452
                                            t = 160
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                    else:
                                        mem[160] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        mem[224] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                        emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 260] = stor18
                                        mem[ceil32(return_data.size) + 420] = 3
                                        idx = 0
                                        s = ceil32(return_data.size) + 452
                                        t = 160
                                        while idx < 3:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(return_data.size) + 388] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor18, 0, 160, marketingWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor18 < 0:
                                            revert with 0, 17
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[ceil32(return_data.size) + 256] = 3
                                            mem[ceil32(return_data.size) + 288] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 388] = stor19
                                            mem[(2 * ceil32(return_data.size)) + 420] = 0
                                            mem[(2 * ceil32(return_data.size)) + 452] = 160
                                            mem[(2 * ceil32(return_data.size)) + 548] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + 580
                                            t = ceil32(return_data.size) + 288
                                            while idx < mem[ceil32(return_data.size) + 256]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + 484] = teamWalletAddress
                                            mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                else:
                                    if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                        if balanceOf[address(this.address)].field_0 < stor18:
                                            if balanceOf[address(this.address)].field_0 >= stor19:
                                                mem[160] = this.address
                                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                        gas gas_remaining wei
                                                mem[256] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[192] = ext_call.return_data[12 len 20]
                                                mem[224] = rewardTokenAddress
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                                emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                                mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(return_data.size) + 260] = stor19
                                                idx = 0
                                                s = ceil32(return_data.size) + 452
                                                t = 160
                                                while idx < 3:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                                call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                    revert with 0, 17
                                                if stor19 < 0:
                                                    revert with 0, 17
                                        else:
                                            mem[160] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[256] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[192] = ext_call.return_data[12 len 20]
                                            mem[224] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                            emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 260] = stor18
                                            mem[ceil32(return_data.size) + 420] = 3
                                            idx = 0
                                            s = ceil32(return_data.size) + 452
                                            t = 160
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(return_data.size) + 388] = block.timestamp
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor18, 0, 160, marketingWalletAddress, block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor18 < 0:
                                                revert with 0, 17
                                            if balanceOf[address(this.address)].field_0 >= stor19:
                                                mem[ceil32(return_data.size) + 256] = 3
                                                mem[ceil32(return_data.size) + 288] = this.address
                                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                                emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                                mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 388] = stor19
                                                mem[(2 * ceil32(return_data.size)) + 420] = 0
                                                mem[(2 * ceil32(return_data.size)) + 452] = 160
                                                mem[(2 * ceil32(return_data.size)) + 548] = 3
                                                idx = 0
                                                s = (2 * ceil32(return_data.size)) + 580
                                                t = ceil32(return_data.size) + 288
                                                while idx < mem[ceil32(return_data.size) + 256]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 484] = teamWalletAddress
                                                mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                                call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                    revert with 0, 17
                                                if stor19 < 0:
                                                    revert with 0, 17
                                    else:
                                        if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                            revert with 0, 'Contract do not have sufficient balance for rewards'
                                        mem[128] = 3
                                        mem[160] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[256] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[192] = ext_call.return_data[12 len 20]
                                        mem[224] = 0x8918bb91882ce41d9d9892246e4b56e4571a9fd5
                                        if uint256(sub_66f8520b) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = uint255(stor17)
                                        emit Approval((2 * uint256(sub_66f8520b)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[ceil32(return_data.size) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 260] = uint256(sub_66f8520b)
                                        mem[ceil32(return_data.size) + 420] = 3
                                        idx = 0
                                        s = ceil32(return_data.size) + 452
                                        t = 160
                                        while idx < 3:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(return_data.size) + 388] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args uint256(sub_66f8520b), 0, 160, address(this.address), block.timestamp, 3, mem[ceil32(return_data.size) + 452 len 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if uint256(sub_66f8520b) < 0:
                                            revert with 0, 17
                                        if balanceOf[address(this.address)].field_0 < stor18:
                                            if balanceOf[address(this.address)].field_0 >= stor19:
                                                mem[ceil32(return_data.size) + 256] = 3
                                                mem[ceil32(return_data.size) + 288] = this.address
                                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                                mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                                emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                                mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[(2 * ceil32(return_data.size)) + 388] = stor19
                                                mem[(2 * ceil32(return_data.size)) + 420] = 0
                                                mem[(2 * ceil32(return_data.size)) + 452] = 160
                                                mem[(2 * ceil32(return_data.size)) + 548] = 3
                                                idx = 0
                                                s = (2 * ceil32(return_data.size)) + 580
                                                t = ceil32(return_data.size) + 288
                                                while idx < mem[ceil32(return_data.size) + 256]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(2 * ceil32(return_data.size)) + 484] = teamWalletAddress
                                                mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                                call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                    revert with 0, 17
                                                if stor19 < 0:
                                                    revert with 0, 17
                                        else:
                                            mem[ceil32(return_data.size) + 256] = 3
                                            mem[ceil32(return_data.size) + 288] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(return_data.size) + 384] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 320] = ext_call.return_data[12 len 20]
                                            mem[ceil32(return_data.size) + 352] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                            emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(2 * ceil32(return_data.size)) + 384] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(2 * ceil32(return_data.size)) + 388] = stor18
                                            mem[(2 * ceil32(return_data.size)) + 420] = 0
                                            mem[(2 * ceil32(return_data.size)) + 452] = 160
                                            mem[(2 * ceil32(return_data.size)) + 548] = 3
                                            idx = 0
                                            s = (2 * ceil32(return_data.size)) + 580
                                            t = ceil32(return_data.size) + 288
                                            while idx < mem[ceil32(return_data.size) + 256]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(2 * ceil32(return_data.size)) + 484] = marketingWalletAddress
                                            mem[(2 * ceil32(return_data.size)) + 516] = block.timestamp
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor18, 0, 160, marketingWalletAddress, block.timestamp, mem[(2 * ceil32(return_data.size)) + 548 len (32 * mem[ceil32(return_data.size) + 256]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor18 < 0:
                                                revert with 0, 17
                                            if balanceOf[address(this.address)].field_0 >= stor19:
                                                mem[(2 * ceil32(return_data.size)) + 384] = 3
                                                mem[(2 * ceil32(return_data.size)) + 416] = this.address
                                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                        gas gas_remaining wei
                                                mem[(2 * ceil32(return_data.size)) + 512] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (4 * ceil32(return_data.size)) + 512
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 448] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 480] = rewardTokenAddress
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                                emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                                mem[(4 * ceil32(return_data.size)) + 512] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                                mem[(4 * ceil32(return_data.size)) + 516] = stor19
                                                mem[(4 * ceil32(return_data.size)) + 548] = 0
                                                mem[(4 * ceil32(return_data.size)) + 580] = 160
                                                mem[(4 * ceil32(return_data.size)) + 676] = 3
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + 708
                                                t = (2 * ceil32(return_data.size)) + 416
                                                while idx < mem[(2 * ceil32(return_data.size)) + 384]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[(4 * ceil32(return_data.size)) + 612] = teamWalletAddress
                                                mem[(4 * ceil32(return_data.size)) + 644] = block.timestamp
                                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                                call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 384]) + -mem[64] + 704]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                    revert with 0, 17
                                                if stor19 < 0:
                                                    revert with 0, 17
                            else:
                                if sub_1678c929 < stor16:
                                    revert with 0, 17
                                mem[128] = 2
                                mem[160] = this.address
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                        gas gas_remaining wei
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[192] = ext_call.return_data[12 len 20]
                                if stor16 and 2 > -1 / stor16:
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = stor16
                                emit Approval((2 * stor16), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                mem[ceil32(return_data.size) + 224] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 228] = stor16
                                idx = 0
                                s = ceil32(return_data.size) + 420
                                t = 160
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                call ????????????????????????????????????????.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 2 * Mask(256, -1, stor16), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 420 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                if sub_1678c929 - stor16 and 2 > -1 / sub_1678c929 - stor16:
                                    revert with 0, 17
                                if not this.address:
                                    revert with 0, 'ERC20: approve from the zero address'
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = uint255(sub_1678c929 - stor16)
                                emit Approval((2 * sub_1678c929 - stor16), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                mem[ceil32(return_data.size) + 292] = 0
                                mem[ceil32(return_data.size) + 324] = 0
                                mem[ceil32(return_data.size) + 356] = 0
                                mem[ceil32(return_data.size) + 388] = block.timestamp
                                call ????????????????????????????????????????.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, sub_1678c929 - stor16, 0, 0, 0, block.timestamp
                                mem[ceil32(return_data.size) + 224 len 96] = ext_call.return_data[0 len 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(2 * Mask(256, -1, stor16), 0, sub_1678c929 - stor16);
                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                    revert with 0, 17
                                if sub_1678c929 < 0:
                                    revert with 0, 17
                                if uint256(sub_66f8520b) < 10^18:
                                    revert with 0, 'Require at least one token'
                                if not balanceOf[address(this.address)].field_0:
                                    if balanceOf[address(this.address)].field_0 < stor18:
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[(2 * ceil32(return_data.size)) + 224] = 3
                                            mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (4 * ceil32(return_data.size)) + 352
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 320] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(4 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                            mem[(4 * ceil32(return_data.size)) + 356] = stor19
                                            mem[(4 * ceil32(return_data.size)) + 388] = 0
                                            mem[(4 * ceil32(return_data.size)) + 420] = 160
                                            mem[(4 * ceil32(return_data.size)) + 516] = 3
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 548
                                            t = (2 * ceil32(return_data.size)) + 256
                                            while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(4 * ceil32(return_data.size)) + 516 len (32 * mem[(2 * ceil32(return_data.size)) + 224]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 224] = 3
                                        mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 352
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 320] = rewardTokenAddress
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                        emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(4 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                        mem[(4 * ceil32(return_data.size)) + 356] = stor18
                                        mem[(4 * ceil32(return_data.size)) + 388] = 0
                                        mem[(4 * ceil32(return_data.size)) + 420] = 160
                                        mem[(4 * ceil32(return_data.size)) + 516] = 3
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 548
                                        t = (2 * ceil32(return_data.size)) + 256
                                        while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 452] = marketingWalletAddress
                                        mem[(4 * ceil32(return_data.size)) + 484] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args stor18, 0, 160, marketingWalletAddress, block.timestamp, mem[(4 * ceil32(return_data.size)) + 516 len (32 * mem[(2 * ceil32(return_data.size)) + 224]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if stor18 < 0:
                                            revert with 0, 17
                                        if balanceOf[address(this.address)].field_0 >= stor19:
                                            mem[(4 * ceil32(return_data.size)) + 384] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(4 * ceil32(return_data.size)) + 480] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(4 * ceil32(return_data.size)) + 416] = ext_call.return_data[12 len 20]
                                            mem[(4 * ceil32(return_data.size)) + 448] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                            emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(6 * ceil32(return_data.size)) + 480] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[(6 * ceil32(return_data.size)) + 484] = stor19
                                            idx = 0
                                            s = (6 * ceil32(return_data.size)) + 676
                                            t = (4 * ceil32(return_data.size)) + 384
                                            while idx < 3:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor19, 0, 160, teamWalletAddress, block.timestamp, 3, mem[(6 * ceil32(return_data.size)) + 676 len 96]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor19 < 0:
                                                revert with 0, 17
                                else:
                                    if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                        if balanceOf[address(this.address)].field_0 < stor18:
                                            if balanceOf[address(this.address)].field_0 >= stor19:
                                                mem[(2 * ceil32(return_data.size)) + 224] = 3
                                                mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                        gas gas_remaining wei
                                                mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = (4 * ceil32(return_data.size)) + 352
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                                mem[(2 * ceil32(return_data.size)) + 320] = rewardTokenAddress
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                                emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                                mem[(4 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                                mem[(4 * ceil32(return_data.size)) + 356] = stor19
                                                mem[(4 * ceil32(return_data.size)) + 388] = 0
                                                mem[(4 * ceil32(return_data.size)) + 420] = 160
                                                mem[(4 * ceil32(return_data.size)) + 516] = 3
                                                idx = 0
                                                s = (4 * ceil32(return_data.size)) + 548
                                                t = (2 * ceil32(return_data.size)) + 256
                                                while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                                call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[(4 * ceil32(return_data.size)) + 516 len (32 * mem[(2 * ceil32(return_data.size)) + 224]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                    revert with 0, 17
                                                if stor19 < 0:
                                                    revert with 0, 17
                                        else:
                                            mem[(2 * ceil32(return_data.size)) + 224] = 3
                                            mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = (4 * ceil32(return_data.size)) + 352
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                            mem[(2 * ceil32(return_data.size)) + 320] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                            emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[(4 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                            mem[(4 * ceil32(return_data.size)) + 356] = stor18
                                            mem[(4 * ceil32(return_data.size)) + 388] = 0
                                            mem[(4 * ceil32(return_data.size)) + 420] = 160
                                            mem[(4 * ceil32(return_data.size)) + 516] = 3
                                            idx = 0
                                            s = (4 * ceil32(return_data.size)) + 548
                                            t = (2 * ceil32(return_data.size)) + 256
                                            while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[(4 * ceil32(return_data.size)) + 452] = marketingWalletAddress
                                            mem[(4 * ceil32(return_data.size)) + 484] = block.timestamp
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 224]) + -mem[64] + 544]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor18 < 0:
                                                revert with 0, 17
                                            mem[0] = this.address
                                            mem[32] = 0
                                            if balanceOf[address(this.address)].field_0 >= stor19:
                                                _8412 = mem[64]
                                                mem[mem[64]] = 3
                                                mem[64] = mem[64] + 128
                                                mem[_8412 + 32 len 96] = call.data[calldata.size len 96]
                                                if 0 >= mem[_8412]:
                                                    revert with 0, 50
                                                mem[_8412 + 32] = this.address
                                                mem[0] = this.address
                                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                        gas gas_remaining wei
                                                mem[_8412 + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _8412 + ceil32(return_data.size) + 128
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if 1 >= mem[_8412]:
                                                    revert with 0, 50
                                                mem[_8412 + 64] = ext_call.return_data[12 len 20]
                                                if 2 >= mem[_8412]:
                                                    revert with 0, 50
                                                mem[_8412 + 96] = rewardTokenAddress
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                                emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                                mem[_8412 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                                mem[_8412 + ceil32(return_data.size) + 132] = stor19
                                                mem[_8412 + ceil32(return_data.size) + 164] = 0
                                                mem[_8412 + ceil32(return_data.size) + 196] = 160
                                                mem[_8412 + ceil32(return_data.size) + 292] = mem[_8412]
                                                idx = 0
                                                s = _8412 + ceil32(return_data.size) + 324
                                                t = _8412 + 32
                                                while idx < mem[_8412]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_8412 + ceil32(return_data.size) + 228] = teamWalletAddress
                                                mem[_8412 + ceil32(return_data.size) + 260] = block.timestamp
                                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                                call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _8412 + ceil32(return_data.size) + (32 * mem[_8412]) + -mem[64] + 320]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                    revert with 0, 17
                                                if stor19 < 0:
                                                    revert with 0, 17
                                    else:
                                        if balanceOf[address(this.address)].field_0 < uint256(sub_66f8520b):
                                            revert with 0, 'Contract do not have sufficient balance for rewards'
                                        mem[(2 * ceil32(return_data.size)) + 224] = 3
                                        mem[(2 * ceil32(return_data.size)) + 256] = this.address
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 352] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 352
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 320] = 0x8918bb91882ce41d9d9892246e4b56e4571a9fd5
                                        if uint256(sub_66f8520b) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 0, 17
                                        if not this.address:
                                            revert with 0, 'ERC20: approve from the zero address'
                                        mem[32] = sha3(address(this.address), 1)
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = 0
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_1 = uint255(stor17)
                                        emit Approval((2 * uint256(sub_66f8520b)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                        mem[(4 * ceil32(return_data.size)) + 352] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                        mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                        mem[(4 * ceil32(return_data.size)) + 356] = uint256(sub_66f8520b)
                                        mem[(4 * ceil32(return_data.size)) + 388] = 0
                                        mem[(4 * ceil32(return_data.size)) + 420] = 160
                                        mem[(4 * ceil32(return_data.size)) + 516] = 3
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 548
                                        t = (2 * ceil32(return_data.size)) + 256
                                        while idx < mem[(2 * ceil32(return_data.size)) + 224]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 452] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 484] = block.timestamp
                                        require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                        call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + 224]) + -mem[64] + 544]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                            revert with 0, 17
                                        if uint256(sub_66f8520b) < 0:
                                            revert with 0, 17
                                        mem[0] = this.address
                                        mem[32] = 0
                                        if balanceOf[address(this.address)].field_0 < stor18:
                                            mem[0] = this.address
                                            mem[32] = 0
                                            if balanceOf[address(this.address)].field_0 >= stor19:
                                                _8642 = mem[64]
                                                mem[mem[64]] = 3
                                                mem[64] = mem[64] + 128
                                                mem[_8642 + 32 len 96] = call.data[calldata.size len 96]
                                                if 0 >= mem[_8642]:
                                                    revert with 0, 50
                                                mem[_8642 + 32] = this.address
                                                mem[0] = this.address
                                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                        gas gas_remaining wei
                                                mem[_8642 + 128] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _8642 + ceil32(return_data.size) + 128
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if 1 >= mem[_8642]:
                                                    revert with 0, 50
                                                mem[_8642 + 64] = ext_call.return_data[12 len 20]
                                                if 2 >= mem[_8642]:
                                                    revert with 0, 50
                                                mem[_8642 + 96] = rewardTokenAddress
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                                emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                                mem[_8642 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                                mem[_8642 + ceil32(return_data.size) + 132] = stor19
                                                mem[_8642 + ceil32(return_data.size) + 164] = 0
                                                mem[_8642 + ceil32(return_data.size) + 196] = 160
                                                mem[_8642 + ceil32(return_data.size) + 292] = mem[_8642]
                                                idx = 0
                                                s = _8642 + ceil32(return_data.size) + 324
                                                t = _8642 + 32
                                                while idx < mem[_8642]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                                call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args stor19, 0, 160, teamWalletAddress, block.timestamp, mem[_8642 + ceil32(return_data.size) + 292 len (32 * mem[_8642]) + 32]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                    revert with 0, 17
                                                if stor19 < 0:
                                                    revert with 0, 17
                                        else:
                                            _8448 = mem[64]
                                            mem[mem[64]] = 3
                                            mem[64] = mem[64] + 128
                                            mem[_8448 + 32 len 96] = call.data[calldata.size len 96]
                                            if 0 >= mem[_8448]:
                                                revert with 0, 50
                                            mem[_8448 + 32] = this.address
                                            mem[0] = this.address
                                            staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                    gas gas_remaining wei
                                            mem[_8448 + 128] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = _8448 + ceil32(return_data.size) + 128
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if 1 >= mem[_8448]:
                                                revert with 0, 50
                                            mem[_8448 + 64] = ext_call.return_data[12 len 20]
                                            if 2 >= mem[_8448]:
                                                revert with 0, 50
                                            mem[_8448 + 96] = rewardTokenAddress
                                            if not this.address:
                                                revert with 0, 'ERC20: approve from the zero address'
                                            mem[32] = sha3(address(this.address), 1)
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor18
                                            emit Approval(stor18, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                            mem[_8448 + ceil32(return_data.size) + 128] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                            mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                            mem[_8448 + ceil32(return_data.size) + 132] = stor18
                                            mem[_8448 + ceil32(return_data.size) + 164] = 0
                                            mem[_8448 + ceil32(return_data.size) + 196] = 160
                                            mem[_8448 + ceil32(return_data.size) + 292] = mem[_8448]
                                            idx = 0
                                            s = _8448 + ceil32(return_data.size) + 324
                                            t = _8448 + 32
                                            while idx < mem[_8448]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_8448 + ceil32(return_data.size) + 260] = block.timestamp
                                            require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                            call ????????????????????????????????????????.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args stor18, 0, 160, marketingWalletAddress, block.timestamp, mem[_8448 + ceil32(return_data.size) + 292 len (32 * mem[_8448]) + 32]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                revert with 0, 17
                                            if stor18 < 0:
                                                revert with 0, 17
                                            if balanceOf[address(this.address)].field_0 >= stor19:
                                                mem[_8448 + ceil32(return_data.size) + 128] = 3
                                                mem[_8448 + ceil32(return_data.size) + 160] = this.address
                                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e25602.WETH() with:
                                                        gas gas_remaining wei
                                                mem[_8448 + ceil32(return_data.size) + 256] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _8448 + (2 * ceil32(return_data.size)) + 256
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_8448 + ceil32(return_data.size) + 192] = ext_call.return_data[12 len 20]
                                                mem[_8448 + ceil32(return_data.size) + 224] = rewardTokenAddress
                                                if not this.address:
                                                    revert with 0, 'ERC20: approve from the zero address'
                                                mem[32] = sha3(address(this.address), 1)
                                                allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e25602000000000000000000000000].field_0 = stor19
                                                emit Approval(stor19, this.address, 0x10ed43c718714eb63d5aa57b78b54704e25602);
                                                mem[_8448 + (2 * ceil32(return_data.size)) + 256] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                                                mem[0] = 0x10ed43c718714eb63d5aa57b78b54704e25602
                                                mem[_8448 + (2 * ceil32(return_data.size)) + 260] = stor19
                                                mem[_8448 + (2 * ceil32(return_data.size)) + 292] = 0
                                                mem[_8448 + (2 * ceil32(return_data.size)) + 324] = 160
                                                mem[_8448 + (2 * ceil32(return_data.size)) + 420] = 3
                                                idx = 0
                                                s = _8448 + (2 * ceil32(return_data.size)) + 452
                                                t = _8448 + ceil32(return_data.size) + 160
                                                while idx < mem[_8448 + ceil32(return_data.size) + 128]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_8448 + (2 * ceil32(return_data.size)) + 356] = teamWalletAddress
                                                mem[_8448 + (2 * ceil32(return_data.size)) + 388] = block.timestamp
                                                require ext_code.size(0xfe00000000000000000000000010ed43c718714eb63d5aa57b78b54704e25602)
                                                call ????????????????????????????????????????.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _8448 + (2 * ceil32(return_data.size)) + (32 * mem[_8448 + ceil32(return_data.size) + 128]) + -mem[64] + 448]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if balanceOf[address(this.address)].field_0 < balanceOf[address(this.address)].field_0:
                                                    revert with 0, 17
                                                if stor19 < 0:
                                                    revert with 0, 17
                        if this.address == msg.sender:
                            if balanceOf[address(cd[4])].field_0 > !cd[36]:
                                revert with 0, 17
                            balanceOf[address(cd[4])].field_0 += cd[36]
                            emit 0x4eddf252: cd[36], msg.sender, address(cd[4])
                        else:
                            if this.address == address(cd[4]):
                                if balanceOf[address(cd[4])].field_0 > !cd[36]:
                                    revert with 0, 17
                                balanceOf[address(cd[4])].field_0 += cd[36]
                                emit 0x4eddf252: cd[36], msg.sender, address(cd[4])
                            else:
                                if liquidityFee and cd[36] > -1 / liquidityFee:
                                    revert with 0, 17
                                if buyBackFee and cd[36] > -1 / buyBackFee:
                                    revert with 0, 17
                                if marketingWalletFee and cd[36] > -1 / marketingWalletFee:
                                    revert with 0, 17
                                if sub_c18a8c47 and cd[36] > -1 / sub_c18a8c47:
                                    revert with 0, 17
                                if reflectionFee and cd[36] > -1 / reflectionFee:
                                    revert with 0, 17
                                if sub_0f2a8d53 and cd[36] > -1 / sub_0f2a8d53:
                                    revert with 0, 17
                                if sub_2acd85c4 and cd[36] > -1 / sub_2acd85c4:
                                    revert with 0, 17
                                if stor44AD > !(buyBackFee * cd[36] / 100):
                                    revert with 0, 17
                                stor44AD += buyBackFee * cd[36] / 100
                                if liquidityFee * cd[36] / 100 > !(reflectionFee * cd[36] / 100):
                                    revert with 0, 17
                                if (liquidityFee * cd[36] / 100) + (reflectionFee * cd[36] / 100) > !(sub_0f2a8d53 * cd[36] / 100):
                                    revert with 0, 17
                                if (liquidityFee * cd[36] / 100) + (reflectionFee * cd[36] / 100) + (sub_0f2a8d53 * cd[36] / 100) > !(marketingWalletFee * cd[36] / 100):
                                    revert with 0, 17
                                if (liquidityFee * cd[36] / 100) + (reflectionFee * cd[36] / 100) + (sub_0f2a8d53 * cd[36] / 100) + (marketingWalletFee * cd[36] / 100) > !(sub_c18a8c47 * cd[36] / 100):
                                    revert with 0, 17
                                if balanceOf[this.address].field_0 > !((liquidityFee * cd[36] / 100) + (reflectionFee * cd[36] / 100) + (sub_0f2a8d53 * cd[36] / 100) + (marketingWalletFee * cd[36] / 100) + (sub_c18a8c47 * cd[36] / 100)):
                                    revert with 0, 17
                                balanceOf[this.address].field_0 = balanceOf[this.address].field_0 + (liquidityFee * cd[36] / 100) + (reflectionFee * cd[36] / 100) + (sub_0f2a8d53 * cd[36] / 100) + (marketingWalletFee * cd[36] / 100) + (sub_c18a8c47 * cd[36] / 100)
                                if balanceOf[address(cd[4])].field_0 > !(sub_2acd85c4 * cd[36] / 100):
                                    revert with 0, 17
                                balanceOf[address(cd[4])].field_0 += sub_2acd85c4 * cd[36] / 100
                                if sub_1678c929 > !(liquidityFee * cd[36] / 100):
                                    revert with 0, 17
                                sub_1678c929 += liquidityFee * cd[36] / 100
                                if uint256(sub_66f8520b) > !(sub_0f2a8d53 * cd[36] / 100):
                                    revert with 0, 17
                                uint256(sub_66f8520b) += sub_0f2a8d53 * cd[36] / 100
                                if stor18 > !(marketingWalletFee * cd[36] / 100):
                                    revert with 0, 17
                                stor18 += marketingWalletFee * cd[36] / 100
                                if stor19 > !(sub_c18a8c47 * cd[36] / 100):
                                    revert with 0, 17
                                stor19 += sub_c18a8c47 * cd[36] / 100
                                if sub_6f60a4b3 > !(reflectionFee * cd[36] / 100):
                                    revert with 0, 17
                                sub_6f60a4b3 += reflectionFee * cd[36] / 100
                                emit 0x4eddf252: (sub_2acd85c4 * cd[36] / 100), msg.sender, address(cd[4])
    return 1
}



}
