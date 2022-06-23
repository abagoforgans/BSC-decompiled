contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint256 allowance;
mapping of uint8 stor2;
array of struct sub_f4d7249e;
uint256 totalSupply;
array of struct stor5;
array of struct stor6;
uint256 decimals;
uint256 _taxFee;
uint256 maximumFee;
address stor12;
address stor13;

function totalSupply() payable {
    return totalSupply
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function decimals() payable {
    return decimals
}

function maximumFee() payable {
    return maximumFee
}

function sub_37be07cf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[address(arg1)])
}

function _taxFee() payable {
    return _taxFee
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[address(arg1)]
}

function sub_88dd9d07(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function sub_f4d7249e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f4d7249e.length
    return sub_f4d7249e[arg1].field_0, sub_f4d7249e[arg1].field_256
}

function _fallback() payable {
    revert
}

function resignOwnership() payable {
    if stor12 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor12 = 0
    return 1
}

function setTaxFeePercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor12 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _taxFee = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function calculateTaxFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _taxFee <= maximumFee:
        if arg1 and _taxFee > -1 / arg1:
            revert with 'NH{q', 17
        return (arg1 * _taxFee / 100)
    if arg1 and maximumFee > -1 / arg1:
        revert with 'NH{q', 17
    return (arg1 * maximumFee / 100)
}

function sub_51ce80bc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if stor12 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= sub_f4d7249e.length:
        revert with 'NH{q', 50
    if sub_f4d7249e[arg1].field_256 >= block.timestamp:
        return 0
    if balances[address(arg2)] > -sub_f4d7249e[arg1].field_0 - 1:
        revert with 'NH{q', 17
    balances[address(arg2)] += sub_f4d7249e[arg1].field_0
    sub_f4d7249e[arg1].field_0 = 0
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor12 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if not stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: burn from the zero address'
    if 10^18 * arg1 > balances[stor12]:
        revert with 0, 32, 34, 0xfe42455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    balances[stor12] += -1 * 10^18 * arg1
    if totalSupply < 10^18 * arg1:
        revert with 'NH{q', 17
    totalSupply += -1 * 10^18 * arg1
    emit Transfer((10^18 * arg1), stor12, 0);
}

function lock(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor12 != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2[address(arg3)]:
        revert with 0, 'Wallet not set'
    if balances[address(arg3)] < arg1:
        revert with 0, 'balance too low'
    if not sub_f4d7249e.length:
        sub_f4d7249e.length++
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if balances[address(arg3)] < 10^18 * arg1:
        revert with 'NH{q', 17
    balances[address(arg3)] += -1 * 10^18 * arg1
    sub_f4d7249e.length++
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    if sub_f4d7249e.length < 1:
        revert with 'NH{q', 17
    if sub_f4d7249e.length - 1 >= sub_f4d7249e.length:
        revert with 'NH{q', 50
    sub_f4d7249e[sub_f4d7249e.length - 1].field_0 = 10^18 * arg1
    if sub_f4d7249e.length < 1:
        revert with 'NH{q', 17
    if sub_f4d7249e.length - 1 >= sub_f4d7249e.length:
        revert with 'NH{q', 50
    sub_f4d7249e[sub_f4d7249e.length - 1].field_256 = arg2
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if _taxFee <= maximumFee:
        if arg3 and _taxFee > -1 / arg3:
            revert with 'NH{q', 17
        if arg3 < arg3 * _taxFee / 100:
            revert with 'NH{q', 17
        if balances[address(arg1)] < arg3 - (arg3 * _taxFee / 100):
            revert with 0, 'balance too low'
        if allowance[address(arg1)][address(msg.sender)] < arg3 - (arg3 * _taxFee / 100):
            revert with 0, 'allowance too low'
        if balances[address(arg2)] > -arg3 + (arg3 * _taxFee / 100) - 1:
            revert with 'NH{q', 17
        balances[address(arg2)] = balances[address(arg2)] + arg3 - (arg3 * _taxFee / 100)
    else:
        if arg3 and maximumFee > -1 / arg3:
            revert with 'NH{q', 17
        if arg3 < arg3 * maximumFee / 100:
            revert with 'NH{q', 17
        if balances[address(arg1)] < arg3 - (arg3 * maximumFee / 100):
            revert with 0, 'balance too low'
        if allowance[address(arg1)][address(msg.sender)] < arg3 - (arg3 * maximumFee / 100):
            revert with 0, 'allowance too low'
        if balances[address(arg2)] > -arg3 + (arg3 * maximumFee / 100) - 1:
            revert with 'NH{q', 17
        balances[address(arg2)] = balances[address(arg2)] + arg3 - (arg3 * maximumFee / 100)
    if balances[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balances[address(arg1)] -= arg3
    if _taxFee <= maximumFee:
        if arg3 and _taxFee > -1 / arg3:
            revert with 'NH{q', 17
        balances[stor13] = arg3 * _taxFee / 100
    else:
        if arg3 and maximumFee > -1 / arg3:
            revert with 'NH{q', 17
        balances[stor13] = arg3 * maximumFee / 100
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if _taxFee <= maximumFee:
        if arg2 and _taxFee > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 < arg2 * _taxFee / 100:
            revert with 'NH{q', 17
        if balances[address(msg.sender)] < arg2 - (arg2 * _taxFee / 100):
            revert with 0, 'balance too low'
        if balances[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balances[address(msg.sender)] -= arg2
        if balances[address(arg1)] > -arg2 + (arg2 * _taxFee / 100) - 1:
            revert with 'NH{q', 17
        balances[address(arg1)] = balances[address(arg1)] + arg2 - (arg2 * _taxFee / 100)
        if _taxFee > 0:
            if _taxFee <= maximumFee:
                if arg2 and _taxFee > -1 / arg2:
                    revert with 'NH{q', 17
                balances[stor13] = arg2 * _taxFee / 100
            else:
                if arg2 and maximumFee > -1 / arg2:
                    revert with 'NH{q', 17
                balances[stor13] = arg2 * maximumFee / 100
            if _taxFee <= maximumFee:
                if arg2 and _taxFee > -1 / arg2:
                    revert with 'NH{q', 17
                emit Transfer((arg2 * _taxFee / 100), msg.sender, stor13);
            else:
                if arg2 and maximumFee > -1 / arg2:
                    revert with 'NH{q', 17
                emit Transfer((arg2 * maximumFee / 100), msg.sender, stor13);
        emit Transfer((arg2 - (arg2 * _taxFee / 100)), msg.sender, arg1);
    else:
        if arg2 and maximumFee > -1 / arg2:
            revert with 'NH{q', 17
        if arg2 < arg2 * maximumFee / 100:
            revert with 'NH{q', 17
        if balances[address(msg.sender)] < arg2 - (arg2 * maximumFee / 100):
            revert with 0, 'balance too low'
        if balances[address(msg.sender)] < arg2:
            revert with 'NH{q', 17
        balances[address(msg.sender)] -= arg2
        if balances[address(arg1)] > -arg2 + (arg2 * maximumFee / 100) - 1:
            revert with 'NH{q', 17
        balances[address(arg1)] = balances[address(arg1)] + arg2 - (arg2 * maximumFee / 100)
        if _taxFee > 0:
            if _taxFee <= maximumFee:
                if arg2 and _taxFee > -1 / arg2:
                    revert with 'NH{q', 17
                balances[stor13] = arg2 * _taxFee / 100
            else:
                if arg2 and maximumFee > -1 / arg2:
                    revert with 'NH{q', 17
                balances[stor13] = arg2 * maximumFee / 100
            if _taxFee <= maximumFee:
                if arg2 and _taxFee > -1 / arg2:
                    revert with 'NH{q', 17
                emit Transfer((arg2 * _taxFee / 100), msg.sender, stor13);
            else:
                if arg2 and maximumFee > -1 / arg2:
                    revert with 'NH{q', 17
                emit Transfer((arg2 * maximumFee / 100), msg.sender, stor13);
        emit Transfer((arg2 - (arg2 * maximumFee / 100)), msg.sender, arg1);
    return 1
}

function name() payable {
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor5.length):
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
        if ceil32(stor5.length.field_1) > stor5.length.field_1:
            mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length.field_1), data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor5.length):
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function symbol() payable {
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor6.length):
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        else:
            if bool(stor6.length) == stor6.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor6.length.field_1:
                if 31 < stor6.length.field_1:
                    mem[128] = uint256(stor6.field_0)
                    idx = 128
                    s = 0
                    while stor6.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor6[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)])
                mem[128] = 256 * stor6.length.field_8
        mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
        if ceil32(stor6.length.field_1) > stor6.length.field_1:
            mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor6.length.field_1), data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
    if bool(stor6.length) == stor6.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor6.length):
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    else:
        if bool(stor6.length) == stor6.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor6.length.field_1:
            if 31 < stor6.length.field_1:
                mem[128] = uint256(stor6.field_0)
                idx = 128
                s = 0
                while stor6.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor6[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)])
            mem[128] = 256 * stor6.length.field_8
    mem[ceil32(stor6.length.field_1) + 192 len ceil32(stor6.length.field_1)] = mem[128 len ceil32(stor6.length.field_1)]
    if ceil32(stor6.length.field_1) > stor6.length.field_1:
        mem[ceil32(stor6.length.field_1) + stor6.length.field_1 + 192] = 0
    return Array(len=stor6.length % 128, data=mem[128 len ceil32(stor6.length.field_1)], mem[(2 * ceil32(stor6.length.field_1)) + 192 len 2 * ceil32(stor6.length.field_1)]), 
}



}
