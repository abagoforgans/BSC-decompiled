contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const decimals = 18


uint256 totalSupply;
array of struct stor1;
array of struct stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address uniswapV2PairAddress;
address stor6;
uint8 stor7; offset 168
uint128 stor7; offset 168
address sub_0aaae735Address;
uint256 sub_2c228355;
uint256 stor9;
uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint256 stor13;
mapping of uint256 stor14;
mapping of uint256 sub_4d48b105;
mapping of uint8 stor16;
uint256 sub_aff41b7b;
uint256 sub_99bf3266;
uint256 maxBuy;
uint256 startingSupply;
uint256 sub_644ce4be;
uint256 swapThreshold;
uint8 stor23;
uint256 stor24;
uint256 totalRewardsDistributed;
uint256 _totalBurned;
address stor27;

function swapThreshold() {
    return swapThreshold
}

function sub_0aaae735(?) {
    return sub_0aaae735Address
}

function totalSupply() {
    return totalSupply
}

function sub_2c228355(?) {
    return sub_2c228355
}

function isBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function startingSupply() {
    return startingSupply
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function sub_4d48b105(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4d48b105[address(arg1)]
}

function sub_644ce4be(?) {
    return sub_644ce4be
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function maxBuy() {
    return maxBuy
}

function sub_99bf3266(?) {
    return sub_99bf3266
}

function sub_aff41b7b(?) {
    return sub_aff41b7b
}

function sub_b556b1a2(?) {
    return bool(uint8(stor7.field_168))
}

function sub_bc9c3b77(?) {
    return totalRewardsDistributed
}

function totalBurned() {
    return _totalBurned
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function totalRewardsDistributed() {
    return totalRewardsDistributed
}

function _totalBurned() {
    return _totalBurned
}

function sub_4e6be544(?) payable {
    if stor24 > !msg.value:
        revert with 0, 17
    stor24 += msg.value
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor27
    stor27 = arg1
}

function sub_c98e442d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor27
    stor6 = address(arg1)
}

function sub_9b6f6d78(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == stor27
    stor10 = uint8(bool(arg1))
}

function sub_e9a7e633(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == stor27
    stor23 = uint8(bool(arg1))
}

function sub_11d2adcf(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    require msg.sender == stor27
    Mask(88, 0, stor7.field_168) = Mask(88, 0, bool(arg1))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setSwapThreshold(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor27
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    swapThreshold = 10^18 * arg1
}

function sub_6fee4f7a(?) {
    require balanceOf[stor5] < startingSupply / 100
    call stor6 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function amnestyBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor27
    stor11[address(arg1)] = 0
    stor16[address(arg1)] = 0
    if sub_2c228355 < balanceOf[address(arg1)]:
        revert with 0, 17
    sub_2c228355 -= balanceOf[address(arg1)]
}

function pendingRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor16[address(arg1)]:
        return 0
    if stor24 < stor14[address(arg1)]:
        revert with 0, 17
    if balanceOf[stor5] > !sub_2c228355:
        revert with 0, 17
    if totalSupply < balanceOf[stor5] + sub_2c228355:
        revert with 0, 17
    if stor24 - stor14[address(arg1)] and balanceOf[address(arg1)] > -1 / stor24 - stor14[address(arg1)]:
        revert with 0, 17
    if not totalSupply - balanceOf[stor5] - sub_2c228355:
        revert with 0, 18
    return ((stor24 * balanceOf[address(arg1)]) - (stor14[address(arg1)] * balanceOf[address(arg1)]) / totalSupply - balanceOf[stor5] - sub_2c228355)
}

function getMaxBuy() {
    if block.timestamp < sub_99bf3266:
        revert with 0, 17
    if not block.timestamp - sub_99bf3266:
        return maxBuy
    if sub_aff41b7b and block.timestamp - sub_99bf3266 > -1 / sub_aff41b7b:
        revert with 0, 17
    if maxBuy > !((block.timestamp * sub_aff41b7b) - (sub_99bf3266 * sub_aff41b7b)):
        revert with 0, 17
    if totalSupply < maxBuy + (block.timestamp * sub_aff41b7b) - (sub_99bf3266 * sub_aff41b7b):
        return totalSupply
    if sub_aff41b7b and block.timestamp - sub_99bf3266 > -1 / sub_aff41b7b:
        revert with 0, 17
    if maxBuy > !((block.timestamp * sub_aff41b7b) - (sub_99bf3266 * sub_aff41b7b)):
        revert with 0, 17
    return (maxBuy + (block.timestamp * sub_aff41b7b) - (sub_99bf3266 * sub_aff41b7b))
}

function sub_6c90b57f(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == bool(cd[36])
    require msg.sender == stor27
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        stor12[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_3f10fb45(?) {
    require calldata.size - 4 >= 32
    if arg1 <= balanceOf[stor5] / 100:
        return (arg1 / 40)
    if arg1 > balanceOf[stor5] / 10:
        if arg1 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        return (10 * arg1 / 100)
    if balanceOf[stor5] / 10 < balanceOf[stor5] / 100:
        revert with 0, 17
    if arg1 < balanceOf[stor5] / 100:
        revert with 0, 17
    if arg1 - (balanceOf[stor5] / 100) > 0x1111111111111111111111111111111111111111111111111111111111111111:
        revert with 0, 17
    if (15 * arg1) - (15 * balanceOf[stor5] / 100) and arg1 > -1 / (15 * arg1) - (15 * balanceOf[stor5] / 100):
        revert with 0, 17
    if not (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100):
        revert with 0, 18
    if (15 * arg1 * arg1) - (15 * balanceOf[stor5] / 100 * arg1) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200 > !(arg1 / 40):
        revert with 0, 17
    return (((15 * arg1 * arg1) - (15 * balanceOf[stor5] / 100 * arg1) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40))
}

function start() {
    require msg.sender == stor27
    require not uniswapV2PairAddress
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    allowance[this.address][0x10ed43c718714eb63d5aa57b78b54704e256024e] = totalSupply
    stor12[address(ext_call.return_data[0])] = 1
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args this.address, balanceOf[this.address], 0, 0, msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    uniswapV2PairAddress = address(ext_call.return_data[0])
    stor9 = block.number
    sub_99bf3266 = block.timestamp
    if totalSupply and 1 > -1 / totalSupply:
        revert with 0, 17
    sub_aff41b7b = totalSupply / 6000
    uint8(stor7.field_168) = 1
}

function claimReflection() {
    if not stor16[address(msg.sender)]:
        if uniswapV2PairAddress != msg.sender:
            if msg.sender != 0x10ed43c718714eb63d5aa57b78b54704e256024e:
                if stor24 < stor14[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[stor5] > !sub_2c228355:
                    revert with 0, 17
                if totalSupply < balanceOf[stor5] + sub_2c228355:
                    revert with 0, 17
                if stor24 - stor14[address(msg.sender)] and balanceOf[address(msg.sender)] > -1 / stor24 - stor14[address(msg.sender)]:
                    revert with 0, 17
                if not totalSupply - balanceOf[stor5] - sub_2c228355:
                    revert with 0, 18
                stor14[address(msg.sender)] = stor24
                if (stor24 * balanceOf[address(msg.sender)]) - (stor14[address(msg.sender)] * balanceOf[address(msg.sender)]) / totalSupply - balanceOf[stor5] - sub_2c228355:
                    call msg.sender with:
                       value (stor24 * balanceOf[address(msg.sender)]) - (stor14[address(msg.sender)] * balanceOf[address(msg.sender)]) / totalSupply - balanceOf[stor5] - sub_2c228355 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_4d48b105[address(msg.sender)] > !((stor24 * balanceOf[address(msg.sender)]) - (stor14[address(msg.sender)] * balanceOf[address(msg.sender)]) / totalSupply - balanceOf[stor5] - sub_2c228355):
                        revert with 0, 17
                    sub_4d48b105[address(msg.sender)] += (stor24 * balanceOf[address(msg.sender)]) - (stor14[address(msg.sender)] * balanceOf[address(msg.sender)]) / totalSupply - balanceOf[stor5] - sub_2c228355
                    if totalRewardsDistributed > !((stor24 * balanceOf[address(msg.sender)]) - (stor14[address(msg.sender)] * balanceOf[address(msg.sender)]) / totalSupply - balanceOf[stor5] - sub_2c228355):
                        revert with 0, 17
                    totalRewardsDistributed += (stor24 * balanceOf[address(msg.sender)]) - (stor14[address(msg.sender)] * balanceOf[address(msg.sender)]) / totalSupply - balanceOf[stor5] - sub_2c228355
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function symbol() {
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor2.length):
            if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor2.length):
                if 31 < uint255(stor2.length) * 0.5:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor2.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 0, 34
            if stor2.length.field_1:
                if 31 < stor2.length.field_1:
                    mem[128] = uint256(stor2.field_0)
                    idx = 128
                    s = 0
                    while stor2.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(uint255(stor2.length) * 0.5) + 192 len ceil32(uint255(stor2.length) * 0.5)] = mem[128 len ceil32(uint255(stor2.length) * 0.5)]
        if ceil32(uint255(stor2.length) * 0.5) > uint255(stor2.length) * 0.5:
            mem[ceil32(uint255(stor2.length) * 0.5) + (uint255(stor2.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length), data=mem[128 len ceil32(uint255(stor2.length) * 0.5)], mem[(2 * ceil32(uint255(stor2.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor2.length) * 0.5)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 0, 34
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor2.length):
            if 31 < uint255(stor2.length) * 0.5:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while (uint255(stor2.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if stor2.length.field_1:
            if 31 < stor2.length.field_1:
                mem[128] = uint256(stor2.field_0)
                idx = 128
                s = 0
                while stor2.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)])
            mem[128] = 256 * stor2.length.field_8
    mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
    if ceil32(stor2.length.field_1) > stor2.length.field_1:
        mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
    return Array(len=stor2.length % 128, data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
}

function sub_2bbcfbcc(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 > 0x1555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if not stor23:
        if balanceOf[stor5] / 10 < balanceOf[stor5] / 100:
            revert with 0, 17
        if arg1 > balanceOf[stor5] / 100:
            if arg1 <= balanceOf[stor5] / 10:
                if arg1 < balanceOf[stor5] / 100:
                    revert with 0, 17
                if arg1 - (balanceOf[stor5] / 100) > 0x1111111111111111111111111111111111111111111111111111111111111111:
                    revert with 0, 17
                if (15 * arg1) - (15 * balanceOf[stor5] / 100) and arg1 > -1 / (15 * arg1) - (15 * balanceOf[stor5] / 100):
                    revert with 0, 17
                if not (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100):
                    revert with 0, 18
                if (15 * arg1 * arg1) - (15 * balanceOf[stor5] / 100 * arg1) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200 > !(arg1 / 40):
                    revert with 0, 17
                if 12 * arg1 / 100 > !(((15 * arg1 * arg1) - (15 * balanceOf[stor5] / 100 * arg1) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40)):
                    revert with 0, 17
                if arg1 < (12 * arg1 / 100) + ((15 * arg1 * arg1) - (15 * balanceOf[stor5] / 100 * arg1) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40):
                    revert with 0, 17
                return (arg1 - (12 * arg1 / 100) - ((15 * arg1 * arg1) - (15 * balanceOf[stor5] / 100 * arg1) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) - (arg1 / 40))
            if arg1 / 10 < balanceOf[stor5] / 100:
                revert with 0, 17
            if (arg1 / 10) - (balanceOf[stor5] / 100) > 0x1111111111111111111111111111111111111111111111111111111111111111:
                revert with 0, 17
            if (15 * arg1 / 10) - (15 * balanceOf[stor5] / 100) and arg1 / 10 > -1 / (15 * arg1 / 10) - (15 * balanceOf[stor5] / 100):
                revert with 0, 17
            if not (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100):
                revert with 0, 18
            if (15 * arg1 / 10 * arg1 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200 > !(arg1 / 10 / 40):
                revert with 0, 17
            if 12 * arg1 / 100 > !(((15 * arg1 / 10 * arg1 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 10 / 40)):
                revert with 0, 17
            if arg1 / 10 < (12 * arg1 / 100) + ((15 * arg1 / 10 * arg1 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 10 / 40):
                revert with 0, 17
            return ((arg1 / 10) - (12 * arg1 / 100) - ((15 * arg1 / 10 * arg1 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) - (arg1 / 10 / 40))
        if arg1 / 40 <= balanceOf[stor5] / 10:
            if arg1 / 40 < balanceOf[stor5] / 100:
                revert with 0, 17
            if (arg1 / 40) - (balanceOf[stor5] / 100) > 0x1111111111111111111111111111111111111111111111111111111111111111:
                revert with 0, 17
            if (15 * arg1 / 40) - (15 * balanceOf[stor5] / 100) and arg1 / 40 > -1 / (15 * arg1 / 40) - (15 * balanceOf[stor5] / 100):
                revert with 0, 17
            if not (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100):
                revert with 0, 18
            if (15 * arg1 / 40 * arg1 / 40) - (15 * balanceOf[stor5] / 100 * arg1 / 40) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200 > !(arg1 / 40 / 40):
                revert with 0, 17
            if 12 * arg1 / 100 > !(((15 * arg1 / 40 * arg1 / 40) - (15 * balanceOf[stor5] / 100 * arg1 / 40) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40 / 40)):
                revert with 0, 17
            if arg1 / 40 < (12 * arg1 / 100) + ((15 * arg1 / 40 * arg1 / 40) - (15 * balanceOf[stor5] / 100 * arg1 / 40) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40 / 40):
                revert with 0, 17
            return ((arg1 / 40) - (12 * arg1 / 100) - ((15 * arg1 / 40 * arg1 / 40) - (15 * balanceOf[stor5] / 100 * arg1 / 40) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) - (arg1 / 40 / 40))
        if arg1 / 40 / 10 < balanceOf[stor5] / 100:
            revert with 0, 17
        if (arg1 / 40 / 10) - (balanceOf[stor5] / 100) > 0x1111111111111111111111111111111111111111111111111111111111111111:
            revert with 0, 17
        if (15 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100) and arg1 / 40 / 10 > -1 / (15 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100):
            revert with 0, 17
        if not (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100):
            revert with 0, 18
        if (15 * arg1 / 40 / 10 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 40 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200 > !(arg1 / 40 / 10 / 40):
            revert with 0, 17
        if 12 * arg1 / 100 > !(((15 * arg1 / 40 / 10 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 40 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40 / 10 / 40)):
            revert with 0, 17
        if arg1 / 40 / 10 < (12 * arg1 / 100) + ((15 * arg1 / 40 / 10 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 40 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40 / 10 / 40):
            revert with 0, 17
        return ((arg1 / 40 / 10) - (12 * arg1 / 100) - ((15 * arg1 / 40 / 10 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 40 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) - (arg1 / 40 / 10 / 40))
    if stor13[address(arg2)] > !sub_644ce4be:
        revert with 0, 17
    if stor13[address(arg2)] + sub_644ce4be < block.timestamp:
        if balanceOf[stor5] / 10 < balanceOf[stor5] / 100:
            revert with 0, 17
        if arg1 > balanceOf[stor5] / 100:
            if arg1 <= balanceOf[stor5] / 10:
                if arg1 < balanceOf[stor5] / 100:
                    revert with 0, 17
                if arg1 - (balanceOf[stor5] / 100) > 0x1111111111111111111111111111111111111111111111111111111111111111:
                    revert with 0, 17
                if (15 * arg1) - (15 * balanceOf[stor5] / 100) and arg1 > -1 / (15 * arg1) - (15 * balanceOf[stor5] / 100):
                    revert with 0, 17
                if not (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100):
                    revert with 0, 18
                if (15 * arg1 * arg1) - (15 * balanceOf[stor5] / 100 * arg1) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200 > !(arg1 / 40):
                    revert with 0, 17
                if 12 * arg1 / 100 > !(((15 * arg1 * arg1) - (15 * balanceOf[stor5] / 100 * arg1) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40)):
                    revert with 0, 17
                if arg1 < (12 * arg1 / 100) + ((15 * arg1 * arg1) - (15 * balanceOf[stor5] / 100 * arg1) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40):
                    revert with 0, 17
                return (arg1 - (12 * arg1 / 100) - ((15 * arg1 * arg1) - (15 * balanceOf[stor5] / 100 * arg1) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) - (arg1 / 40))
            if arg1 / 10 < balanceOf[stor5] / 100:
                revert with 0, 17
            if (arg1 / 10) - (balanceOf[stor5] / 100) > 0x1111111111111111111111111111111111111111111111111111111111111111:
                revert with 0, 17
            if (15 * arg1 / 10) - (15 * balanceOf[stor5] / 100) and arg1 / 10 > -1 / (15 * arg1 / 10) - (15 * balanceOf[stor5] / 100):
                revert with 0, 17
            if not (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100):
                revert with 0, 18
            if (15 * arg1 / 10 * arg1 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200 > !(arg1 / 10 / 40):
                revert with 0, 17
            if 12 * arg1 / 100 > !(((15 * arg1 / 10 * arg1 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 10 / 40)):
                revert with 0, 17
            if arg1 / 10 < (12 * arg1 / 100) + ((15 * arg1 / 10 * arg1 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 10 / 40):
                revert with 0, 17
            return ((arg1 / 10) - (12 * arg1 / 100) - ((15 * arg1 / 10 * arg1 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) - (arg1 / 10 / 40))
        if arg1 / 40 <= balanceOf[stor5] / 10:
            if arg1 / 40 < balanceOf[stor5] / 100:
                revert with 0, 17
            if (arg1 / 40) - (balanceOf[stor5] / 100) > 0x1111111111111111111111111111111111111111111111111111111111111111:
                revert with 0, 17
            if (15 * arg1 / 40) - (15 * balanceOf[stor5] / 100) and arg1 / 40 > -1 / (15 * arg1 / 40) - (15 * balanceOf[stor5] / 100):
                revert with 0, 17
            if not (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100):
                revert with 0, 18
            if (15 * arg1 / 40 * arg1 / 40) - (15 * balanceOf[stor5] / 100 * arg1 / 40) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200 > !(arg1 / 40 / 40):
                revert with 0, 17
            if 12 * arg1 / 100 > !(((15 * arg1 / 40 * arg1 / 40) - (15 * balanceOf[stor5] / 100 * arg1 / 40) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40 / 40)):
                revert with 0, 17
            if arg1 / 40 < (12 * arg1 / 100) + ((15 * arg1 / 40 * arg1 / 40) - (15 * balanceOf[stor5] / 100 * arg1 / 40) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40 / 40):
                revert with 0, 17
            return ((arg1 / 40) - (12 * arg1 / 100) - ((15 * arg1 / 40 * arg1 / 40) - (15 * balanceOf[stor5] / 100 * arg1 / 40) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) - (arg1 / 40 / 40))
        if arg1 / 40 / 10 < balanceOf[stor5] / 100:
            revert with 0, 17
        if (arg1 / 40 / 10) - (balanceOf[stor5] / 100) > 0x1111111111111111111111111111111111111111111111111111111111111111:
            revert with 0, 17
        if (15 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100) and arg1 / 40 / 10 > -1 / (15 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100):
            revert with 0, 17
        if not (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100):
            revert with 0, 18
        if (15 * arg1 / 40 / 10 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 40 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200 > !(arg1 / 40 / 10 / 40):
            revert with 0, 17
        if 12 * arg1 / 100 > !(((15 * arg1 / 40 / 10 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 40 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40 / 10 / 40)):
            revert with 0, 17
        if arg1 / 40 / 10 < (12 * arg1 / 100) + ((15 * arg1 / 40 / 10 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 40 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40 / 10 / 40):
            revert with 0, 17
        return ((arg1 / 40 / 10) - (12 * arg1 / 100) - ((15 * arg1 / 40 / 10 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 40 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) - (arg1 / 40 / 10 / 40))
    if 12 * arg1 / 100 > 0x5555555555555555555555555555555555555555555555555555555555555555:
        revert with 0, 17
    if balanceOf[stor5] / 10 < balanceOf[stor5] / 100:
        revert with 0, 17
    if arg1 > balanceOf[stor5] / 100:
        if arg1 <= balanceOf[stor5] / 10:
            if arg1 < balanceOf[stor5] / 100:
                revert with 0, 17
            if arg1 - (balanceOf[stor5] / 100) > 0x1111111111111111111111111111111111111111111111111111111111111111:
                revert with 0, 17
            if (15 * arg1) - (15 * balanceOf[stor5] / 100) and arg1 > -1 / (15 * arg1) - (15 * balanceOf[stor5] / 100):
                revert with 0, 17
            if not (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100):
                revert with 0, 18
            if (15 * arg1 * arg1) - (15 * balanceOf[stor5] / 100 * arg1) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200 > !(arg1 / 40):
                revert with 0, 17
            if 3 * 12 * arg1 / 100 / 2 > !(((15 * arg1 * arg1) - (15 * balanceOf[stor5] / 100 * arg1) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40)):
                revert with 0, 17
            if arg1 < (3 * 12 * arg1 / 100 / 2) + ((15 * arg1 * arg1) - (15 * balanceOf[stor5] / 100 * arg1) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40):
                revert with 0, 17
            return (arg1 - (3 * 12 * arg1 / 100 / 2) - ((15 * arg1 * arg1) - (15 * balanceOf[stor5] / 100 * arg1) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) - (arg1 / 40))
        if arg1 / 10 < balanceOf[stor5] / 100:
            revert with 0, 17
        if (arg1 / 10) - (balanceOf[stor5] / 100) > 0x1111111111111111111111111111111111111111111111111111111111111111:
            revert with 0, 17
        if (15 * arg1 / 10) - (15 * balanceOf[stor5] / 100) and arg1 / 10 > -1 / (15 * arg1 / 10) - (15 * balanceOf[stor5] / 100):
            revert with 0, 17
        if not (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100):
            revert with 0, 18
        if (15 * arg1 / 10 * arg1 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200 > !(arg1 / 10 / 40):
            revert with 0, 17
        if 3 * 12 * arg1 / 100 / 2 > !(((15 * arg1 / 10 * arg1 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 10 / 40)):
            revert with 0, 17
        if arg1 / 10 < (3 * 12 * arg1 / 100 / 2) + ((15 * arg1 / 10 * arg1 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 10 / 40):
            revert with 0, 17
        return ((arg1 / 10) - (3 * 12 * arg1 / 100 / 2) - ((15 * arg1 / 10 * arg1 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) - (arg1 / 10 / 40))
    if arg1 / 40 <= balanceOf[stor5] / 10:
        if arg1 / 40 < balanceOf[stor5] / 100:
            revert with 0, 17
        if (arg1 / 40) - (balanceOf[stor5] / 100) > 0x1111111111111111111111111111111111111111111111111111111111111111:
            revert with 0, 17
        if (15 * arg1 / 40) - (15 * balanceOf[stor5] / 100) and arg1 / 40 > -1 / (15 * arg1 / 40) - (15 * balanceOf[stor5] / 100):
            revert with 0, 17
        if not (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100):
            revert with 0, 18
        if (15 * arg1 / 40 * arg1 / 40) - (15 * balanceOf[stor5] / 100 * arg1 / 40) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200 > !(arg1 / 40 / 40):
            revert with 0, 17
        if 3 * 12 * arg1 / 100 / 2 > !(((15 * arg1 / 40 * arg1 / 40) - (15 * balanceOf[stor5] / 100 * arg1 / 40) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40 / 40)):
            revert with 0, 17
        if arg1 / 40 < (3 * 12 * arg1 / 100 / 2) + ((15 * arg1 / 40 * arg1 / 40) - (15 * balanceOf[stor5] / 100 * arg1 / 40) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40 / 40):
            revert with 0, 17
        return ((arg1 / 40) - (3 * 12 * arg1 / 100 / 2) - ((15 * arg1 / 40 * arg1 / 40) - (15 * balanceOf[stor5] / 100 * arg1 / 40) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) - (arg1 / 40 / 40))
    if arg1 / 40 / 10 < balanceOf[stor5] / 100:
        revert with 0, 17
    if (arg1 / 40 / 10) - (balanceOf[stor5] / 100) > 0x1111111111111111111111111111111111111111111111111111111111111111:
        revert with 0, 17
    if (15 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100) and arg1 / 40 / 10 > -1 / (15 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100):
        revert with 0, 17
    if not (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100):
        revert with 0, 18
    if (15 * arg1 / 40 / 10 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 40 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200 > !(arg1 / 40 / 10 / 40):
        revert with 0, 17
    if 3 * 12 * arg1 / 100 / 2 > !(((15 * arg1 / 40 / 10 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 40 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40 / 10 / 40)):
        revert with 0, 17
    if arg1 / 40 / 10 < (3 * 12 * arg1 / 100 / 2) + ((15 * arg1 / 40 / 10 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 40 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) + (arg1 / 40 / 10 / 40):
        revert with 0, 17
    return ((arg1 / 40 / 10) - (3 * 12 * arg1 / 100 / 2) - ((15 * arg1 / 40 / 10 * arg1 / 40 / 10) - (15 * balanceOf[stor5] / 100 * arg1 / 40 / 10) / (balanceOf[stor5] / 10) - (balanceOf[stor5] / 100) / 200) - (arg1 / 40 / 10 / 40))
}



}
