contract main {




// =====================  Runtime code  =====================


#
#  - sub_747b158f(?)
#  - _fallback()
#
address owner;
address sub_b17b6394Address;
mapping of uint8 stor2;
uint256 sub_2247b817;
mapping of struct stor4;
mapping of struct sub_01ffac49;
mapping of struct sub_2fca25e0;
mapping of uint256 token0LPLockerCount;
mapping of uint256 token1LPLockerCount;
mapping of struct sub_85f008ee;
mapping of uint256 sub_1ce084a2;
mapping of struct sub_e49a3f8f;
mapping of uint256 sub_47978e0d;
mapping of uint256 sub_9deccffb;
mapping of uint8 stor14;
mapping of struct stor15;

function sub_01ffac49(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_01ffac49[arg1][arg2].field_0, 
           sub_01ffac49[arg1][arg2].field_256,
           sub_01ffac49[arg1][arg2].field_512,
           sub_01ffac49[arg1][arg2].field_768
}

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

function sub_1dbeee9d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor14[arg1])
}

function sub_2247b817(?) {
    return sub_2247b817
}

function sub_2fca25e0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_2fca25e0[arg1][arg2].field_0, 
           sub_2fca25e0[arg1][arg2].field_256,
           sub_2fca25e0[arg1][arg2].field_512,
           sub_2fca25e0[arg1][arg2].field_768
}

function Token1LPLockerCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return token1LPLockerCount[arg1]
}

function sub_47978e0d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_47978e0d[address(arg1)]
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
    return sub_85f008ee[arg1[all]][arg2].field_0, 
           sub_85f008ee[arg1[all]][arg2].field_256,
           sub_85f008ee[arg1[all]][arg2].field_512,
           sub_85f008ee[arg1[all]][arg2].field_768
}

function owner() {
    return owner
}

function Token0LPLockerCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return token0LPLockerCount[arg1]
}

function sub_9deccffb(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9deccffb[arg1]
}

function sub_b17b6394(?) {
    return sub_b17b6394Address
}

function UserLockerCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_47978e0d[arg1]
}

function sub_e49a3f8f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_e49a3f8f[arg1][arg2].field_0, 
           sub_e49a3f8f[arg1][arg2].field_256,
           sub_e49a3f8f[arg1][arg2].field_512,
           sub_e49a3f8f[arg1][arg2].field_768
}

function sub_f316e513(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_6aecc5cd(?) {
    require calldata.size - 4 >= 32
    if not stor14[msg.sender]:
        revert with 0, 'Not Locker Owner'
    stor4[stor11[tx.origin][arg1].field_0][stor11[tx.origin][arg1].field_768].field_1184 = 0
}

function sub_c9f316c5(?) {
    require calldata.size - 4 >= 64
    if not stor14[msg.sender]:
        revert with 0, 'Not Locker Owner'
    stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768].field_768 = arg1
}

function sub_9f4aabe7(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(bool(arg2))
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

function sub_9a0db7d3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor14[msg.sender]:
        revert with 0, 'Not Locker Owner'
    sub_e49a3f8f[address(arg1)][stor12[address(arg1)]].field_0 = sub_e49a3f8f[tx.origin][arg2].field_0
    sub_e49a3f8f[address(arg1)][stor12[address(arg1)]].field_256 = sub_e49a3f8f[tx.origin][arg2].field_256
    sub_e49a3f8f[address(arg1)][stor12[address(arg1)]].field_512 = sub_e49a3f8f[tx.origin][arg2].field_512
    sub_e49a3f8f[address(arg1)][stor12[address(arg1)]].field_768 = sub_e49a3f8f[tx.origin][arg2].field_768
    stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768].field_256 = address(arg1)
    if sub_47978e0d[address(arg1)] == -1:
        revert with 0, 17
    sub_47978e0d[address(arg1)]++
}

function changeLogo(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor14[msg.sender]:
        revert with 0, 'Not Locker Owner'
    if stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768].field_1280:
        if stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768].field_1280 == uint255(stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768].field_1280) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768][5][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768].field_1280 = 0
            idx = 0
            while (uint255(stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768].field_1280) * 0.5) + 31 / 32 > idx:
                stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768].field_1280 == stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768].field_1281 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768][5][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768].field_1280 = 0
            idx = 0
            while stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768].field_1281 + 31 / 32 > idx:
                stor4[stor11[tx.origin][arg2].field_0][stor11[tx.origin][arg2].field_768][idx + 5].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_1e330895(?) {
    require calldata.size - 4 >= 32
    if stor15[arg1].field_1280:
        if stor15[arg1].field_1280 == uint255(stor15[arg1].field_1280) * 0.5 < 32:
            revert with 0, 34
        if stor15[arg1].field_1280:
            if stor15[arg1].field_1280 == uint255(stor15[arg1].field_1280) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15[arg1].field_1280):
                if 31 >= uint255(stor15[arg1].field_1280) * 0.5:
                    mem[128] = 256 * stor15[arg1].field_1288
                else:
                    mem[128] = stor15[arg1][5].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor15[arg1].field_1280) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[arg1][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor15[arg1].field_1280 == stor15[arg1].field_1281 < 32:
                revert with 0, 34
            if stor15[arg1].field_1281:
                if 31 >= stor15[arg1].field_1281:
                    mem[128] = 256 * stor15[arg1].field_1288
                else:
                    mem[128] = stor15[arg1][5].field_0
                    idx = 128
                    s = 0
                    while stor15[arg1].field_1281 + 96 > idx:
                        mem[idx + 32] = stor15[arg1][s + 5].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor15[arg1].field_0, 
               stor15[arg1].field_256,
               stor15[arg1].field_512,
               stor15[arg1].field_768,
               stor15[arg1].field_1024,
               bool(stor15[arg1].field_1184),
               Array(len=2 * Mask(256, -1, stor15[arg1].field_1280), data=mem[128 len ceil32(uint255(stor15[arg1].field_1280) * 0.5)]),
               stor15[arg1].field_1536,
               stor15[arg1].field_1792,
               bool(stor15[arg1].field_2048),
               stor15[arg1].field_2048,
               stor15[arg1].field_2304
    if stor15[arg1].field_1280 == stor15[arg1].field_1281 < 32:
        revert with 0, 34
    if stor15[arg1].field_1280:
        if stor15[arg1].field_1280 == uint255(stor15[arg1].field_1280) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15[arg1].field_1280):
            if 31 >= uint255(stor15[arg1].field_1280) * 0.5:
                mem[128] = 256 * stor15[arg1].field_1288
            else:
                mem[128] = stor15[arg1][5].field_0
                idx = 128
                s = 0
                while (uint255(stor15[arg1].field_1280) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[arg1][s + 5].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor15[arg1].field_1280 == stor15[arg1].field_1281 < 32:
            revert with 0, 34
        if stor15[arg1].field_1281:
            if 31 >= stor15[arg1].field_1281:
                mem[128] = 256 * stor15[arg1].field_1288
            else:
                mem[128] = stor15[arg1][5].field_0
                idx = 128
                s = 0
                while stor15[arg1].field_1281 + 96 > idx:
                    mem[idx + 32] = stor15[arg1][s + 5].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor15[arg1].field_0, 
           stor15[arg1].field_256,
           stor15[arg1].field_512,
           stor15[arg1].field_768,
           stor15[arg1].field_1024,
           bool(stor15[arg1].field_1184),
           Array(len=stor15[arg1].field_1280, data=mem[128 len ceil32(stor15[arg1].field_1281)]),
           stor15[arg1].field_1536,
           stor15[arg1].field_1792,
           bool(stor15[arg1].field_2048),
           stor15[arg1].field_2048,
           stor15[arg1].field_2304
}

function sub_4f940698(?) {
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
               bool(stor4[arg1][arg2].field_1184),
               Array(len=2 * Mask(256, -1, stor4[arg1][arg2].field_1280), data=mem[128 len ceil32(uint255(stor4[arg1][arg2].field_1280) * 0.5)]),
               stor4[arg1][arg2].field_1536,
               stor4[arg1][arg2].field_1792,
               bool(stor4[arg1][arg2].field_2048),
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
           bool(stor4[arg1][arg2].field_1184),
           Array(len=stor4[arg1][arg2].field_1280, data=mem[128 len ceil32(stor4[arg1][arg2].field_1281)]),
           stor4[arg1][arg2].field_1536,
           stor4[arg1][arg2].field_1792,
           bool(stor4[arg1][arg2].field_2048),
           stor4[arg1][arg2].field_2048,
           stor4[arg1][arg2].field_2304
}



}
