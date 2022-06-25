contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 18


uint256 totalSupply;
array of struct stor1;
array of struct stor2;
mapping of uint256 balanceOf;
mapping of struct allowance;
uint8 stor5; offset 160
uint128 stor5; offset 160
address uniswapV2PairAddress;
mapping of uint8 stor6;
mapping of uint8 stor7;
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 8
uint256 maxBuy;
uint256 sub_aff41b7b;
uint256 sub_99bf3266;
address stor12;
address stor13;
uint256 stor14;

function tradingEnable() {
    return bool(uint8(stor5.field_160))
}

function totalSupply() {
    return totalSupply
}

function isBot(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
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

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function _fallback() payable {
    revert
}

function sub_52e53988(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor12 != msg.sender:
        require msg.sender == stor13
    stor14 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor12 != msg.sender:
        require msg.sender == stor13
    stor12 = arg1
}

function sub_9b6f6d78(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if stor12 != msg.sender:
        require msg.sender == stor13
    uint8(stor8.field_0) = uint8(bool(arg1))
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaxBuy(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor12 != msg.sender:
        require msg.sender == stor13
    if arg1 and totalSupply > -1 / arg1:
        revert with 'NH{q', 17
    maxBuy = arg1 * totalSupply / 1000
}

function withdraw() {
    if stor12 != msg.sender:
        require msg.sender == stor13
    call stor13 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_acefa691(?) {
    require calldata.size - 4 >= 64
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    if stor12 != msg.sender:
        require msg.sender == stor13
    Mask(96, 0, stor5.field_160) = Mask(96, 0, bool(arg1))
    uint8(stor8.field_0) = uint8(bool(arg2))
}

function getMaxBuy() {
    if block.timestamp < sub_99bf3266:
        revert with 'NH{q', 17
    if not block.timestamp - sub_99bf3266 / 120:
        return maxBuy
    if sub_aff41b7b and block.timestamp - sub_99bf3266 / 120 > -1 / sub_aff41b7b:
        revert with 'NH{q', 17
    if maxBuy > (-1 * sub_aff41b7b * block.timestamp - sub_99bf3266 / 120) - 1:
        revert with 'NH{q', 17
    return (maxBuy + (sub_aff41b7b * block.timestamp - sub_99bf3266 / 120))
}

function setBots(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == arg2
    if stor12 != msg.sender:
        require msg.sender == stor13
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_6c90b57f(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == bool(cd[36])
    if stor12 != msg.sender:
        require msg.sender == stor13
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        stor7[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_b203919e(?) {
    if stor12 != msg.sender:
        require msg.sender == stor13
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
    balanceOf[address(this.address)] = totalSupply
    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = totalSupply
    stor7[address(ext_call.return_data[0])] = 1
    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args address(this.address), totalSupply, 0, 0, msg.sender, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    uniswapV2PairAddress = address(ext_call.return_data[0])
    Mask(96, 0, stor5.field_160) = 1
    sub_99bf3266 = block.timestamp
    if totalSupply and 1 > -1 / totalSupply:
        revert with 'NH{q', 17
    sub_aff41b7b = totalSupply / 1000
}

function name() {
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor1.length):
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
        if ceil32(stor1.length.field_1) > stor1.length.field_1:
            mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length.field_1), data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor1.length):
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 'NH{q', 34
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
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor2.length):
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        else:
            if bool(stor2.length) == stor2.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)])
                mem[128] = 256 * stor2.length.field_8
        mem[ceil32(stor2.length.field_1) + 192 len ceil32(stor2.length.field_1)] = mem[128 len ceil32(stor2.length.field_1)]
        if ceil32(stor2.length.field_1) > stor2.length.field_1:
            mem[ceil32(stor2.length.field_1) + stor2.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor2.length.field_1), data=mem[128 len ceil32(stor2.length.field_1)], mem[(2 * ceil32(stor2.length.field_1)) + 192 len 2 * ceil32(stor2.length.field_1)]), 
    if bool(stor2.length) == stor2.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor2.length):
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 'NH{q', 34
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

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require not stor6[address(msg.sender)]
    require not stor6[address(arg1)]
    if uniswapV2PairAddress != msg.sender:
        if uint8(stor8.field_8):
            require balanceOf[address(msg.sender)] >= arg2
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] > -arg2 - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not uniswapV2PairAddress:
                require balanceOf[address(msg.sender)] >= arg2
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if arg1 != uniswapV2PairAddress:
                    require balanceOf[address(msg.sender)] >= arg2
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg2 <= balanceOf[address(stor5.field_0)] / 100:
                        if arg2 / 15 > -(arg2 / 20) - 1:
                            revert with 'NH{q', 17
                        if arg2 < (arg2 / 15) + (arg2 / 20):
                            revert with 'NH{q', 17
                        if arg2 / 15 > -(arg2 / 20) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < (arg2 / 15) + (arg2 / 20):
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 15) - (arg2 / 20)
                        if balanceOf[address(this.address)] > -(arg2 / 15) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg2 / 15
                        if totalSupply < arg2 / 20:
                            revert with 'NH{q', 17
                        totalSupply -= arg2 / 20
                        emit Transfer((arg2 / 20), this.address, 0);
                        if balanceOf[address(this.address)] > 0:
                            if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                revert with 'NH{q', 17
                            if balanceOf[address(this.address)] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                if arg2 - (arg2 / 15) - (arg2 / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                Mask(248, 0, stor8.field_8) = 1
                                mem[128] = this.address
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if balanceOf[address(this.address)] <= 2 * arg2 - (arg2 / 15) - (arg2 / 20):
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(this.address)]
                                    emit Approval(balanceOf[address(this.address)], this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)]
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 388
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                else:
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 15) - (arg2 / 20))
                                    emit Approval((2 * arg2 - (arg2 / 15) - (arg2 / 20)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 15) - (arg2 / 20)
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 388
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 2 * arg2 - (arg2 / 15) - (arg2 / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            else:
                                if totalSupply < balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply - balanceOf[address(this.address)] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                emit Transfer((balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                if arg2 - (arg2 / 15) - (arg2 / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                Mask(248, 0, stor8.field_8) = 1
                                mem[128] = this.address
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                        gas gas_remaining wei
                                mem[192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[160] = ext_call.return_data[12 len 20]
                                if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 15) - (arg2 / 20):
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                    emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 388
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                else:
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 15) - (arg2 / 20))
                                    emit Approval((2 * arg2 - (arg2 / 15) - (arg2 / 20)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                    mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 15) - (arg2 / 20)
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 388
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 2 * arg2 - (arg2 / 15) - (arg2 / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            Mask(248, 0, stor8.field_8) = 0
                        require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 15) - (arg2 / 20)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 15) + (arg2 / 20)
                        if balanceOf[address(arg1)] > -arg2 + (arg2 / 15) + (arg2 / 20) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 15) - (arg2 / 20)
                        emit Transfer((arg2 - (arg2 / 15) - (arg2 / 20)), msg.sender, arg1);
                    else:
                        if arg2 > balanceOf[address(stor5.field_0)] / 10:
                            if arg2 and 35 > -1 / arg2:
                                revert with 'NH{q', 17
                            if arg2 / 15 > -(35 * arg2 / 100) - 1:
                                revert with 'NH{q', 17
                            if arg2 < (arg2 / 15) + (35 * arg2 / 100):
                                revert with 'NH{q', 17
                            if arg2 / 15 > -(35 * arg2 / 100) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < (arg2 / 15) + (35 * arg2 / 100):
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 15) - (35 * arg2 / 100)
                            if balanceOf[address(this.address)] > -(arg2 / 15) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 / 15
                            if totalSupply < 35 * arg2 / 100:
                                revert with 'NH{q', 17
                            totalSupply -= 35 * arg2 / 100
                            emit Transfer((35 * arg2 / 100), this.address, 0);
                            if balanceOf[address(this.address)] > 0:
                                if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                    if arg2 - (arg2 / 15) - (35 * arg2 / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    Mask(248, 0, stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[address(this.address)] <= 2 * arg2 - (arg2 / 15) - (35 * arg2 / 100):
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(this.address)]
                                        emit Approval(balanceOf[address(this.address)], this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)]
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 15) - (35 * arg2 / 100))
                                        emit Approval((2 * arg2 - (arg2 / 15) - (35 * arg2 / 100)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 15) - (35 * arg2 / 100)
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 15) - (35 * arg2 / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                else:
                                    if totalSupply < balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                        revert with 'NH{q', 17
                                    totalSupply = totalSupply - balanceOf[address(this.address)] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                    emit Transfer((balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                    if arg2 - (arg2 / 15) - (35 * arg2 / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    Mask(248, 0, stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 15) - (35 * arg2 / 100):
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 15) - (35 * arg2 / 100))
                                        emit Approval((2 * arg2 - (arg2 / 15) - (35 * arg2 / 100)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 15) - (35 * arg2 / 100)
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 15) - (35 * arg2 / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                Mask(248, 0, stor8.field_8) = 0
                            require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 15) - (35 * arg2 / 100)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 15) + (35 * arg2 / 100)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 / 15) + (35 * arg2 / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 15) - (35 * arg2 / 100)
                            emit Transfer((arg2 - (arg2 / 15) - (35 * arg2 / 100)), msg.sender, arg1);
                        else:
                            if balanceOf[address(stor5.field_0)] / 10 < balanceOf[address(stor5.field_0)] / 100:
                                revert with 'NH{q', 17
                            if arg2 < balanceOf[address(stor5.field_0)] / 100:
                                revert with 'NH{q', 17
                            if arg2 - (balanceOf[address(stor5.field_0)] / 100) and 35 > -1 / arg2 - (balanceOf[address(stor5.field_0)] / 100):
                                revert with 'NH{q', 17
                            if (35 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100) and arg2 > -1 / (35 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100):
                                revert with 'NH{q', 17
                            if not (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100):
                                revert with 'NH{q', 18
                            if arg2 / 15 > -((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) - 1:
                                revert with 'NH{q', 17
                            if arg2 < (arg2 / 15) + ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                revert with 'NH{q', 17
                            if arg2 / 15 > -((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < (arg2 / 15) + ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                            if balanceOf[address(this.address)] > -(arg2 / 15) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 / 15
                            if totalSupply < (35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100:
                                revert with 'NH{q', 17
                            totalSupply -= (35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100
                            emit Transfer(((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), this.address, 0);
                            if balanceOf[address(this.address)] > 0:
                                if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                    if arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    Mask(248, 0, stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[address(this.address)] <= 2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(this.address)]
                                        emit Approval(balanceOf[address(this.address)], this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)]
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                        emit Approval((2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                else:
                                    if totalSupply < balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                        revert with 'NH{q', 17
                                    totalSupply = totalSupply - balanceOf[address(this.address)] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                    emit Transfer((balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                    if arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    Mask(248, 0, stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                        emit Approval((2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                Mask(248, 0, stor8.field_8) = 0
                            require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 15) + ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 / 15) + ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                            emit Transfer((arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), msg.sender, arg1);
    else:
        if stor7[address(arg1)]:
            if uint8(stor8.field_8):
                require balanceOf[address(msg.sender)] >= arg2
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not uniswapV2PairAddress:
                    require balanceOf[address(msg.sender)] >= arg2
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if arg1 != uniswapV2PairAddress:
                        require balanceOf[address(msg.sender)] >= arg2
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if arg2 <= balanceOf[address(stor5.field_0)] / 100:
                            if arg2 / 15 > -(arg2 / 20) - 1:
                                revert with 'NH{q', 17
                            if arg2 < (arg2 / 15) + (arg2 / 20):
                                revert with 'NH{q', 17
                            if arg2 / 15 > -(arg2 / 20) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < (arg2 / 15) + (arg2 / 20):
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 15) - (arg2 / 20)
                            if balanceOf[address(this.address)] > -(arg2 / 15) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 / 15
                            if totalSupply < arg2 / 20:
                                revert with 'NH{q', 17
                            totalSupply -= arg2 / 20
                            emit Transfer((arg2 / 20), this.address, 0);
                            if balanceOf[address(this.address)] > 0:
                                if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                    if arg2 - (arg2 / 15) - (arg2 / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    Mask(248, 0, stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[address(this.address)] <= 2 * arg2 - (arg2 / 15) - (arg2 / 20):
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(this.address)]
                                        emit Approval(balanceOf[address(this.address)], this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)]
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 15) - (arg2 / 20))
                                        emit Approval((2 * arg2 - (arg2 / 15) - (arg2 / 20)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 15) - (arg2 / 20)
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 15) - (arg2 / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                else:
                                    if totalSupply < balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                        revert with 'NH{q', 17
                                    totalSupply = totalSupply - balanceOf[address(this.address)] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                    emit Transfer((balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                    if arg2 - (arg2 / 15) - (arg2 / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    Mask(248, 0, stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 15) - (arg2 / 20):
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 15) - (arg2 / 20))
                                        emit Approval((2 * arg2 - (arg2 / 15) - (arg2 / 20)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 15) - (arg2 / 20)
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 15) - (arg2 / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                Mask(248, 0, stor8.field_8) = 0
                            require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 15) - (arg2 / 20)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 15) + (arg2 / 20)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 / 15) + (arg2 / 20) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 15) - (arg2 / 20)
                            emit Transfer((arg2 - (arg2 / 15) - (arg2 / 20)), msg.sender, arg1);
                        else:
                            if arg2 > balanceOf[address(stor5.field_0)] / 10:
                                if arg2 and 35 > -1 / arg2:
                                    revert with 'NH{q', 17
                                if arg2 / 15 > -(35 * arg2 / 100) - 1:
                                    revert with 'NH{q', 17
                                if arg2 < (arg2 / 15) + (35 * arg2 / 100):
                                    revert with 'NH{q', 17
                                if arg2 / 15 > -(35 * arg2 / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < (arg2 / 15) + (35 * arg2 / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 15) - (35 * arg2 / 100)
                                if balanceOf[address(this.address)] > -(arg2 / 15) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg2 / 15
                                if totalSupply < 35 * arg2 / 100:
                                    revert with 'NH{q', 17
                                totalSupply -= 35 * arg2 / 100
                                emit Transfer((35 * arg2 / 100), this.address, 0);
                                if balanceOf[address(this.address)] > 0:
                                    if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                        if arg2 - (arg2 / 15) - (35 * arg2 / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        Mask(248, 0, stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(this.address)] <= 2 * arg2 - (arg2 / 15) - (35 * arg2 / 100):
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(this.address)]
                                            emit Approval(balanceOf[address(this.address)], this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)]
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 15) - (35 * arg2 / 100))
                                            emit Approval((2 * arg2 - (arg2 / 15) - (35 * arg2 / 100)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 15) - (35 * arg2 / 100)
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 15) - (35 * arg2 / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        if totalSupply < balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                            revert with 'NH{q', 17
                                        totalSupply = totalSupply - balanceOf[address(this.address)] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                        emit Transfer((balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                        if arg2 - (arg2 / 15) - (35 * arg2 / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        Mask(248, 0, stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 15) - (35 * arg2 / 100):
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 15) - (35 * arg2 / 100))
                                            emit Approval((2 * arg2 - (arg2 / 15) - (35 * arg2 / 100)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 15) - (35 * arg2 / 100)
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 15) - (35 * arg2 / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    Mask(248, 0, stor8.field_8) = 0
                                require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 15) - (35 * arg2 / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 15) + (35 * arg2 / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 / 15) + (35 * arg2 / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 15) - (35 * arg2 / 100)
                                emit Transfer((arg2 - (arg2 / 15) - (35 * arg2 / 100)), msg.sender, arg1);
                            else:
                                if balanceOf[address(stor5.field_0)] / 10 < balanceOf[address(stor5.field_0)] / 100:
                                    revert with 'NH{q', 17
                                if arg2 < balanceOf[address(stor5.field_0)] / 100:
                                    revert with 'NH{q', 17
                                if arg2 - (balanceOf[address(stor5.field_0)] / 100) and 35 > -1 / arg2 - (balanceOf[address(stor5.field_0)] / 100):
                                    revert with 'NH{q', 17
                                if (35 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100) and arg2 > -1 / (35 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100):
                                    revert with 'NH{q', 17
                                if not (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100):
                                    revert with 'NH{q', 18
                                if arg2 / 15 > -((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) - 1:
                                    revert with 'NH{q', 17
                                if arg2 < (arg2 / 15) + ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 'NH{q', 17
                                if arg2 / 15 > -((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < (arg2 / 15) + ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                if balanceOf[address(this.address)] > -(arg2 / 15) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg2 / 15
                                if totalSupply < (35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100:
                                    revert with 'NH{q', 17
                                totalSupply -= (35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100
                                emit Transfer(((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), this.address, 0);
                                if balanceOf[address(this.address)] > 0:
                                    if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                        if arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        Mask(248, 0, stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(this.address)] <= 2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(this.address)]
                                            emit Approval(balanceOf[address(this.address)], this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)]
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                            emit Approval((2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        if totalSupply < balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                            revert with 'NH{q', 17
                                        totalSupply = totalSupply - balanceOf[address(this.address)] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                        emit Transfer((balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                        if arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        Mask(248, 0, stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                            emit Approval((2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    Mask(248, 0, stor8.field_8) = 0
                                require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 15) + ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 / 15) + ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                emit Transfer((arg2 - (arg2 / 15) - ((35 * arg2 * arg2) - (35 * balanceOf[address(stor5.field_0)] / 100 * arg2) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), msg.sender, arg1);
        else:
            if block.timestamp < sub_99bf3266:
                revert with 'NH{q', 17
            if block.timestamp - sub_99bf3266 / 120 > 0:
                if maxBuy < totalSupply:
                    if sub_aff41b7b and block.timestamp - sub_99bf3266 / 120 > -1 / sub_aff41b7b:
                        revert with 'NH{q', 17
                    if maxBuy > (-1 * sub_aff41b7b * block.timestamp - sub_99bf3266 / 120) - 1:
                        revert with 'NH{q', 17
                    maxBuy += sub_aff41b7b * block.timestamp - sub_99bf3266 / 120
                sub_99bf3266 = block.timestamp
            require uint8(stor5.field_160)
            if uint8(stor8.field_0):
                stor6[address(arg1)] = 1
            else:
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                require balanceOf[address(arg1)] + arg2 <= maxBuy
                if uint8(stor8.field_0):
                    stor6[address(arg1)] = 1
            if arg2 < arg2 / 10:
                revert with 'NH{q', 17
            if balanceOf[address(this.address)] > -(arg2 / 10) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += arg2 / 10
            if uint8(stor8.field_8):
                require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 10)
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10)
                if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10)
                emit Transfer((arg2 - (arg2 / 10)), msg.sender, arg1);
            else:
                if not uniswapV2PairAddress:
                    require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 10)
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10)
                    if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10)
                    emit Transfer((arg2 - (arg2 / 10)), msg.sender, arg1);
                else:
                    if arg1 != uniswapV2PairAddress:
                        require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 10)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10)
                        if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10)
                        emit Transfer((arg2 - (arg2 / 10)), msg.sender, arg1);
                    else:
                        if arg2 - (arg2 / 10) <= balanceOf[address(stor5.field_0)] / 100:
                            if arg2 - (arg2 / 10) / 15 > -(arg2 - (arg2 / 10) / 20) - 1:
                                revert with 'NH{q', 17
                            if arg2 - (arg2 / 10) < (arg2 - (arg2 / 10) / 15) + (arg2 - (arg2 / 10) / 20):
                                revert with 'NH{q', 17
                            if arg2 - (arg2 / 10) / 15 > -(arg2 - (arg2 / 10) / 20) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < (arg2 - (arg2 / 10) / 15) + (arg2 - (arg2 / 10) / 20):
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20)
                            if balanceOf[address(this.address)] > -(arg2 - (arg2 / 10) / 15) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 - (arg2 / 10) / 15
                            if totalSupply < arg2 - (arg2 / 10) / 20:
                                revert with 'NH{q', 17
                            totalSupply -= arg2 - (arg2 / 10) / 20
                            emit Transfer((arg2 - (arg2 / 10) / 20), this.address, 0);
                            if balanceOf[address(this.address)] > 0:
                                if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                    revert with 'NH{q', 17
                                if balanceOf[address(this.address)] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                    if arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    Mask(248, 0, stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[address(this.address)] <= 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20):
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(this.address)]
                                        emit Approval(balanceOf[address(this.address)], this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)]
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20))
                                        emit Approval((2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20)
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                else:
                                    if totalSupply < balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                        revert with 'NH{q', 17
                                    totalSupply = totalSupply - balanceOf[address(this.address)] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                    emit Transfer((balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                    if arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                        revert with 'NH{q', 17
                                    Mask(248, 0, stor8.field_8) = 1
                                    mem[128] = this.address
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                            gas gas_remaining wei
                                    mem[192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[160] = ext_call.return_data[12 len 20]
                                    if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20):
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                        allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20))
                                        emit Approval((2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                        mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20)
                                        idx = 0
                                        s = 128
                                        t = ceil32(return_data.size) + 388
                                        while idx < 2:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                Mask(248, 0, stor8.field_8) = 0
                            require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10) + (arg2 - (arg2 / 10) / 15) + (arg2 - (arg2 / 10) / 20)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) + (arg2 - (arg2 / 10) / 15) + (arg2 - (arg2 / 10) / 20) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20)
                            emit Transfer((arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - (arg2 - (arg2 / 10) / 20)), msg.sender, arg1);
                        else:
                            if arg2 - (arg2 / 10) > balanceOf[address(stor5.field_0)] / 10:
                                if arg2 - (arg2 / 10) and 35 > -1 / arg2 - (arg2 / 10):
                                    revert with 'NH{q', 17
                                if arg2 - (arg2 / 10) / 15 > -((35 * arg2) - (35 * arg2 / 10) / 100) - 1:
                                    revert with 'NH{q', 17
                                if arg2 - (arg2 / 10) < (arg2 - (arg2 / 10) / 15) + ((35 * arg2) - (35 * arg2 / 10) / 100):
                                    revert with 'NH{q', 17
                                if arg2 - (arg2 / 10) / 15 > -((35 * arg2) - (35 * arg2 / 10) / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < (arg2 - (arg2 / 10) / 15) + ((35 * arg2) - (35 * arg2 / 10) / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100)
                                if balanceOf[address(this.address)] > -(arg2 - (arg2 / 10) / 15) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg2 - (arg2 / 10) / 15
                                if totalSupply < (35 * arg2) - (35 * arg2 / 10) / 100:
                                    revert with 'NH{q', 17
                                totalSupply -= (35 * arg2) - (35 * arg2 / 10) / 100
                                emit Transfer(((35 * arg2) - (35 * arg2 / 10) / 100), this.address, 0);
                                if balanceOf[address(this.address)] > 0:
                                    if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                        if arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        Mask(248, 0, stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(this.address)] <= 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100):
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(this.address)]
                                            emit Approval(balanceOf[address(this.address)], this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)]
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100))
                                            emit Approval((2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100)
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        if totalSupply < balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                            revert with 'NH{q', 17
                                        totalSupply = totalSupply - balanceOf[address(this.address)] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                        emit Transfer((balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                        if arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        Mask(248, 0, stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100):
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100))
                                            emit Approval((2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100)
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    Mask(248, 0, stor8.field_8) = 0
                                require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10) + (arg2 - (arg2 / 10) / 15) + ((35 * arg2) - (35 * arg2 / 10) / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) + (arg2 - (arg2 / 10) / 15) + ((35 * arg2) - (35 * arg2 / 10) / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100)
                                emit Transfer((arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2) - (35 * arg2 / 10) / 100)), msg.sender, arg1);
                            else:
                                if balanceOf[address(stor5.field_0)] / 10 < balanceOf[address(stor5.field_0)] / 100:
                                    revert with 'NH{q', 17
                                if arg2 - (arg2 / 10) < balanceOf[address(stor5.field_0)] / 100:
                                    revert with 'NH{q', 17
                                if arg2 - (arg2 / 10) - (balanceOf[address(stor5.field_0)] / 100) and 35 > -1 / arg2 - (arg2 / 10) - (balanceOf[address(stor5.field_0)] / 100):
                                    revert with 'NH{q', 17
                                if (35 * arg2) - (35 * arg2 / 10) - (35 * balanceOf[address(stor5.field_0)] / 100) and arg2 - (arg2 / 10) > -1 / (35 * arg2) - (35 * arg2 / 10) - (35 * balanceOf[address(stor5.field_0)] / 100):
                                    revert with 'NH{q', 17
                                if not (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100):
                                    revert with 'NH{q', 18
                                if arg2 - (arg2 / 10) / 15 > -((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) - 1:
                                    revert with 'NH{q', 17
                                if arg2 - (arg2 / 10) < (arg2 - (arg2 / 10) / 15) + ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 'NH{q', 17
                                if arg2 - (arg2 / 10) / 15 > -((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < (arg2 - (arg2 / 10) / 15) + ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                if balanceOf[address(this.address)] > -(arg2 - (arg2 / 10) / 15) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg2 - (arg2 / 10) / 15
                                if totalSupply < (35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100:
                                    revert with 'NH{q', 17
                                totalSupply -= (35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100
                                emit Transfer(((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), this.address, 0);
                                if balanceOf[address(this.address)] > 0:
                                    if balanceOf[address(stor5.field_0)] and stor14 > -1 / balanceOf[address(stor5.field_0)]:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(this.address)] <= balanceOf[address(stor5.field_0)] * stor14 / 100:
                                        if arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        Mask(248, 0, stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(this.address)] <= 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(this.address)]
                                            emit Approval(balanceOf[address(this.address)], this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[address(this.address)]
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                            emit Approval((2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    else:
                                        if totalSupply < balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100):
                                            revert with 'NH{q', 17
                                        totalSupply = totalSupply - balanceOf[address(this.address)] + (balanceOf[address(stor5.field_0)] * stor14 / 100)
                                        emit Transfer((balanceOf[address(this.address)] - (balanceOf[address(stor5.field_0)] * stor14 / 100)), this.address, 0);
                                        if arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                            revert with 'NH{q', 17
                                        Mask(248, 0, stor8.field_8) = 1
                                        mem[128] = this.address
                                        require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                        staticcall 0x10ed43c718714eb63d5aa57b78b54704e256024e.WETH() with:
                                                gas gas_remaining wei
                                        mem[192] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[160] = ext_call.return_data[12 len 20]
                                        if balanceOf[address(stor5.field_0)] * stor14 / 100 <= 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100):
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            emit Approval((balanceOf[address(stor5.field_0)] * stor14 / 100), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = balanceOf[address(stor5.field_0)] * stor14 / 100
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args balanceOf[address(stor5.field_0)] * stor14 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                        else:
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_0 = 0
                                            allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e].field_1 = uint255(arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100))
                                            emit Approval((2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), this.address, 0x10ed43c718714eb63d5aa57b78b54704e256024e);
                                            mem[ceil32(return_data.size) + 192] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(return_data.size) + 196] = 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                            idx = 0
                                            s = 128
                                            t = ceil32(return_data.size) + 388
                                            while idx < 2:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                            call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 2 * arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    Mask(248, 0, stor8.field_8) = 0
                                require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10) + (arg2 - (arg2 / 10) / 15) + ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) + (arg2 - (arg2 / 10) / 15) + ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)
                                emit Transfer((arg2 - (arg2 / 10) - (arg2 - (arg2 / 10) / 15) - ((35 * arg2 * arg2) - (35 * arg2 / 10 * arg2) - (35 * arg2 * arg2 / 10) + (35 * arg2 / 10 * arg2 / 10) - (35 * arg2 * balanceOf[address(stor5.field_0)] / 100) + (35 * arg2 / 10 * balanceOf[address(stor5.field_0)] / 100) / (balanceOf[address(stor5.field_0)] / 10) - (balanceOf[address(stor5.field_0)] / 100) / 100)), msg.sender, arg1);
    return 1
}



}
