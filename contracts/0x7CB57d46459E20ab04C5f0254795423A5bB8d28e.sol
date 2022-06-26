contract main {




// =====================  Runtime code  =====================


uint256 sub_eed9ec39;
uint256 sub_e04af1e2;
uint256 raceCount;
address sub_417df1f1Address;
mapping of struct stor6;
mapping of struct stor7;
mapping of struct sub_9908d347;
address _adminAddress;

function _admin() payable {
    return _adminAddress
}

function sub_417df1f1(?) payable {
    return sub_417df1f1Address
}

function raceCount() payable {
    return raceCount
}

function sub_9908d347(?) payable {
    require calldata.size - 4 >= 32
    return sub_9908d347[arg1].field_1536
}

function sub_e04af1e2(?) payable {
    return sub_e04af1e2
}

function sub_eed9ec39(?) payable {
    return sub_eed9ec39
}

function _fallback() payable {
    revert
}

function sub_168ce21c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if _adminAddress != msg.sender:
        revert with 0, 'not admin'
    if not address(arg1):
        revert with 0, 'You must enter a valid address'
    sub_417df1f1Address = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _adminAddress != msg.sender:
        revert with 0, 'not admin'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The new owner cannot be a null address'
    _adminAddress = arg1
}

function sub_80941da8(?) payable {
    require calldata.size - 4 >= 224
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg6.length)) + 97 < 96 or ceil32(ceil32(arg6.length)) + 97 > test266151307():
        revert with 0, 65
    require arg6 + arg6.length + 36 <= calldata.size
    require arg7 == address(arg7)
    if _adminAddress != msg.sender:
        revert with 0, 'not admin'
    if sub_eed9ec39 > -2:
        revert with 0, 17
    sub_eed9ec39++
    sub_9908d347[stor2 + 1].field_0 = sub_eed9ec39 + 1
    sub_9908d347[stor2 + 1].field_256 = arg2
    sub_9908d347[stor2 + 1].field_512 = arg1
    sub_9908d347[stor2 + 1].field_768 = 0
    sub_9908d347[stor2 + 1].field_1024 = arg5
    sub_9908d347[stor2 + 1].field_1280 = arg3
    sub_9908d347[stor2 + 1].field_1536 = arg4
    if bool(sub_9908d347[stor2 + 1].field_1792):
        if bool(sub_9908d347[stor2 + 1].field_1792) == uint255(sub_9908d347[stor2 + 1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if arg6.length:
            sub_9908d347[stor2 + 1][7][].field_0 = Array(len=arg6.length, data=arg6[all])
        else:
            sub_9908d347[stor2 + 1].field_1792 = 0
            idx = 0
            while (uint255(sub_9908d347[stor2 + 1].field_1792) * 0.5) + 31 / 32 > idx:
                sub_9908d347[stor2 + 1][idx + 7].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(sub_9908d347[stor2 + 1].field_1792) == sub_9908d347[stor2 + 1].field_1793 % 128 < 32:
            revert with 0, 34
        if arg6.length:
            sub_9908d347[stor2 + 1][7][].field_0 = Array(len=arg6.length, data=arg6[all])
        else:
            sub_9908d347[stor2 + 1].field_1792 = 0
            idx = 0
            while sub_9908d347[stor2 + 1].field_1793 % 128 + 31 / 32 > idx:
                sub_9908d347[stor2 + 1][idx + 7].field_0 = 0
                idx = idx + 1
                continue 
    address(sub_9908d347[stor2 + 1].field_2048) = address(arg7)
    emit 0x23b0a5df: arg1, arg2, arg3, arg5, Array(len=arg6.length, data=arg6[all]), address(arg7)
}

function sub_33b76518(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor6[arg1].field_512):
        if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(stor6[arg1].field_512):
            if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor6[arg1].field_512):
                if 31 >= uint255(stor6[arg1].field_512) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor6[arg1].field_520)
                else:
                    mem[128] = stor6[arg1][2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor6[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor6[arg1].field_513 % 128:
                if 31 >= stor6[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor6[arg1].field_520)
                else:
                    mem[128] = stor6[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor6[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor6[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor6[arg1].field_0, 
               stor6[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor6[arg1].field_512), data=mem[128 len ceil32(uint255(stor6[arg1].field_512) * 0.5)])
    if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor6[arg1].field_512):
        if bool(stor6[arg1].field_512) == uint255(stor6[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor6[arg1].field_512):
            if 31 >= uint255(stor6[arg1].field_512) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_520)
            else:
                mem[128] = stor6[arg1][2].field_0
                idx = 128
                s = 0
                while (uint255(stor6[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor6[arg1].field_512) == stor6[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if stor6[arg1].field_513 % 128:
            if 31 >= stor6[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor6[arg1].field_520)
            else:
                mem[128] = stor6[arg1][2].field_0
                idx = 128
                s = 0
                while stor6[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor6[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor6[arg1].field_0, 
           stor6[arg1].field_256,
           Array(len=stor6[arg1].field_512 % 128, data=mem[128 len ceil32(stor6[arg1].field_513 % 128)])
}

function sub_87574988(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor7[arg1].field_512):
        if bool(stor7[arg1].field_512) == uint255(stor7[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(stor7[arg1].field_512):
            if bool(stor7[arg1].field_512) == uint255(stor7[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7[arg1].field_512):
                if 31 >= uint255(stor7[arg1].field_512) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor7[arg1].field_520)
                else:
                    mem[128] = stor7[arg1][2].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor7[arg1].field_512) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor7[arg1].field_512) == stor7[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if stor7[arg1].field_513 % 128:
                if 31 >= stor7[arg1].field_513 % 128:
                    mem[128] = 256 * Mask(248, 0, stor7[arg1].field_520)
                else:
                    mem[128] = stor7[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor7[arg1].field_513 % 128 + 96 > idx:
                        mem[idx + 32] = stor7[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor7[arg1].field_0, 
               stor7[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor7[arg1].field_512), data=mem[128 len ceil32(uint255(stor7[arg1].field_512) * 0.5)])
    if bool(stor7[arg1].field_512) == stor7[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor7[arg1].field_512):
        if bool(stor7[arg1].field_512) == uint255(stor7[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7[arg1].field_512):
            if 31 >= uint255(stor7[arg1].field_512) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor7[arg1].field_520)
            else:
                mem[128] = stor7[arg1][2].field_0
                idx = 128
                s = 0
                while (uint255(stor7[arg1].field_512) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor7[arg1].field_512) == stor7[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if stor7[arg1].field_513 % 128:
            if 31 >= stor7[arg1].field_513 % 128:
                mem[128] = 256 * Mask(248, 0, stor7[arg1].field_520)
            else:
                mem[128] = stor7[arg1][2].field_0
                idx = 128
                s = 0
                while stor7[arg1].field_513 % 128 + 96 > idx:
                    mem[idx + 32] = stor7[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor7[arg1].field_0, 
           stor7[arg1].field_256,
           Array(len=stor7[arg1].field_512 % 128, data=mem[128 len ceil32(stor7[arg1].field_513 % 128)])
}

function sub_2abd338c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if 1 > !sub_9908d347[arg1].field_768:
        revert with 0, 17
    if sub_9908d347[arg1].field_768 + 1 > sub_9908d347[arg1].field_1024:
        revert with 0, 'sold out'
    if address(sub_9908d347[arg1].field_2048) != msg.sender:
        revert with 0, 'not buyer'
    if bool(sub_9908d347[arg1].field_1792):
        if bool(sub_9908d347[arg1].field_1792) == uint255(sub_9908d347[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if not bool(sub_9908d347[arg1].field_1792):
            call sub_417df1f1Address.0x919b18a1 with:
                 gas gas_remaining wei
                args 0, 128, address(arg2), sub_9908d347[arg1].field_512, sub_9908d347[arg1].field_256, 2 * Mask(256, -1, sub_9908d347[arg1].field_1792), Mask(248, 8, sub_9908d347[arg1].field_1792)
        else:
            if bool(sub_9908d347[arg1].field_1792) != 1:
                call sub_417df1f1Address.0x919b18a1 with:
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = 0
                while idx < uint255(sub_9908d347[arg1].field_1792) * 0.5:
                    mem[idx + 260] = sub_9908d347[arg1][s + 7].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                call sub_417df1f1Address.0x919b18a1 with:
                     gas gas_remaining wei
                    args 0, 128, address(arg2), sub_9908d347[arg1].field_512, sub_9908d347[arg1].field_256, 2 * Mask(256, -1, sub_9908d347[arg1].field_1792), mem[260 len ceil32(uint255(sub_9908d347[arg1].field_1792) * 0.5)]
    else:
        if bool(sub_9908d347[arg1].field_1792) == sub_9908d347[arg1].field_1793 % 128 < 32:
            revert with 0, 34
        if not bool(sub_9908d347[arg1].field_1792):
            call sub_417df1f1Address.0x919b18a1 with:
                 gas gas_remaining wei
                args 0, 128, address(arg2), sub_9908d347[arg1].field_512, sub_9908d347[arg1].field_256, sub_9908d347[arg1].field_1792 % 128, Mask(248, 8, sub_9908d347[arg1].field_1792)
        else:
            if bool(sub_9908d347[arg1].field_1792) != 1:
                call sub_417df1f1Address.0x919b18a1 with:
                     gas gas_remaining wei
                    args mem[100 len -100]
            else:
                idx = 0
                s = 0
                while idx < sub_9908d347[arg1].field_1793 % 128:
                    mem[idx + 260] = sub_9908d347[arg1][s + 7].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                call sub_417df1f1Address.0x919b18a1 with:
                     gas gas_remaining wei
                    args 0, 128, address(arg2), sub_9908d347[arg1].field_512, sub_9908d347[arg1].field_256, sub_9908d347[arg1].field_1792 % 128, mem[260 len ceil32(sub_9908d347[arg1].field_1793 % 128)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 > !sub_9908d347[arg1].field_768:
        revert with 0, 17
    sub_9908d347[arg1].field_768++
    if 1 > !stor6[arg1].field_256:
        revert with 0, 17
    stor6[arg1].field_256++
    if 1 > !stor7[arg1].field_256:
        revert with 0, 17
    stor7[arg1].field_256++
    emit 0x2f6f92b3: address(arg2)
    return ext_call.return_data[0]
}

function sub_461f8194(?) payable {
    require calldata.size - 4 >= 32
    if bool(sub_9908d347[arg1].field_1792):
        if bool(sub_9908d347[arg1].field_1792) == uint255(sub_9908d347[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if bool(sub_9908d347[arg1].field_1792):
            if bool(sub_9908d347[arg1].field_1792) == uint255(sub_9908d347[arg1].field_1792) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, sub_9908d347[arg1].field_1792):
                if 31 >= uint255(sub_9908d347[arg1].field_1792) * 0.5:
                    mem[128] = 256 * Mask(248, 0, sub_9908d347[arg1].field_1800)
                else:
                    mem[128] = sub_9908d347[arg1][7].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_9908d347[arg1].field_1792) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_9908d347[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(sub_9908d347[arg1].field_1792) == sub_9908d347[arg1].field_1793 % 128 < 32:
                revert with 0, 34
            if sub_9908d347[arg1].field_1793 % 128:
                if 31 >= sub_9908d347[arg1].field_1793 % 128:
                    mem[128] = 256 * Mask(248, 0, sub_9908d347[arg1].field_1800)
                else:
                    mem[128] = sub_9908d347[arg1][7].field_0
                    idx = 128
                    s = 0
                    while sub_9908d347[arg1].field_1793 % 128 + 96 > idx:
                        mem[idx + 32] = sub_9908d347[arg1][s + 7].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return sub_9908d347[arg1].field_0, 
               sub_9908d347[arg1].field_256,
               sub_9908d347[arg1].field_512,
               sub_9908d347[arg1].field_768,
               sub_9908d347[arg1].field_1024,
               sub_9908d347[arg1].field_1280,
               sub_9908d347[arg1].field_1536,
               Array(len=2 * Mask(256, -1, sub_9908d347[arg1].field_1792), data=mem[128 len ceil32(uint255(sub_9908d347[arg1].field_1792) * 0.5)]),
               address(sub_9908d347[arg1].field_2048)
    if bool(sub_9908d347[arg1].field_1792) == sub_9908d347[arg1].field_1793 % 128 < 32:
        revert with 0, 34
    if bool(sub_9908d347[arg1].field_1792):
        if bool(sub_9908d347[arg1].field_1792) == uint255(sub_9908d347[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, sub_9908d347[arg1].field_1792):
            if 31 >= uint255(sub_9908d347[arg1].field_1792) * 0.5:
                mem[128] = 256 * Mask(248, 0, sub_9908d347[arg1].field_1800)
            else:
                mem[128] = sub_9908d347[arg1][7].field_0
                idx = 128
                s = 0
                while (uint255(sub_9908d347[arg1].field_1792) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_9908d347[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(sub_9908d347[arg1].field_1792) == sub_9908d347[arg1].field_1793 % 128 < 32:
            revert with 0, 34
        if sub_9908d347[arg1].field_1793 % 128:
            if 31 >= sub_9908d347[arg1].field_1793 % 128:
                mem[128] = 256 * Mask(248, 0, sub_9908d347[arg1].field_1800)
            else:
                mem[128] = sub_9908d347[arg1][7].field_0
                idx = 128
                s = 0
                while sub_9908d347[arg1].field_1793 % 128 + 96 > idx:
                    mem[idx + 32] = sub_9908d347[arg1][s + 7].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return sub_9908d347[arg1].field_0, 
           sub_9908d347[arg1].field_256,
           sub_9908d347[arg1].field_512,
           sub_9908d347[arg1].field_768,
           sub_9908d347[arg1].field_1024,
           sub_9908d347[arg1].field_1280,
           sub_9908d347[arg1].field_1536,
           Array(len=sub_9908d347[arg1].field_1792 % 128, data=mem[128 len ceil32(sub_9908d347[arg1].field_1793 % 128)]),
           address(sub_9908d347[arg1].field_2048)
}

function sub_bcd079a8(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if 1 > !sub_9908d347[arg1].field_768:
        revert with 0, 17
    if sub_9908d347[arg1].field_768 + 1 > sub_9908d347[arg1].field_1024:
        revert with 0, 'sold out'
    if address(sub_9908d347[arg1].field_2048) != msg.sender:
        revert with 0, 'not buyer'
    if arg3 > 50:
        revert with 0, 'to much mints'
    idx = 0
    while idx < arg3:
        mem[mem[64] + 4] = 128
        if bool(sub_9908d347[arg1].field_1792):
            if bool(sub_9908d347[arg1].field_1792) == uint255(sub_9908d347[arg1].field_1792) * 0.5 < 32:
                revert with 0, 34
            mem[mem[64] + 132] = uint255(sub_9908d347[arg1].field_1792) * 0.5
            if not bool(sub_9908d347[arg1].field_1792):
                mem[mem[64] + 164] = Mask(248, 8, sub_9908d347[arg1].field_1792)
                mem[mem[64] + 36] = address(arg2)
                mem[mem[64] + 68] = sub_9908d347[arg1].field_512
                mem[mem[64] + 100] = sub_9908d347[arg1].field_256
                call sub_417df1f1Address.0x919b18a1 with:
                     gas gas_remaining wei
                    args Array(len=2 * Mask(256, -1, sub_9908d347[arg1].field_1792), data=Mask(248, 8, sub_9908d347[arg1].field_1792)), address(arg2), sub_9908d347[arg1].field_512, sub_9908d347[arg1].field_256
            else:
                if bool(sub_9908d347[arg1].field_1792) != 1:
                    mem[mem[64] + 36] = address(arg2)
                    mem[mem[64] + 68] = sub_9908d347[arg1].field_512
                    mem[mem[64] + 100] = sub_9908d347[arg1].field_256
                    call sub_417df1f1Address.0x919b18a1 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len -mem[64] - 4]
                else:
                    s = 0
                    t = sha3(sha3(arg1, 8) + 7)
                    while s < uint255(sub_9908d347[arg1].field_1792) * 0.5:
                        mem[s + mem[64] + 164] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[mem[64] + 36] = address(arg2)
                    mem[mem[64] + 68] = sub_9908d347[arg1].field_512
                    mem[mem[64] + 100] = sub_9908d347[arg1].field_256
                    call sub_417df1f1Address.0x919b18a1 with:
                         gas gas_remaining wei
                        args Array(len=2 * Mask(256, -1, sub_9908d347[arg1].field_1792), data=mem[mem[64] + 164 len ceil32(uint255(sub_9908d347[arg1].field_1792) * 0.5)]), address(arg2), sub_9908d347[arg1].field_512, sub_9908d347[arg1].field_256
        else:
            if bool(sub_9908d347[arg1].field_1792) == sub_9908d347[arg1].field_1793 % 128 < 32:
                revert with 0, 34
            mem[mem[64] + 132] = sub_9908d347[arg1].field_1793 % 128
            if not bool(sub_9908d347[arg1].field_1792):
                mem[mem[64] + 164] = Mask(248, 8, sub_9908d347[arg1].field_1792)
                mem[mem[64] + 36] = address(arg2)
                mem[mem[64] + 68] = sub_9908d347[arg1].field_512
                mem[mem[64] + 100] = sub_9908d347[arg1].field_256
                call sub_417df1f1Address.0x919b18a1 with:
                     gas gas_remaining wei
                    args Array(len=sub_9908d347[arg1].field_1792 % 128, data=Mask(248, 8, sub_9908d347[arg1].field_1792)), address(arg2), sub_9908d347[arg1].field_512, sub_9908d347[arg1].field_256
            else:
                if bool(sub_9908d347[arg1].field_1792) != 1:
                    mem[mem[64] + 36] = address(arg2)
                    mem[mem[64] + 68] = sub_9908d347[arg1].field_512
                    mem[mem[64] + 100] = sub_9908d347[arg1].field_256
                    call sub_417df1f1Address.0x919b18a1 with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len -mem[64] - 4]
                else:
                    s = 0
                    t = sha3(sha3(arg1, 8) + 7)
                    while s < sub_9908d347[arg1].field_1793 % 128:
                        mem[s + mem[64] + 164] = stor[t]
                        s = s + 32
                        t = t + 1
                        continue 
                    mem[mem[64] + 36] = address(arg2)
                    mem[mem[64] + 68] = sub_9908d347[arg1].field_512
                    mem[mem[64] + 100] = sub_9908d347[arg1].field_256
                    call sub_417df1f1Address.0x919b18a1 with:
                         gas gas_remaining wei
                        args Array(len=sub_9908d347[arg1].field_1792 % 128, data=mem[mem[64] + 164 len ceil32(sub_9908d347[arg1].field_1793 % 128)]), address(arg2), sub_9908d347[arg1].field_512, sub_9908d347[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 1 > !sub_9908d347[arg1].field_768:
            revert with 0, 17
        sub_9908d347[arg1].field_768++
        if 1 > !stor6[arg1].field_256:
            revert with 0, 17
        stor6[arg1].field_256++
        if 1 > !stor7[arg1].field_256:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 7
        stor7[arg1].field_256++
        mem[mem[64]] = address(arg2)
        emit 0x2f6f92b3: address(arg2)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
