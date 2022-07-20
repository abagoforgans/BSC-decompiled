contract main {




// =====================  Runtime code  =====================


const sub_2ccb9321(?) = 57005

const decimals = 0


uint256 totalSupply;
array of struct stor1;
array of struct stor2;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor5;
address stor5; offset 8
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9; offset 160
uint128 stor9; offset 160
address uniswapPairAddress;
mapping of uint8 stor10;
address stor11;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function uniswapPair() {
    return uniswapPairAddress
}

function sub_cf991d05(?) {
    return bool(uint8(stor9.field_160))
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_019ce79b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor5.field_8)
    stor6 = arg1
}

function setWithdrawAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor11
    stor11 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor5.field_8)
    address(stor5.field_8) = arg1
}

function setEnableTrading(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(stor5.field_8)
    Mask(96, 0, stor9.field_160) = Mask(96, 0, arg1)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require msg.sender == stor11
    call stor11 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getMaxWallet() {
    if block.timestamp < stor7:
        revert with 'NH{q', 17
    if block.timestamp - stor7 / 120 < 1000:
        if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
            revert with 'NH{q', 17
        if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
            revert with 'NH{q', 17
        return (stor6 + (stor8 * block.timestamp - stor7 / 120))
    if stor8 and 1000 > -1 / stor8:
        revert with 'NH{q', 17
    if stor6 > (-1000 * stor8) - 1:
        revert with 'NH{q', 17
    return (stor6 + (1000 * stor8))
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
    require msg.sender == address(stor5.field_8)
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        stor10[mem[(32 * idx) + 140 len 20]] = uint8(bool(cd[36]))
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function createLiquidity() {
    require msg.sender == address(stor5.field_8)
    require not uniswapPairAddress
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
    emit Transfer(totalSupply, 0, this.address);
    allowance[address(this.address)][0x10ed43c718714eb63d5aa57b78b54704e256024e] = -1
    stor10[address(ext_call.return_data[0])] = 1
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
    uniswapPairAddress = address(ext_call.return_data[0])
    stor7 = block.timestamp
    if totalSupply and 5 > -1 / totalSupply:
        revert with 'NH{q', 17
    stor6 = 5 * totalSupply / 1000
    if totalSupply and 3 > -1 / totalSupply:
        revert with 'NH{q', 17
    stor8 = 3 * totalSupply / 1000
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'not enough token for transfer'
    if not arg2:
        revert with 0, 'incorrect address'
    if arg1 != uniswapPairAddress:
        if uint8(stor5.field_0):
            if stor10[address(arg1)]:
                require balanceOf[address(arg1)] >= arg3
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > -arg3 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg2 == 57005:
                    if totalSupply < arg3:
                        revert with 'NH{q', 17
                    totalSupply -= arg3
            else:
                if stor10[address(arg2)]:
                    require balanceOf[address(arg1)] >= arg3
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg2 == 57005:
                        if totalSupply < arg3:
                            revert with 'NH{q', 17
                        totalSupply -= arg3
                else:
                    if arg3 / 10 < arg3 / 10 / 2000:
                        revert with 'NH{q', 17
                    if arg3 < arg3 / 10:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] < arg3 / 10:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] -= arg3 / 10
                    if balanceOf[address(this.address)] > -(arg3 / 10 / 2000) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] += arg3 / 10 / 2000
                    if balanceOf[57005] > -(arg3 / 10) + (arg3 / 10 / 2000) - 1:
                        revert with 'NH{q', 17
                    balanceOf[57005] = balanceOf[57005] + (arg3 / 10) - (arg3 / 10 / 2000)
                    if totalSupply < (arg3 / 10) - (arg3 / 10 / 2000):
                        revert with 'NH{q', 17
                    totalSupply = totalSupply - (arg3 / 10) + (arg3 / 10 / 2000)
                    emit Transfer((arg3 / 10 / 2000), arg1, this.address);
                    emit Transfer(((arg3 / 10) - (arg3 / 10 / 2000)), arg1, 57005);
                    if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                        revert with 'NH{q', 17
                    if block.timestamp < stor7:
                        revert with 'NH{q', 17
                    if block.timestamp - stor7 / 120 < 1000:
                        if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                            revert with 'NH{q', 17
                        if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                            revert with 0, 'max wallet limit'
                    else:
                        if stor8 and 1000 > -1 / stor8:
                            revert with 'NH{q', 17
                        if stor6 > (-1000 * stor8) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (1000 * stor8):
                            revert with 0, 'max wallet limit'
                    require balanceOf[address(arg1)] >= arg3 - (arg3 / 10)
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 10)
                    if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 10)
                    emit Transfer((arg3 - (arg3 / 10)), arg1, arg2);
                    if arg2 == 57005:
                        if totalSupply < arg3 - (arg3 / 10):
                            revert with 'NH{q', 17
                        totalSupply = totalSupply - arg3 + (arg3 / 10)
        else:
            if not uniswapPairAddress:
                if stor10[address(arg1)]:
                    require balanceOf[address(arg1)] >= arg3
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg2 == 57005:
                        if totalSupply < arg3:
                            revert with 'NH{q', 17
                        totalSupply -= arg3
                else:
                    if stor10[address(arg2)]:
                        require balanceOf[address(arg1)] >= arg3
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg2 == 57005:
                            if totalSupply < arg3:
                                revert with 'NH{q', 17
                            totalSupply -= arg3
                    else:
                        if arg3 / 10 < arg3 / 10 / 2000:
                            revert with 'NH{q', 17
                        if arg3 < arg3 / 10:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] < arg3 / 10:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3 / 10
                        if balanceOf[address(this.address)] > -(arg3 / 10 / 2000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 / 10 / 2000
                        if balanceOf[57005] > -(arg3 / 10) + (arg3 / 10 / 2000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[57005] = balanceOf[57005] + (arg3 / 10) - (arg3 / 10 / 2000)
                        if totalSupply < (arg3 / 10) - (arg3 / 10 / 2000):
                            revert with 'NH{q', 17
                        totalSupply = totalSupply - (arg3 / 10) + (arg3 / 10 / 2000)
                        emit Transfer((arg3 / 10 / 2000), arg1, this.address);
                        emit Transfer(((arg3 / 10) - (arg3 / 10 / 2000)), arg1, 57005);
                        if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                            revert with 'NH{q', 17
                        if block.timestamp < stor7:
                            revert with 'NH{q', 17
                        if block.timestamp - stor7 / 120 < 1000:
                            if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                                revert with 'NH{q', 17
                            if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                                revert with 0, 'max wallet limit'
                        else:
                            if stor8 and 1000 > -1 / stor8:
                                revert with 'NH{q', 17
                            if stor6 > (-1000 * stor8) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (1000 * stor8):
                                revert with 0, 'max wallet limit'
                        require balanceOf[address(arg1)] >= arg3 - (arg3 / 10)
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 10)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 10)
                        emit Transfer((arg3 - (arg3 / 10)), arg1, arg2);
                        if arg2 == 57005:
                            if totalSupply < arg3 - (arg3 / 10):
                                revert with 'NH{q', 17
                            totalSupply = totalSupply - arg3 + (arg3 / 10)
            else:
                if arg2 != uniswapPairAddress:
                    if stor10[address(arg1)]:
                        require balanceOf[address(arg1)] >= arg3
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg2 == 57005:
                            if totalSupply < arg3:
                                revert with 'NH{q', 17
                            totalSupply -= arg3
                    else:
                        if stor10[address(arg2)]:
                            require balanceOf[address(arg1)] >= arg3
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg2 == 57005:
                                if totalSupply < arg3:
                                    revert with 'NH{q', 17
                                totalSupply -= arg3
                        else:
                            if arg3 / 10 < arg3 / 10 / 2000:
                                revert with 'NH{q', 17
                            if arg3 < arg3 / 10:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] < arg3 / 10:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3 / 10
                            if balanceOf[address(this.address)] > -(arg3 / 10 / 2000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 / 10 / 2000
                            if balanceOf[57005] > -(arg3 / 10) + (arg3 / 10 / 2000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[57005] = balanceOf[57005] + (arg3 / 10) - (arg3 / 10 / 2000)
                            if totalSupply < (arg3 / 10) - (arg3 / 10 / 2000):
                                revert with 'NH{q', 17
                            totalSupply = totalSupply - (arg3 / 10) + (arg3 / 10 / 2000)
                            emit Transfer((arg3 / 10 / 2000), arg1, this.address);
                            emit Transfer(((arg3 / 10) - (arg3 / 10 / 2000)), arg1, 57005);
                            if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp < stor7:
                                revert with 'NH{q', 17
                            if block.timestamp - stor7 / 120 < 1000:
                                if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                                    revert with 'NH{q', 17
                                if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                                    revert with 0, 'max wallet limit'
                            else:
                                if stor8 and 1000 > -1 / stor8:
                                    revert with 'NH{q', 17
                                if stor6 > (-1000 * stor8) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (1000 * stor8):
                                    revert with 0, 'max wallet limit'
                            require balanceOf[address(arg1)] >= arg3 - (arg3 / 10)
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 10)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 10)
                            emit Transfer((arg3 - (arg3 / 10)), arg1, arg2);
                            if arg2 == 57005:
                                if totalSupply < arg3 - (arg3 / 10):
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply - arg3 + (arg3 / 10)
                else:
                    if stor10[address(arg1)]:
                        if stor10[address(arg1)]:
                            require balanceOf[address(arg1)] >= arg3
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg2 == 57005:
                                if totalSupply < arg3:
                                    revert with 'NH{q', 17
                                totalSupply -= arg3
                        else:
                            if stor10[address(arg2)]:
                                require balanceOf[address(arg1)] >= arg3
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if arg2 == 57005:
                                    if totalSupply < arg3:
                                        revert with 'NH{q', 17
                                    totalSupply -= arg3
                            else:
                                if arg3 / 10 < arg3 / 10 / 2000:
                                    revert with 'NH{q', 17
                                if arg3 < arg3 / 10:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] < arg3 / 10:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3 / 10
                                if balanceOf[address(this.address)] > -(arg3 / 10 / 2000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3 / 10 / 2000
                                if balanceOf[57005] > -(arg3 / 10) + (arg3 / 10 / 2000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[57005] = balanceOf[57005] + (arg3 / 10) - (arg3 / 10 / 2000)
                                if totalSupply < (arg3 / 10) - (arg3 / 10 / 2000):
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply - (arg3 / 10) + (arg3 / 10 / 2000)
                                emit Transfer((arg3 / 10 / 2000), arg1, this.address);
                                emit Transfer(((arg3 / 10) - (arg3 / 10 / 2000)), arg1, 57005);
                                if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp < stor7:
                                    revert with 'NH{q', 17
                                if block.timestamp - stor7 / 120 < 1000:
                                    if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                                        revert with 'NH{q', 17
                                    if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                                        revert with 0, 'max wallet limit'
                                else:
                                    if stor8 and 1000 > -1 / stor8:
                                        revert with 'NH{q', 17
                                    if stor6 > (-1000 * stor8) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (1000 * stor8):
                                        revert with 0, 'max wallet limit'
                                require balanceOf[address(arg1)] >= arg3 - (arg3 / 10)
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 10)
                                if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 10)
                                emit Transfer((arg3 - (arg3 / 10)), arg1, arg2);
                                if arg2 == 57005:
                                    if totalSupply < arg3 - (arg3 / 10):
                                        revert with 'NH{q', 17
                                    totalSupply = totalSupply - arg3 + (arg3 / 10)
                    else:
                        if not uint8(stor9.field_160):
                            revert with 0, 'trading disabled'
                        if arg3 / 95 < arg3 / 95 / 2000:
                            revert with 'NH{q', 17
                        if arg3 < arg3 / 95:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] < arg3 / 95:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3 / 95
                        if balanceOf[address(this.address)] > -(arg3 / 95 / 2000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 / 95 / 2000
                        if balanceOf[57005] > -(arg3 / 95) + (arg3 / 95 / 2000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[57005] = balanceOf[57005] + (arg3 / 95) - (arg3 / 95 / 2000)
                        if totalSupply < (arg3 / 95) - (arg3 / 95 / 2000):
                            revert with 'NH{q', 17
                        totalSupply = totalSupply - (arg3 / 95) + (arg3 / 95 / 2000)
                        emit Transfer((arg3 / 95 / 2000), arg1, this.address);
                        emit Transfer(((arg3 / 95) - (arg3 / 95 / 2000)), arg1, 57005);
                        if balanceOf[address(this.address)]:
                            if arg3 - (arg3 / 95) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            uint8(stor5.field_0) = 1
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
                            mem[ceil32(return_data.size) + 192] = 11
                            if balanceOf[address(this.address)] <= 2 * arg3 - (arg3 / 95):
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 64, balanceOf[address(this.address)], 11, 'doubleSwap ', 0
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 616
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 616 len 64]
                            else:
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 64, 2 * arg3 - (arg3 / 95), 11, 'doubleSwap ', 0
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 616
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 2 * arg3 - (arg3 / 95), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 616 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor5.field_0) = 0
                        require balanceOf[address(arg1)] >= arg3 - (arg3 / 95)
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 95)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 / 95) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 95)
                        emit Transfer((arg3 - (arg3 / 95)), arg1, arg2);
                        if arg2 == 57005:
                            if totalSupply < arg3 - (arg3 / 95):
                                revert with 'NH{q', 17
                            totalSupply = totalSupply - arg3 + (arg3 / 95)
    else:
        if not stor10[address(arg2)]:
            if not uint8(stor9.field_160):
                revert with 0, 'trading disabled'
            if arg3 / 15 < arg3 / 15 / 2000:
                revert with 'NH{q', 17
            if arg3 < arg3 / 15:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] < arg3 / 15:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] -= arg3 / 15
            if balanceOf[address(this.address)] > -(arg3 / 15 / 2000) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += arg3 / 15 / 2000
            if balanceOf[57005] > -(arg3 / 15) + (arg3 / 15 / 2000) - 1:
                revert with 'NH{q', 17
            balanceOf[57005] = balanceOf[57005] + (arg3 / 15) - (arg3 / 15 / 2000)
            if totalSupply < (arg3 / 15) - (arg3 / 15 / 2000):
                revert with 'NH{q', 17
            totalSupply = totalSupply - (arg3 / 15) + (arg3 / 15 / 2000)
            emit Transfer((arg3 / 15 / 2000), arg1, this.address);
            emit Transfer(((arg3 / 15) - (arg3 / 15 / 2000)), arg1, 57005);
            if balanceOf[address(arg2)] > -arg3 + (arg3 / 15) - 1:
                revert with 'NH{q', 17
            if block.timestamp < stor7:
                revert with 'NH{q', 17
            if block.timestamp - stor7 / 120 < 1000:
                if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                    revert with 'NH{q', 17
                if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] + arg3 - (arg3 / 15) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                    revert with 0, 'max wallet limit'
            else:
                if stor8 and 1000 > -1 / stor8:
                    revert with 'NH{q', 17
                if stor6 > (-1000 * stor8) - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg2)] + arg3 - (arg3 / 15) > stor6 + (1000 * stor8):
                    revert with 0, 'max wallet limit'
            require balanceOf[address(arg1)] >= arg3 - (arg3 / 15)
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 15)
            if balanceOf[address(arg2)] > -arg3 + (arg3 / 15) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 15)
            emit Transfer((arg3 - (arg3 / 15)), arg1, arg2);
            if arg2 == 57005:
                if totalSupply < arg3 - (arg3 / 15):
                    revert with 'NH{q', 17
                totalSupply = totalSupply - arg3 + (arg3 / 15)
        else:
            if uint8(stor5.field_0):
                if stor10[address(arg1)]:
                    require balanceOf[address(arg1)] >= arg3
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] > -arg3 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg2 == 57005:
                        if totalSupply < arg3:
                            revert with 'NH{q', 17
                        totalSupply -= arg3
                else:
                    if stor10[address(arg2)]:
                        require balanceOf[address(arg1)] >= arg3
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg2 == 57005:
                            if totalSupply < arg3:
                                revert with 'NH{q', 17
                            totalSupply -= arg3
                    else:
                        if arg3 / 10 < arg3 / 10 / 2000:
                            revert with 'NH{q', 17
                        if arg3 < arg3 / 10:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] < arg3 / 10:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] -= arg3 / 10
                        if balanceOf[address(this.address)] > -(arg3 / 10 / 2000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg3 / 10 / 2000
                        if balanceOf[57005] > -(arg3 / 10) + (arg3 / 10 / 2000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[57005] = balanceOf[57005] + (arg3 / 10) - (arg3 / 10 / 2000)
                        if totalSupply < (arg3 / 10) - (arg3 / 10 / 2000):
                            revert with 'NH{q', 17
                        totalSupply = totalSupply - (arg3 / 10) + (arg3 / 10 / 2000)
                        emit Transfer((arg3 / 10 / 2000), arg1, this.address);
                        emit Transfer(((arg3 / 10) - (arg3 / 10 / 2000)), arg1, 57005);
                        if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                            revert with 'NH{q', 17
                        if block.timestamp < stor7:
                            revert with 'NH{q', 17
                        if block.timestamp - stor7 / 120 < 1000:
                            if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                                revert with 'NH{q', 17
                            if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                                revert with 0, 'max wallet limit'
                        else:
                            if stor8 and 1000 > -1 / stor8:
                                revert with 'NH{q', 17
                            if stor6 > (-1000 * stor8) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (1000 * stor8):
                                revert with 0, 'max wallet limit'
                        require balanceOf[address(arg1)] >= arg3 - (arg3 / 10)
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 10)
                        if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 10)
                        emit Transfer((arg3 - (arg3 / 10)), arg1, arg2);
                        if arg2 == 57005:
                            if totalSupply < arg3 - (arg3 / 10):
                                revert with 'NH{q', 17
                            totalSupply = totalSupply - arg3 + (arg3 / 10)
            else:
                if not uniswapPairAddress:
                    if stor10[address(arg1)]:
                        require balanceOf[address(arg1)] >= arg3
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] > -arg3 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, arg1, arg2);
                        if arg2 == 57005:
                            if totalSupply < arg3:
                                revert with 'NH{q', 17
                            totalSupply -= arg3
                    else:
                        if stor10[address(arg2)]:
                            require balanceOf[address(arg1)] >= arg3
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg2 == 57005:
                                if totalSupply < arg3:
                                    revert with 'NH{q', 17
                                totalSupply -= arg3
                        else:
                            if arg3 / 10 < arg3 / 10 / 2000:
                                revert with 'NH{q', 17
                            if arg3 < arg3 / 10:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] < arg3 / 10:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3 / 10
                            if balanceOf[address(this.address)] > -(arg3 / 10 / 2000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 / 10 / 2000
                            if balanceOf[57005] > -(arg3 / 10) + (arg3 / 10 / 2000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[57005] = balanceOf[57005] + (arg3 / 10) - (arg3 / 10 / 2000)
                            if totalSupply < (arg3 / 10) - (arg3 / 10 / 2000):
                                revert with 'NH{q', 17
                            totalSupply = totalSupply - (arg3 / 10) + (arg3 / 10 / 2000)
                            emit Transfer((arg3 / 10 / 2000), arg1, this.address);
                            emit Transfer(((arg3 / 10) - (arg3 / 10 / 2000)), arg1, 57005);
                            if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp < stor7:
                                revert with 'NH{q', 17
                            if block.timestamp - stor7 / 120 < 1000:
                                if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                                    revert with 'NH{q', 17
                                if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                                    revert with 0, 'max wallet limit'
                            else:
                                if stor8 and 1000 > -1 / stor8:
                                    revert with 'NH{q', 17
                                if stor6 > (-1000 * stor8) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (1000 * stor8):
                                    revert with 0, 'max wallet limit'
                            require balanceOf[address(arg1)] >= arg3 - (arg3 / 10)
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 10)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 10)
                            emit Transfer((arg3 - (arg3 / 10)), arg1, arg2);
                            if arg2 == 57005:
                                if totalSupply < arg3 - (arg3 / 10):
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply - arg3 + (arg3 / 10)
                else:
                    if arg2 != uniswapPairAddress:
                        if stor10[address(arg1)]:
                            require balanceOf[address(arg1)] >= arg3
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] > -arg3 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, arg1, arg2);
                            if arg2 == 57005:
                                if totalSupply < arg3:
                                    revert with 'NH{q', 17
                                totalSupply -= arg3
                        else:
                            if stor10[address(arg2)]:
                                require balanceOf[address(arg1)] >= arg3
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if arg2 == 57005:
                                    if totalSupply < arg3:
                                        revert with 'NH{q', 17
                                    totalSupply -= arg3
                            else:
                                if arg3 / 10 < arg3 / 10 / 2000:
                                    revert with 'NH{q', 17
                                if arg3 < arg3 / 10:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] < arg3 / 10:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] -= arg3 / 10
                                if balanceOf[address(this.address)] > -(arg3 / 10 / 2000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg3 / 10 / 2000
                                if balanceOf[57005] > -(arg3 / 10) + (arg3 / 10 / 2000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[57005] = balanceOf[57005] + (arg3 / 10) - (arg3 / 10 / 2000)
                                if totalSupply < (arg3 / 10) - (arg3 / 10 / 2000):
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply - (arg3 / 10) + (arg3 / 10 / 2000)
                                emit Transfer((arg3 / 10 / 2000), arg1, this.address);
                                emit Transfer(((arg3 / 10) - (arg3 / 10 / 2000)), arg1, 57005);
                                if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp < stor7:
                                    revert with 'NH{q', 17
                                if block.timestamp - stor7 / 120 < 1000:
                                    if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                                        revert with 'NH{q', 17
                                    if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                                        revert with 0, 'max wallet limit'
                                else:
                                    if stor8 and 1000 > -1 / stor8:
                                        revert with 'NH{q', 17
                                    if stor6 > (-1000 * stor8) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (1000 * stor8):
                                        revert with 0, 'max wallet limit'
                                require balanceOf[address(arg1)] >= arg3 - (arg3 / 10)
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 10)
                                if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 10)
                                emit Transfer((arg3 - (arg3 / 10)), arg1, arg2);
                                if arg2 == 57005:
                                    if totalSupply < arg3 - (arg3 / 10):
                                        revert with 'NH{q', 17
                                    totalSupply = totalSupply - arg3 + (arg3 / 10)
                    else:
                        if stor10[address(arg1)]:
                            if stor10[address(arg1)]:
                                require balanceOf[address(arg1)] >= arg3
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] > -arg3 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg2)] += arg3
                                emit Transfer(arg3, arg1, arg2);
                                if arg2 == 57005:
                                    if totalSupply < arg3:
                                        revert with 'NH{q', 17
                                    totalSupply -= arg3
                            else:
                                if stor10[address(arg2)]:
                                    require balanceOf[address(arg1)] >= arg3
                                    balanceOf[address(arg1)] -= arg3
                                    if balanceOf[address(arg2)] > -arg3 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] += arg3
                                    emit Transfer(arg3, arg1, arg2);
                                    if arg2 == 57005:
                                        if totalSupply < arg3:
                                            revert with 'NH{q', 17
                                        totalSupply -= arg3
                                else:
                                    if arg3 / 10 < arg3 / 10 / 2000:
                                        revert with 'NH{q', 17
                                    if arg3 < arg3 / 10:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] < arg3 / 10:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] -= arg3 / 10
                                    if balanceOf[address(this.address)] > -(arg3 / 10 / 2000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg3 / 10 / 2000
                                    if balanceOf[57005] > -(arg3 / 10) + (arg3 / 10 / 2000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[57005] = balanceOf[57005] + (arg3 / 10) - (arg3 / 10 / 2000)
                                    if totalSupply < (arg3 / 10) - (arg3 / 10 / 2000):
                                        revert with 'NH{q', 17
                                    totalSupply = totalSupply - (arg3 / 10) + (arg3 / 10 / 2000)
                                    emit Transfer((arg3 / 10 / 2000), arg1, this.address);
                                    emit Transfer(((arg3 / 10) - (arg3 / 10 / 2000)), arg1, 57005);
                                    if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp < stor7:
                                        revert with 'NH{q', 17
                                    if block.timestamp - stor7 / 120 < 1000:
                                        if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                                            revert with 'NH{q', 17
                                        if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                                            revert with 0, 'max wallet limit'
                                    else:
                                        if stor8 and 1000 > -1 / stor8:
                                            revert with 'NH{q', 17
                                        if stor6 > (-1000 * stor8) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg2)] + arg3 - (arg3 / 10) > stor6 + (1000 * stor8):
                                            revert with 0, 'max wallet limit'
                                    require balanceOf[address(arg1)] >= arg3 - (arg3 / 10)
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 10)
                                    if balanceOf[address(arg2)] > -arg3 + (arg3 / 10) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 10)
                                    emit Transfer((arg3 - (arg3 / 10)), arg1, arg2);
                                    if arg2 == 57005:
                                        if totalSupply < arg3 - (arg3 / 10):
                                            revert with 'NH{q', 17
                                        totalSupply = totalSupply - arg3 + (arg3 / 10)
                        else:
                            if not uint8(stor9.field_160):
                                revert with 0, 'trading disabled'
                            if arg3 / 95 < arg3 / 95 / 2000:
                                revert with 'NH{q', 17
                            if arg3 < arg3 / 95:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] < arg3 / 95:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] -= arg3 / 95
                            if balanceOf[address(this.address)] > -(arg3 / 95 / 2000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg3 / 95 / 2000
                            if balanceOf[57005] > -(arg3 / 95) + (arg3 / 95 / 2000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[57005] = balanceOf[57005] + (arg3 / 95) - (arg3 / 95 / 2000)
                            if totalSupply < (arg3 / 95) - (arg3 / 95 / 2000):
                                revert with 'NH{q', 17
                            totalSupply = totalSupply - (arg3 / 95) + (arg3 / 95 / 2000)
                            emit Transfer((arg3 / 95 / 2000), arg1, this.address);
                            emit Transfer(((arg3 / 95) - (arg3 / 95 / 2000)), arg1, 57005);
                            if balanceOf[address(this.address)]:
                                if arg3 - (arg3 / 95) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                uint8(stor5.field_0) = 1
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
                                mem[ceil32(return_data.size) + 192] = 11
                                if balanceOf[address(this.address)] <= 2 * arg3 - (arg3 / 95):
                                    staticcall 'console.log'.0x9710a9d0 with:
                                            gas gas_remaining wei
                                           args 0, 64, balanceOf[address(this.address)], 11, 'doubleSwap ', 0
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 616
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 616 len 64]
                                else:
                                    staticcall 'console.log'.0x9710a9d0 with:
                                            gas gas_remaining wei
                                           args 0, 64, 2 * arg3 - (arg3 / 95), 11, 'doubleSwap ', 0
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 616
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 2 * arg3 - (arg3 / 95), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 616 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor5.field_0) = 0
                            require balanceOf[address(arg1)] >= arg3 - (arg3 / 95)
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 95)
                            if balanceOf[address(arg2)] > -arg3 + (arg3 / 95) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 95)
                            emit Transfer((arg3 - (arg3 / 95)), arg1, arg2);
                            if arg2 == 57005:
                                if totalSupply < arg3 - (arg3 / 95):
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply - arg3 + (arg3 / 95)
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    if allowance[address(arg1)][address(msg.sender)] != -1:
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'not enough token for transfer'
    if not arg1:
        revert with 0, 'incorrect address'
    if uniswapPairAddress != msg.sender:
        if uint8(stor5.field_0):
            if stor10[address(msg.sender)]:
                require balanceOf[address(msg.sender)] >= arg2
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                if arg1 == 57005:
                    if totalSupply < arg2:
                        revert with 'NH{q', 17
                    totalSupply -= arg2
            else:
                if stor10[address(arg1)]:
                    require balanceOf[address(msg.sender)] >= arg2
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    if arg1 == 57005:
                        if totalSupply < arg2:
                            revert with 'NH{q', 17
                        totalSupply -= arg2
                else:
                    if arg2 / 10 < arg2 / 10 / 2000:
                        revert with 'NH{q', 17
                    if arg2 < arg2 / 10:
                        revert with 'NH{q', 17
                    if balanceOf[address(msg.sender)] < arg2 / 10:
                        revert with 'NH{q', 17
                    balanceOf[address(msg.sender)] -= arg2 / 10
                    if balanceOf[address(this.address)] > -(arg2 / 10 / 2000) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(this.address)] += arg2 / 10 / 2000
                    if balanceOf[57005] > -(arg2 / 10) + (arg2 / 10 / 2000) - 1:
                        revert with 'NH{q', 17
                    balanceOf[57005] = balanceOf[57005] + (arg2 / 10) - (arg2 / 10 / 2000)
                    if totalSupply < (arg2 / 10) - (arg2 / 10 / 2000):
                        revert with 'NH{q', 17
                    totalSupply = totalSupply - (arg2 / 10) + (arg2 / 10 / 2000)
                    emit Transfer((arg2 / 10 / 2000), msg.sender, this.address);
                    emit Transfer(((arg2 / 10) - (arg2 / 10 / 2000)), msg.sender, 57005);
                    if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                        revert with 'NH{q', 17
                    if block.timestamp < stor7:
                        revert with 'NH{q', 17
                    if block.timestamp - stor7 / 120 < 1000:
                        if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                            revert with 'NH{q', 17
                        if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                            revert with 0, 'max wallet limit'
                    else:
                        if stor8 and 1000 > -1 / stor8:
                            revert with 'NH{q', 17
                        if stor6 > (-1000 * stor8) - 1:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (1000 * stor8):
                            revert with 0, 'max wallet limit'
                    require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 10)
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10)
                    if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10)
                    emit Transfer((arg2 - (arg2 / 10)), msg.sender, arg1);
                    if arg1 == 57005:
                        if totalSupply < arg2 - (arg2 / 10):
                            revert with 'NH{q', 17
                        totalSupply = totalSupply - arg2 + (arg2 / 10)
        else:
            if not uniswapPairAddress:
                if stor10[address(msg.sender)]:
                    require balanceOf[address(msg.sender)] >= arg2
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    if arg1 == 57005:
                        if totalSupply < arg2:
                            revert with 'NH{q', 17
                        totalSupply -= arg2
                else:
                    if stor10[address(arg1)]:
                        require balanceOf[address(msg.sender)] >= arg2
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        if arg1 == 57005:
                            if totalSupply < arg2:
                                revert with 'NH{q', 17
                            totalSupply -= arg2
                    else:
                        if arg2 / 10 < arg2 / 10 / 2000:
                            revert with 'NH{q', 17
                        if arg2 < arg2 / 10:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2 / 10:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2 / 10
                        if balanceOf[address(this.address)] > -(arg2 / 10 / 2000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg2 / 10 / 2000
                        if balanceOf[57005] > -(arg2 / 10) + (arg2 / 10 / 2000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[57005] = balanceOf[57005] + (arg2 / 10) - (arg2 / 10 / 2000)
                        if totalSupply < (arg2 / 10) - (arg2 / 10 / 2000):
                            revert with 'NH{q', 17
                        totalSupply = totalSupply - (arg2 / 10) + (arg2 / 10 / 2000)
                        emit Transfer((arg2 / 10 / 2000), msg.sender, this.address);
                        emit Transfer(((arg2 / 10) - (arg2 / 10 / 2000)), msg.sender, 57005);
                        if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                            revert with 'NH{q', 17
                        if block.timestamp < stor7:
                            revert with 'NH{q', 17
                        if block.timestamp - stor7 / 120 < 1000:
                            if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                                revert with 'NH{q', 17
                            if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                                revert with 0, 'max wallet limit'
                        else:
                            if stor8 and 1000 > -1 / stor8:
                                revert with 'NH{q', 17
                            if stor6 > (-1000 * stor8) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (1000 * stor8):
                                revert with 0, 'max wallet limit'
                        require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 10)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10)
                        if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10)
                        emit Transfer((arg2 - (arg2 / 10)), msg.sender, arg1);
                        if arg1 == 57005:
                            if totalSupply < arg2 - (arg2 / 10):
                                revert with 'NH{q', 17
                            totalSupply = totalSupply - arg2 + (arg2 / 10)
            else:
                if arg1 != uniswapPairAddress:
                    if stor10[address(msg.sender)]:
                        require balanceOf[address(msg.sender)] >= arg2
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        if arg1 == 57005:
                            if totalSupply < arg2:
                                revert with 'NH{q', 17
                            totalSupply -= arg2
                    else:
                        if stor10[address(arg1)]:
                            require balanceOf[address(msg.sender)] >= arg2
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            if arg1 == 57005:
                                if totalSupply < arg2:
                                    revert with 'NH{q', 17
                                totalSupply -= arg2
                        else:
                            if arg2 / 10 < arg2 / 10 / 2000:
                                revert with 'NH{q', 17
                            if arg2 < arg2 / 10:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2 / 10:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2 / 10
                            if balanceOf[address(this.address)] > -(arg2 / 10 / 2000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 / 10 / 2000
                            if balanceOf[57005] > -(arg2 / 10) + (arg2 / 10 / 2000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[57005] = balanceOf[57005] + (arg2 / 10) - (arg2 / 10 / 2000)
                            if totalSupply < (arg2 / 10) - (arg2 / 10 / 2000):
                                revert with 'NH{q', 17
                            totalSupply = totalSupply - (arg2 / 10) + (arg2 / 10 / 2000)
                            emit Transfer((arg2 / 10 / 2000), msg.sender, this.address);
                            emit Transfer(((arg2 / 10) - (arg2 / 10 / 2000)), msg.sender, 57005);
                            if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp < stor7:
                                revert with 'NH{q', 17
                            if block.timestamp - stor7 / 120 < 1000:
                                if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                                    revert with 'NH{q', 17
                                if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                                    revert with 0, 'max wallet limit'
                            else:
                                if stor8 and 1000 > -1 / stor8:
                                    revert with 'NH{q', 17
                                if stor6 > (-1000 * stor8) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (1000 * stor8):
                                    revert with 0, 'max wallet limit'
                            require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 10)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10)
                            emit Transfer((arg2 - (arg2 / 10)), msg.sender, arg1);
                            if arg1 == 57005:
                                if totalSupply < arg2 - (arg2 / 10):
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply - arg2 + (arg2 / 10)
                else:
                    if stor10[address(msg.sender)]:
                        if stor10[address(msg.sender)]:
                            require balanceOf[address(msg.sender)] >= arg2
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            if arg1 == 57005:
                                if totalSupply < arg2:
                                    revert with 'NH{q', 17
                                totalSupply -= arg2
                        else:
                            if stor10[address(arg1)]:
                                require balanceOf[address(msg.sender)] >= arg2
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                if arg1 == 57005:
                                    if totalSupply < arg2:
                                        revert with 'NH{q', 17
                                    totalSupply -= arg2
                            else:
                                if arg2 / 10 < arg2 / 10 / 2000:
                                    revert with 'NH{q', 17
                                if arg2 < arg2 / 10:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2 / 10:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 / 10
                                if balanceOf[address(this.address)] > -(arg2 / 10 / 2000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg2 / 10 / 2000
                                if balanceOf[57005] > -(arg2 / 10) + (arg2 / 10 / 2000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[57005] = balanceOf[57005] + (arg2 / 10) - (arg2 / 10 / 2000)
                                if totalSupply < (arg2 / 10) - (arg2 / 10 / 2000):
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply - (arg2 / 10) + (arg2 / 10 / 2000)
                                emit Transfer((arg2 / 10 / 2000), msg.sender, this.address);
                                emit Transfer(((arg2 / 10) - (arg2 / 10 / 2000)), msg.sender, 57005);
                                if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp < stor7:
                                    revert with 'NH{q', 17
                                if block.timestamp - stor7 / 120 < 1000:
                                    if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                                        revert with 'NH{q', 17
                                    if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                                        revert with 0, 'max wallet limit'
                                else:
                                    if stor8 and 1000 > -1 / stor8:
                                        revert with 'NH{q', 17
                                    if stor6 > (-1000 * stor8) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (1000 * stor8):
                                        revert with 0, 'max wallet limit'
                                require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 10)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10)
                                emit Transfer((arg2 - (arg2 / 10)), msg.sender, arg1);
                                if arg1 == 57005:
                                    if totalSupply < arg2 - (arg2 / 10):
                                        revert with 'NH{q', 17
                                    totalSupply = totalSupply - arg2 + (arg2 / 10)
                    else:
                        if not uint8(stor9.field_160):
                            revert with 0, 'trading disabled'
                        if arg2 / 95 < arg2 / 95 / 2000:
                            revert with 'NH{q', 17
                        if arg2 < arg2 / 95:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2 / 95:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2 / 95
                        if balanceOf[address(this.address)] > -(arg2 / 95 / 2000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg2 / 95 / 2000
                        if balanceOf[57005] > -(arg2 / 95) + (arg2 / 95 / 2000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[57005] = balanceOf[57005] + (arg2 / 95) - (arg2 / 95 / 2000)
                        if totalSupply < (arg2 / 95) - (arg2 / 95 / 2000):
                            revert with 'NH{q', 17
                        totalSupply = totalSupply - (arg2 / 95) + (arg2 / 95 / 2000)
                        emit Transfer((arg2 / 95 / 2000), msg.sender, this.address);
                        emit Transfer(((arg2 / 95) - (arg2 / 95 / 2000)), msg.sender, 57005);
                        if balanceOf[address(this.address)]:
                            if arg2 - (arg2 / 95) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 'NH{q', 17
                            uint8(stor5.field_0) = 1
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
                            mem[ceil32(return_data.size) + 192] = 11
                            if balanceOf[address(this.address)] <= 2 * arg2 - (arg2 / 95):
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 64, balanceOf[address(this.address)], 11, 'doubleSwap ', 0
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 616
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 616 len 64]
                            else:
                                staticcall 'console.log'.0x9710a9d0 with:
                                        gas gas_remaining wei
                                       args 0, 64, 2 * arg2 - (arg2 / 95), 11, 'doubleSwap ', 0
                                idx = 0
                                s = 128
                                t = ceil32(return_data.size) + 616
                                while idx < 2:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 2 * arg2 - (arg2 / 95), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 616 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            uint8(stor5.field_0) = 0
                        require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 95)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 95)
                        if balanceOf[address(arg1)] > -arg2 + (arg2 / 95) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 95)
                        emit Transfer((arg2 - (arg2 / 95)), msg.sender, arg1);
                        if arg1 == 57005:
                            if totalSupply < arg2 - (arg2 / 95):
                                revert with 'NH{q', 17
                            totalSupply = totalSupply - arg2 + (arg2 / 95)
    else:
        if not stor10[address(arg1)]:
            if not uint8(stor9.field_160):
                revert with 0, 'trading disabled'
            if arg2 / 15 < arg2 / 15 / 2000:
                revert with 'NH{q', 17
            if arg2 < arg2 / 15:
                revert with 'NH{q', 17
            if balanceOf[address(msg.sender)] < arg2 / 15:
                revert with 'NH{q', 17
            balanceOf[address(msg.sender)] -= arg2 / 15
            if balanceOf[address(this.address)] > -(arg2 / 15 / 2000) - 1:
                revert with 'NH{q', 17
            balanceOf[address(this.address)] += arg2 / 15 / 2000
            if balanceOf[57005] > -(arg2 / 15) + (arg2 / 15 / 2000) - 1:
                revert with 'NH{q', 17
            balanceOf[57005] = balanceOf[57005] + (arg2 / 15) - (arg2 / 15 / 2000)
            if totalSupply < (arg2 / 15) - (arg2 / 15 / 2000):
                revert with 'NH{q', 17
            totalSupply = totalSupply - (arg2 / 15) + (arg2 / 15 / 2000)
            emit Transfer((arg2 / 15 / 2000), msg.sender, this.address);
            emit Transfer(((arg2 / 15) - (arg2 / 15 / 2000)), msg.sender, 57005);
            if balanceOf[address(arg1)] > -arg2 + (arg2 / 15) - 1:
                revert with 'NH{q', 17
            if block.timestamp < stor7:
                revert with 'NH{q', 17
            if block.timestamp - stor7 / 120 < 1000:
                if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                    revert with 'NH{q', 17
                if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 - (arg2 / 15) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                    revert with 0, 'max wallet limit'
            else:
                if stor8 and 1000 > -1 / stor8:
                    revert with 'NH{q', 17
                if stor6 > (-1000 * stor8) - 1:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] + arg2 - (arg2 / 15) > stor6 + (1000 * stor8):
                    revert with 0, 'max wallet limit'
            require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 15)
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 15)
            if balanceOf[address(arg1)] > -arg2 + (arg2 / 15) - 1:
                revert with 'NH{q', 17
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 15)
            emit Transfer((arg2 - (arg2 / 15)), msg.sender, arg1);
            if arg1 == 57005:
                if totalSupply < arg2 - (arg2 / 15):
                    revert with 'NH{q', 17
                totalSupply = totalSupply - arg2 + (arg2 / 15)
        else:
            if uint8(stor5.field_0):
                if stor10[address(msg.sender)]:
                    require balanceOf[address(msg.sender)] >= arg2
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] > -arg2 - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                    if arg1 == 57005:
                        if totalSupply < arg2:
                            revert with 'NH{q', 17
                        totalSupply -= arg2
                else:
                    if stor10[address(arg1)]:
                        require balanceOf[address(msg.sender)] >= arg2
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        if arg1 == 57005:
                            if totalSupply < arg2:
                                revert with 'NH{q', 17
                            totalSupply -= arg2
                    else:
                        if arg2 / 10 < arg2 / 10 / 2000:
                            revert with 'NH{q', 17
                        if arg2 < arg2 / 10:
                            revert with 'NH{q', 17
                        if balanceOf[address(msg.sender)] < arg2 / 10:
                            revert with 'NH{q', 17
                        balanceOf[address(msg.sender)] -= arg2 / 10
                        if balanceOf[address(this.address)] > -(arg2 / 10 / 2000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(this.address)] += arg2 / 10 / 2000
                        if balanceOf[57005] > -(arg2 / 10) + (arg2 / 10 / 2000) - 1:
                            revert with 'NH{q', 17
                        balanceOf[57005] = balanceOf[57005] + (arg2 / 10) - (arg2 / 10 / 2000)
                        if totalSupply < (arg2 / 10) - (arg2 / 10 / 2000):
                            revert with 'NH{q', 17
                        totalSupply = totalSupply - (arg2 / 10) + (arg2 / 10 / 2000)
                        emit Transfer((arg2 / 10 / 2000), msg.sender, this.address);
                        emit Transfer(((arg2 / 10) - (arg2 / 10 / 2000)), msg.sender, 57005);
                        if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                            revert with 'NH{q', 17
                        if block.timestamp < stor7:
                            revert with 'NH{q', 17
                        if block.timestamp - stor7 / 120 < 1000:
                            if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                                revert with 'NH{q', 17
                            if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                                revert with 0, 'max wallet limit'
                        else:
                            if stor8 and 1000 > -1 / stor8:
                                revert with 'NH{q', 17
                            if stor6 > (-1000 * stor8) - 1:
                                revert with 'NH{q', 17
                            if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (1000 * stor8):
                                revert with 0, 'max wallet limit'
                        require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 10)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10)
                        if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10)
                        emit Transfer((arg2 - (arg2 / 10)), msg.sender, arg1);
                        if arg1 == 57005:
                            if totalSupply < arg2 - (arg2 / 10):
                                revert with 'NH{q', 17
                            totalSupply = totalSupply - arg2 + (arg2 / 10)
            else:
                if not uniswapPairAddress:
                    if stor10[address(msg.sender)]:
                        require balanceOf[address(msg.sender)] >= arg2
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > -arg2 - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, arg1);
                        if arg1 == 57005:
                            if totalSupply < arg2:
                                revert with 'NH{q', 17
                            totalSupply -= arg2
                    else:
                        if stor10[address(arg1)]:
                            require balanceOf[address(msg.sender)] >= arg2
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            if arg1 == 57005:
                                if totalSupply < arg2:
                                    revert with 'NH{q', 17
                                totalSupply -= arg2
                        else:
                            if arg2 / 10 < arg2 / 10 / 2000:
                                revert with 'NH{q', 17
                            if arg2 < arg2 / 10:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2 / 10:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2 / 10
                            if balanceOf[address(this.address)] > -(arg2 / 10 / 2000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 / 10 / 2000
                            if balanceOf[57005] > -(arg2 / 10) + (arg2 / 10 / 2000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[57005] = balanceOf[57005] + (arg2 / 10) - (arg2 / 10 / 2000)
                            if totalSupply < (arg2 / 10) - (arg2 / 10 / 2000):
                                revert with 'NH{q', 17
                            totalSupply = totalSupply - (arg2 / 10) + (arg2 / 10 / 2000)
                            emit Transfer((arg2 / 10 / 2000), msg.sender, this.address);
                            emit Transfer(((arg2 / 10) - (arg2 / 10 / 2000)), msg.sender, 57005);
                            if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                                revert with 'NH{q', 17
                            if block.timestamp < stor7:
                                revert with 'NH{q', 17
                            if block.timestamp - stor7 / 120 < 1000:
                                if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                                    revert with 'NH{q', 17
                                if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                                    revert with 0, 'max wallet limit'
                            else:
                                if stor8 and 1000 > -1 / stor8:
                                    revert with 'NH{q', 17
                                if stor6 > (-1000 * stor8) - 1:
                                    revert with 'NH{q', 17
                                if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (1000 * stor8):
                                    revert with 0, 'max wallet limit'
                            require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 10)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10)
                            emit Transfer((arg2 - (arg2 / 10)), msg.sender, arg1);
                            if arg1 == 57005:
                                if totalSupply < arg2 - (arg2 / 10):
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply - arg2 + (arg2 / 10)
                else:
                    if arg1 != uniswapPairAddress:
                        if stor10[address(msg.sender)]:
                            require balanceOf[address(msg.sender)] >= arg2
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] > -arg2 - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, msg.sender, arg1);
                            if arg1 == 57005:
                                if totalSupply < arg2:
                                    revert with 'NH{q', 17
                                totalSupply -= arg2
                        else:
                            if stor10[address(arg1)]:
                                require balanceOf[address(msg.sender)] >= arg2
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                if arg1 == 57005:
                                    if totalSupply < arg2:
                                        revert with 'NH{q', 17
                                    totalSupply -= arg2
                            else:
                                if arg2 / 10 < arg2 / 10 / 2000:
                                    revert with 'NH{q', 17
                                if arg2 < arg2 / 10:
                                    revert with 'NH{q', 17
                                if balanceOf[address(msg.sender)] < arg2 / 10:
                                    revert with 'NH{q', 17
                                balanceOf[address(msg.sender)] -= arg2 / 10
                                if balanceOf[address(this.address)] > -(arg2 / 10 / 2000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(this.address)] += arg2 / 10 / 2000
                                if balanceOf[57005] > -(arg2 / 10) + (arg2 / 10 / 2000) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[57005] = balanceOf[57005] + (arg2 / 10) - (arg2 / 10 / 2000)
                                if totalSupply < (arg2 / 10) - (arg2 / 10 / 2000):
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply - (arg2 / 10) + (arg2 / 10 / 2000)
                                emit Transfer((arg2 / 10 / 2000), msg.sender, this.address);
                                emit Transfer(((arg2 / 10) - (arg2 / 10 / 2000)), msg.sender, 57005);
                                if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                                    revert with 'NH{q', 17
                                if block.timestamp < stor7:
                                    revert with 'NH{q', 17
                                if block.timestamp - stor7 / 120 < 1000:
                                    if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                                        revert with 'NH{q', 17
                                    if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                                        revert with 0, 'max wallet limit'
                                else:
                                    if stor8 and 1000 > -1 / stor8:
                                        revert with 'NH{q', 17
                                    if stor6 > (-1000 * stor8) - 1:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (1000 * stor8):
                                        revert with 0, 'max wallet limit'
                                require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 10)
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10)
                                if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10)
                                emit Transfer((arg2 - (arg2 / 10)), msg.sender, arg1);
                                if arg1 == 57005:
                                    if totalSupply < arg2 - (arg2 / 10):
                                        revert with 'NH{q', 17
                                    totalSupply = totalSupply - arg2 + (arg2 / 10)
                    else:
                        if stor10[address(msg.sender)]:
                            if stor10[address(msg.sender)]:
                                require balanceOf[address(msg.sender)] >= arg2
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] > -arg2 - 1:
                                    revert with 'NH{q', 17
                                balanceOf[address(arg1)] += arg2
                                emit Transfer(arg2, msg.sender, arg1);
                                if arg1 == 57005:
                                    if totalSupply < arg2:
                                        revert with 'NH{q', 17
                                    totalSupply -= arg2
                            else:
                                if stor10[address(arg1)]:
                                    require balanceOf[address(msg.sender)] >= arg2
                                    balanceOf[address(msg.sender)] -= arg2
                                    if balanceOf[address(arg1)] > -arg2 - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] += arg2
                                    emit Transfer(arg2, msg.sender, arg1);
                                    if arg1 == 57005:
                                        if totalSupply < arg2:
                                            revert with 'NH{q', 17
                                        totalSupply -= arg2
                                else:
                                    if arg2 / 10 < arg2 / 10 / 2000:
                                        revert with 'NH{q', 17
                                    if arg2 < arg2 / 10:
                                        revert with 'NH{q', 17
                                    if balanceOf[address(msg.sender)] < arg2 / 10:
                                        revert with 'NH{q', 17
                                    balanceOf[address(msg.sender)] -= arg2 / 10
                                    if balanceOf[address(this.address)] > -(arg2 / 10 / 2000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(this.address)] += arg2 / 10 / 2000
                                    if balanceOf[57005] > -(arg2 / 10) + (arg2 / 10 / 2000) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[57005] = balanceOf[57005] + (arg2 / 10) - (arg2 / 10 / 2000)
                                    if totalSupply < (arg2 / 10) - (arg2 / 10 / 2000):
                                        revert with 'NH{q', 17
                                    totalSupply = totalSupply - (arg2 / 10) + (arg2 / 10 / 2000)
                                    emit Transfer((arg2 / 10 / 2000), msg.sender, this.address);
                                    emit Transfer(((arg2 / 10) - (arg2 / 10 / 2000)), msg.sender, 57005);
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                                        revert with 'NH{q', 17
                                    if block.timestamp < stor7:
                                        revert with 'NH{q', 17
                                    if block.timestamp - stor7 / 120 < 1000:
                                        if stor8 and block.timestamp - stor7 / 120 > -1 / stor8:
                                            revert with 'NH{q', 17
                                        if stor6 > (-1 * stor8 * block.timestamp - stor7 / 120) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (stor8 * block.timestamp - stor7 / 120):
                                            revert with 0, 'max wallet limit'
                                    else:
                                        if stor8 and 1000 > -1 / stor8:
                                            revert with 'NH{q', 17
                                        if stor6 > (-1000 * stor8) - 1:
                                            revert with 'NH{q', 17
                                        if balanceOf[address(arg1)] + arg2 - (arg2 / 10) > stor6 + (1000 * stor8):
                                            revert with 0, 'max wallet limit'
                                    require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 10)
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 10)
                                    if balanceOf[address(arg1)] > -arg2 + (arg2 / 10) - 1:
                                        revert with 'NH{q', 17
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 10)
                                    emit Transfer((arg2 - (arg2 / 10)), msg.sender, arg1);
                                    if arg1 == 57005:
                                        if totalSupply < arg2 - (arg2 / 10):
                                            revert with 'NH{q', 17
                                        totalSupply = totalSupply - arg2 + (arg2 / 10)
                        else:
                            if not uint8(stor9.field_160):
                                revert with 0, 'trading disabled'
                            if arg2 / 95 < arg2 / 95 / 2000:
                                revert with 'NH{q', 17
                            if arg2 < arg2 / 95:
                                revert with 'NH{q', 17
                            if balanceOf[address(msg.sender)] < arg2 / 95:
                                revert with 'NH{q', 17
                            balanceOf[address(msg.sender)] -= arg2 / 95
                            if balanceOf[address(this.address)] > -(arg2 / 95 / 2000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(this.address)] += arg2 / 95 / 2000
                            if balanceOf[57005] > -(arg2 / 95) + (arg2 / 95 / 2000) - 1:
                                revert with 'NH{q', 17
                            balanceOf[57005] = balanceOf[57005] + (arg2 / 95) - (arg2 / 95 / 2000)
                            if totalSupply < (arg2 / 95) - (arg2 / 95 / 2000):
                                revert with 'NH{q', 17
                            totalSupply = totalSupply - (arg2 / 95) + (arg2 / 95 / 2000)
                            emit Transfer((arg2 / 95 / 2000), msg.sender, this.address);
                            emit Transfer(((arg2 / 95) - (arg2 / 95 / 2000)), msg.sender, 57005);
                            if balanceOf[address(this.address)]:
                                if arg2 - (arg2 / 95) > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                    revert with 'NH{q', 17
                                uint8(stor5.field_0) = 1
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
                                mem[ceil32(return_data.size) + 192] = 11
                                if balanceOf[address(this.address)] <= 2 * arg2 - (arg2 / 95):
                                    staticcall 'console.log'.0x9710a9d0 with:
                                            gas gas_remaining wei
                                           args 0, 64, balanceOf[address(this.address)], 11, 'doubleSwap ', 0
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 616
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args balanceOf[address(this.address)], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 616 len 64]
                                else:
                                    staticcall 'console.log'.0x9710a9d0 with:
                                            gas gas_remaining wei
                                           args 0, 64, 2 * arg2 - (arg2 / 95), 11, 'doubleSwap ', 0
                                    idx = 0
                                    s = 128
                                    t = ceil32(return_data.size) + 616
                                    while idx < 2:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(0x10ed43c718714eb63d5aa57b78b54704e256024e)
                                    call 0x10ed43c718714eb63d5aa57b78b54704e256024e.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args 2 * arg2 - (arg2 / 95), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 616 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                uint8(stor5.field_0) = 0
                            require balanceOf[address(msg.sender)] >= arg2 - (arg2 / 95)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 95)
                            if balanceOf[address(arg1)] > -arg2 + (arg2 / 95) - 1:
                                revert with 'NH{q', 17
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 95)
                            emit Transfer((arg2 - (arg2 / 95)), msg.sender, arg1);
                            if arg1 == 57005:
                                if totalSupply < arg2 - (arg2 / 95):
                                    revert with 'NH{q', 17
                                totalSupply = totalSupply - arg2 + (arg2 / 95)
    return 1
}



}
