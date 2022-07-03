contract main {




// =====================  Runtime code  =====================


#
#  - sub_13473178(?)
#  - _fallback()
#
address owner;
mapping of uint8 stor1;
uint256 sub_2247b817;
address sub_b17b6394Address;
mapping of struct stor4;
mapping of uint256 sub_62172010;
mapping of struct sub_79cb529a;
mapping of uint256 sub_47978e0d;
mapping of struct sub_85f008ee;
mapping of uint256 sub_1ce084a2;
mapping of uint8 stor10;
mapping of struct stor11;

function burnContract() {
    return sub_b17b6394Address
}

function sub_1ce084a2(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_1ce084a2[arg1[all]]
}

function sub_2247b817(?) {
    return sub_2247b817
}

function sub_47978e0d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_47978e0d[address(arg1)]
}

function sub_62172010(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_62172010[arg1]
}

function sub_79cb529a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_79cb529a[arg1][arg2].field_0, sub_79cb529a[arg1][arg2].field_256
}

function sub_85f008ee(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_85f008ee[arg1[all]][arg2].field_0, sub_85f008ee[arg1[all]][arg2].field_256
}

function owner() {
    return owner
}

function sub_b17b6394(?) {
    return sub_b17b6394Address
}

function sub_b6b06a8e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[arg1])
}

function sub_b8fbf3fa(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_47978e0d[arg1]
}

function sub_f316e513(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor1[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_46e4909e(?) {
    require calldata.size - 4 >= 32
    if not stor10[msg.sender]:
        revert with 0, 'Not Locker Owner'
    stor4[stor6[tx.origin][arg1].field_0][stor6[tx.origin][arg1].field_256].field_1536 = 0
}

function sub_1158cfc8(?) {
    require calldata.size - 4 >= 64
    if not stor10[msg.sender]:
        revert with 0, 'Not Locker Owner'
    stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256].field_768 = arg1
}

function sub_9f4aabe7(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(bool(arg2))
}

function sub_37beafe0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'Can't make it to 0'
    sub_b17b6394Address = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_b111d3cc(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor10[msg.sender]:
        revert with 0, 'Not Locker Owner'
    sub_79cb529a[address(arg1)][stor7[address(arg1)]].field_0 = sub_79cb529a[tx.origin][arg2].field_0
    sub_79cb529a[address(arg1)][stor7[address(arg1)]].field_256 = sub_79cb529a[tx.origin][arg2].field_256
    stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256].field_256 = address(arg1)
    if sub_47978e0d[address(arg1)] == -1:
        revert with 0, 17
    sub_47978e0d[address(arg1)]++
}

function sub_ca621054(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor10[msg.sender]:
        revert with 0, 'Not Locker Owner'
    if stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256].field_1280:
        if stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256].field_1280 == uint255(stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256].field_1280) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256][5][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256].field_1280 = 0
            idx = 0
            while (uint255(stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256].field_1280) * 0.5) + 31 / 32 > idx:
                stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256].field_1280 == stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256].field_1281 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256][5][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256].field_1280 = 0
            idx = 0
            while stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256].field_1281 + 31 / 32 > idx:
                stor4[stor6[tx.origin][arg2].field_0][stor6[tx.origin][arg2].field_256][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_1e330895(?) {
    require calldata.size - 4 >= 32
    if stor11[arg1].field_1280:
        if stor11[arg1].field_1280 == uint255(stor11[arg1].field_1280) * 0.5 < 32:
            revert with 0, 34
        if stor11[arg1].field_1280:
            if stor11[arg1].field_1280 == uint255(stor11[arg1].field_1280) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor11[arg1].field_1280):
                if 31 >= uint255(stor11[arg1].field_1280) * 0.5:
                    mem[128] = 256 * stor11[arg1].field_1288
                else:
                    mem[128] = stor11[arg1][5].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor11[arg1].field_1280) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor11[arg1].field_1280 == stor11[arg1].field_1281 < 32:
                revert with 0, 34
            if stor11[arg1].field_1281:
                if 31 >= stor11[arg1].field_1281:
                    mem[128] = 256 * stor11[arg1].field_1288
                else:
                    mem[128] = stor11[arg1][5].field_0
                    idx = 128
                    s = 0
                    while stor11[arg1].field_1281 + 96 > idx:
                        mem[idx + 32] = stor11[arg1][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor11[arg1].field_0, 
               stor11[arg1].field_256,
               stor11[arg1].field_512,
               stor11[arg1].field_768,
               stor11[arg1].field_1024,
               Array(len=2 * Mask(256, -1, stor11[arg1].field_1280), data=mem[128 len ceil32(uint255(stor11[arg1].field_1280) * 0.5)]),
               bool(stor11[arg1].field_1536),
               stor11[arg1].field_1792,
               stor11[arg1].field_2048,
               stor11[arg1].field_2304
    if stor11[arg1].field_1280 == stor11[arg1].field_1281 < 32:
        revert with 0, 34
    if stor11[arg1].field_1280:
        if stor11[arg1].field_1280 == uint255(stor11[arg1].field_1280) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor11[arg1].field_1280):
            if 31 >= uint255(stor11[arg1].field_1280) * 0.5:
                mem[128] = 256 * stor11[arg1].field_1288
            else:
                mem[128] = stor11[arg1][5].field_0
                idx = 128
                s = 0
                while (uint255(stor11[arg1].field_1280) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s + 5].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor11[arg1].field_1280 == stor11[arg1].field_1281 < 32:
            revert with 0, 34
        if stor11[arg1].field_1281:
            if 31 >= stor11[arg1].field_1281:
                mem[128] = 256 * stor11[arg1].field_1288
            else:
                mem[128] = stor11[arg1][5].field_0
                idx = 128
                s = 0
                while stor11[arg1].field_1281 + 96 > idx:
                    mem[idx + 32] = stor11[arg1][s + 5].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor11[arg1].field_0, 
           stor11[arg1].field_256,
           stor11[arg1].field_512,
           stor11[arg1].field_768,
           stor11[arg1].field_1024,
           Array(len=stor11[arg1].field_1280, data=mem[128 len ceil32(stor11[arg1].field_1281)]),
           bool(stor11[arg1].field_1536),
           stor11[arg1].field_1792,
           stor11[arg1].field_2048,
           stor11[arg1].field_2304
}

function sub_d90aa56a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor4[arg1][arg2].field_1280:
        if stor4[arg1][arg2].field_1280 == uint255(stor4[arg1][arg2].field_1280) * 0.5 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_1280:
            if stor4[arg1][arg2].field_1280 == uint255(stor4[arg1][arg2].field_1280) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4[arg1][arg2].field_1280):
                if 31 >= uint255(stor4[arg1][arg2].field_1280) * 0.5:
                    mem[128] = 256 * stor4[arg1][arg2].field_1288
                else:
                    mem[128] = stor4[arg1][arg2][5].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor4[arg1][arg2].field_1280) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[arg1][arg2][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor4[arg1][arg2].field_1280 == stor4[arg1][arg2].field_1281 < 32:
                revert with 0, 34
            if stor4[arg1][arg2].field_1281:
                if 31 >= stor4[arg1][arg2].field_1281:
                    mem[128] = 256 * stor4[arg1][arg2].field_1288
                else:
                    mem[128] = stor4[arg1][arg2][5].field_0
                    idx = 128
                    s = 0
                    while stor4[arg1][arg2].field_1281 + 96 > idx:
                        mem[idx + 32] = stor4[arg1][arg2][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor4[arg1][arg2].field_0, 
               stor4[arg1][arg2].field_256,
               stor4[arg1][arg2].field_512,
               stor4[arg1][arg2].field_768,
               stor4[arg1][arg2].field_1024,
               Array(len=2 * Mask(256, -1, stor4[arg1][arg2].field_1280), data=mem[128 len ceil32(uint255(stor4[arg1][arg2].field_1280) * 0.5)]),
               bool(stor4[arg1][arg2].field_1536),
               stor4[arg1][arg2].field_1792,
               stor4[arg1][arg2].field_2048,
               stor4[arg1][arg2].field_2304
    if stor4[arg1][arg2].field_1280 == stor4[arg1][arg2].field_1281 < 32:
        revert with 0, 34
    if stor4[arg1][arg2].field_1280:
        if stor4[arg1][arg2].field_1280 == uint255(stor4[arg1][arg2].field_1280) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4[arg1][arg2].field_1280):
            if 31 >= uint255(stor4[arg1][arg2].field_1280) * 0.5:
                mem[128] = 256 * stor4[arg1][arg2].field_1288
            else:
                mem[128] = stor4[arg1][arg2][5].field_0
                idx = 128
                s = 0
                while (uint255(stor4[arg1][arg2].field_1280) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[arg1][arg2][s + 5].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor4[arg1][arg2].field_1280 == stor4[arg1][arg2].field_1281 < 32:
            revert with 0, 34
        if stor4[arg1][arg2].field_1281:
            if 31 >= stor4[arg1][arg2].field_1281:
                mem[128] = 256 * stor4[arg1][arg2].field_1288
            else:
                mem[128] = stor4[arg1][arg2][5].field_0
                idx = 128
                s = 0
                while stor4[arg1][arg2].field_1281 + 96 > idx:
                    mem[idx + 32] = stor4[arg1][arg2][s + 5].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor4[arg1][arg2].field_0, 
           stor4[arg1][arg2].field_256,
           stor4[arg1][arg2].field_512,
           stor4[arg1][arg2].field_768,
           stor4[arg1][arg2].field_1024,
           Array(len=stor4[arg1][arg2].field_1280, data=mem[128 len ceil32(stor4[arg1][arg2].field_1281)]),
           bool(stor4[arg1][arg2].field_1536),
           stor4[arg1][arg2].field_1792,
           stor4[arg1][arg2].field_2048,
           stor4[arg1][arg2].field_2304
}



}
