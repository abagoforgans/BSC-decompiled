contract main {




// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint256 allowance;
mapping of uint8 stor2;
uint256 totalAvailableCoins;
array of struct stor4;
array of struct stor5;
uint256 decimals;
uint256 sub_050b489f;
uint256 totalHolders;
uint256 stor9;
uint256 sub_0deaf49b;
uint256 totalMinted;
uint256 totalBurned;
address stor15;
address stor16;
address stor17;

function sub_050b489f(?) payable {
    return sub_050b489f
}

function getTotalMinted() payable {
    return totalMinted
}

function sub_0deaf49b(?) payable {
    return sub_0deaf49b
}

function totalSupply() payable {
    return totalAvailableCoins
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balances[arg1]
}

function getTotalHolders() payable {
    return totalHolders
}

function decimals() payable {
    return decimals
}

function getTotalBurned() payable {
    return totalBurned
}

function getTotalAvailableCoins() payable {
    return totalAvailableCoins
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function setTreasuryWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor17 = arg1
    return 1
}

function sub_37548050(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor15 = address(arg1)
    return 1
}

function sub_7c282f55(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    stor16 = address(arg1)
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalBurned > -arg1 - 1:
        revert with 'NH{q', 17
    totalBurned += arg1
    if balances[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    balances[address(msg.sender)] -= arg1
    return 1
}

function mintToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalMinted < sub_050b489f:
        if balances[stor15] > -arg1 - 1:
            revert with 'NH{q', 17
        balances[stor15] += arg1
        if totalMinted > -arg1 - 1:
            revert with 'NH{q', 17
        totalMinted += arg1
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalAvailableCoins:
        revert with 'NH{q', 18
    if sub_0deaf49b / totalAvailableCoins and balances[address(arg1)] > -1 / sub_0deaf49b / totalAvailableCoins:
        revert with 'NH{q', 17
    if balances[address(arg1)] > (-1 * sub_0deaf49b / totalAvailableCoins * balances[address(arg1)]) - 1:
        revert with 'NH{q', 17
    return (balances[address(arg1)] + (sub_0deaf49b / totalAvailableCoins * balances[address(arg1)]))
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not totalAvailableCoins:
        revert with 'NH{q', 18
    if sub_0deaf49b / totalAvailableCoins and balances[address(arg1)] > -1 / sub_0deaf49b / totalAvailableCoins:
        revert with 'NH{q', 17
    if balances[address(arg1)] > (-1 * sub_0deaf49b / totalAvailableCoins * balances[address(arg1)]) - 1:
        revert with 'NH{q', 17
    if balances[address(arg1)] + (sub_0deaf49b / totalAvailableCoins * balances[address(arg1)]) < arg3:
        revert with 0, 'balance too low'
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'allowance too low'
    if 100 < stor9:
        revert with 'NH{q', 17
    if arg3 / 100 and -stor9 + 100 > -1 / arg3 / 100:
        revert with 'NH{q', 17
    if balances[address(arg2)] > (-100 * arg3 / 100) + (stor9 * arg3 / 100) - 1:
        revert with 'NH{q', 17
    balances[address(arg2)] = balances[address(arg2)] + (100 * arg3 / 100) - (stor9 * arg3 / 100)
    if arg3 / 100 and stor9 > -1 / arg3 / 100:
        revert with 'NH{q', 17
    if balances[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balances[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if not stor2[address(arg2)]:
        stor2[address(arg2)] = 1
        if totalHolders == -1:
            revert with 'NH{q', 17
        totalHolders++
    if not balances[address(arg1)]:
        stor2[address(arg1)] = 0
        if not totalHolders:
            revert with 'NH{q', 17
        totalHolders--
    if sub_050b489f > (-1 * arg3 / 100 * stor9) - 1:
        revert with 'NH{q', 17
    sub_050b489f += arg3 / 100 * stor9
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not totalAvailableCoins:
        revert with 'NH{q', 18
    if sub_0deaf49b / totalAvailableCoins and balances[address(msg.sender)] > -1 / sub_0deaf49b / totalAvailableCoins:
        revert with 'NH{q', 17
    if balances[address(msg.sender)] > (-1 * sub_0deaf49b / totalAvailableCoins * balances[address(msg.sender)]) - 1:
        revert with 'NH{q', 17
    if balances[address(msg.sender)] + (sub_0deaf49b / totalAvailableCoins * balances[address(msg.sender)]) < arg2:
        revert with 0, 'balance too low'
    if 100 < stor9:
        revert with 'NH{q', 17
    if arg2 / 100 and -stor9 + 100 > -1 / arg2 / 100:
        revert with 'NH{q', 17
    if balances[address(arg1)] > (-100 * arg2 / 100) + (stor9 * arg2 / 100) - 1:
        revert with 'NH{q', 17
    balances[address(arg1)] = balances[address(arg1)] + (100 * arg2 / 100) - (stor9 * arg2 / 100)
    if arg2 / 100 and stor9 > -1 / arg2 / 100:
        revert with 'NH{q', 17
    if balances[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balances[address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    if not stor2[address(arg1)]:
        stor2[address(arg1)] = 1
        if totalHolders == -1:
            revert with 'NH{q', 17
        totalHolders++
    if not balances[address(msg.sender)]:
        stor2[address(msg.sender)] = 0
        if not totalHolders:
            revert with 'NH{q', 17
        totalHolders--
    if msg.sender == stor16:
        if totalAvailableCoins / 10^6 and 4851 > -1 / totalAvailableCoins / 10^6:
            revert with 'NH{q', 17
        if balances[stor17] >= 4851 * totalAvailableCoins / 10^6:
            if balances[stor17] < 4851 * totalAvailableCoins / 10^6:
                revert with 'NH{q', 17
            balances[stor17] += -4851 * totalAvailableCoins / 10^6
            if sub_0deaf49b > (-4851 * totalAvailableCoins / 10^6) - 1:
                revert with 'NH{q', 17
            sub_0deaf49b += 4851 * totalAvailableCoins / 10^6
    if sub_050b489f > (-1 * arg2 / 100 * stor9) - 1:
        revert with 'NH{q', 17
    sub_050b489f += arg2 / 100 * stor9
    return 1
}

function name() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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

function symbol() payable {
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



}
