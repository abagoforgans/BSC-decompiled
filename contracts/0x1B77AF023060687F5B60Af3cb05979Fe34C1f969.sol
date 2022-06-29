contract main {




// =====================  Runtime code  =====================


#
#  - sub_6fcb8cce(?)
#
address stor0;
array of address stor1;
array of address stor2;
array of address stor3;
array of address stor4;
array of struct stor5;
array of uint256 stor6;

function _fallback() payable {
    revert
}

function sub_301d85f3(?) {
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] == msg.sender:
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor3.length++
    stor3[stor3.length] = msg.sender
    stor4.length++
    stor4[stor4.length] = msg.sender
}

function sub_0ffcf092(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] == msg.sender:
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor3.length++
    stor3[stor3.length] = msg.sender
    stor4.length++
    stor4[stor4.length] = address(arg1)
}

function sub_bc097896(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor3.length:
        if idx >= stor4.length:
            revert with 'NH{q', 50
        if idx >= stor3.length:
            revert with 'NH{q', 50
        mem[0] = 3
        if stor3[idx] == stor4[idx]:
            if idx >= stor4.length:
                revert with 'NH{q', 50
            mem[0] = 4
            if address(arg1) == stor4[idx]:
                return 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function sub_7b589023(?) {
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= stor4.length:
            revert with 'NH{q', 50
        mem[0] = 4
        if stor4[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= stor3.length:
            revert with 'NH{q', 50
        stor3[idx] = 0
        if idx >= stor4.length:
            revert with 'NH{q', 50
        stor4[idx] = 0
}

function sub_524006b8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= stor4.length:
            revert with 'NH{q', 50
        mem[0] = 4
        if stor4[idx] != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= stor3.length:
            revert with 'NH{q', 50
        stor3[idx] = 0
        if idx >= stor4.length:
            revert with 'NH{q', 50
        stor4[idx] = 0
}

function sub_0b0e1826(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    s = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if s > test266151307():
        revert with 'NH{q', 65
    mem[96] = s
    mem[64] = (32 * s) + 128
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    idx = 0
    t = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] != address(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            t = t
            continue 
        if idx >= stor4.length:
            revert with 'NH{q', 50
        mem[0] = 4
        if t >= s:
            revert with 'NH{q', 50
        mem[(32 * t) + 128] = stor4[idx]
        if t == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        t = t + 1
        continue 
    mem[(32 * s) + 128] = 32
    mem[(32 * s) + 160] = s
    t = 0
    u = 128
    v = mem[64] + 64
    while t < s:
        mem[v] = mem[u + 12 len 20]
        t = t + 1
        u = u + 32
        v = v + 32
        continue 
    return memory
      from mem[64]
       len (64 * s) + -mem[64] + 192
}

function sendMessage(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 > test266151307() or ceil32(ceil32(arg2.length)) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(ceil32(arg2.length)) + 97
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.value >= 10^15
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= stor4.length:
            revert with 'NH{q', 50
        mem[0] = 4
        if stor4[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < stor4.length:
            mem[0] = 4
            if stor4[idx] == msg.sender:
                if idx >= stor3.length:
                    revert with 'NH{q', 50
                mem[0] = 3
                if stor3[idx] == arg1:
                    stor1.length++
                    stor1[stor1.length] = msg.sender
                    stor2.length++
                    stor2[stor2.length] = arg1
                    stor5.length++
                    if bool(stor5[stor5.length].field_0):
                        if bool(stor5[stor5.length].field_0) == uint255(stor5[stor5.length].field_1) < 32:
                            revert with 'NH{q', 34
                        if not arg2.length:
                            stor5[stor5.length].field_0 = 0
                            s = sha3(sha3(5) + stor5.length)
                            while sha3(sha3(5) + stor5.length) + (uint255(stor5[stor5.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor5[stor5.length].field_0 = (2 * arg2.length) + 1
                            t = sha3(sha3(5) + stor5.length)
                            s = 128
                            while arg2.length + 128 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(5) + stor5.length) + (Mask(251, 0, arg2.length + 31) >> 5)
                            while sha3(sha3(5) + stor5.length) + (uint255(stor5[stor5.length].field_1) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor5[stor5.length].field_0) == stor5[stor5.length].field_1 % 128 < 32:
                            revert with 'NH{q', 34
                        if not arg2.length:
                            stor5[stor5.length].field_0 = 0
                            s = sha3(sha3(5) + stor5.length)
                            while sha3(sha3(5) + stor5.length) + (stor5[stor5.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor5[stor5.length].field_0 = (2 * arg2.length) + 1
                            t = sha3(sha3(5) + stor5.length)
                            s = 128
                            while arg2.length + 128 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(5) + stor5.length) + (Mask(251, 0, arg2.length + 31) >> 5)
                            while sha3(sha3(5) + stor5.length) + (stor5[stor5.length].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    stor6.length++
                    mem[0] = 6
                    stor6[stor6.length] = block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    stor1.length++
    stor1[stor1.length] = msg.sender
    stor2.length++
    stor2[stor2.length] = arg1
    stor5.length++
    if bool(stor5[stor5.length].field_0):
        if bool(stor5[stor5.length].field_0) == uint255(stor5[stor5.length].field_1) < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor5[stor5.length][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[stor5.length].field_0 = 0
            idx = 0
            while uint255(stor5[stor5.length].field_1) + 31 / 32 > idx:
                stor5[stor5.length + idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5[stor5.length].field_0) == stor5[stor5.length].field_1 % 128 < 32:
            revert with 'NH{q', 34
        if arg2.length:
            stor5[stor5.length][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5[stor5.length].field_0 = 0
            idx = 0
            while stor5[stor5.length].field_1 % 128 + 31 / 32 > idx:
                stor5[stor5.length + idx].field_0 = 0
                idx = idx + 1
                continue 
    stor6.length++
    stor6[stor6.length] = block.timestamp
}



}
