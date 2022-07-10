contract main {




// =====================  Runtime code  =====================


#
#  - sub_22139251(?)
#  - sub_b878327a(?)
#  - getAllPairs()
#
address owner;
array of uint256 sub_1d25cd6d;
mapping of struct stor2;
array of struct stor3;
mapping of uint256 sub_a1a59097;
mapping of struct stor5;
array of struct stor6;
address sub_e01cc2f7Address;
address sub_d2556aeeAddress;
uint256 sub_73e0a84c;
uint256 sub_303a7197;
uint256 sub_f7e31727;
mapping of struct sub_50a56d12;
address rewardAddr;
address burnAddr;
uint256 burnRate;
uint256 sub_b9c18a84;
uint256 transferBurnRate;
uint256 sub_e1f6e671;
uint256 sub_edae5dbe;
mapping of uint8 sub_b12ad206;
uint256 maxGen;
uint256 sub_9126cb1c;
uint256 claimFeeRate;
mapping of uint8 sub_1eba0f95;
mapping of uint8 whitelistMap;
mapping of uint8 sub_06364cee;

function sub_06364cee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_06364cee[arg1]
}

function sub_1d25cd6d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_1d25cd6d[arg1]
}

function sub_1eba0f95(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_1eba0f95[arg1]
}

function sub_2c747129(?) payable {
    return sub_9126cb1c
}

function sub_2c8d3189(?) payable {
    return sub_303a7197
}

function sub_303a7197(?) payable {
    return sub_303a7197
}

function whitelistMap(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return whitelistMap[arg1]
}

function sub_33f7fd33(?) payable {
    return sub_e01cc2f7Address
}

function sub_408a5877(?) payable {
    return sub_e1f6e671
}

function sub_43f75314(?) payable {
    return sub_edae5dbe
}

function getBurnRate() payable {
    return burnRate
}

function sub_4f42837e(?) payable {
    return transferBurnRate
}

function sub_50245ae4(?) payable {
    return sub_73e0a84c
}

function sub_50a56d12(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_50a56d12[arg1 << 248].field_0, 
           sub_50a56d12[arg1 << 248].field_256,
           sub_50a56d12[arg1 << 248].field_512,
           sub_50a56d12[arg1 << 248].field_768,
           sub_50a56d12[arg1 << 248].field_1024,
           sub_50a56d12[arg1 << 248].field_1024,
           sub_50a56d12[arg1 << 248].field_1040
}

function transferBurnRate() payable {
    return transferBurnRate
}

function sub_5745032a(?) payable {
    return maxGen
}

function getClaimFeeRate() payable {
    return claimFeeRate
}

function sub_67cb4d8c(?) payable {
    return sub_b9c18a84
}

function rewardAddr() payable {
    return rewardAddr
}

function sub_73e0a84c(?) payable {
    return sub_73e0a84c
}

function owner() payable {
    return owner
}

function sub_9126cb1c(?) payable {
    return sub_9126cb1c
}

function sub_92d0ee5a(?) payable {
    return sub_d2556aeeAddress
}

function sub_a1a59097(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    return sub_a1a59097[arg1][arg2]
}

function sub_b12ad206(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b12ad206[arg1]
}

function sub_b1fdf7e4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    return sub_a1a59097[arg1 << 248][arg2 << 248]
}

function sub_b9c18a84(?) payable {
    return sub_b9c18a84
}

function sub_bcf00900(?) payable {
    return sub_f7e31727
}

function sub_bde90734(?) payable {
    return burnAddr
}

function burnRate() payable {
    return burnRate
}

function claimFeeRate() payable {
    return claimFeeRate
}

function burnAddr() payable {
    return burnAddr
}

function sub_d2556aee(?) payable {
    return sub_d2556aeeAddress
}

function getMaxGen() payable {
    return maxGen
}

function sub_df93b8f7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_1d25cd6d[arg1 << 248]
}

function sub_e01cc2f7(?) payable {
    return sub_e01cc2f7Address
}

function getRewardAddr() payable {
    return rewardAddr
}

function sub_e1f6e671(?) payable {
    return sub_e1f6e671
}

function sub_edae5dbe(?) payable {
    return sub_edae5dbe
}

function sub_f7e31727(?) payable {
    return sub_f7e31727
}

function _fallback() payable {
    revert
}

function sub_0be55902(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (sub_06364cee[address(arg1)] == 1)
}

function sub_6fa1778d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (sub_b12ad206[address(arg1)] == 1)
}

function sub_98a08179(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return (sub_1eba0f95[address(arg1)] == 1)
}

function validWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (whitelistMap[address(arg1)] == 1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_dc8c1284(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return (stor5[address(arg1)][address(arg2)] > 0)
}

function sub_665a9706(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e1f6e671 = arg1
}

function sub_b1b3ccd6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f7e31727 = arg1
}

function sub_bcea64d4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9126cb1c = arg1
}

function sub_f12baaa7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_edae5dbe = arg1
}

function sub_f3eaa3bb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_73e0a84c = arg1
}

function sub_fba24af7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b9c18a84 = arg1
}

function setBurnRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    burnRate = arg1
}

function setBurnAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    burnAddr = arg1
}

function setRewardAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardAddr = arg1
}

function setClaimFeeRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    claimFeeRate = arg1
}

function setCoolAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e01cc2f7Address = arg1
}

function setTransferBurnRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    transferBurnRate = arg1
}

function sub_5d988d38(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d2556aeeAddress = address(arg1)
}

function sub_235650a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Invlaid multiple'
    sub_303a7197 = arg1
}

function sub_c6db38af(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[arg1 << 248].field_264 = uint8(arg2)
}

function sub_4a2a5362(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1eba0f95[address(arg1)] = uint8(arg2)
}

function sub_ca3d65ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b12ad206[address(arg1)] = uint8(arg2)
}

function setWhitelist(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    whitelistMap[address(arg1)] = arg2
}

function sub_8de37f65(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg1) <= 0:
        revert with 0, 'Invalid scale type'
    if uint8(arg1) > 4:
        revert with 0, 'Invalid scale type'
    sub_1d25cd6d[arg1 << 248] = arg2
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

function sub_c23cdc41(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == uint8(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == uint8(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_50a56d12[arg1 << 248].field_0 = arg2
    sub_50a56d12[arg1 << 248].field_256 = arg3
    sub_50a56d12[arg1 << 248].field_512 = arg4
    sub_50a56d12[arg1 << 248].field_768 = arg5
    sub_50a56d12[arg1 << 248].field_1024 = uint8(arg6)
}

function sub_8eb657c4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[arg1 << 248].field_512 = arg2
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        if stor3[idx].field_256 != uint8(arg1):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx >= stor3.length:
            revert with 'NH{q', 50
        stor3[idx].field_512 = arg2
}

function sub_dda50fdc(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg1) < 0:
        revert with 0, 'Gen levelNo'
    if uint8(arg1) > 7:
        revert with 0, 'Gen levelNo'
    if uint8(arg2) <= 0:
        revert with 0, 'Gen invalid'
    if uint8(arg2) > 20:
        revert with 0, 'Gen invalid'
    if arg3 <= 0:
        revert with 0, 'Rate invalid'
    sub_a1a59097[arg1 << 248][arg2 << 248] = arg3
}

function sub_e46e5047(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if whitelistMap[address(arg1)] == 1:
        return arg3, 0
    if whitelistMap[address(arg2)] == 1:
        return arg3, 0
    if sub_06364cee[address(arg1)] != 1:
        if transferBurnRate <= 0:
            return arg3, 0
        if arg3 and transferBurnRate > -1 / arg3:
            revert with 'NH{q', 17
        if arg3 < arg3 * transferBurnRate / 1000:
            revert with 'NH{q', 17
        return arg3 - (arg3 * transferBurnRate / 1000), arg3 * transferBurnRate / 1000
    if sub_b9c18a84 <= 0:
        return arg3, 0
    if arg3 and sub_b9c18a84 > -1 / arg3:
        revert with 'NH{q', 17
    if arg3 < arg3 * sub_b9c18a84 / 1000:
        revert with 'NH{q', 17
    return arg3 - (arg3 * sub_b9c18a84 / 1000), arg3 * sub_b9c18a84 / 1000
}

function sub_862e7043(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == uint8(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg3):
        if uint8(arg3) != 1:
            revert with 0, 'Invalid status'
    stor5[address(arg1)][address(arg2)] = uint8(arg3)
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        if stor6[idx].field_0 == address(arg1):
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if stor6[idx].field_520 == address(arg2):
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                stor6[idx].field_1032 = uint8(arg3)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_520e8f03(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor3.length
    if stor3[arg1].field_0:
        if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_0:
            if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_1:
                if 31 >= stor3[arg1].field_1:
                    mem[128] = 256 * stor3[arg1].field_8
                else:
                    mem[128] = stor3[arg1].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[(4 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
                revert with 'NH{q', 34
            if stor3[arg1].field_1:
                if 31 >= stor3[arg1].field_1:
                    mem[128] = 256 * stor3[arg1].field_8
                else:
                    mem[128] = stor3[arg1].field_0
                    idx = 128
                    s = 0
                    while stor3[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[(4 * arg1) + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor3[arg1].field_1), data=mem[128 len ceil32(stor3[arg1].field_1)]), 
               stor3[arg1].field_256,
               stor3[arg1].field_256,
               stor3[arg1].field_256,
               stor3[arg1].field_512,
               stor3[arg1].field_768,
               stor3[arg1].field_776
    if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
        revert with 'NH{q', 34
    if stor3[arg1].field_0:
        if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_1:
            if 31 >= stor3[arg1].field_1:
                mem[128] = 256 * stor3[arg1].field_8
            else:
                mem[128] = stor3[arg1].field_0
                idx = 128
                s = 0
                while stor3[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor3[(4 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor3[arg1].field_0 == stor3[arg1].field_1 < 32:
            revert with 'NH{q', 34
        if stor3[arg1].field_1:
            if 31 >= stor3[arg1].field_1:
                mem[128] = 256 * stor3[arg1].field_8
            else:
                mem[128] = stor3[arg1].field_0
                idx = 128
                s = 0
                while stor3[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor3[(4 * arg1) + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor3[arg1].field_0, data=mem[128 len ceil32(stor3[arg1].field_1)]), 
           stor3[arg1].field_256,
           stor3[arg1].field_256,
           stor3[arg1].field_256,
           stor3[arg1].field_512,
           stor3[arg1].field_768,
           stor3[arg1].field_776
}

function sub_6d779991(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if stor2[arg1 << 248].field_0:
        if stor2[arg1 << 248].field_0 == stor2[arg1 << 248].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[arg1 << 248].field_0:
            if stor2[arg1 << 248].field_0 == stor2[arg1 << 248].field_1 < 32:
                revert with 'NH{q', 34
            if stor2[arg1 << 248].field_1:
                if 31 >= stor2[arg1 << 248].field_1:
                    mem[576] = 256 * stor2[arg1 << 248].field_8
                else:
                    mem[576] = stor2[arg1 << 248].field_0
                    idx = 576
                    s = 0
                    while stor2[arg1 << 248].field_1 + 544 > idx:
                        mem[idx + 32] = stor2[arg1 << 248][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor2[arg1 << 248].field_0 == stor2[arg1 << 248].field_1 < 32:
                revert with 'NH{q', 34
            if stor2[arg1 << 248].field_1:
                if 31 >= stor2[arg1 << 248].field_1:
                    mem[576] = 256 * stor2[arg1 << 248].field_8
                else:
                    mem[576] = stor2[arg1 << 248].field_0
                    idx = 576
                    s = 0
                    while stor2[arg1 << 248].field_1 + 544 > idx:
                        mem[idx + 32] = stor2[arg1 << 248][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return 32, 224, 
               stor2[arg1 << 248].field_256,
               stor2[arg1 << 248].field_256,
               stor2[arg1 << 248].field_256,
               stor2[arg1 << 248].field_512,
               stor2[arg1 << 248].field_768,
               stor2[arg1 << 248].field_768,
               2 * Mask(256, -1, stor2[arg1 << 248].field_1),
               mem[576 len ceil32(stor2[arg1 << 248].field_1)]
    if stor2[arg1 << 248].field_0 == stor2[arg1 << 248].field_1 < 32:
        revert with 'NH{q', 34
    if stor2[arg1 << 248].field_0:
        if stor2[arg1 << 248].field_0 == stor2[arg1 << 248].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[arg1 << 248].field_1:
            if 31 >= stor2[arg1 << 248].field_1:
                mem[576] = 256 * stor2[arg1 << 248].field_8
            else:
                mem[576] = stor2[arg1 << 248].field_0
                idx = 576
                s = 0
                while stor2[arg1 << 248].field_1 + 544 > idx:
                    mem[idx + 32] = stor2[arg1 << 248][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor2[arg1 << 248].field_0 == stor2[arg1 << 248].field_1 < 32:
            revert with 'NH{q', 34
        if stor2[arg1 << 248].field_1:
            if 31 >= stor2[arg1 << 248].field_1:
                mem[576] = 256 * stor2[arg1 << 248].field_8
            else:
                mem[576] = stor2[arg1 << 248].field_0
                idx = 576
                s = 0
                while stor2[arg1 << 248].field_1 + 544 > idx:
                    mem[idx + 32] = stor2[arg1 << 248][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return 32, 224, 
           stor2[arg1 << 248].field_256,
           stor2[arg1 << 248].field_256,
           stor2[arg1 << 248].field_256,
           stor2[arg1 << 248].field_512,
           stor2[arg1 << 248].field_768,
           stor2[arg1 << 248].field_768,
           stor2[arg1 << 248].field_0,
           mem[576 len ceil32(stor2[arg1 << 248].field_1)]
}

function sub_80031089(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    require arg4 == uint8(arg4)
    require arg5 == arg5
    require arg6 == uint8(arg6)
    require arg7 == uint8(arg7)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(arg2) <= 0:
        revert with 0, 'level no must great than 0'
    if stor2[arg2 << 248].field_264:
        revert with 0, 'level exists'
    if stor2[arg2 << 248].field_0:
        if stor2[arg2 << 248].field_0 == stor2[arg2 << 248].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[arg2 << 248][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[arg2 << 248].field_0 = 0
            idx = 0
            while stor2[arg2 << 248].field_1 + 31 / 32 > idx:
                stor2[arg2 << 248][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor2[arg2 << 248].field_0 == stor2[arg2 << 248].field_1 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor2[arg2 << 248][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor2[arg2 << 248].field_0 = 0
            idx = 0
            while stor2[arg2 << 248].field_1 + 31 / 32 > idx:
                stor2[arg2 << 248][idx].field_0 = 0
                idx = idx + 1
                continue 
    stor2[arg2 << 248].field_256 = uint8(arg2)
    stor2[arg2 << 248].field_264 = uint8(arg3)
    stor2[arg2 << 248].field_272 = uint8(arg4)
    stor2[arg2 << 248].field_512 = arg5
    stor2[arg2 << 248].field_768 = uint8(arg6)
    stor2[arg2 << 248].field_776 = uint8(arg7)
    stor3.length++
    if stor2[arg2 << 248].field_0:
        if stor2[arg2 << 248].field_0 == stor2[arg2 << 248].field_1 < 32:
            revert with 'NH{q', 34
        if stor3[stor3.length].field_0:
            if stor3[stor3.length].field_0 == stor3[stor3.length].field_1 < 32:
                revert with 'NH{q', 34
            if not stor2[arg2 << 248].field_1:
                stor3[stor3.length].field_0 = 0
                idx = 0
                while stor3[stor3.length].field_1 + 31 / 32 > idx:
                    stor3[(4 * stor3.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor3[stor3.length].field_0 = (2 * stor2[arg2 << 248].field_1) + 1
                s = 0
                idx = 0
                while stor2[arg2 << 248].field_1 + 31 / 32 > idx:
                    stor3[(4 * stor3.length) + s].field_0 = stor2[arg2 << 248][idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[arg2 << 248].field_1 + 31 / 32
                while stor3[stor3.length].field_1 + 31 / 32 > idx:
                    stor3[(4 * stor3.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor3[stor3.length].field_0 == stor3[stor3.length].field_1 < 32:
                revert with 'NH{q', 34
            if not stor2[arg2 << 248].field_1:
                stor3[stor3.length].field_0 = 0
                idx = 0
                while stor3[stor3.length].field_1 + 31 / 32 > idx:
                    stor3[(4 * stor3.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor3[stor3.length].field_0 = (2 * stor2[arg2 << 248].field_1) + 1
                s = 0
                idx = 0
                while stor2[arg2 << 248].field_1 + 31 / 32 > idx:
                    stor3[(4 * stor3.length) + s].field_0 = stor2[arg2 << 248][idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[arg2 << 248].field_1 + 31 / 32
                while stor3[stor3.length].field_1 + 31 / 32 > idx:
                    stor3[(4 * stor3.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if stor2[arg2 << 248].field_0 == stor2[arg2 << 248].field_1 < 32:
            revert with 'NH{q', 34
        if stor3[stor3.length].field_0:
            if stor3[stor3.length].field_0 == stor3[stor3.length].field_1 < 32:
                revert with 'NH{q', 34
            if not stor2[arg2 << 248].field_1:
                stor3[stor3.length].field_0 = 0
                idx = 0
                while stor3[stor3.length].field_1 + 31 / 32 > idx:
                    stor3[(4 * stor3.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor3[stor3.length].field_0 = (2 * stor2[arg2 << 248].field_1) + 1
                s = 0
                idx = 0
                while stor2[arg2 << 248].field_1 + 31 / 32 > idx:
                    stor3[(4 * stor3.length) + s].field_0 = stor2[arg2 << 248][idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[arg2 << 248].field_1 + 31 / 32
                while stor3[stor3.length].field_1 + 31 / 32 > idx:
                    stor3[(4 * stor3.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor3[stor3.length].field_0 == stor3[stor3.length].field_1 < 32:
                revert with 'NH{q', 34
            if not stor2[arg2 << 248].field_1:
                stor3[stor3.length].field_0 = 0
                idx = 0
                while stor3[stor3.length].field_1 + 31 / 32 > idx:
                    stor3[(4 * stor3.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                stor3[stor3.length].field_0 = (2 * stor2[arg2 << 248].field_1) + 1
                s = 0
                idx = 0
                while stor2[arg2 << 248].field_1 + 31 / 32 > idx:
                    stor3[(4 * stor3.length) + s].field_0 = stor2[arg2 << 248][idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor2[arg2 << 248].field_1 + 31 / 32
                while stor3[stor3.length].field_1 + 31 / 32 > idx:
                    stor3[(4 * stor3.length) + idx].field_0 = 0
                    idx = idx + 1
                    continue 
    stor3[stor3.length].field_256 = stor2[arg2 << 248].field_256
    stor3[stor3.length].field_264 = stor2[arg2 << 248].field_264
    stor3[stor3.length].field_272 = stor2[arg2 << 248].field_272
    stor3[stor3.length].field_512 = stor2[arg2 << 248].field_512
    stor3[stor3.length].field_768 = stor2[arg2 << 248].field_768
    stor3[stor3.length].field_776 = stor2[arg2 << 248].field_776
}

function sub_86fb25ea(?) payable {
    mem[64] = (32 * stor3.length) + 128
    mem[96] = stor3.length
    s = 128
    idx = 0
    while idx < stor3.length:
        mem[0] = 3
        _30 = mem[64]
        mem[64] = mem[64] + 224
        if stor3[idx].field_0:
            if stor3[idx].field_0 == stor3[idx].field_1 < 32:
                revert with 'NH{q', 34
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(stor3[idx].field_1) + 32
            mem[_33] = stor3[idx].field_1
            if stor3[idx].field_0:
                if stor3[idx].field_0 == stor3[idx].field_1 < 32:
                    revert with 'NH{q', 34
                if stor3[idx].field_1:
                    if 31 >= stor3[idx].field_1:
                        mem[_33 + 32] = 256 * stor3[idx].field_8
                    else:
                        mem[0] = (4 * idx) + sha3(3)
                        mem[_33 + 32] = stor3[idx].field_0
                        t = _33 + 32
                        u = sha3(mem[0])
                        while _33 + stor3[idx].field_1 > t:
                            mem[t + 32] = sub_1d25cd6d[u]
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_30] = _33
                mem[_30 + 32] = stor3[idx].field_256
                mem[_30 + 64] = stor3[idx].field_264
                mem[_30 + 96] = stor3[idx].field_272
                mem[_30 + 128] = stor3[idx].field_512
                mem[_30 + 160] = stor3[idx].field_768
                mem[_30 + 192] = stor3[idx].field_776
                mem[s] = _30
                s = s + 32
                idx = idx + 1
                continue 
            if stor3[idx].field_0 == stor3[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor3[idx].field_1:
                mem[_30] = _33
                mem[_30 + 32] = stor3[idx].field_256
                mem[_30 + 64] = stor3[idx].field_264
                mem[_30 + 96] = stor3[idx].field_272
                mem[_30 + 128] = stor3[idx].field_512
                mem[_30 + 160] = stor3[idx].field_768
                mem[_30 + 192] = stor3[idx].field_776
                mem[s] = _30
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[idx].field_1:
                mem[_33 + 32] = 256 * stor3[idx].field_8
                mem[_30] = _33
                mem[_30 + 32] = stor3[idx].field_256
                mem[_30 + 64] = stor3[idx].field_264
                mem[_30 + 96] = stor3[idx].field_272
                mem[_30 + 128] = stor3[idx].field_512
                mem[_30 + 160] = stor3[idx].field_768
                mem[_30 + 192] = stor3[idx].field_776
                mem[s] = _30
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(3)
            mem[_33 + 32] = stor3[idx].field_0
            t = _33 + 32
            u = sha3(mem[0])
            while _33 + stor3[u].field_1 > t:
                mem[t + 32] = sub_1d25cd6d[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_30] = _33
            mem[_30 + 32] = stor3[u].field_256
            mem[_30 + 64] = stor3[u].field_264
            mem[_30 + 96] = stor3[u].field_272
            mem[_30 + 128] = stor3[u].field_512
            mem[_30 + 160] = stor3[u].field_768
            mem[_30 + 192] = stor3[u].field_776
            mem[t] = _30
            t = t + 32
            u = u + 1
            continue 
        if stor3[idx].field_0 == stor3[idx].field_1 < 32:
            revert with 'NH{q', 34
        _34 = mem[64]
        mem[64] = mem[64] + ceil32(stor3[idx].field_1) + 32
        mem[_34] = stor3[idx].field_1
        if stor3[idx].field_0:
            if stor3[idx].field_0 == stor3[idx].field_1 < 32:
                revert with 'NH{q', 34
            if not stor3[idx].field_1:
                mem[_30] = _34
                mem[_30 + 32] = stor3[idx].field_256
                mem[_30 + 64] = stor3[idx].field_264
                mem[_30 + 96] = stor3[idx].field_272
                mem[_30 + 128] = stor3[idx].field_512
                mem[_30 + 160] = stor3[idx].field_768
                mem[_30 + 192] = stor3[idx].field_776
                mem[s] = _30
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= stor3[idx].field_1:
                mem[_34 + 32] = 256 * stor3[idx].field_8
                mem[_30] = _34
                mem[_30 + 32] = stor3[idx].field_256
                mem[_30 + 64] = stor3[idx].field_264
                mem[_30 + 96] = stor3[idx].field_272
                mem[_30 + 128] = stor3[idx].field_512
                mem[_30 + 160] = stor3[idx].field_768
                mem[_30 + 192] = stor3[idx].field_776
                mem[s] = _30
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(3)
            mem[_34 + 32] = stor3[idx].field_0
            t = _34 + 32
            u = sha3(mem[0])
            while _34 + stor3[u].field_1 > t:
                mem[t + 32] = sub_1d25cd6d[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_30] = _34
            mem[_30 + 32] = stor3[u].field_256
            mem[_30 + 64] = stor3[u].field_264
            mem[_30 + 96] = stor3[u].field_272
            mem[_30 + 128] = stor3[u].field_512
            mem[_30 + 160] = stor3[u].field_768
            mem[_30 + 192] = stor3[u].field_776
            mem[t] = _30
            t = t + 32
            u = u + 1
            continue 
        if stor3[idx].field_0 == stor3[idx].field_1 < 32:
            revert with 'NH{q', 34
        if stor3[idx].field_1:
            if 31 >= stor3[idx].field_1:
                mem[_34 + 32] = 256 * stor3[idx].field_8
            else:
                mem[0] = (4 * idx) + sha3(3)
                mem[_34 + 32] = stor3[idx].field_0
                t = _34 + 32
                u = sha3(mem[0])
                while _34 + stor3[idx].field_1 > t:
                    mem[t + 32] = sub_1d25cd6d[u]
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_30] = _34
        mem[_30 + 32] = stor3[idx].field_256
        mem[_30 + 64] = stor3[idx].field_264
        mem[_30 + 96] = stor3[idx].field_272
        mem[_30 + 128] = stor3[idx].field_512
        mem[_30 + 160] = stor3[idx].field_768
        mem[_30 + 192] = stor3[idx].field_776
        mem[s] = _30
        s = s + 32
        idx = idx + 1
        continue 
    _31 = mem[64]
    mem[mem[64]] = 32
    _32 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _32:
        mem[u] = t + -_31 - 64
        _56 = mem[s]
        _58 = mem[mem[s]]
        mem[t] = 224
        _59 = mem[_58]
        mem[t + 224] = mem[_58]
        v = 0
        while v < _59:
            mem[t + v + 256] = mem[_58 + v + 32]
            v = v + 32
            continue 
        if ceil32(_59) > _59:
            mem[t + _59 + 256] = 0
        mem[t + 32] = mem[_56 + 63 len 1]
        mem[t + 64] = mem[_56 + 95 len 1]
        mem[t + 96] = mem[_56 + 127 len 1]
        mem[t + 128] = mem[_56 + 128]
        mem[t + 160] = mem[_56 + 191 len 1]
        mem[t + 192] = mem[_56 + 223 len 1]
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_59) + 256
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
