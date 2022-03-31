contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address _governanceAddress; offset 8
uint256 stor0; offset 8
mapping of struct sub_f6c8d8de;
mapping of uint256 sub_355d22d9;
mapping of uint256 sub_69c65ccd;
mapping of uint256 sub_25e3ee25;
array of struct stor5;
mapping of uint256 sub_5ef7c13d;
mapping of uint256 sub_1a1a6a39;
mapping of uint256 sub_17a17768;
mapping of uint256 sub_187d606b;
array of struct stor10;
mapping of uint256 sub_1b6d980d;
mapping of uint8 stor12;
mapping of uint256 sub_cbf9e09f;

function sub_17a17768(?) payable {
    require calldata.size - 4 >= 64
    return sub_17a17768[arg1][address(arg2)]
}

function sub_187d606b(?) payable {
    require calldata.size - 4 >= 64
    return sub_187d606b[arg1][address(arg2)]
}

function sub_1a1a6a39(?) payable {
    require calldata.size - 4 >= 64
    return sub_1a1a6a39[arg1][address(arg2)]
}

function sub_1b6d980d(?) payable {
    require calldata.size - 4 >= 32
    return sub_1b6d980d[arg1]
}

function _governance() payable {
    return _governanceAddress
}

function sub_25e3ee25(?) payable {
    require calldata.size - 4 >= 64
    return sub_25e3ee25[arg1][address(arg2)]
}

function sub_355d22d9(?) payable {
    require calldata.size - 4 >= 32
    return sub_355d22d9[arg1]
}

function sub_45905e0d(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[address(arg1)])
}

function sub_5ef7c13d(?) payable {
    require calldata.size - 4 >= 64
    return sub_5ef7c13d[arg1][arg2]
}

function sub_69c65ccd(?) payable {
    require calldata.size - 4 >= 64
    return sub_69c65ccd[arg1][address(arg2)]
}

function sub_cbf9e09f(?) payable {
    require calldata.size - 4 >= 64
    return sub_cbf9e09f[arg1][address(arg2)]
}

function sub_f6c8d8de(?) payable {
    require calldata.size - 4 >= 32
    return sub_f6c8d8de[arg1].field_0, 
           sub_f6c8d8de[arg1].field_256,
           sub_f6c8d8de[arg1].field_512,
           sub_f6c8d8de[arg1].field_768,
           sub_f6c8d8de[arg1].field_1024,
           sub_f6c8d8de[arg1].field_1280,
           sub_f6c8d8de[arg1].field_1536,
           sub_f6c8d8de[arg1].field_1792,
           sub_f6c8d8de[arg1].field_2048,
           sub_f6c8d8de[arg1].field_2304
}

function _fallback() payable {
    revert
}

function sub_d1f33297(?) payable {
    require calldata.size - 4 >= 64
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    sub_1b6d980d[arg1] = arg2
}

function sub_16347787(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    sub_5ef7c13d[arg1][arg2] = arg3
}

function sub_05687967(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    sub_25e3ee25[arg1][address(arg2)] = arg3
}

function sub_221b7ec6(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    sub_1a1a6a39[arg1][address(arg2)] = arg3
}

function sub_4b88bf76(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    sub_17a17768[arg1][address(arg2)] = arg3
}

function sub_6a54d910(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    sub_69c65ccd[arg1][address(arg2)] = arg3
}

function sub_7611f5c1(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    sub_187d606b[arg1][address(arg2)] = arg3
}

function sub_8b86deb6(?) payable {
    require calldata.size - 4 >= 64
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor12[address(arg1)] = uint8(arg2)
}

function sub_520bc922(?) payable {
    require calldata.size - 4 >= 32
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    stor10.length++
    stor10[stor10.length].field_0 = arg1
}

function initialize() payable {
    if uint8(stor0.field_0):
        revert with 0, 'initialize: Already initialized!'
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, tx.origin)
    Mask(248, 0, stor0.field_8) = 0
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    if not arg1:
        revert with 0, 'new governance the zero address'
    emit GovernanceTransferred(_governanceAddress, arg1);
    _governanceAddress = arg1
}

function sub_df17578e(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    if arg3 + sub_cbf9e09f[arg1][address(arg2)] < sub_cbf9e09f[arg1][address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_cbf9e09f[arg1][address(arg2)] += arg3
}

function sub_134353b0(?) payable {
    require calldata.size - 4 >= 352
    require calldata.size - 36 >= 320
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    sub_f6c8d8de[arg1].field_0 = arg2
    sub_f6c8d8de[arg1].field_256 = arg3
    sub_f6c8d8de[arg1].field_512 = arg4
    sub_f6c8d8de[arg1].field_768 = arg5
    sub_f6c8d8de[arg1].field_1024 = arg6
    sub_f6c8d8de[arg1].field_1280 = arg7
    sub_f6c8d8de[arg1].field_1536 = arg8
    sub_f6c8d8de[arg1].field_1792 = arg9
    sub_f6c8d8de[arg1].field_2048 = arg10
    sub_f6c8d8de[arg1].field_2304 = arg11
}

function sub_dc422cf0(?) payable {
    if stor10.length:
        mem[128] = uint256(stor10.field_0)
        idx = 128
        s = 0
        while (32 * stor10.length) + 96 > idx:
            mem[idx + 32] = stor10[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor10.length, data=mem[128 len 32 * stor10.length])
    mem[(32 * stor10.length) + 128] = 32
    mem[(32 * stor10.length) + 160] = stor10.length
    mem[(32 * stor10.length) + 192 len 32 * stor10.length] = mem[128 len 32 * stor10.length]
    return memory
      from (32 * stor10.length) + 128
       len (96 * stor10.length) + 64
}

function sub_6d309ba3(?) payable {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    stor5[cd[4]][address(cd[36])].field_0 = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while stor5[cd[4]][address(cd[36])].field_0 > idx:
            stor5[cd[4]][address(cd[36])][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            stor5[cd[4]][address(cd[36])][s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while stor5[cd[4]][address(cd[36])].field_0 > idx:
            stor5[cd[4]][address(cd[36])][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_5345c7c5(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    if not sub_f6c8d8de[arg1].field_0:
        revert with 0, 'no team'
    if sub_f6c8d8de[arg1].field_512 != 1:
        revert with 0, 'no captain'
    if arg2 + sub_f6c8d8de[arg1].field_1280 < sub_f6c8d8de[arg1].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + sub_69c65ccd[arg1][address(arg3)] < sub_69c65ccd[arg1][address(arg3)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_69c65ccd[arg1][address(arg3)] += arg2
    if arg2 + sub_25e3ee25[arg1][address(arg3)] < sub_25e3ee25[arg1][address(arg3)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_25e3ee25[arg1][address(arg3)] += arg2
    if arg2 + sub_f6c8d8de[arg1].field_1536 < sub_f6c8d8de[arg1].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    sub_187d606b[arg1][address(arg3)] = block.timestamp
    sub_f6c8d8de[arg1].field_256 = sub_f6c8d8de[arg1].field_256
    sub_f6c8d8de[arg1].field_1280 += arg2
    sub_f6c8d8de[arg1].field_1536 += arg2
}

function sub_23eea2ee(?) payable {
    require calldata.size - 4 >= 128
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    if not sub_f6c8d8de[arg1].field_0:
        revert with 0, 'no team'
    if not sub_f6c8d8de[arg1].field_512:
        revert with 0, 'no captain'
    stor5[arg1][address(arg4)].field_0++
    if not stor5[arg1][address(arg4)].field_0:
        stor5[arg1][address(arg4)][stor5[arg1][address(arg4)].field_0].field_0 = 0
        sub_5ef7c13d[arg1][0] = 0
    stor5[arg1][address(arg4)][stor5[arg1][address(arg4)].field_0].field_0 = arg2
    sub_5ef7c13d[arg1][arg2] = stor5[arg1][address(arg4)].field_0 - 1
    if arg3 + sub_25e3ee25[arg1][address(arg4)] < sub_25e3ee25[arg1][address(arg4)]:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 + sub_f6c8d8de[arg1].field_1536 < sub_f6c8d8de[arg1].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    sub_1b6d980d[arg2] = arg3
    sub_f6c8d8de[arg1].field_256 = sub_f6c8d8de[arg1].field_256
    sub_f6c8d8de[arg1].field_1536 += arg3
    sub_25e3ee25[arg1][address(arg4)] += arg3
    sub_187d606b[arg1][address(arg4)] = block.timestamp
}

function sub_58597f9b(?) payable {
    require calldata.size - 4 >= 64
    if not stor5[arg1][address(arg2)].field_0:
        mem[(64 * stor5[arg1][address(arg2)].field_0) + 160] = 32
        mem[(64 * stor5[arg1][address(arg2)].field_0) + 192] = stor5[arg1][address(arg2)].field_0
        mem[(64 * stor5[arg1][address(arg2)].field_0) + 224 len 161 * stor5[arg1][address(arg2)].field_0] = mem[(32 * stor5[arg1][address(arg2)].field_0) + 160 len 32 * stor5[arg1][address(arg2)].field_0]
    else:
        mem[(32 * stor5[arg1][address(arg2)].field_0) + 160] = stor5[arg1][address(arg2)].field_0
        idx = (32 * stor5[arg1][address(arg2)].field_0) + 160
        s = 0
        while (64 * stor5[arg1][address(arg2)].field_0) + 128 > idx:
            mem[idx + 32] = stor5[arg1][address(arg2)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(64 * stor5[arg1][address(arg2)].field_0) + 160] = 32
        mem[(64 * stor5[arg1][address(arg2)].field_0) + 192] = stor5[arg1][address(arg2)].field_0
        mem[(64 * stor5[arg1][address(arg2)].field_0) + 224 len 32 * stor5[arg1][address(arg2)].field_0] = mem[(32 * stor5[arg1][address(arg2)].field_0) + 160 len 32 * stor5[arg1][address(arg2)].field_0]
    return memory
      from (64 * stor5[arg1][address(arg2)].field_0) + 160
       len (161 * stor5[arg1][address(arg2)].field_0) + 64
}

function sub_9d5de6db(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    mem[96] = stor5[arg1][address(arg2)].field_0
    if stor5[arg1][address(arg2)].field_0:
        idx = 128
        s = 0
        while (32 * stor5[arg1][address(arg2)].field_0) + 96 > idx:
            mem[idx + 32] = stor5[arg1][address(arg2)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require stor5[arg1][address(arg2)].field_0 - 1 < stor5[arg1][address(arg2)].field_0
    require sub_5ef7c13d[arg1][arg3] < stor5[arg1][address(arg2)].field_0
    stor5[arg1][address(arg2)][stor6[arg1][arg3]].field_0 = mem[(32 * stor5[arg1][address(arg2)].field_0 - 1) + 128]
    require stor5[arg1][address(arg2)].field_0 - 1 < stor5[arg1][address(arg2)].field_0
    stor5[arg1][address(arg2)][stor5[arg1][address(arg2)].field_0].field_0 = 0
    stor5[arg1][address(arg2)].field_0--
    if stor5[arg1][address(arg2)].field_0 > stor5[arg1][address(arg2)].field_0 - 1:
        idx = stor5[arg1][address(arg2)].field_0 - 1
        while stor5[arg1][address(arg2)].field_0 > idx:
            stor5[arg1][address(arg2)][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_5ef7c13d[arg1][mem[(32 * stor5[arg1][address(arg2)].field_0 - 1) + 128]] = sub_5ef7c13d[arg1][arg3]
    sub_5ef7c13d[arg1][arg3] = 0
}

function rewardPerToken(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not sub_f6c8d8de[arg1].field_1536:
        return sub_f6c8d8de[arg1].field_2304
    if sub_f6c8d8de[arg1].field_2048 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not arg2 - sub_f6c8d8de[arg1].field_2048:
        if not sub_f6c8d8de[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304 < sub_f6c8d8de[arg1].field_2304:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304)
    if (arg2 * sub_f6c8d8de[arg1].field_1792) - (sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / arg2 - sub_f6c8d8de[arg1].field_2048 != sub_f6c8d8de[arg1].field_1792:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (arg2 * sub_f6c8d8de[arg1].field_1792) - (sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792):
        if not sub_f6c8d8de[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304 < sub_f6c8d8de[arg1].field_2304:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304)
    if (10^18 * arg2 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / (arg2 * sub_f6c8d8de[arg1].field_1792) - (sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not sub_f6c8d8de[arg1].field_1536:
        revert with 0, 'SafeMath: division by zero', 0
    if ((10^18 * arg2 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304 < sub_f6c8d8de[arg1].field_2304:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * arg2 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304)
}

function sub_76ae5299(?) payable {
    require calldata.size - 4 >= 96
    if not sub_f6c8d8de[arg1].field_1536:
        if sub_1a1a6a39[arg1][address(arg2)] > sub_f6c8d8de[arg1].field_2304:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not sub_25e3ee25[arg1][address(arg2)]:
            if sub_17a17768[arg1][address(arg2)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_17a17768[arg1][address(arg2)]
        if (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / sub_25e3ee25[arg1][address(arg2)] != sub_f6c8d8de[arg1].field_2304 - sub_1a1a6a39[arg1][address(arg2)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_17a17768[arg1][address(arg2)] + ((sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18) < (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_17a17768[arg1][address(arg2)] + ((sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18))
    if sub_f6c8d8de[arg1].field_2048 > arg3:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not arg3 - sub_f6c8d8de[arg1].field_2048:
        if not sub_f6c8d8de[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304 < sub_f6c8d8de[arg1].field_2304:
            revert with 0, 'SafeMath: addition overflow'
        if sub_1a1a6a39[arg1][address(arg2)] > (0 / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not sub_25e3ee25[arg1][address(arg2)]:
            if sub_17a17768[arg1][address(arg2)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_17a17768[arg1][address(arg2)]
        if (0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) + (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / sub_25e3ee25[arg1][address(arg2)] != (0 / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304 - sub_1a1a6a39[arg1][address(arg2)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_17a17768[arg1][address(arg2)] + ((0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) + (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18) < (0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) + (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_17a17768[arg1][address(arg2)] + ((0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) + (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18))
    if (arg3 * sub_f6c8d8de[arg1].field_1792) - (sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / arg3 - sub_f6c8d8de[arg1].field_2048 != sub_f6c8d8de[arg1].field_1792:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (arg3 * sub_f6c8d8de[arg1].field_1792) - (sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792):
        if not sub_f6c8d8de[arg1].field_1536:
            revert with 0, 'SafeMath: division by zero', 0
        if (0 / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304 < sub_f6c8d8de[arg1].field_2304:
            revert with 0, 'SafeMath: addition overflow'
        if sub_1a1a6a39[arg1][address(arg2)] > (0 / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not sub_25e3ee25[arg1][address(arg2)]:
            if sub_17a17768[arg1][address(arg2)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_17a17768[arg1][address(arg2)]
        if (0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) + (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / sub_25e3ee25[arg1][address(arg2)] != (0 / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304 - sub_1a1a6a39[arg1][address(arg2)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_17a17768[arg1][address(arg2)] + ((0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) + (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18) < (0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) + (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_17a17768[arg1][address(arg2)] + ((0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) + (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18))
    if (10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / (arg3 * sub_f6c8d8de[arg1].field_1792) - (sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not sub_f6c8d8de[arg1].field_1536:
        revert with 0, 'SafeMath: division by zero', 0
    if ((10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304 < sub_f6c8d8de[arg1].field_2304:
        revert with 0, 'SafeMath: addition overflow'
    if sub_1a1a6a39[arg1][address(arg2)] > ((10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not sub_25e3ee25[arg1][address(arg2)]:
        if sub_17a17768[arg1][address(arg2)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return sub_17a17768[arg1][address(arg2)]
    if ((10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) + (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / sub_25e3ee25[arg1][address(arg2)] != ((10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536) + sub_f6c8d8de[arg1].field_2304 - sub_1a1a6a39[arg1][address(arg2)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if sub_17a17768[arg1][address(arg2)] + (((10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) + (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18) < ((10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) + (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_17a17768[arg1][address(arg2)] + (((10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) + (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18))
}

function sub_d7f06e90(?) payable {
    require calldata.size - 4 >= 96
    mem[0] = msg.sender
    mem[32] = 12
    if not stor12[msg.sender]:
        revert with 0, 'is not implement'
    mem[96] = stor10.length
    mem[64] = (32 * stor10.length) + 128
    if not stor10.length:
        idx = 0
        s = 0
        t = 0
        while idx < stor10.length:
            mem[0] = 10
            _394 = mem[64]
            mem[64] = mem[64] + 320
            mem[_394] = 0
            mem[_394 + 32] = 0
            mem[_394 + 64] = 0
            mem[_394 + 96] = 0
            mem[_394 + 128] = 0
            mem[_394 + 160] = 0
            mem[_394 + 192] = 0
            mem[_394 + 224] = 0
            mem[_394 + 256] = 0
            mem[_394 + 288] = 0
            mem[0] = stor10[idx].field_0
            mem[32] = 1
            _396 = mem[64]
            mem[64] = mem[64] + 320
            mem[_396] = sub_f6c8d8de[stor10[idx].field_0].field_0
            mem[_396 + 32] = sub_f6c8d8de[stor10[idx].field_0].field_256
            mem[_396 + 64] = sub_f6c8d8de[stor10[idx].field_0].field_512
            mem[_396 + 96] = sub_f6c8d8de[stor10[idx].field_0].field_768
            mem[_396 + 128] = sub_f6c8d8de[stor10[idx].field_0].field_1024
            mem[_396 + 160] = sub_f6c8d8de[stor10[idx].field_0].field_1280
            mem[_396 + 192] = sub_f6c8d8de[stor10[idx].field_0].field_1536
            mem[_396 + 224] = sub_f6c8d8de[stor10[idx].field_0].field_1792
            mem[_396 + 256] = sub_f6c8d8de[stor10[idx].field_0].field_2048
            mem[_396 + 288] = sub_f6c8d8de[stor10[idx].field_0].field_2304
            if sub_f6c8d8de[stor10[idx].field_0].field_512 != 1:
                mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                mem[32] = 1
                if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                    mem[_396 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                    mem[_396 + 256] = block.timestamp
                    mem[_396 + 96] = 0
                    mem[_396 + 224] = 0
                    mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                    mem[32] = 1
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                else:
                    _415 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_415] = 30
                    mem[_415 + 32] = 'SafeMath: subtraction overflow'
                    if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 > arg1:
                        _437 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _437 + 68] = mem[idx + _415 + 32]
                            idx = idx + 32
                            continue 
                        mem[_437 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _437 + -mem[64] + 100
                    if not arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048:
                        _515 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_515] = 26
                        mem[_515 + 32] = 'SafeMath: division by zero'
                        if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                            _530 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _530 + 68] = mem[idx + _515 + 32]
                                idx = idx + 32
                                continue 
                            mem[_530 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _530 + -mem[64] + 100
                        if (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_396 + 288] = (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                        mem[_396 + 256] = block.timestamp
                        mem[_396 + 96] = 0
                        mem[_396 + 224] = 0
                        mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                        mem[32] = 1
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 += 0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                    else:
                        if (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 != sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792):
                            _520 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_520] = 26
                            mem[_520 + 32] = 'SafeMath: division by zero'
                            if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                                _538 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _538 + 68] = mem[idx + _520 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_538 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _538 + -mem[64] + 100
                            if (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_396 + 288] = (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                            mem[_396 + 256] = block.timestamp
                            mem[_396 + 96] = 0
                            mem[_396 + 224] = 0
                            mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                            mem[32] = 1
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 += 0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                        else:
                            if (10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _529 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_529] = 26
                            mem[_529 + 32] = 'SafeMath: division by zero'
                            if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                                _544 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _544 + 68] = mem[idx + _529 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_544 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _544 + -mem[64] + 100
                            if ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_396 + 288] = ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                            mem[_396 + 256] = block.timestamp
                            mem[_396 + 96] = 0
                            mem[_396 + 224] = 0
                            mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                            mem[32] = 1
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 += (10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
            else:
                if sub_f6c8d8de[stor10[idx].field_0].field_1536 > 0:
                    if sub_f6c8d8de[stor10[idx].field_0].field_1536 + t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    require s < mem[96]
                    mem[(32 * s) + 128] = _396
                    idx = idx + 1
                    s = s + 1
                    t = sub_f6c8d8de[stor10[idx].field_0].field_1536 + t
                    continue 
                mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                mem[32] = 1
                if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                    mem[_396 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                    mem[_396 + 256] = block.timestamp
                    mem[_396 + 96] = 0
                    mem[_396 + 224] = 0
                    mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                    mem[32] = 1
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                else:
                    _432 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_432] = 30
                    mem[_432 + 32] = 'SafeMath: subtraction overflow'
                    if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 > arg1:
                        _453 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _453 + 68] = mem[idx + _432 + 32]
                            idx = idx + 32
                            continue 
                        mem[_453 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _453 + -mem[64] + 100
                    if not arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048:
                        _523 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_523] = 26
                        mem[_523 + 32] = 'SafeMath: division by zero'
                        if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                            _540 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _540 + 68] = mem[idx + _523 + 32]
                                idx = idx + 32
                                continue 
                            mem[_540 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _540 + -mem[64] + 100
                        if (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_396 + 288] = (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                        mem[_396 + 256] = block.timestamp
                        mem[_396 + 96] = 0
                        mem[_396 + 224] = 0
                        mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                        mem[32] = 1
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 += 0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                    else:
                        if (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 != sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792):
                            _531 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_531] = 26
                            mem[_531 + 32] = 'SafeMath: division by zero'
                            if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                                _547 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _547 + 68] = mem[idx + _531 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_547 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _547 + -mem[64] + 100
                            if (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_396 + 288] = (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                            mem[_396 + 256] = block.timestamp
                            mem[_396 + 96] = 0
                            mem[_396 + 224] = 0
                            mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                            mem[32] = 1
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 += 0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                        else:
                            if (10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _539 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_539] = 26
                            mem[_539 + 32] = 'SafeMath: division by zero'
                            if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                                _550 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _550 + 68] = mem[idx + _539 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_550 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _550 + -mem[64] + 100
                            if ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_396 + 288] = ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                            mem[_396 + 256] = block.timestamp
                            mem[_396 + 96] = 0
                            mem[_396 + 224] = 0
                            mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                            mem[32] = 1
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 += (10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
            idx = idx + 1
            s = s
            t = t
            continue 
        t = 0
        while t < s:
            u = t + 1
            while u < s:
                require t < mem[96]
                require u < mem[96]
                if mem[mem[(32 * u) + 128] + 192] < mem[mem[(32 * t) + 128] + 192]:
                    _1075 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1075] = 0
                    mem[_1075 + 32] = 0
                    mem[_1075 + 64] = 0
                    mem[_1075 + 96] = 0
                    mem[_1075 + 128] = 0
                    mem[_1075 + 160] = 0
                    mem[_1075 + 192] = 0
                    mem[_1075 + 224] = 0
                    mem[_1075 + 256] = 0
                    mem[_1075 + 288] = 0
                    require t < mem[96]
                    _1089 = mem[(32 * t) + 128]
                    require u < mem[96]
                    require t < mem[96]
                    mem[(32 * t) + 128] = mem[(32 * u) + 128]
                    require u < mem[96]
                    mem[(32 * u) + 128] = _1089
                u = u + 1
                continue 
            t = t + 1
            continue 
        if not arg2:
            _820 = mem[64]
            mem[64] = mem[64] + 64
            mem[_820] = 26
            mem[_820 + 32] = 'SafeMath: division by zero'
            _856 = mem[64]
            mem[64] = mem[64] + 64
            mem[_856] = 26
            mem[_856 + 32] = 'SafeMath: division by zero'
            if s:
                t = 0
                while t < s:
                    _1317 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1317] = 0
                    mem[_1317 + 32] = 0
                    mem[_1317 + 64] = 0
                    mem[_1317 + 96] = 0
                    mem[_1317 + 128] = 0
                    mem[_1317 + 160] = 0
                    mem[_1317 + 192] = 0
                    mem[_1317 + 224] = 0
                    mem[_1317 + 256] = 0
                    mem[_1317 + 288] = 0
                    require t < mem[96]
                    if t + 1:
                        if (1000 * t) + 1000 / t + 1 != 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (1000 * t) + 1000 <= 3:
                            if (1000 * t) + 1000:
                                if mem[mem[(32 * t) + 128] + 192] != mem[mem[(32 * t) + 128] + 192]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[mem[(32 * t) + 128] + 192] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            s = ((1000 * t) + 1000 / 2) + 1
                            u = (1000 * t) + 1000
                            while s < u:
                                require s
                                s = ((1000 * t) + 1000 / s) + s / 2
                                u = s
                                continue 
                            if u:
                                if mem[mem[(32 * t) + 128] + 192] * u / u != mem[mem[(32 * t) + 128] + 192]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[mem[(32 * t) + 128] + 192] * u < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    t = t + 1
                    continue 
                if 0 >= s:
                    return arg2
                _1326 = mem[64]
                mem[64] = mem[64] + 320
                mem[_1326] = 0
                mem[_1326 + 32] = 0
                mem[_1326 + 64] = 0
                mem[_1326 + 96] = 0
                mem[_1326 + 128] = 0
                mem[_1326 + 160] = 0
                mem[_1326 + 192] = 0
                mem[_1326 + 224] = 0
                mem[_1326 + 256] = 0
                mem[_1326 + 288] = 0
                require 0 < mem[96]
                s = 501
                t = 1000
                while s < t:
                    require s
                    s = (1000 / s) + s / 2
                    t = s
                    continue 
                if not t:
                    if arg2:
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            if 0 / 50 * arg2 / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                else:
                    if mem[mem[128] + 192] * t / t != mem[mem[128] + 192]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            if mem[mem[128] + 192] * t * 50 * arg2 / 100 / 50 * arg2 / 100 != mem[mem[128] + 192] * t:
                                revert with 0, 'SafeMath: multiplication overflow'
        else:
            if 50 * arg2 / arg2 != 50:
                revert with 0, 'SafeMath: multiplication overflow'
            _822 = mem[64]
            mem[64] = mem[64] + 64
            mem[_822] = 26
            mem[_822 + 32] = 'SafeMath: division by zero'
            _859 = mem[64]
            mem[64] = mem[64] + 64
            mem[_859] = 26
            mem[_859 + 32] = 'SafeMath: division by zero'
            if s:
                t = 0
                while t < s:
                    _1316 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1316] = 0
                    mem[_1316 + 32] = 0
                    mem[_1316 + 64] = 0
                    mem[_1316 + 96] = 0
                    mem[_1316 + 128] = 0
                    mem[_1316 + 160] = 0
                    mem[_1316 + 192] = 0
                    mem[_1316 + 224] = 0
                    mem[_1316 + 256] = 0
                    mem[_1316 + 288] = 0
                    require t < mem[96]
                    if t + 1:
                        if (1000 * t) + 1000 / t + 1 != 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (1000 * t) + 1000 <= 3:
                            if (1000 * t) + 1000:
                                if mem[mem[(32 * t) + 128] + 192] != mem[mem[(32 * t) + 128] + 192]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[mem[(32 * t) + 128] + 192] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            s = ((1000 * t) + 1000 / 2) + 1
                            u = (1000 * t) + 1000
                            while s < u:
                                require s
                                s = ((1000 * t) + 1000 / s) + s / 2
                                u = s
                                continue 
                            if u:
                                if mem[mem[(32 * t) + 128] + 192] * u / u != mem[mem[(32 * t) + 128] + 192]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[mem[(32 * t) + 128] + 192] * u < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    t = t + 1
                    continue 
                if 0 >= s:
                    return arg2
                _1322 = mem[64]
                mem[64] = mem[64] + 320
                mem[_1322] = 0
                mem[_1322 + 32] = 0
                mem[_1322 + 64] = 0
                mem[_1322 + 96] = 0
                mem[_1322 + 128] = 0
                mem[_1322 + 160] = 0
                mem[_1322 + 192] = 0
                mem[_1322 + 224] = 0
                mem[_1322 + 256] = 0
                mem[_1322 + 288] = 0
                require 0 < mem[96]
                s = 501
                t = 1000
                while s < t:
                    require s
                    s = (1000 / s) + s / 2
                    t = s
                    continue 
                if not t:
                    if arg2:
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            if 0 / 50 * arg2 / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                else:
                    if mem[mem[128] + 192] * t / t != mem[mem[128] + 192]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            if mem[mem[128] + 192] * t * 50 * arg2 / 100 / 50 * arg2 / 100 != mem[mem[128] + 192] * t:
                                revert with 0, 'SafeMath: multiplication overflow'
    else:
        mem[64] = (32 * stor10.length) + 448
        mem[(32 * stor10.length) + 128] = 0
        mem[(32 * stor10.length) + 160] = 0
        mem[(32 * stor10.length) + 192] = 0
        mem[(32 * stor10.length) + 224] = 0
        mem[(32 * stor10.length) + 256] = 0
        mem[(32 * stor10.length) + 288] = 0
        mem[(32 * stor10.length) + 320] = 0
        mem[(32 * stor10.length) + 352] = 0
        mem[(32 * stor10.length) + 384] = 0
        mem[(32 * stor10.length) + 416] = 0
        mem[var23001] = (32 * stor10.length) + 128
        s = var23001
        idx = var23002
        while idx - 1:
            mem[64] = mem[64] + 320
            mem[(32 * stor10.length) + 128] = 0
            mem[(32 * stor10.length) + 160] = 0
            mem[(32 * stor10.length) + 192] = 0
            mem[(32 * stor10.length) + 224] = 0
            mem[(32 * stor10.length) + 256] = 0
            mem[(32 * stor10.length) + 288] = 0
            mem[(32 * stor10.length) + 320] = 0
            mem[(32 * stor10.length) + 352] = 0
            mem[(32 * stor10.length) + 384] = 0
            mem[(32 * stor10.length) + 416] = 0
            mem[s + 32] = (32 * stor10.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        t = 0
        while idx < stor10.length:
            mem[0] = 10
            _1072 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1072] = 0
            mem[_1072 + 32] = 0
            mem[_1072 + 64] = 0
            mem[_1072 + 96] = 0
            mem[_1072 + 128] = 0
            mem[_1072 + 160] = 0
            mem[_1072 + 192] = 0
            mem[_1072 + 224] = 0
            mem[_1072 + 256] = 0
            mem[_1072 + 288] = 0
            mem[0] = stor10[idx].field_0
            mem[32] = 1
            _1074 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1074] = sub_f6c8d8de[stor10[idx].field_0].field_0
            mem[_1074 + 32] = sub_f6c8d8de[stor10[idx].field_0].field_256
            mem[_1074 + 64] = sub_f6c8d8de[stor10[idx].field_0].field_512
            mem[_1074 + 96] = sub_f6c8d8de[stor10[idx].field_0].field_768
            mem[_1074 + 128] = sub_f6c8d8de[stor10[idx].field_0].field_1024
            mem[_1074 + 160] = sub_f6c8d8de[stor10[idx].field_0].field_1280
            mem[_1074 + 192] = sub_f6c8d8de[stor10[idx].field_0].field_1536
            mem[_1074 + 224] = sub_f6c8d8de[stor10[idx].field_0].field_1792
            mem[_1074 + 256] = sub_f6c8d8de[stor10[idx].field_0].field_2048
            mem[_1074 + 288] = sub_f6c8d8de[stor10[idx].field_0].field_2304
            if sub_f6c8d8de[stor10[idx].field_0].field_512 != 1:
                mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                mem[32] = 1
                if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                    mem[_1074 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                    mem[_1074 + 256] = block.timestamp
                    mem[_1074 + 96] = 0
                    mem[_1074 + 224] = 0
                    mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                    mem[32] = 1
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                else:
                    _1104 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1104] = 30
                    mem[_1104 + 32] = 'SafeMath: subtraction overflow'
                    if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 > arg1:
                        _1125 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1125 + 68] = mem[idx + _1104 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1125 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1125 + -mem[64] + 100
                    if not arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048:
                        _1162 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1162] = 26
                        mem[_1162 + 32] = 'SafeMath: division by zero'
                        if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                            _1174 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1174 + 68] = mem[idx + _1162 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1174 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1174 + -mem[64] + 100
                        if (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_1074 + 288] = (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                        mem[_1074 + 256] = block.timestamp
                        mem[_1074 + 96] = 0
                        mem[_1074 + 224] = 0
                        mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                        mem[32] = 1
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 += 0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                    else:
                        if (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 != sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792):
                            _1165 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1165] = 26
                            mem[_1165 + 32] = 'SafeMath: division by zero'
                            if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                                _1181 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1181 + 68] = mem[idx + _1165 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1181 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1181 + -mem[64] + 100
                            if (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_1074 + 288] = (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                            mem[_1074 + 256] = block.timestamp
                            mem[_1074 + 96] = 0
                            mem[_1074 + 224] = 0
                            mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                            mem[32] = 1
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 += 0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                        else:
                            if (10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1173 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1173] = 26
                            mem[_1173 + 32] = 'SafeMath: division by zero'
                            if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                                _1185 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1185 + 68] = mem[idx + _1173 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1185 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1185 + -mem[64] + 100
                            if ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_1074 + 288] = ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                            mem[_1074 + 256] = block.timestamp
                            mem[_1074 + 96] = 0
                            mem[_1074 + 224] = 0
                            mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                            mem[32] = 1
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 += (10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
            else:
                if sub_f6c8d8de[stor10[idx].field_0].field_1536 > 0:
                    if sub_f6c8d8de[stor10[idx].field_0].field_1536 + t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    require s < mem[96]
                    mem[(32 * s) + 128] = _1074
                    idx = idx + 1
                    s = s + 1
                    t = sub_f6c8d8de[stor10[idx].field_0].field_1536 + t
                    continue 
                mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                mem[32] = 1
                if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                    mem[_1074 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                    mem[_1074 + 256] = block.timestamp
                    mem[_1074 + 96] = 0
                    mem[_1074 + 224] = 0
                    mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                    mem[32] = 1
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                    sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                else:
                    _1121 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1121] = 30
                    mem[_1121 + 32] = 'SafeMath: subtraction overflow'
                    if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 > arg1:
                        _1140 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1140 + 68] = mem[idx + _1121 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1140 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1140 + -mem[64] + 100
                    if not arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048:
                        _1168 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1168] = 26
                        mem[_1168 + 32] = 'SafeMath: division by zero'
                        if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                            _1183 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1183 + 68] = mem[idx + _1168 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1183 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1183 + -mem[64] + 100
                        if (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_1074 + 288] = (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                        mem[_1074 + 256] = block.timestamp
                        mem[_1074 + 96] = 0
                        mem[_1074 + 224] = 0
                        mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                        mem[32] = 1
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                        sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 += 0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                    else:
                        if (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 != sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792):
                            _1175 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1175] = 26
                            mem[_1175 + 32] = 'SafeMath: division by zero'
                            if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                                _1188 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1188 + 68] = mem[idx + _1175 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1188 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1188 + -mem[64] + 100
                            if (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_1074 + 288] = (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                            mem[_1074 + 256] = block.timestamp
                            mem[_1074 + 96] = 0
                            mem[_1074 + 224] = 0
                            mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                            mem[32] = 1
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 += 0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                        else:
                            if (10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1182 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1182] = 26
                            mem[_1182 + 32] = 'SafeMath: division by zero'
                            if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                                _1190 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1190 + 68] = mem[idx + _1182 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1190 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1190 + -mem[64] + 100
                            if ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_1074 + 288] = ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) + sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                            mem[_1074 + 256] = block.timestamp
                            mem[_1074 + 96] = 0
                            mem[_1074 + 224] = 0
                            mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                            mem[32] = 1
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_0 = sub_f6c8d8de[stor10[idx].field_0].field_0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_256 = sub_f6c8d8de[stor10[idx].field_0].field_256
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_512 = sub_f6c8d8de[stor10[idx].field_0].field_512
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_768 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1024 = sub_f6c8d8de[stor10[idx].field_0].field_1024
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1280 = sub_f6c8d8de[stor10[idx].field_0].field_1280
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 = sub_f6c8d8de[stor10[idx].field_0].field_1536
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792 = 0
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 = block.timestamp
                            sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 += (10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
            idx = idx + 1
            s = s
            t = t
            continue 
        t = 0
        while t < s:
            u = t + 1
            while u < s:
                require t < mem[96]
                require u < mem[96]
                if mem[mem[(32 * u) + 128] + 192] < mem[mem[(32 * t) + 128] + 192]:
                    _1421 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1421] = 0
                    mem[_1421 + 32] = 0
                    mem[_1421 + 64] = 0
                    mem[_1421 + 96] = 0
                    mem[_1421 + 128] = 0
                    mem[_1421 + 160] = 0
                    mem[_1421 + 192] = 0
                    mem[_1421 + 224] = 0
                    mem[_1421 + 256] = 0
                    mem[_1421 + 288] = 0
                    require t < mem[96]
                    _1433 = mem[(32 * t) + 128]
                    require u < mem[96]
                    require t < mem[96]
                    mem[(32 * t) + 128] = mem[(32 * u) + 128]
                    require u < mem[96]
                    mem[(32 * u) + 128] = _1433
                u = u + 1
                continue 
            t = t + 1
            continue 
        if not arg2:
            _1341 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1341] = 26
            mem[_1341 + 32] = 'SafeMath: division by zero'
            _1371 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1371] = 26
            mem[_1371 + 32] = 'SafeMath: division by zero'
            if s:
                t = 0
                while t < s:
                    _1561 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1561] = 0
                    mem[_1561 + 32] = 0
                    mem[_1561 + 64] = 0
                    mem[_1561 + 96] = 0
                    mem[_1561 + 128] = 0
                    mem[_1561 + 160] = 0
                    mem[_1561 + 192] = 0
                    mem[_1561 + 224] = 0
                    mem[_1561 + 256] = 0
                    mem[_1561 + 288] = 0
                    require t < mem[96]
                    if t + 1:
                        if (1000 * t) + 1000 / t + 1 != 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (1000 * t) + 1000 <= 3:
                            if (1000 * t) + 1000:
                                if mem[mem[(32 * t) + 128] + 192] != mem[mem[(32 * t) + 128] + 192]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[mem[(32 * t) + 128] + 192] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            s = ((1000 * t) + 1000 / 2) + 1
                            u = (1000 * t) + 1000
                            while s < u:
                                require s
                                s = ((1000 * t) + 1000 / s) + s / 2
                                u = s
                                continue 
                            if u:
                                if mem[mem[(32 * t) + 128] + 192] * u / u != mem[mem[(32 * t) + 128] + 192]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[mem[(32 * t) + 128] + 192] * u < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    t = t + 1
                    continue 
                if 0 >= s:
                    return arg2
                _1569 = mem[64]
                mem[64] = mem[64] + 320
                mem[_1569] = 0
                mem[_1569 + 32] = 0
                mem[_1569 + 64] = 0
                mem[_1569 + 96] = 0
                mem[_1569 + 128] = 0
                mem[_1569 + 160] = 0
                mem[_1569 + 192] = 0
                mem[_1569 + 224] = 0
                mem[_1569 + 256] = 0
                mem[_1569 + 288] = 0
                require 0 < mem[96]
                s = 501
                t = 1000
                while s < t:
                    require s
                    s = (1000 / s) + s / 2
                    t = s
                    continue 
                if not t:
                    if arg2:
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            if 0 / 50 * arg2 / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                else:
                    if mem[mem[128] + 192] * t / t != mem[mem[128] + 192]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            if mem[mem[128] + 192] * t * 50 * arg2 / 100 / 50 * arg2 / 100 != mem[mem[128] + 192] * t:
                                revert with 0, 'SafeMath: multiplication overflow'
        else:
            if 50 * arg2 / arg2 != 50:
                revert with 0, 'SafeMath: multiplication overflow'
            _1342 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1342] = 26
            mem[_1342 + 32] = 'SafeMath: division by zero'
            _1372 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1372] = 26
            mem[_1372 + 32] = 'SafeMath: division by zero'
            if s:
                t = 0
                while t < s:
                    _1560 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1560] = 0
                    mem[_1560 + 32] = 0
                    mem[_1560 + 64] = 0
                    mem[_1560 + 96] = 0
                    mem[_1560 + 128] = 0
                    mem[_1560 + 160] = 0
                    mem[_1560 + 192] = 0
                    mem[_1560 + 224] = 0
                    mem[_1560 + 256] = 0
                    mem[_1560 + 288] = 0
                    require t < mem[96]
                    if t + 1:
                        if (1000 * t) + 1000 / t + 1 != 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (1000 * t) + 1000 <= 3:
                            if (1000 * t) + 1000:
                                if mem[mem[(32 * t) + 128] + 192] != mem[mem[(32 * t) + 128] + 192]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[mem[(32 * t) + 128] + 192] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                        else:
                            s = ((1000 * t) + 1000 / 2) + 1
                            u = (1000 * t) + 1000
                            while s < u:
                                require s
                                s = ((1000 * t) + 1000 / s) + s / 2
                                u = s
                                continue 
                            if u:
                                if mem[mem[(32 * t) + 128] + 192] * u / u != mem[mem[(32 * t) + 128] + 192]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[mem[(32 * t) + 128] + 192] * u < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    t = t + 1
                    continue 
                if 0 >= s:
                    return arg2
                _1565 = mem[64]
                mem[64] = mem[64] + 320
                mem[_1565] = 0
                mem[_1565 + 32] = 0
                mem[_1565 + 64] = 0
                mem[_1565 + 96] = 0
                mem[_1565 + 128] = 0
                mem[_1565 + 160] = 0
                mem[_1565 + 192] = 0
                mem[_1565 + 224] = 0
                mem[_1565 + 256] = 0
                mem[_1565 + 288] = 0
                require 0 < mem[96]
                s = 501
                t = 1000
                while s < t:
                    require s
                    s = (1000 / s) + s / 2
                    t = s
                    continue 
                if not t:
                    if arg2:
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            if 0 / 50 * arg2 / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                else:
                    if mem[mem[128] + 192] * t / t != mem[mem[128] + 192]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            if mem[mem[128] + 192] * t * 50 * arg2 / 100 / 50 * arg2 / 100 != mem[mem[128] + 192] * t:
                                revert with 0, 'SafeMath: multiplication overflow'
    revert with 0, 'SafeMath: division by zero', 0
}



}
