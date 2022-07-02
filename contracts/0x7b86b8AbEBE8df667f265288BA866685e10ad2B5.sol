contract main {




// =====================  Runtime code  =====================


#
#  - sub_7f39c295(?)
#
address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 sub_109f2dd1;
uint256 sub_2c87a7e6;
address stor9;
address stor10;
address stor11;
mapping of struct stor12;
mapping of uint256 stor13;
mapping of struct sub_e50d64c5;
mapping of uint256 stor15;
mapping of struct sub_dd09bb5f;
mapping of uint256 stor17;
mapping of struct stor18;

function sub_109f2dd1(?) payable {
    return sub_109f2dd1
}

function sub_2c87a7e6(?) payable {
    return sub_2c87a7e6
}

function owner() payable {
    return owner
}

function sub_b2a9597e(?) payable {
    require calldata.size - 4 >= 32
    return sub_e50d64c5[arg1].field_0, 
           sub_e50d64c5[arg1].field_256,
           sub_e50d64c5[arg1].field_512,
           sub_e50d64c5[arg1].field_768,
           sub_e50d64c5[arg1].field_1024,
           bool(sub_e50d64c5[arg1].field_1184),
           bool(sub_e50d64c5[arg1].field_1192),
           sub_e50d64c5[arg1].field_1280
}

function sub_d0c354a3(?) payable {
    require calldata.size - 4 >= 32
    return sub_dd09bb5f[stor15[arg1]].field_0, 
           sub_dd09bb5f[stor15[arg1]].field_256,
           sub_dd09bb5f[stor15[arg1]].field_512,
           sub_dd09bb5f[stor15[arg1]].field_768,
           sub_dd09bb5f[stor15[arg1]].field_1024,
           sub_dd09bb5f[stor15[arg1]].field_1280,
           sub_dd09bb5f[stor15[arg1]].field_1536,
           bool(sub_dd09bb5f[stor15[arg1]].field_1792),
           bool(sub_dd09bb5f[stor15[arg1]].field_1800),
           bool(sub_dd09bb5f[stor15[arg1]].field_1808),
           sub_dd09bb5f[stor15[arg1]].field_2048
}

function sub_dd09bb5f(?) payable {
    require calldata.size - 4 >= 32
    return sub_dd09bb5f[arg1].field_0, 
           sub_dd09bb5f[arg1].field_256,
           sub_dd09bb5f[arg1].field_512,
           sub_dd09bb5f[arg1].field_768,
           sub_dd09bb5f[arg1].field_1024,
           sub_dd09bb5f[arg1].field_1280,
           sub_dd09bb5f[arg1].field_1536,
           bool(sub_dd09bb5f[arg1].field_1792),
           bool(sub_dd09bb5f[arg1].field_1800),
           bool(sub_dd09bb5f[arg1].field_1808),
           sub_dd09bb5f[arg1].field_2048
}

function sub_e50d64c5(?) payable {
    require calldata.size - 4 >= 32
    return sub_e50d64c5[stor13[arg1]].field_0, 
           sub_e50d64c5[stor13[arg1]].field_256,
           sub_e50d64c5[stor13[arg1]].field_512,
           sub_e50d64c5[stor13[arg1]].field_768,
           sub_e50d64c5[stor13[arg1]].field_1024,
           bool(sub_e50d64c5[stor13[arg1]].field_1184),
           bool(sub_e50d64c5[stor13[arg1]].field_1192),
           sub_e50d64c5[stor13[arg1]].field_1280
}

function _fallback() payable {
    revert
}

function sub_07b281ca(?) payable {
    require calldata.size - 4 >= 32
    if stor17[arg1 / 1000]:
        return stor17[arg1 / 1000]
    return stor5
}

function sub_5dbb2a56(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
}

function sub_9722cde6(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setExchangeRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = arg1
}

function sub_5788bce2(?) payable {
    require calldata.size - 4 >= 32
    if not stor15[arg1]:
        revert with 0, 'metacity: no buy order'
    if sub_dd09bb5f[stor15[arg1]].field_1024 != msg.sender:
        revert with 0, 'metacity: not buy order owner'
    stor15[arg1] = 0
    sub_dd09bb5f[stor15[arg1]].field_1800 = 1
    emit 0xbc38c816: 0, 2, 0, arg1, stor15[arg1]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function ownerWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call stor9.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_e35ecd3a(?) payable {
    require calldata.size - 4 >= 32
    staticcall stor10.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'metacity: not land owner'
    if not stor13[arg1]:
        revert with 0, 'metacity: no sell order'
    stor13[arg1] = 0
    sub_e50d64c5[stor13[arg1]].field_1192 = 1
    emit 0xa4388cec: 0, 0, arg1, stor13[arg1]
}

function createSellOrder(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    staticcall stor10.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'metacity: not land owner'
    if arg3 < block.number:
        revert with 0, 'metacity: ended block too low'
    staticcall stor10.getApproved(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'metacity: contract is not approved'
    if sub_2c87a7e6 > -2:
        revert with 0, 17
    sub_2c87a7e6++
    sub_e50d64c5[stor8].field_0 = arg1
    sub_e50d64c5[stor8].field_256 = sub_2c87a7e6
    sub_e50d64c5[stor8].field_512 = arg2
    sub_e50d64c5[stor8].field_768 = arg3
    sub_e50d64c5[stor8].field_1024 = msg.sender
    sub_e50d64c5[stor8].field_1184 = 0
    sub_e50d64c5[stor8].field_1192 = 0
    sub_e50d64c5[stor8].field_1200 = 0
    sub_e50d64c5[stor8].field_1280 = block.number
    stor13[arg1] = sub_2c87a7e6
    emit SellOrderCreated(arg2, arg3, msg.sender, arg1, sub_2c87a7e6);
}

function sub_20c6d105(?) payable {
    require calldata.size - 4 >= 128
    staticcall stor10.0x4f558e79 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'metacity: not empty land'
    if stor17[arg1 / 1000]:
        if stor17[arg1 / 1000] > arg2:
            revert with 0, 'metacity: buy price too low'
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), stor17[arg1 / 1000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10)
        call stor10.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor17[arg1 / 1000] and stor4 > -1 / stor17[arg1 / 1000]:
            revert with 0, 17
        if stor17[arg1 / 1000] > !(stor17[arg1 / 1000] * stor4 / 10000):
            revert with 0, 17
        stor17[arg1 / 1000] += stor17[arg1 / 1000] * stor4 / 10000
    else:
        if stor5 > arg2:
            revert with 0, 'metacity: buy price too low'
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), stor5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10)
        call stor10.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor5 and stor4 > -1 / stor5:
            revert with 0, 17
        if stor5 > !(stor5 * stor4 / 10000):
            revert with 0, 17
        stor17[arg1 / 1000] = stor5 + (stor5 * stor4 / 10000)
    stor12[arg1].field_0 = arg3
    stor12[arg1].field_256 = arg4
    stor12[arg1].field_512 = 0
    if stor12[arg1].field_768:
        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        stor12[arg1].field_768 = 0
        idx = 0
        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
            stor12[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
            revert with 0, 34
        stor12[arg1].field_768 = 0
        idx = 0
        while stor12[arg1].field_769 + 31 / 32 > idx:
            stor12[arg1][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    emit 0xfe2706ce: arg3, arg4, arg1, 0, msg.sender
}

function sub_bd3ec842(?) payable {
    require calldata.size - 4 >= 32
    if stor12[arg1].field_768:
        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor12[arg1].field_768:
            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor12[arg1].field_768):
                if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                    mem[384] = 256 * stor12[arg1].field_776
                else:
                    mem[384] = stor12[arg1][3].field_0
                    idx = 384
                    s = 0
                    while (uint255(stor12[arg1].field_768) * 0.5) + 352 > idx:
                        mem[idx + 32] = stor12[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                revert with 0, 34
            if stor12[arg1].field_769:
                if 31 >= stor12[arg1].field_769:
                    mem[384] = 256 * stor12[arg1].field_776
                else:
                    mem[384] = stor12[arg1][3].field_0
                    idx = 384
                    s = 0
                    while stor12[arg1].field_769 + 352 > idx:
                        mem[idx + 32] = stor12[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, stor12[arg1].field_0, 
               stor12[arg1].field_256,
               stor12[arg1].field_512,
               128,
               2 * Mask(256, -1, stor12[arg1].field_768),
               mem[384 len ceil32(uint255(stor12[arg1].field_768) * 0.5)]
    if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
        revert with 0, 34
    if stor12[arg1].field_768:
        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor12[arg1].field_768):
            if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                mem[384] = 256 * stor12[arg1].field_776
            else:
                mem[384] = stor12[arg1][3].field_0
                idx = 384
                s = 0
                while (uint255(stor12[arg1].field_768) * 0.5) + 352 > idx:
                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
            revert with 0, 34
        if stor12[arg1].field_769:
            if 31 >= stor12[arg1].field_769:
                mem[384] = 256 * stor12[arg1].field_776
            else:
                mem[384] = stor12[arg1][3].field_0
                idx = 384
                s = 0
                while stor12[arg1].field_769 + 352 > idx:
                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, stor12[arg1].field_0, 
           stor12[arg1].field_256,
           stor12[arg1].field_512,
           128,
           stor12[arg1].field_768,
           mem[384 len ceil32(stor12[arg1].field_769)]
}

function sub_d099a379(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor18[address(arg1)].field_768:
        if stor18[address(arg1)].field_768 == uint255(stor18[address(arg1)].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor18[address(arg1)].field_768:
            if stor18[address(arg1)].field_768 == uint255(stor18[address(arg1)].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor18[address(arg1)].field_768):
                if 31 >= uint255(stor18[address(arg1)].field_768) * 0.5:
                    mem[384] = 256 * stor18[address(arg1)].field_776
                else:
                    mem[384] = stor18[address(arg1)][3].field_0
                    idx = 384
                    s = 0
                    while (uint255(stor18[address(arg1)].field_768) * 0.5) + 352 > idx:
                        mem[idx + 32] = stor18[address(arg1)][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor18[address(arg1)].field_768 == stor18[address(arg1)].field_769 < 32:
                revert with 0, 34
            if stor18[address(arg1)].field_769:
                if 31 >= stor18[address(arg1)].field_769:
                    mem[384] = 256 * stor18[address(arg1)].field_776
                else:
                    mem[384] = stor18[address(arg1)][3].field_0
                    idx = 384
                    s = 0
                    while stor18[address(arg1)].field_769 + 352 > idx:
                        mem[idx + 32] = stor18[address(arg1)][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, stor18[address(arg1)].field_0, 
               stor18[address(arg1)].field_256,
               stor18[address(arg1)].field_512,
               128,
               2 * Mask(256, -1, stor18[address(arg1)].field_768),
               mem[384 len ceil32(uint255(stor18[address(arg1)].field_768) * 0.5)]
    if stor18[address(arg1)].field_768 == stor18[address(arg1)].field_769 < 32:
        revert with 0, 34
    if stor18[address(arg1)].field_768:
        if stor18[address(arg1)].field_768 == uint255(stor18[address(arg1)].field_768) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor18[address(arg1)].field_768):
            if 31 >= uint255(stor18[address(arg1)].field_768) * 0.5:
                mem[384] = 256 * stor18[address(arg1)].field_776
            else:
                mem[384] = stor18[address(arg1)][3].field_0
                idx = 384
                s = 0
                while (uint255(stor18[address(arg1)].field_768) * 0.5) + 352 > idx:
                    mem[idx + 32] = stor18[address(arg1)][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor18[address(arg1)].field_768 == stor18[address(arg1)].field_769 < 32:
            revert with 0, 34
        if stor18[address(arg1)].field_769:
            if 31 >= stor18[address(arg1)].field_769:
                mem[384] = 256 * stor18[address(arg1)].field_776
            else:
                mem[384] = stor18[address(arg1)][3].field_0
                idx = 384
                s = 0
                while stor18[address(arg1)].field_769 + 352 > idx:
                    mem[idx + 32] = stor18[address(arg1)][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, stor18[address(arg1)].field_0, 
           stor18[address(arg1)].field_256,
           stor18[address(arg1)].field_512,
           128,
           stor18[address(arg1)].field_768,
           mem[384 len ceil32(stor18[address(arg1)].field_769)]
}

function sub_c3edcdd1(?) payable {
    require calldata.size - 4 >= 32
    staticcall stor10.0x4f558e79 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if stor12[arg1].field_768:
            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if stor12[arg1].field_768:
                if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor12[arg1].field_768):
                    if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                        mem[ceil32(return_data.size) + 768] = 256 * stor12[arg1].field_776
                    else:
                        mem[ceil32(return_data.size) + 768] = stor12[arg1][3].field_0
                        idx = ceil32(return_data.size) + 768
                        s = 0
                        while ceil32(return_data.size) + (uint255(stor12[arg1].field_768) * 0.5) + 736 > idx:
                            mem[idx + 32] = stor12[arg1][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                    revert with 0, 34
                if stor12[arg1].field_769:
                    if 31 >= stor12[arg1].field_769:
                        mem[ceil32(return_data.size) + 768] = 256 * stor12[arg1].field_776
                    else:
                        mem[ceil32(return_data.size) + 768] = stor12[arg1][3].field_0
                        idx = ceil32(return_data.size) + 768
                        s = 0
                        while ceil32(return_data.size) + stor12[arg1].field_769 + 736 > idx:
                            mem[idx + 32] = stor12[arg1][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if stor17[arg1 / 1000]:
                return '', 
                       stor12[arg1].field_0,
                       stor12[arg1].field_256,
                       stor12[arg1].field_512,
                       512,
                       sub_e50d64c5[stor13[arg1]].field_256,
                       sub_e50d64c5[stor13[arg1]].field_512,
                       sub_e50d64c5[stor13[arg1]].field_768,
                       sub_e50d64c5[stor13[arg1]].field_1024,
                       sub_dd09bb5f[stor15[arg1]].field_256,
                       sub_dd09bb5f[stor15[arg1]].field_512,
                       sub_dd09bb5f[stor15[arg1]].field_768,
                       sub_dd09bb5f[stor15[arg1]].field_1024,
                       sub_dd09bb5f[stor15[arg1]].field_1280,
                       sub_dd09bb5f[stor15[arg1]].field_1536,
                       stor17[arg1 / 1000],
                       2 * Mask(256, -1, stor12[arg1].field_768),
                       mem[ceil32(return_data.size) + 768 len ceil32(uint255(stor12[arg1].field_768) * 0.5)]
            return '', 
                   stor12[arg1].field_0,
                   stor12[arg1].field_256,
                   stor12[arg1].field_512,
                   512,
                   sub_e50d64c5[stor13[arg1]].field_256,
                   sub_e50d64c5[stor13[arg1]].field_512,
                   sub_e50d64c5[stor13[arg1]].field_768,
                   sub_e50d64c5[stor13[arg1]].field_1024,
                   sub_dd09bb5f[stor15[arg1]].field_256,
                   sub_dd09bb5f[stor15[arg1]].field_512,
                   sub_dd09bb5f[stor15[arg1]].field_768,
                   sub_dd09bb5f[stor15[arg1]].field_1024,
                   sub_dd09bb5f[stor15[arg1]].field_1280,
                   sub_dd09bb5f[stor15[arg1]].field_1536,
                   stor5,
                   2 * Mask(256, -1, stor12[arg1].field_768),
                   mem[ceil32(return_data.size) + 768 len ceil32(uint255(stor12[arg1].field_768) * 0.5)]
        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
            revert with 0, 34
        if stor12[arg1].field_768:
            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor12[arg1].field_768):
                if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                    mem[ceil32(return_data.size) + 768] = 256 * stor12[arg1].field_776
                else:
                    mem[ceil32(return_data.size) + 768] = stor12[arg1][3].field_0
                    idx = ceil32(return_data.size) + 768
                    s = 0
                    while ceil32(return_data.size) + (uint255(stor12[arg1].field_768) * 0.5) + 736 > idx:
                        mem[idx + 32] = stor12[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                revert with 0, 34
            if stor12[arg1].field_769:
                if 31 >= stor12[arg1].field_769:
                    mem[ceil32(return_data.size) + 768] = 256 * stor12[arg1].field_776
                else:
                    mem[ceil32(return_data.size) + 768] = stor12[arg1][3].field_0
                    idx = ceil32(return_data.size) + 768
                    s = 0
                    while ceil32(return_data.size) + stor12[arg1].field_769 + 736 > idx:
                        mem[idx + 32] = stor12[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor17[arg1 / 1000]:
            return '', 
                   stor12[arg1].field_0,
                   stor12[arg1].field_256,
                   stor12[arg1].field_512,
                   512,
                   sub_e50d64c5[stor13[arg1]].field_256,
                   sub_e50d64c5[stor13[arg1]].field_512,
                   sub_e50d64c5[stor13[arg1]].field_768,
                   sub_e50d64c5[stor13[arg1]].field_1024,
                   sub_dd09bb5f[stor15[arg1]].field_256,
                   sub_dd09bb5f[stor15[arg1]].field_512,
                   sub_dd09bb5f[stor15[arg1]].field_768,
                   sub_dd09bb5f[stor15[arg1]].field_1024,
                   sub_dd09bb5f[stor15[arg1]].field_1280,
                   sub_dd09bb5f[stor15[arg1]].field_1536,
                   stor17[arg1 / 1000],
                   stor12[arg1].field_768,
                   mem[ceil32(return_data.size) + 768 len ceil32(stor12[arg1].field_769)]
        return '', 
               stor12[arg1].field_0,
               stor12[arg1].field_256,
               stor12[arg1].field_512,
               512,
               sub_e50d64c5[stor13[arg1]].field_256,
               sub_e50d64c5[stor13[arg1]].field_512,
               sub_e50d64c5[stor13[arg1]].field_768,
               sub_e50d64c5[stor13[arg1]].field_1024,
               sub_dd09bb5f[stor15[arg1]].field_256,
               sub_dd09bb5f[stor15[arg1]].field_512,
               sub_dd09bb5f[stor15[arg1]].field_768,
               sub_dd09bb5f[stor15[arg1]].field_1024,
               sub_dd09bb5f[stor15[arg1]].field_1280,
               sub_dd09bb5f[stor15[arg1]].field_1536,
               stor5,
               stor12[arg1].field_768,
               mem[ceil32(return_data.size) + 768 len ceil32(stor12[arg1].field_769)]
    staticcall stor10.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if stor12[arg1].field_768:
        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor12[arg1].field_768:
            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor12[arg1].field_768):
                if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                    mem[(2 * ceil32(return_data.size)) + 768] = 256 * stor12[arg1].field_776
                else:
                    mem[(2 * ceil32(return_data.size)) + 768] = stor12[arg1][3].field_0
                    idx = (2 * ceil32(return_data.size)) + 768
                    s = 0
                    while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 736 > idx:
                        mem[idx + 32] = stor12[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                revert with 0, 34
            if stor12[arg1].field_769:
                if 31 >= stor12[arg1].field_769:
                    mem[(2 * ceil32(return_data.size)) + 768] = 256 * stor12[arg1].field_776
                else:
                    mem[(2 * ceil32(return_data.size)) + 768] = stor12[arg1][3].field_0
                    idx = (2 * ceil32(return_data.size)) + 768
                    s = 0
                    while (2 * ceil32(return_data.size)) + stor12[arg1].field_769 + 736 > idx:
                        mem[idx + 32] = stor12[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor17[arg1 / 1000]:
            return 32, address(ext_call.return_data[0]), 
                   stor12[arg1].field_0,
                   stor12[arg1].field_256,
                   stor12[arg1].field_512,
                   512,
                   sub_e50d64c5[stor13[arg1]].field_256,
                   sub_e50d64c5[stor13[arg1]].field_512,
                   sub_e50d64c5[stor13[arg1]].field_768,
                   sub_e50d64c5[stor13[arg1]].field_1024,
                   sub_dd09bb5f[stor15[arg1]].field_256,
                   sub_dd09bb5f[stor15[arg1]].field_512,
                   sub_dd09bb5f[stor15[arg1]].field_768,
                   sub_dd09bb5f[stor15[arg1]].field_1024,
                   sub_dd09bb5f[stor15[arg1]].field_1280,
                   sub_dd09bb5f[stor15[arg1]].field_1536,
                   stor17[arg1 / 1000],
                   2 * Mask(256, -1, stor12[arg1].field_768),
                   mem[(2 * ceil32(return_data.size)) + 768 len ceil32(uint255(stor12[arg1].field_768) * 0.5)]
        return 32, address(ext_call.return_data[0]), 
               stor12[arg1].field_0,
               stor12[arg1].field_256,
               stor12[arg1].field_512,
               512,
               sub_e50d64c5[stor13[arg1]].field_256,
               sub_e50d64c5[stor13[arg1]].field_512,
               sub_e50d64c5[stor13[arg1]].field_768,
               sub_e50d64c5[stor13[arg1]].field_1024,
               sub_dd09bb5f[stor15[arg1]].field_256,
               sub_dd09bb5f[stor15[arg1]].field_512,
               sub_dd09bb5f[stor15[arg1]].field_768,
               sub_dd09bb5f[stor15[arg1]].field_1024,
               sub_dd09bb5f[stor15[arg1]].field_1280,
               sub_dd09bb5f[stor15[arg1]].field_1536,
               stor5,
               2 * Mask(256, -1, stor12[arg1].field_768),
               mem[(2 * ceil32(return_data.size)) + 768 len ceil32(uint255(stor12[arg1].field_768) * 0.5)]
    if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
        revert with 0, 34
    if stor12[arg1].field_768:
        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor12[arg1].field_768):
            if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                mem[(2 * ceil32(return_data.size)) + 768] = 256 * stor12[arg1].field_776
            else:
                mem[(2 * ceil32(return_data.size)) + 768] = stor12[arg1][3].field_0
                idx = (2 * ceil32(return_data.size)) + 768
                s = 0
                while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 736 > idx:
                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
            revert with 0, 34
        if stor12[arg1].field_769:
            if 31 >= stor12[arg1].field_769:
                mem[(2 * ceil32(return_data.size)) + 768] = 256 * stor12[arg1].field_776
            else:
                mem[(2 * ceil32(return_data.size)) + 768] = stor12[arg1][3].field_0
                idx = (2 * ceil32(return_data.size)) + 768
                s = 0
                while (2 * ceil32(return_data.size)) + stor12[arg1].field_769 + 736 > idx:
                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor17[arg1 / 1000]:
        return 32, address(ext_call.return_data[0]), 
               stor12[arg1].field_0,
               stor12[arg1].field_256,
               stor12[arg1].field_512,
               512,
               sub_e50d64c5[stor13[arg1]].field_256,
               sub_e50d64c5[stor13[arg1]].field_512,
               sub_e50d64c5[stor13[arg1]].field_768,
               sub_e50d64c5[stor13[arg1]].field_1024,
               sub_dd09bb5f[stor15[arg1]].field_256,
               sub_dd09bb5f[stor15[arg1]].field_512,
               sub_dd09bb5f[stor15[arg1]].field_768,
               sub_dd09bb5f[stor15[arg1]].field_1024,
               sub_dd09bb5f[stor15[arg1]].field_1280,
               sub_dd09bb5f[stor15[arg1]].field_1536,
               stor17[arg1 / 1000],
               stor12[arg1].field_768,
               mem[(2 * ceil32(return_data.size)) + 768 len ceil32(stor12[arg1].field_769)]
    return 32, address(ext_call.return_data[0]), 
           stor12[arg1].field_0,
           stor12[arg1].field_256,
           stor12[arg1].field_512,
           512,
           sub_e50d64c5[stor13[arg1]].field_256,
           sub_e50d64c5[stor13[arg1]].field_512,
           sub_e50d64c5[stor13[arg1]].field_768,
           sub_e50d64c5[stor13[arg1]].field_1024,
           sub_dd09bb5f[stor15[arg1]].field_256,
           sub_dd09bb5f[stor15[arg1]].field_512,
           sub_dd09bb5f[stor15[arg1]].field_768,
           sub_dd09bb5f[stor15[arg1]].field_1024,
           sub_dd09bb5f[stor15[arg1]].field_1280,
           sub_dd09bb5f[stor15[arg1]].field_1536,
           stor5,
           stor12[arg1].field_768,
           mem[(2 * ceil32(return_data.size)) + 768 len ceil32(stor12[arg1].field_769)]
}

function sub_2bc4350a(?) payable {
    require calldata.size - 4 >= 160
    if arg3 < block.number:
        revert with 0, 'metacity: ended block too low'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'metacity: buy price must not zero'
    staticcall stor10.0x4f558e79 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'metacity: land is not exist'
    mem[ceil32(return_data.size) + 100] = arg1
    staticcall stor10.0x6352211e with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    staticcall stor9.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'metacity: allowance too low'
    mem[(4 * ceil32(return_data.size)) + 100] = msg.sender
    staticcall stor9.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'metacity: balance too low'
    if sub_e50d64c5[stor13[arg1]].field_1024 != address(ext_call.return_data[0]):
        if sub_dd09bb5f[stor15[arg1]].field_256:
            if sub_dd09bb5f[stor15[arg1]].field_768 >= block.number:
                if sub_dd09bb5f[stor15[arg1]].field_512 >= arg2:
                    staticcall stor9.0xdd62ed3e with:
                            gas gas_remaining wei
                           args sub_dd09bb5f[stor15[arg1]].field_1024, this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= sub_dd09bb5f[stor15[arg1]].field_512:
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args sub_dd09bb5f[stor15[arg1]].field_1024
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= sub_dd09bb5f[stor15[arg1]].field_512:
                            revert with 0, 'metacity: cannot override current buy order with this conditions'
                else:
                    if block.number < sub_dd09bb5f[stor15[arg1]].field_2048:
                        revert with 0, 17
                    if block.number - sub_dd09bb5f[stor15[arg1]].field_2048 <= stor6:
                        staticcall stor9.0xdd62ed3e with:
                                gas gas_remaining wei
                               args sub_dd09bb5f[stor15[arg1]].field_1024, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= sub_dd09bb5f[stor15[arg1]].field_512:
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_dd09bb5f[stor15[arg1]].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= sub_dd09bb5f[stor15[arg1]].field_512:
                                revert with 0, 'metacity: cannot override current buy order with this conditions'
            sub_dd09bb5f[stor15[arg1]].field_1808 = 1
            emit 0xbc38c816: 0, 3, 0, arg1, sub_dd09bb5f[stor15[arg1]].field_256
        if sub_109f2dd1 > -2:
            revert with 0, 17
        sub_109f2dd1++
        stor15[arg1] = sub_109f2dd1
        sub_dd09bb5f[stor7].field_0 = arg1
        sub_dd09bb5f[stor7].field_256 = sub_109f2dd1
        sub_dd09bb5f[stor7].field_512 = arg2
        sub_dd09bb5f[stor7].field_768 = arg3
        sub_dd09bb5f[stor7].field_1024 = msg.sender
        sub_dd09bb5f[stor7].field_1280 = arg4
        sub_dd09bb5f[stor7].field_1536 = arg5
        sub_dd09bb5f[stor7].field_1792 = 0
        sub_dd09bb5f[stor7].field_1800 = 0
        sub_dd09bb5f[stor7].field_1808 = 0
        sub_dd09bb5f[stor7].field_2048 = block.number
        emit 0xc2e8f183: arg2, arg3, msg.sender, arg1, sub_109f2dd1
    else:
        if sub_e50d64c5[stor13[arg1]].field_768 <= block.number:
            if sub_dd09bb5f[stor15[arg1]].field_256:
                if sub_dd09bb5f[stor15[arg1]].field_768 >= block.number:
                    if sub_dd09bb5f[stor15[arg1]].field_512 >= arg2:
                        staticcall stor9.0xdd62ed3e with:
                                gas gas_remaining wei
                               args sub_dd09bb5f[stor15[arg1]].field_1024, this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= sub_dd09bb5f[stor15[arg1]].field_512:
                            staticcall stor9.0x70a08231 with:
                                    gas gas_remaining wei
                                   args sub_dd09bb5f[stor15[arg1]].field_1024
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= sub_dd09bb5f[stor15[arg1]].field_512:
                                revert with 0, 'metacity: cannot override current buy order with this conditions'
                    else:
                        if block.number < sub_dd09bb5f[stor15[arg1]].field_2048:
                            revert with 0, 17
                        if block.number - sub_dd09bb5f[stor15[arg1]].field_2048 <= stor6:
                            staticcall stor9.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args sub_dd09bb5f[stor15[arg1]].field_1024, this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= sub_dd09bb5f[stor15[arg1]].field_512:
                                staticcall stor9.0x70a08231 with:
                                        gas gas_remaining wei
                                       args sub_dd09bb5f[stor15[arg1]].field_1024
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= sub_dd09bb5f[stor15[arg1]].field_512:
                                    revert with 0, 'metacity: cannot override current buy order with this conditions'
                sub_dd09bb5f[stor15[arg1]].field_1808 = 1
                emit 0xbc38c816: 0, 3, 0, arg1, sub_dd09bb5f[stor15[arg1]].field_256
            if sub_109f2dd1 > -2:
                revert with 0, 17
            sub_109f2dd1++
            stor15[arg1] = sub_109f2dd1
            sub_dd09bb5f[stor7].field_0 = arg1
            sub_dd09bb5f[stor7].field_256 = sub_109f2dd1
            sub_dd09bb5f[stor7].field_512 = arg2
            sub_dd09bb5f[stor7].field_768 = arg3
            sub_dd09bb5f[stor7].field_1024 = msg.sender
            sub_dd09bb5f[stor7].field_1280 = arg4
            sub_dd09bb5f[stor7].field_1536 = arg5
            sub_dd09bb5f[stor7].field_1792 = 0
            sub_dd09bb5f[stor7].field_1800 = 0
            sub_dd09bb5f[stor7].field_1808 = 0
            sub_dd09bb5f[stor7].field_2048 = block.number
            emit 0xc2e8f183: arg2, arg3, msg.sender, arg1, sub_109f2dd1
        else:
            if arg2 < sub_e50d64c5[stor13[arg1]].field_512:
                revert with 0, 'metacity: buy price too low'
            if arg2 and stor1 > -1 / arg2:
                revert with 0, 17
            if not arg2 * stor1 / 10000:
                if arg2 < arg2 * stor1 / 10000:
                    revert with 0, 17
                call stor9.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), arg2 - (arg2 * stor1 / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor12[arg1].field_768:
                    if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                        revert with 0, 34
                    if stor12[arg1].field_768:
                        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor12[arg1].field_768):
                            if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                                mem[(7 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                            else:
                                mem[(7 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                                idx = (7 * ceil32(return_data.size)) + 256
                                s = 0
                                while (7 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 224 > idx:
                                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                            revert with 0, 34
                        if stor12[arg1].field_769:
                            if 31 >= stor12[arg1].field_769:
                                mem[(7 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                            else:
                                mem[(7 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                                idx = (7 * ceil32(return_data.size)) + 256
                                s = 0
                                while (7 * ceil32(return_data.size)) + stor12[arg1].field_769 + 224 > idx:
                                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    stor12[arg1].field_0 = arg4
                    stor12[arg1].field_256 = arg5
                    if stor12[arg1].field_768:
                        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if stor12[arg1].field_769:
                            stor12[arg1][3][].field_0 = Array(len=stor12[arg1].field_769, data=mem[(7 * ceil32(return_data.size)) + 256 len stor12[arg1].field_769])
                        else:
                            stor12[arg1].field_768 = 0
                            idx = 0
                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                stor12[arg1][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                            revert with 0, 34
                        if stor12[arg1].field_769:
                            stor12[arg1][3][].field_0 = Array(len=stor12[arg1].field_769, data=mem[(7 * ceil32(return_data.size)) + 256 len stor12[arg1].field_769])
                        else:
                            stor12[arg1].field_768 = 0
                            idx = 0
                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                stor12[arg1][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                        revert with 0, 34
                    if stor12[arg1].field_768:
                        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor12[arg1].field_768):
                            mem[(7 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = arg4
                            stor12[arg1].field_0 = arg4
                            stor12[arg1].field_256 = arg5
                            if stor12[arg1].field_768:
                                if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = 0
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                        if not Mask(256, -1, stor12[arg1].field_768):
                                            idx = 0
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (7 * ceil32(return_data.size)) + 256
                                            while (7 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                stor12[arg1][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor12[arg1].field_768 = 0
                                        stor12[arg1].field_769 = stor12[arg1].field_769
                                        stor12[arg1].field_776 = mem[(7 * ceil32(return_data.size)) + 256 len 31]
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                    revert with 0, 34
                                if not uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = 0
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                        if not Mask(256, -1, stor12[arg1].field_768):
                                            idx = 0
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (7 * ceil32(return_data.size)) + 256
                                            while (7 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                stor12[arg1][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor12[arg1].field_768 = 0
                                        stor12[arg1].field_769 = stor12[arg1].field_769
                                        stor12[arg1].field_776 = mem[(7 * ceil32(return_data.size)) + 256 len 31]
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                                mem[(7 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                                mem[(7 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = arg4
                                stor12[arg1].field_0 = arg4
                                stor12[arg1].field_256 = arg5
                                if stor12[arg1].field_768:
                                    if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (7 * ceil32(return_data.size)) + 256
                                                while (7 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = stor12[arg1].field_776
                                            idx = 0
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (7 * ceil32(return_data.size)) + 256
                                                while (7 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = stor12[arg1].field_776
                                            idx = 0
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                mem[(7 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                                idx = (7 * ceil32(return_data.size)) + 256
                                s = 0
                                while (7 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 224 > idx:
                                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = arg4
                                stor12[arg1].field_0 = arg4
                                stor12[arg1].field_256 = arg5
                                if stor12[arg1].field_768:
                                    if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (7 * ceil32(return_data.size)) + 256
                                                while (7 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = mem[(7 * ceil32(return_data.size)) + 256 len 31]
                                            idx = 0
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (7 * ceil32(return_data.size)) + 256
                                                while (7 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = mem[(7 * ceil32(return_data.size)) + 256 len 31]
                                            idx = 0
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                    else:
                        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                            revert with 0, 34
                        if not stor12[arg1].field_769:
                            mem[(7 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = arg4
                            stor12[arg1].field_0 = arg4
                            stor12[arg1].field_256 = arg5
                            if stor12[arg1].field_768:
                                if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = 0
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                        if not Mask(256, -1, stor12[arg1].field_768):
                                            idx = 0
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (7 * ceil32(return_data.size)) + 256
                                            while (7 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                stor12[arg1][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor12[arg1].field_768 = 0
                                        stor12[arg1].field_769 = stor12[arg1].field_769
                                        stor12[arg1].field_776 = mem[(7 * ceil32(return_data.size)) + 256 len 31]
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                    revert with 0, 34
                                if not uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = 0
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                        if not Mask(256, -1, stor12[arg1].field_768):
                                            idx = 0
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (7 * ceil32(return_data.size)) + 256
                                            while (7 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                stor12[arg1][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor12[arg1].field_768 = 0
                                        stor12[arg1].field_769 = stor12[arg1].field_769
                                        stor12[arg1].field_776 = mem[(7 * ceil32(return_data.size)) + 256 len 31]
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            if 31 >= stor12[arg1].field_769:
                                mem[(7 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                                mem[(7 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = arg4
                                stor12[arg1].field_0 = arg4
                                stor12[arg1].field_256 = arg5
                                if stor12[arg1].field_768:
                                    if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (7 * ceil32(return_data.size)) + 256
                                                while (7 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = stor12[arg1].field_776
                                            idx = 0
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (7 * ceil32(return_data.size)) + 256
                                                while (7 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = stor12[arg1].field_776
                                            idx = 0
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                mem[(7 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                                idx = (7 * ceil32(return_data.size)) + 256
                                s = 0
                                while (7 * ceil32(return_data.size)) + stor12[arg1].field_769 + 224 > idx:
                                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(7 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = arg4
                                stor12[arg1].field_0 = arg4
                                stor12[arg1].field_256 = arg5
                                if stor12[arg1].field_768:
                                    if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (7 * ceil32(return_data.size)) + 256
                                                while (7 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = mem[(7 * ceil32(return_data.size)) + 256 len 31]
                                            idx = 0
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (7 * ceil32(return_data.size)) + 256
                                                while (7 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = mem[(7 * ceil32(return_data.size)) + 256 len 31]
                                            idx = 0
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
            else:
                mem[(6 * ceil32(return_data.size)) + 100] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 132] = this.address
                mem[(6 * ceil32(return_data.size)) + 164] = arg2 * stor1 / 10000
                call stor9.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2 * stor1 / 10000
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if arg2 < arg2 * stor1 / 10000:
                    revert with 0, 17
                mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
                mem[(7 * ceil32(return_data.size)) + 164] = arg2 - (arg2 * stor1 / 10000)
                call stor9.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(ext_call.return_data[0]), arg2 - (arg2 * stor1 / 10000)
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor10)
                call stor10.0x23b872dd with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not stor12[arg1].field_768:
                    if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                        revert with 0, 34
                    if stor12[arg1].field_768:
                        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor12[arg1].field_768):
                            if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                                mem[(8 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                            else:
                                mem[(8 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                                idx = (8 * ceil32(return_data.size)) + 256
                                s = 0
                                while (8 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 224 > idx:
                                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    else:
                        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                            revert with 0, 34
                        if stor12[arg1].field_769:
                            if 31 >= stor12[arg1].field_769:
                                mem[(8 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                            else:
                                mem[(8 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                                idx = (8 * ceil32(return_data.size)) + 256
                                s = 0
                                while (8 * ceil32(return_data.size)) + stor12[arg1].field_769 + 224 > idx:
                                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                    stor12[arg1].field_0 = arg4
                    stor12[arg1].field_256 = arg5
                    if stor12[arg1].field_768:
                        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if stor12[arg1].field_769:
                            stor12[arg1][3][].field_0 = Array(len=stor12[arg1].field_769, data=mem[(8 * ceil32(return_data.size)) + 256 len stor12[arg1].field_769])
                        else:
                            stor12[arg1].field_768 = 0
                            idx = 0
                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                stor12[arg1][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                    else:
                        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                            revert with 0, 34
                        if stor12[arg1].field_769:
                            stor12[arg1][3][].field_0 = Array(len=stor12[arg1].field_769, data=mem[(8 * ceil32(return_data.size)) + 256 len stor12[arg1].field_769])
                        else:
                            stor12[arg1].field_768 = 0
                            idx = 0
                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                stor12[arg1][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                else:
                    if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                        revert with 0, 34
                    if stor12[arg1].field_768:
                        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor12[arg1].field_768):
                            mem[(8 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = arg4
                            stor12[arg1].field_0 = arg4
                            stor12[arg1].field_256 = arg5
                            if stor12[arg1].field_768:
                                if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = 0
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                        if not Mask(256, -1, stor12[arg1].field_768):
                                            idx = 0
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (8 * ceil32(return_data.size)) + 256
                                            while (8 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                stor12[arg1][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor12[arg1].field_768 = 0
                                        stor12[arg1].field_769 = stor12[arg1].field_769
                                        stor12[arg1].field_776 = mem[(8 * ceil32(return_data.size)) + 256 len 31]
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                    revert with 0, 34
                                if not uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = 0
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                        if not Mask(256, -1, stor12[arg1].field_768):
                                            idx = 0
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (8 * ceil32(return_data.size)) + 256
                                            while (8 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                stor12[arg1][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor12[arg1].field_768 = 0
                                        stor12[arg1].field_769 = stor12[arg1].field_769
                                        stor12[arg1].field_776 = mem[(8 * ceil32(return_data.size)) + 256 len 31]
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                                mem[(8 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                                mem[(8 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = arg4
                                stor12[arg1].field_0 = arg4
                                stor12[arg1].field_256 = arg5
                                if stor12[arg1].field_768:
                                    if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (8 * ceil32(return_data.size)) + 256
                                                while (8 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = stor12[arg1].field_776
                                            idx = 0
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (8 * ceil32(return_data.size)) + 256
                                                while (8 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = stor12[arg1].field_776
                                            idx = 0
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                mem[(8 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                                idx = (8 * ceil32(return_data.size)) + 256
                                s = 0
                                while (8 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 224 > idx:
                                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = arg4
                                stor12[arg1].field_0 = arg4
                                stor12[arg1].field_256 = arg5
                                if stor12[arg1].field_768:
                                    if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (8 * ceil32(return_data.size)) + 256
                                                while (8 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = mem[(8 * ceil32(return_data.size)) + 256 len 31]
                                            idx = 0
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (8 * ceil32(return_data.size)) + 256
                                                while (8 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = mem[(8 * ceil32(return_data.size)) + 256 len 31]
                                            idx = 0
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                    else:
                        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                            revert with 0, 34
                        if not stor12[arg1].field_769:
                            mem[(8 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = arg4
                            stor12[arg1].field_0 = arg4
                            stor12[arg1].field_256 = arg5
                            if stor12[arg1].field_768:
                                if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = 0
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                        if not Mask(256, -1, stor12[arg1].field_768):
                                            idx = 0
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (8 * ceil32(return_data.size)) + 256
                                            while (8 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                stor12[arg1][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor12[arg1].field_768 = 0
                                        stor12[arg1].field_769 = stor12[arg1].field_769
                                        stor12[arg1].field_776 = mem[(8 * ceil32(return_data.size)) + 256 len 31]
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                    revert with 0, 34
                                if not uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = 0
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                        if not Mask(256, -1, stor12[arg1].field_768):
                                            idx = 0
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (8 * ceil32(return_data.size)) + 256
                                            while (8 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                stor12[arg1][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor12[arg1].field_768 = 0
                                        stor12[arg1].field_769 = stor12[arg1].field_769
                                        stor12[arg1].field_776 = mem[(8 * ceil32(return_data.size)) + 256 len 31]
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            if 31 >= stor12[arg1].field_769:
                                mem[(8 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                                mem[(8 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = arg4
                                stor12[arg1].field_0 = arg4
                                stor12[arg1].field_256 = arg5
                                if stor12[arg1].field_768:
                                    if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (8 * ceil32(return_data.size)) + 256
                                                while (8 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = stor12[arg1].field_776
                                            idx = 0
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (8 * ceil32(return_data.size)) + 256
                                                while (8 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = stor12[arg1].field_776
                                            idx = 0
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                            else:
                                mem[(8 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                                idx = (8 * ceil32(return_data.size)) + 256
                                s = 0
                                while (8 * ceil32(return_data.size)) + stor12[arg1].field_769 + 224 > idx:
                                    mem[idx + 32] = stor12[arg1][s + 3].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[(8 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = arg4
                                stor12[arg1].field_0 = arg4
                                stor12[arg1].field_256 = arg5
                                if stor12[arg1].field_768:
                                    if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (8 * ceil32(return_data.size)) + 256
                                                while (8 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = mem[(8 * ceil32(return_data.size)) + 256 len 31]
                                            idx = 0
                                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                else:
                                    if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                        revert with 0, 34
                                    if not uint255(stor12[arg1].field_768) * 0.5:
                                        stor12[arg1].field_768 = 0
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                            stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                            if not Mask(256, -1, stor12[arg1].field_768):
                                                idx = 0
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            else:
                                                s = 0
                                                idx = (8 * ceil32(return_data.size)) + 256
                                                while (8 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                                    stor12[arg1][s + 3].field_0 = mem[idx]
                                                    s = s + 1
                                                    idx = idx + 32
                                                    continue 
                                                idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                                    stor12[arg1][idx + 3].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                        else:
                                            stor12[arg1].field_768 = 0
                                            stor12[arg1].field_769 = stor12[arg1].field_769
                                            stor12[arg1].field_776 = mem[(8 * ceil32(return_data.size)) + 256 len 31]
                                            idx = 0
                                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                                stor12[arg1][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
            stor13[arg1] = 0
            sub_e50d64c5[stor13[arg1]].field_1184 = 1
            stor15[arg1] = 0
            emit 0xa4388cec: arg2, msg.sender, arg1, sub_e50d64c5[stor13[arg1]].field_256
            emit 0xfe2706ce: arg4, arg5, arg1, address(ext_call.return_data[0]), msg.sender
}

function sub_81e6cde5(?) payable {
    require calldata.size - 4 >= 96
    staticcall stor10.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'metacity: not land owner'
    if arg2 != sub_dd09bb5f[stor15[arg1]].field_256:
        revert with 0, 'metacity: the autonumber does not point to current buy order'
    if sub_dd09bb5f[stor15[arg1]].field_768 <= block.number:
        revert with 0, 'metacity: order expired'
    if sub_dd09bb5f[stor15[arg1]].field_512 < arg3:
        revert with 0, 'metacity: sell price too high'
    if sub_dd09bb5f[stor15[arg1]].field_512 and stor1 > -1 / sub_dd09bb5f[stor15[arg1]].field_512:
        revert with 0, 17
    if not sub_dd09bb5f[stor15[arg1]].field_512 * stor1 / 10000:
        if sub_dd09bb5f[stor15[arg1]].field_512 < sub_dd09bb5f[stor15[arg1]].field_512 * stor1 / 10000:
            revert with 0, 17
        mem[ceil32(return_data.size) + 100] = sub_dd09bb5f[stor15[arg1]].field_1024
        mem[ceil32(return_data.size) + 132] = address(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 164] = sub_dd09bb5f[stor15[arg1]].field_512 - (sub_dd09bb5f[stor15[arg1]].field_512 * stor1 / 10000)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args sub_dd09bb5f[stor15[arg1]].field_1024, address(ext_call.return_data[0]), sub_dd09bb5f[stor15[arg1]].field_512 - (sub_dd09bb5f[stor15[arg1]].field_512 * stor1 / 10000)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10)
        call stor10.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), sub_dd09bb5f[stor15[arg1]].field_1024, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor12[arg1].field_768:
            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                revert with 0, 34
            if stor12[arg1].field_768:
                if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor12[arg1].field_768):
                    if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                        mem[(2 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                    else:
                        mem[(2 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                        idx = (2 * ceil32(return_data.size)) + 256
                        s = 0
                        while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 224 > idx:
                            mem[idx + 32] = stor12[arg1][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                    revert with 0, 34
                if stor12[arg1].field_769:
                    if 31 >= stor12[arg1].field_769:
                        mem[(2 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                    else:
                        mem[(2 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                        idx = (2 * ceil32(return_data.size)) + 256
                        s = 0
                        while (2 * ceil32(return_data.size)) + stor12[arg1].field_769 + 224 > idx:
                            mem[idx + 32] = stor12[arg1][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            stor12[arg1].field_0 = sub_dd09bb5f[stor15[arg1]].field_1280
            stor12[arg1].field_256 = sub_dd09bb5f[stor15[arg1]].field_1536
            if stor12[arg1].field_768:
                if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                    revert with 0, 34
                if stor12[arg1].field_769:
                    stor12[arg1][3][].field_0 = Array(len=stor12[arg1].field_769, data=mem[(2 * ceil32(return_data.size)) + 256 len stor12[arg1].field_769])
                else:
                    stor12[arg1].field_768 = 0
                    idx = 0
                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                        stor12[arg1][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                    revert with 0, 34
                if stor12[arg1].field_769:
                    stor12[arg1][3][].field_0 = Array(len=stor12[arg1].field_769, data=mem[(2 * ceil32(return_data.size)) + 256 len stor12[arg1].field_769])
                else:
                    stor12[arg1].field_768 = 0
                    idx = 0
                    while stor12[arg1].field_769 + 31 / 32 > idx:
                        stor12[arg1][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
            if sub_e50d64c5[stor13[arg1]].field_256:
                sub_e50d64c5[stor13[arg1]].field_1192 = 1
                emit 0xa4388cec: 0, 0, arg1, arg2
        else:
            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if stor12[arg1].field_768:
                if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor12[arg1].field_768):
                    mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = sub_dd09bb5f[stor15[arg1]].field_1280
                    stor12[arg1].field_0 = sub_dd09bb5f[stor15[arg1]].field_1280
                    stor12[arg1].field_256 = sub_dd09bb5f[stor15[arg1]].field_1536
                    if stor12[arg1].field_768:
                        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(stor12[arg1].field_768) * 0.5:
                            stor12[arg1].field_768 = 0
                            idx = 0
                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                stor12[arg1][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            if sub_e50d64c5[stor13[arg1]].field_256:
                                sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                if not Mask(256, -1, stor12[arg1].field_768):
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = (2 * ceil32(return_data.size)) + 256
                                    while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                        stor12[arg1][s + 3].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                stor12[arg1].field_768 = 0
                                stor12[arg1].field_769 = stor12[arg1].field_769
                                stor12[arg1].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                idx = 0
                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                    else:
                        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                            revert with 0, 34
                        if not uint255(stor12[arg1].field_768) * 0.5:
                            stor12[arg1].field_768 = 0
                            idx = 0
                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                stor12[arg1][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            if sub_e50d64c5[stor13[arg1]].field_256:
                                sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                if not Mask(256, -1, stor12[arg1].field_768):
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = (2 * ceil32(return_data.size)) + 256
                                    while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                        stor12[arg1][s + 3].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                stor12[arg1].field_768 = 0
                                stor12[arg1].field_769 = stor12[arg1].field_769
                                stor12[arg1].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                idx = 0
                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                else:
                    if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                        mem[(2 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                        mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_0 = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_256 = sub_dd09bb5f[stor15[arg1]].field_1536
                        if stor12[arg1].field_768:
                            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (2 * ceil32(return_data.size)) + 256
                                        while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = stor12[arg1].field_776
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (2 * ceil32(return_data.size)) + 256
                                        while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = stor12[arg1].field_776
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                    else:
                        mem[(2 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                        idx = (2 * ceil32(return_data.size)) + 256
                        s = 0
                        while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 224 > idx:
                            mem[idx + 32] = stor12[arg1][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_0 = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_256 = sub_dd09bb5f[stor15[arg1]].field_1536
                        if stor12[arg1].field_768:
                            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (2 * ceil32(return_data.size)) + 256
                                        while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (2 * ceil32(return_data.size)) + 256
                                        while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
            else:
                if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                    revert with 0, 34
                if not stor12[arg1].field_769:
                    mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = sub_dd09bb5f[stor15[arg1]].field_1280
                    stor12[arg1].field_0 = sub_dd09bb5f[stor15[arg1]].field_1280
                    stor12[arg1].field_256 = sub_dd09bb5f[stor15[arg1]].field_1536
                    if stor12[arg1].field_768:
                        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(stor12[arg1].field_768) * 0.5:
                            stor12[arg1].field_768 = 0
                            idx = 0
                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                stor12[arg1][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            if sub_e50d64c5[stor13[arg1]].field_256:
                                sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                if not Mask(256, -1, stor12[arg1].field_768):
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = (2 * ceil32(return_data.size)) + 256
                                    while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                        stor12[arg1][s + 3].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                stor12[arg1].field_768 = 0
                                stor12[arg1].field_769 = stor12[arg1].field_769
                                stor12[arg1].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                idx = 0
                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                    else:
                        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                            revert with 0, 34
                        if not uint255(stor12[arg1].field_768) * 0.5:
                            stor12[arg1].field_768 = 0
                            idx = 0
                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                stor12[arg1][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            if sub_e50d64c5[stor13[arg1]].field_256:
                                sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                if not Mask(256, -1, stor12[arg1].field_768):
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = (2 * ceil32(return_data.size)) + 256
                                    while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                        stor12[arg1][s + 3].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                stor12[arg1].field_768 = 0
                                stor12[arg1].field_769 = stor12[arg1].field_769
                                stor12[arg1].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                idx = 0
                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                else:
                    if 31 >= stor12[arg1].field_769:
                        mem[(2 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                        mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_0 = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_256 = sub_dd09bb5f[stor15[arg1]].field_1536
                        if stor12[arg1].field_768:
                            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (2 * ceil32(return_data.size)) + 256
                                        while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = stor12[arg1].field_776
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (2 * ceil32(return_data.size)) + 256
                                        while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = stor12[arg1].field_776
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                    else:
                        mem[(2 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                        idx = (2 * ceil32(return_data.size)) + 256
                        s = 0
                        while (2 * ceil32(return_data.size)) + stor12[arg1].field_769 + 224 > idx:
                            mem[idx + 32] = stor12[arg1][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_0 = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_256 = sub_dd09bb5f[stor15[arg1]].field_1536
                        if stor12[arg1].field_768:
                            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (2 * ceil32(return_data.size)) + 256
                                        while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (2 * ceil32(return_data.size)) + 256
                                        while (2 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
    else:
        mem[ceil32(return_data.size) + 100] = sub_dd09bb5f[stor15[arg1]].field_1024
        mem[ceil32(return_data.size) + 132] = this.address
        mem[ceil32(return_data.size) + 164] = sub_dd09bb5f[stor15[arg1]].field_512 * stor1 / 10000
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args sub_dd09bb5f[stor15[arg1]].field_1024, address(this.address), sub_dd09bb5f[stor15[arg1]].field_512 * stor1 / 10000
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_dd09bb5f[stor15[arg1]].field_512 < sub_dd09bb5f[stor15[arg1]].field_512 * stor1 / 10000:
            revert with 0, 17
        mem[(2 * ceil32(return_data.size)) + 100] = sub_dd09bb5f[stor15[arg1]].field_1024
        mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 164] = sub_dd09bb5f[stor15[arg1]].field_512 - (sub_dd09bb5f[stor15[arg1]].field_512 * stor1 / 10000)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args sub_dd09bb5f[stor15[arg1]].field_1024, address(ext_call.return_data[0]), sub_dd09bb5f[stor15[arg1]].field_512 - (sub_dd09bb5f[stor15[arg1]].field_512 * stor1 / 10000)
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor10)
        call stor10.0x23b872dd with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), sub_dd09bb5f[stor15[arg1]].field_1024, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not stor12[arg1].field_768:
            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                revert with 0, 34
            if stor12[arg1].field_768:
                if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor12[arg1].field_768):
                    if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                        mem[(4 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                    else:
                        mem[(4 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                        idx = (4 * ceil32(return_data.size)) + 256
                        s = 0
                        while (4 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 224 > idx:
                            mem[idx + 32] = stor12[arg1][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                    revert with 0, 34
                if stor12[arg1].field_769:
                    if 31 >= stor12[arg1].field_769:
                        mem[(4 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                    else:
                        mem[(4 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                        idx = (4 * ceil32(return_data.size)) + 256
                        s = 0
                        while (4 * ceil32(return_data.size)) + stor12[arg1].field_769 + 224 > idx:
                            mem[idx + 32] = stor12[arg1][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            stor12[arg1].field_0 = sub_dd09bb5f[stor15[arg1]].field_1280
            stor12[arg1].field_256 = sub_dd09bb5f[stor15[arg1]].field_1536
            if stor12[arg1].field_768:
                if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                    revert with 0, 34
                if stor12[arg1].field_769:
                    stor12[arg1][3][].field_0 = Array(len=stor12[arg1].field_769, data=mem[(4 * ceil32(return_data.size)) + 256 len stor12[arg1].field_769])
                else:
                    stor12[arg1].field_768 = 0
                    idx = 0
                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                        stor12[arg1][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                    revert with 0, 34
                if stor12[arg1].field_769:
                    stor12[arg1][3][].field_0 = Array(len=stor12[arg1].field_769, data=mem[(4 * ceil32(return_data.size)) + 256 len stor12[arg1].field_769])
                else:
                    stor12[arg1].field_768 = 0
                    idx = 0
                    while stor12[arg1].field_769 + 31 / 32 > idx:
                        stor12[arg1][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
            if sub_e50d64c5[stor13[arg1]].field_256:
                sub_e50d64c5[stor13[arg1]].field_1192 = 1
                emit 0xa4388cec: 0, 0, arg1, arg2
        else:
            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if stor12[arg1].field_768:
                if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor12[arg1].field_768):
                    mem[(4 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = sub_dd09bb5f[stor15[arg1]].field_1280
                    stor12[arg1].field_0 = sub_dd09bb5f[stor15[arg1]].field_1280
                    stor12[arg1].field_256 = sub_dd09bb5f[stor15[arg1]].field_1536
                    if stor12[arg1].field_768:
                        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(stor12[arg1].field_768) * 0.5:
                            stor12[arg1].field_768 = 0
                            idx = 0
                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                stor12[arg1][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            if sub_e50d64c5[stor13[arg1]].field_256:
                                sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                if not Mask(256, -1, stor12[arg1].field_768):
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = (4 * ceil32(return_data.size)) + 256
                                    while (4 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                        stor12[arg1][s + 3].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                stor12[arg1].field_768 = 0
                                stor12[arg1].field_769 = stor12[arg1].field_769
                                stor12[arg1].field_776 = mem[(4 * ceil32(return_data.size)) + 256 len 31]
                                idx = 0
                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                    else:
                        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                            revert with 0, 34
                        if not uint255(stor12[arg1].field_768) * 0.5:
                            stor12[arg1].field_768 = 0
                            idx = 0
                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                stor12[arg1][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            if sub_e50d64c5[stor13[arg1]].field_256:
                                sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                if not Mask(256, -1, stor12[arg1].field_768):
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = (4 * ceil32(return_data.size)) + 256
                                    while (4 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                        stor12[arg1][s + 3].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                stor12[arg1].field_768 = 0
                                stor12[arg1].field_769 = stor12[arg1].field_769
                                stor12[arg1].field_776 = mem[(4 * ceil32(return_data.size)) + 256 len 31]
                                idx = 0
                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                else:
                    if 31 >= uint255(stor12[arg1].field_768) * 0.5:
                        mem[(4 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                        mem[(4 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_0 = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_256 = sub_dd09bb5f[stor15[arg1]].field_1536
                        if stor12[arg1].field_768:
                            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 256
                                        while (4 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = stor12[arg1].field_776
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 256
                                        while (4 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = stor12[arg1].field_776
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                    else:
                        mem[(4 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                        idx = (4 * ceil32(return_data.size)) + 256
                        s = 0
                        while (4 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 224 > idx:
                            mem[idx + 32] = stor12[arg1][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(4 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_0 = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_256 = sub_dd09bb5f[stor15[arg1]].field_1536
                        if stor12[arg1].field_768:
                            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 256
                                        while (4 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = mem[(4 * ceil32(return_data.size)) + 256 len 31]
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 256
                                        while (4 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = mem[(4 * ceil32(return_data.size)) + 256 len 31]
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
            else:
                if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                    revert with 0, 34
                if not stor12[arg1].field_769:
                    mem[(4 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = sub_dd09bb5f[stor15[arg1]].field_1280
                    stor12[arg1].field_0 = sub_dd09bb5f[stor15[arg1]].field_1280
                    stor12[arg1].field_256 = sub_dd09bb5f[stor15[arg1]].field_1536
                    if stor12[arg1].field_768:
                        if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                            revert with 0, 34
                        if not uint255(stor12[arg1].field_768) * 0.5:
                            stor12[arg1].field_768 = 0
                            idx = 0
                            while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                stor12[arg1][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            if sub_e50d64c5[stor13[arg1]].field_256:
                                sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                if not Mask(256, -1, stor12[arg1].field_768):
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = (4 * ceil32(return_data.size)) + 256
                                    while (4 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                        stor12[arg1][s + 3].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                stor12[arg1].field_768 = 0
                                stor12[arg1].field_769 = stor12[arg1].field_769
                                stor12[arg1].field_776 = mem[(4 * ceil32(return_data.size)) + 256 len 31]
                                idx = 0
                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                    else:
                        if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                            revert with 0, 34
                        if not uint255(stor12[arg1].field_768) * 0.5:
                            stor12[arg1].field_768 = 0
                            idx = 0
                            while stor12[arg1].field_769 + 31 / 32 > idx:
                                stor12[arg1][idx + 3].field_0 = 0
                                idx = idx + 1
                                continue 
                            if sub_e50d64c5[stor13[arg1]].field_256:
                                sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                if not Mask(256, -1, stor12[arg1].field_768):
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    s = 0
                                    idx = (4 * ceil32(return_data.size)) + 256
                                    while (4 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                        stor12[arg1][s + 3].field_0 = mem[idx]
                                        s = s + 1
                                        idx = idx + 32
                                        continue 
                                    idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                stor12[arg1].field_768 = 0
                                stor12[arg1].field_769 = stor12[arg1].field_769
                                stor12[arg1].field_776 = mem[(4 * ceil32(return_data.size)) + 256 len 31]
                                idx = 0
                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                else:
                    if 31 >= stor12[arg1].field_769:
                        mem[(4 * ceil32(return_data.size)) + 256] = 256 * stor12[arg1].field_776
                        mem[(4 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_0 = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_256 = sub_dd09bb5f[stor15[arg1]].field_1536
                        if stor12[arg1].field_768:
                            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 256
                                        while (4 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = stor12[arg1].field_776
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 256
                                        while (4 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = stor12[arg1].field_776
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                    else:
                        mem[(4 * ceil32(return_data.size)) + 256] = stor12[arg1][3].field_0
                        idx = (4 * ceil32(return_data.size)) + 256
                        s = 0
                        while (4 * ceil32(return_data.size)) + stor12[arg1].field_769 + 224 > idx:
                            mem[idx + 32] = stor12[arg1][s + 3].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(4 * ceil32(return_data.size)) + ceil32(uint255(stor12[arg1].field_768) * 0.5) + 256] = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_0 = sub_dd09bb5f[stor15[arg1]].field_1280
                        stor12[arg1].field_256 = sub_dd09bb5f[stor15[arg1]].field_1536
                        if stor12[arg1].field_768:
                            if stor12[arg1].field_768 == uint255(stor12[arg1].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 256
                                        while (4 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = mem[(4 * ceil32(return_data.size)) + 256 len 31]
                                    idx = 0
                                    while (uint255(stor12[arg1].field_768) * 0.5) + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                        else:
                            if stor12[arg1].field_768 == stor12[arg1].field_769 < 32:
                                revert with 0, 34
                            if not uint255(stor12[arg1].field_768) * 0.5:
                                stor12[arg1].field_768 = 0
                                idx = 0
                                while stor12[arg1].field_769 + 31 / 32 > idx:
                                    stor12[arg1][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                                if sub_e50d64c5[stor13[arg1]].field_256:
                                    sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                    emit 0xa4388cec: 0, 0, arg1, arg2
                            else:
                                if 31 < uint255(stor12[arg1].field_768) * 0.5:
                                    stor12[arg1].field_768 = Mask(254, 1, stor12[arg1].field_768) + 1
                                    if not Mask(256, -1, stor12[arg1].field_768):
                                        idx = 0
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (4 * ceil32(return_data.size)) + 256
                                        while (4 * ceil32(return_data.size)) + (uint255(stor12[arg1].field_768) * 0.5) + 256 > idx:
                                            stor12[arg1][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor12[arg1].field_768) * 0.5) + 31) >> 5
                                        while stor12[arg1].field_769 + 31 / 32 > idx:
                                            stor12[arg1][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
                                else:
                                    stor12[arg1].field_768 = 0
                                    stor12[arg1].field_769 = stor12[arg1].field_769
                                    stor12[arg1].field_776 = mem[(4 * ceil32(return_data.size)) + 256 len 31]
                                    idx = 0
                                    while stor12[arg1].field_769 + 31 / 32 > idx:
                                        stor12[arg1][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                    if sub_e50d64c5[stor13[arg1]].field_256:
                                        sub_e50d64c5[stor13[arg1]].field_1192 = 1
                                        emit 0xa4388cec: 0, 0, arg1, arg2
    stor13[arg1] = 0
    stor15[arg1] = 0
    sub_dd09bb5f[stor15[arg1]].field_1792 = 1
    emit 0xbc38c816: arg3, 1, msg.sender, arg1, sub_dd09bb5f[stor15[arg1]].field_256
    emit 0xfe2706ce: sub_dd09bb5f[stor15[arg1]].field_1280, sub_dd09bb5f[stor15[arg1]].field_1536, arg1, msg.sender, sub_dd09bb5f[stor15[arg1]].field_1024
}

function sub_7d343222(?) payable {
    require calldata.size - 4 >= 128
    if arg4 < stor3:
        revert with 0, 'metacity: fee not enough'
    if not arg3:
        mem[100] = msg.sender
        mem[132] = this.address
        mem[164] = stor3
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), stor3
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not arg3:
            if not stor18[address(msg.sender)].field_768:
                if stor18[address(msg.sender)].field_768 == stor18[address(msg.sender)].field_769 < 32:
                    revert with 0, 34
                if stor18[address(msg.sender)].field_768:
                    if stor18[address(msg.sender)].field_768 == uint255(stor18[address(msg.sender)].field_768) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor18[address(msg.sender)].field_768):
                        if 31 >= uint255(stor18[address(msg.sender)].field_768) * 0.5:
                            mem[ceil32(return_data.size) + 256] = 256 * stor18[address(msg.sender)].field_776
                        else:
                            mem[ceil32(return_data.size) + 256] = stor18[address(msg.sender)][3].field_0
                            idx = ceil32(return_data.size) + 256
                            s = 0
                            while ceil32(return_data.size) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 224 > idx:
                                mem[idx + 32] = stor18[address(msg.sender)][s + 3].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if stor18[address(msg.sender)].field_768 == stor18[address(msg.sender)].field_769 < 32:
                        revert with 0, 34
                    if stor18[address(msg.sender)].field_769:
                        if 31 >= stor18[address(msg.sender)].field_769:
                            mem[ceil32(return_data.size) + 256] = 256 * stor18[address(msg.sender)].field_776
                        else:
                            mem[ceil32(return_data.size) + 256] = stor18[address(msg.sender)][3].field_0
                            idx = ceil32(return_data.size) + 256
                            s = 0
                            while ceil32(return_data.size) + stor18[address(msg.sender)].field_769 + 224 > idx:
                                mem[idx + 32] = stor18[address(msg.sender)][s + 3].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                stor18[msg.sender].field_0 = arg1
                stor18[msg.sender].field_256 = arg2
                stor18[msg.sender].field_512 = stor18[address(msg.sender)].field_512
                if stor18[msg.sender].field_768:
                    if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                        revert with 0, 34
                    if stor18[address(msg.sender)].field_769:
                        stor18[msg.sender][3][].field_0 = Array(len=stor18[address(msg.sender)].field_769, data=mem[ceil32(return_data.size) + 256 len stor18[address(msg.sender)].field_769])
                    else:
                        stor18[msg.sender].field_768 = 0
                        idx = 0
                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                            stor18[msg.sender][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                        revert with 0, 34
                    if stor18[address(msg.sender)].field_769:
                        stor18[msg.sender][3][].field_0 = Array(len=stor18[address(msg.sender)].field_769, data=mem[ceil32(return_data.size) + 256 len stor18[address(msg.sender)].field_769])
                    else:
                        stor18[msg.sender].field_768 = 0
                        idx = 0
                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                            stor18[msg.sender][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                if stor18[address(msg.sender)].field_768 == uint255(stor18[address(msg.sender)].field_768) * 0.5 < 32:
                    revert with 0, 34
                if stor18[address(msg.sender)].field_768:
                    if stor18[address(msg.sender)].field_768 == uint255(stor18[address(msg.sender)].field_768) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                        mem[ceil32(return_data.size) + ceil32(uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256] = arg1
                        stor18[msg.sender].field_0 = arg1
                        stor18[msg.sender].field_256 = arg2
                        stor18[msg.sender].field_512 = stor18[address(msg.sender)].field_512
                        if stor18[msg.sender].field_768:
                            if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                stor18[msg.sender].field_768 = 0
                                idx = 0
                                while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                    stor18[msg.sender][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                    if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                        idx = 0
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 256
                                        while ceil32(return_data.size) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                            stor18[msg.sender][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor18[msg.sender].field_768 = 0
                                    stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                    stor18[msg.sender].field_776 = mem[ceil32(return_data.size) + 256 len 31]
                                    idx = 0
                                    while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                                revert with 0, 34
                            if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                stor18[msg.sender].field_768 = 0
                                idx = 0
                                while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                    stor18[msg.sender][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                    if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                        idx = 0
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 256
                                        while ceil32(return_data.size) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                            stor18[msg.sender][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor18[msg.sender].field_768 = 0
                                    stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                    stor18[msg.sender].field_776 = mem[ceil32(return_data.size) + 256 len 31]
                                    idx = 0
                                    while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if 31 >= uint255(stor18[address(msg.sender)].field_768) * 0.5:
                            mem[ceil32(return_data.size) + 256] = 256 * stor18[address(msg.sender)].field_776
                            mem[ceil32(return_data.size) + ceil32(uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256] = arg1
                            stor18[msg.sender].field_0 = arg1
                            stor18[msg.sender].field_256 = arg2
                            stor18[msg.sender].field_512 = stor18[address(msg.sender)].field_512
                            if stor18[msg.sender].field_768:
                                if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = ceil32(return_data.size) + 256
                                            while ceil32(return_data.size) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = stor18[address(msg.sender)].field_776
                                        idx = 0
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = ceil32(return_data.size) + 256
                                            while ceil32(return_data.size) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = stor18[address(msg.sender)].field_776
                                        idx = 0
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[ceil32(return_data.size) + 256] = stor18[address(msg.sender)][3].field_0
                            idx = ceil32(return_data.size) + 256
                            s = 0
                            while ceil32(return_data.size) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 224 > idx:
                                mem[idx + 32] = stor18[address(msg.sender)][s + 3].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(return_data.size) + ceil32(uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256] = arg1
                            stor18[msg.sender].field_0 = arg1
                            stor18[msg.sender].field_256 = arg2
                            stor18[msg.sender].field_512 = stor18[address(msg.sender)].field_512
                            if stor18[msg.sender].field_768:
                                if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = ceil32(return_data.size) + 256
                                            while ceil32(return_data.size) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = mem[ceil32(return_data.size) + 256 len 31]
                                        idx = 0
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = ceil32(return_data.size) + 256
                                            while ceil32(return_data.size) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = mem[ceil32(return_data.size) + 256 len 31]
                                        idx = 0
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                else:
                    if stor18[address(msg.sender)].field_768 == stor18[address(msg.sender)].field_769 < 32:
                        revert with 0, 34
                    if not stor18[address(msg.sender)].field_769:
                        mem[ceil32(return_data.size) + ceil32(uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256] = arg1
                        stor18[msg.sender].field_0 = arg1
                        stor18[msg.sender].field_256 = arg2
                        stor18[msg.sender].field_512 = stor18[address(msg.sender)].field_512
                        if stor18[msg.sender].field_768:
                            if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                stor18[msg.sender].field_768 = 0
                                idx = 0
                                while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                    stor18[msg.sender][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                    if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                        idx = 0
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 256
                                        while ceil32(return_data.size) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                            stor18[msg.sender][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor18[msg.sender].field_768 = 0
                                    stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                    stor18[msg.sender].field_776 = mem[ceil32(return_data.size) + 256 len 31]
                                    idx = 0
                                    while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                                revert with 0, 34
                            if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                stor18[msg.sender].field_768 = 0
                                idx = 0
                                while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                    stor18[msg.sender][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                    if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                        idx = 0
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = ceil32(return_data.size) + 256
                                        while ceil32(return_data.size) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                            stor18[msg.sender][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor18[msg.sender].field_768 = 0
                                    stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                    stor18[msg.sender].field_776 = mem[ceil32(return_data.size) + 256 len 31]
                                    idx = 0
                                    while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if 31 >= stor18[address(msg.sender)].field_769:
                            mem[ceil32(return_data.size) + 256] = 256 * stor18[address(msg.sender)].field_776
                            mem[ceil32(return_data.size) + ceil32(uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256] = arg1
                            stor18[msg.sender].field_0 = arg1
                            stor18[msg.sender].field_256 = arg2
                            stor18[msg.sender].field_512 = stor18[address(msg.sender)].field_512
                            if stor18[msg.sender].field_768:
                                if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = ceil32(return_data.size) + 256
                                            while ceil32(return_data.size) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = stor18[address(msg.sender)].field_776
                                        idx = 0
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = ceil32(return_data.size) + 256
                                            while ceil32(return_data.size) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = stor18[address(msg.sender)].field_776
                                        idx = 0
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[ceil32(return_data.size) + 256] = stor18[address(msg.sender)][3].field_0
                            idx = ceil32(return_data.size) + 256
                            s = 0
                            while ceil32(return_data.size) + stor18[address(msg.sender)].field_769 + 224 > idx:
                                mem[idx + 32] = stor18[address(msg.sender)][s + 3].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[ceil32(return_data.size) + ceil32(uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256] = arg1
                            stor18[msg.sender].field_0 = arg1
                            stor18[msg.sender].field_256 = arg2
                            stor18[msg.sender].field_512 = stor18[address(msg.sender)].field_512
                            if stor18[msg.sender].field_768:
                                if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = ceil32(return_data.size) + 256
                                            while ceil32(return_data.size) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = mem[ceil32(return_data.size) + 256 len 31]
                                        idx = 0
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = ceil32(return_data.size) + 256
                                            while ceil32(return_data.size) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = mem[ceil32(return_data.size) + 256 len 31]
                                        idx = 0
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
        else:
            mem[ceil32(return_data.size) + 96] = 0xfd2e997e00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 100] = arg3
            staticcall stor11.0xfd2e997e with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _20 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg3) >> 32
            require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require return_data.size - mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg3) >> 32 >= 224
            if not bool((2 * ceil32(return_data.size)) + 320 <= test266151307()):
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + 320
            mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg3) >> 32 + 96]
            _27 = mem[ceil32(return_data.size) + _20 + 128]
            require mem[ceil32(return_data.size) + _20 + 128] <= test266151307()
            require ceil32(return_data.size) + _20 + mem[ceil32(return_data.size) + _20 + 128] + 127 < ceil32(return_data.size) + return_data.size + 96
            _81 = mem[ceil32(return_data.size) + _20 + mem[ceil32(return_data.size) + _20 + 128] + 96]
            if mem[ceil32(return_data.size) + _20 + mem[ceil32(return_data.size) + _20 + 128] + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[ceil32(return_data.size) + _20 + mem[ceil32(return_data.size) + _20 + 128] + 96])) + 225 < 224 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + _20 + mem[ceil32(return_data.size) + _20 + 128] + 96])) + 321 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + _20 + mem[ceil32(return_data.size) + _20 + 128] + 96])) + 321
            mem[(2 * ceil32(return_data.size)) + 320] = mem[ceil32(return_data.size) + _20 + mem[ceil32(return_data.size) + _20 + 128] + 96]
            require _20 + _27 + _81 + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 352 len ceil32(_81)] = mem[ceil32(return_data.size) + _20 + _27 + 128 len ceil32(_81)]
            if ceil32(_81) <= _81:
                mem[(2 * ceil32(return_data.size)) + 128] = (2 * ceil32(return_data.size)) + 320
                mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _20 + 160]
                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + _20 + 192]
                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _20 + 224]
                mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _20 + 256]
                mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _20 + 288]
                _1249 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1249] = arg1
                mem[_1249 + 32] = arg2
                mem[_1249 + 64] = mem[(2 * ceil32(return_data.size)) + 96]
                mem[_1249 + 96] = (2 * ceil32(return_data.size)) + 320
                stor18[msg.sender].field_0 = arg1
                stor18[msg.sender].field_256 = arg2
                stor18[msg.sender].field_512 = mem[_1249 + 64]
            else:
                mem[(2 * ceil32(return_data.size)) + _81 + 352] = 0
                mem[(2 * ceil32(return_data.size)) + 128] = (2 * ceil32(return_data.size)) + 320
                mem[(2 * ceil32(return_data.size)) + 160] = mem[ceil32(return_data.size) + _20 + 160]
                mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + _20 + 192]
                mem[(2 * ceil32(return_data.size)) + 224] = mem[ceil32(return_data.size) + _20 + 224]
                mem[(2 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + _20 + 256]
                mem[(2 * ceil32(return_data.size)) + 288] = mem[ceil32(return_data.size) + _20 + 288]
                _1277 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1277] = arg1
                mem[_1277 + 32] = arg2
                mem[_1277 + 64] = mem[(2 * ceil32(return_data.size)) + 96]
                mem[_1277 + 96] = (2 * ceil32(return_data.size)) + 320
                stor18[msg.sender].field_0 = arg1
                stor18[msg.sender].field_256 = arg2
                stor18[msg.sender].field_512 = mem[_1277 + 64]
            if stor18[msg.sender].field_768:
                if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                    revert with 0, 34
                if mem[(2 * ceil32(return_data.size)) + 320]:
                    stor18[msg.sender][3][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 320], data=mem[(2 * ceil32(return_data.size)) + 352 len mem[(2 * ceil32(return_data.size)) + 320]])
                else:
                    stor18[msg.sender].field_768 = 0
                    idx = 0
                    while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                        stor18[msg.sender][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                    revert with 0, 34
                if mem[(2 * ceil32(return_data.size)) + 320]:
                    stor18[msg.sender][3][].field_0 = Array(len=mem[(2 * ceil32(return_data.size)) + 320], data=mem[(2 * ceil32(return_data.size)) + 352 len mem[(2 * ceil32(return_data.size)) + 320]])
                else:
                    stor18[msg.sender].field_768 = 0
                    idx = 0
                    while stor18[msg.sender].field_769 + 31 / 32 > idx:
                        stor18[msg.sender][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
    else:
        mem[100] = arg3
        staticcall stor11.0x6352211e with:
                gas gas_remaining wei
               args arg3
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'metacity: not avatar owner'
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = this.address
        mem[ceil32(return_data.size) + 164] = stor3
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), stor3
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not arg3:
            if not stor18[address(msg.sender)].field_768:
                if stor18[address(msg.sender)].field_768 == stor18[address(msg.sender)].field_769 < 32:
                    revert with 0, 34
                if stor18[address(msg.sender)].field_768:
                    if stor18[address(msg.sender)].field_768 == uint255(stor18[address(msg.sender)].field_768) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor18[address(msg.sender)].field_768):
                        if 31 >= uint255(stor18[address(msg.sender)].field_768) * 0.5:
                            mem[(2 * ceil32(return_data.size)) + 256] = 256 * stor18[address(msg.sender)].field_776
                        else:
                            mem[(2 * ceil32(return_data.size)) + 256] = stor18[address(msg.sender)][3].field_0
                            idx = (2 * ceil32(return_data.size)) + 256
                            s = 0
                            while (2 * ceil32(return_data.size)) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 224 > idx:
                                mem[idx + 32] = stor18[address(msg.sender)][s + 3].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                else:
                    if stor18[address(msg.sender)].field_768 == stor18[address(msg.sender)].field_769 < 32:
                        revert with 0, 34
                    if stor18[address(msg.sender)].field_769:
                        if 31 >= stor18[address(msg.sender)].field_769:
                            mem[(2 * ceil32(return_data.size)) + 256] = 256 * stor18[address(msg.sender)].field_776
                        else:
                            mem[(2 * ceil32(return_data.size)) + 256] = stor18[address(msg.sender)][3].field_0
                            idx = (2 * ceil32(return_data.size)) + 256
                            s = 0
                            while (2 * ceil32(return_data.size)) + stor18[address(msg.sender)].field_769 + 224 > idx:
                                mem[idx + 32] = stor18[address(msg.sender)][s + 3].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                stor18[msg.sender].field_0 = arg1
                stor18[msg.sender].field_256 = arg2
                stor18[msg.sender].field_512 = stor18[address(msg.sender)].field_512
                if stor18[msg.sender].field_768:
                    if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                        revert with 0, 34
                    if stor18[address(msg.sender)].field_769:
                        stor18[msg.sender][3][].field_0 = Array(len=stor18[address(msg.sender)].field_769, data=mem[(2 * ceil32(return_data.size)) + 256 len stor18[address(msg.sender)].field_769])
                    else:
                        stor18[msg.sender].field_768 = 0
                        idx = 0
                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                            stor18[msg.sender][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                        revert with 0, 34
                    if stor18[address(msg.sender)].field_769:
                        stor18[msg.sender][3][].field_0 = Array(len=stor18[address(msg.sender)].field_769, data=mem[(2 * ceil32(return_data.size)) + 256 len stor18[address(msg.sender)].field_769])
                    else:
                        stor18[msg.sender].field_768 = 0
                        idx = 0
                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                            stor18[msg.sender][idx + 3].field_0 = 0
                            idx = idx + 1
                            continue 
            else:
                if stor18[address(msg.sender)].field_768 == uint255(stor18[address(msg.sender)].field_768) * 0.5 < 32:
                    revert with 0, 34
                if stor18[address(msg.sender)].field_768:
                    if stor18[address(msg.sender)].field_768 == uint255(stor18[address(msg.sender)].field_768) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                        mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256] = arg1
                        stor18[msg.sender].field_0 = arg1
                        stor18[msg.sender].field_256 = arg2
                        stor18[msg.sender].field_512 = stor18[address(msg.sender)].field_512
                        if stor18[msg.sender].field_768:
                            if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                stor18[msg.sender].field_768 = 0
                                idx = 0
                                while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                    stor18[msg.sender][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                    if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                        idx = 0
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (2 * ceil32(return_data.size)) + 256
                                        while (2 * ceil32(return_data.size)) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                            stor18[msg.sender][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor18[msg.sender].field_768 = 0
                                    stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                    stor18[msg.sender].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                    idx = 0
                                    while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                                revert with 0, 34
                            if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                stor18[msg.sender].field_768 = 0
                                idx = 0
                                while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                    stor18[msg.sender][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                    if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                        idx = 0
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (2 * ceil32(return_data.size)) + 256
                                        while (2 * ceil32(return_data.size)) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                            stor18[msg.sender][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor18[msg.sender].field_768 = 0
                                    stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                    stor18[msg.sender].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                    idx = 0
                                    while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if 31 >= uint255(stor18[address(msg.sender)].field_768) * 0.5:
                            mem[(2 * ceil32(return_data.size)) + 256] = 256 * stor18[address(msg.sender)].field_776
                            mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256] = arg1
                            stor18[msg.sender].field_0 = arg1
                            stor18[msg.sender].field_256 = arg2
                            stor18[msg.sender].field_512 = stor18[address(msg.sender)].field_512
                            if stor18[msg.sender].field_768:
                                if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (2 * ceil32(return_data.size)) + 256
                                            while (2 * ceil32(return_data.size)) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = stor18[address(msg.sender)].field_776
                                        idx = 0
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (2 * ceil32(return_data.size)) + 256
                                            while (2 * ceil32(return_data.size)) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = stor18[address(msg.sender)].field_776
                                        idx = 0
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[(2 * ceil32(return_data.size)) + 256] = stor18[address(msg.sender)][3].field_0
                            idx = (2 * ceil32(return_data.size)) + 256
                            s = 0
                            while (2 * ceil32(return_data.size)) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 224 > idx:
                                mem[idx + 32] = stor18[address(msg.sender)][s + 3].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256] = arg1
                            stor18[msg.sender].field_0 = arg1
                            stor18[msg.sender].field_256 = arg2
                            stor18[msg.sender].field_512 = stor18[address(msg.sender)].field_512
                            if stor18[msg.sender].field_768:
                                if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (2 * ceil32(return_data.size)) + 256
                                            while (2 * ceil32(return_data.size)) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                        idx = 0
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (2 * ceil32(return_data.size)) + 256
                                            while (2 * ceil32(return_data.size)) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                        idx = 0
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                else:
                    if stor18[address(msg.sender)].field_768 == stor18[address(msg.sender)].field_769 < 32:
                        revert with 0, 34
                    if not stor18[address(msg.sender)].field_769:
                        mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256] = arg1
                        stor18[msg.sender].field_0 = arg1
                        stor18[msg.sender].field_256 = arg2
                        stor18[msg.sender].field_512 = stor18[address(msg.sender)].field_512
                        if stor18[msg.sender].field_768:
                            if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                                revert with 0, 34
                            if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                stor18[msg.sender].field_768 = 0
                                idx = 0
                                while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                    stor18[msg.sender][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                    if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                        idx = 0
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (2 * ceil32(return_data.size)) + 256
                                        while (2 * ceil32(return_data.size)) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                            stor18[msg.sender][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor18[msg.sender].field_768 = 0
                                    stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                    stor18[msg.sender].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                    idx = 0
                                    while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                        else:
                            if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                                revert with 0, 34
                            if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                stor18[msg.sender].field_768 = 0
                                idx = 0
                                while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                    stor18[msg.sender][idx + 3].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                    if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                        idx = 0
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    else:
                                        s = 0
                                        idx = (2 * ceil32(return_data.size)) + 256
                                        while (2 * ceil32(return_data.size)) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                            stor18[msg.sender][s + 3].field_0 = mem[idx]
                                            s = s + 1
                                            idx = idx + 32
                                            continue 
                                        idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                else:
                                    stor18[msg.sender].field_768 = 0
                                    stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                    stor18[msg.sender].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                    idx = 0
                                    while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                    else:
                        if 31 >= stor18[address(msg.sender)].field_769:
                            mem[(2 * ceil32(return_data.size)) + 256] = 256 * stor18[address(msg.sender)].field_776
                            mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256] = arg1
                            stor18[msg.sender].field_0 = arg1
                            stor18[msg.sender].field_256 = arg2
                            stor18[msg.sender].field_512 = stor18[address(msg.sender)].field_512
                            if stor18[msg.sender].field_768:
                                if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (2 * ceil32(return_data.size)) + 256
                                            while (2 * ceil32(return_data.size)) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = stor18[address(msg.sender)].field_776
                                        idx = 0
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (2 * ceil32(return_data.size)) + 256
                                            while (2 * ceil32(return_data.size)) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = stor18[address(msg.sender)].field_776
                                        idx = 0
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                        else:
                            mem[(2 * ceil32(return_data.size)) + 256] = stor18[address(msg.sender)][3].field_0
                            idx = (2 * ceil32(return_data.size)) + 256
                            s = 0
                            while (2 * ceil32(return_data.size)) + stor18[address(msg.sender)].field_769 + 224 > idx:
                                mem[idx + 32] = stor18[address(msg.sender)][s + 3].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[(2 * ceil32(return_data.size)) + ceil32(uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256] = arg1
                            stor18[msg.sender].field_0 = arg1
                            stor18[msg.sender].field_256 = arg2
                            stor18[msg.sender].field_512 = stor18[address(msg.sender)].field_512
                            if stor18[msg.sender].field_768:
                                if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (2 * ceil32(return_data.size)) + 256
                                            while (2 * ceil32(return_data.size)) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                        idx = 0
                                        while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
                            else:
                                if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                                    revert with 0, 34
                                if not uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                    stor18[msg.sender].field_768 = 0
                                    idx = 0
                                    while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                        stor18[msg.sender][idx + 3].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                else:
                                    if 31 < uint255(stor18[address(msg.sender)].field_768) * 0.5:
                                        stor18[msg.sender].field_768 = Mask(254, 1, stor18[address(msg.sender)].field_768) + 1
                                        if not Mask(256, -1, stor18[address(msg.sender)].field_768):
                                            idx = 0
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        else:
                                            s = 0
                                            idx = (2 * ceil32(return_data.size)) + 256
                                            while (2 * ceil32(return_data.size)) + (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 256 > idx:
                                                stor18[msg.sender][s + 3].field_0 = mem[idx]
                                                s = s + 1
                                                idx = idx + 32
                                                continue 
                                            idx = Mask(251, 0, (uint255(stor18[address(msg.sender)].field_768) * 0.5) + 31) >> 5
                                            while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                                stor18[msg.sender][idx + 3].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                    else:
                                        stor18[msg.sender].field_768 = 0
                                        stor18[msg.sender].field_769 = stor18[address(msg.sender)].field_769
                                        stor18[msg.sender].field_776 = mem[(2 * ceil32(return_data.size)) + 256 len 31]
                                        idx = 0
                                        while stor18[msg.sender].field_769 + 31 / 32 > idx:
                                            stor18[msg.sender][idx + 3].field_0 = 0
                                            idx = idx + 1
                                            continue 
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 0xfd2e997e00000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 100] = arg3
            staticcall stor11.0xfd2e997e with:
                    gas gas_remaining wei
                   args arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _82 = mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg3) >> 32
            require mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require return_data.size - mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg3) >> 32 >= 224
            if not bool((4 * ceil32(return_data.size)) + 320 <= test266151307()):
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + 320
            mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, arg3) >> 32 + 96]
            _161 = mem[(2 * ceil32(return_data.size)) + _82 + 128]
            require mem[(2 * ceil32(return_data.size)) + _82 + 128] <= test266151307()
            require (2 * ceil32(return_data.size)) + _82 + mem[(2 * ceil32(return_data.size)) + _82 + 128] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
            _235 = mem[(2 * ceil32(return_data.size)) + _82 + mem[(2 * ceil32(return_data.size)) + _82 + 128] + 96]
            if mem[(2 * ceil32(return_data.size)) + _82 + mem[(2 * ceil32(return_data.size)) + _82 + 128] + 96] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _82 + mem[(2 * ceil32(return_data.size)) + _82 + 128] + 96])) + 225 < 224 or (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _82 + mem[(2 * ceil32(return_data.size)) + _82 + 128] + 96])) + 321 > test266151307():
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(2 * ceil32(return_data.size)) + _82 + mem[(2 * ceil32(return_data.size)) + _82 + 128] + 96])) + 321
            mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + _82 + mem[(2 * ceil32(return_data.size)) + _82 + 128] + 96]
            require _82 + _161 + _235 + 32 <= return_data.size
            mem[(4 * ceil32(return_data.size)) + 352 len ceil32(_235)] = mem[(2 * ceil32(return_data.size)) + _82 + _161 + 128 len ceil32(_235)]
            if ceil32(_235) <= _235:
                mem[(4 * ceil32(return_data.size)) + 128] = (4 * ceil32(return_data.size)) + 320
                mem[(4 * ceil32(return_data.size)) + 160] = mem[(2 * ceil32(return_data.size)) + _82 + 160]
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + _82 + 192]
                mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + _82 + 224]
                mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + _82 + 256]
                mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + _82 + 288]
                _1263 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1263] = arg1
                mem[_1263 + 32] = arg2
                mem[_1263 + 64] = mem[(4 * ceil32(return_data.size)) + 96]
                mem[_1263 + 96] = (4 * ceil32(return_data.size)) + 320
                stor18[msg.sender].field_0 = arg1
                stor18[msg.sender].field_256 = arg2
                stor18[msg.sender].field_512 = mem[_1263 + 64]
            else:
                mem[(4 * ceil32(return_data.size)) + _235 + 352] = 0
                mem[(4 * ceil32(return_data.size)) + 128] = (4 * ceil32(return_data.size)) + 320
                mem[(4 * ceil32(return_data.size)) + 160] = mem[(2 * ceil32(return_data.size)) + _82 + 160]
                mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + _82 + 192]
                mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + _82 + 224]
                mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + _82 + 256]
                mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + _82 + 288]
                _1286 = mem[64]
                mem[64] = mem[64] + 128
                mem[_1286] = arg1
                mem[_1286 + 32] = arg2
                mem[_1286 + 64] = mem[(4 * ceil32(return_data.size)) + 96]
                mem[_1286 + 96] = (4 * ceil32(return_data.size)) + 320
                stor18[msg.sender].field_0 = arg1
                stor18[msg.sender].field_256 = arg2
                stor18[msg.sender].field_512 = mem[_1286 + 64]
            if stor18[msg.sender].field_768:
                if stor18[msg.sender].field_768 == uint255(stor18[msg.sender].field_768) * 0.5 < 32:
                    revert with 0, 34
                if mem[(4 * ceil32(return_data.size)) + 320]:
                    stor18[msg.sender][3][].field_0 = Array(len=mem[(4 * ceil32(return_data.size)) + 320], data=mem[(4 * ceil32(return_data.size)) + 352 len mem[(4 * ceil32(return_data.size)) + 320]])
                else:
                    stor18[msg.sender].field_768 = 0
                    idx = 0
                    while (uint255(stor18[msg.sender].field_768) * 0.5) + 31 / 32 > idx:
                        stor18[msg.sender][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if stor18[msg.sender].field_768 == stor18[msg.sender].field_769 < 32:
                    revert with 0, 34
                if mem[(4 * ceil32(return_data.size)) + 320]:
                    stor18[msg.sender][3][].field_0 = Array(len=mem[(4 * ceil32(return_data.size)) + 320], data=mem[(4 * ceil32(return_data.size)) + 352 len mem[(4 * ceil32(return_data.size)) + 320]])
                else:
                    stor18[msg.sender].field_768 = 0
                    idx = 0
                    while stor18[msg.sender].field_769 + 31 / 32 > idx:
                        stor18[msg.sender][idx + 3].field_0 = 0
                        idx = idx + 1
                        continue 
    emit 0xfa9198ab: arg1, arg2, msg.sender
}



}
