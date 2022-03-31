contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address _governanceAddress; offset 8
mapping of struct sub_f6c8d8de;
mapping of uint256 sub_355d22d9;
mapping of uint256 sub_69c65ccd;
mapping of uint256 sub_25e3ee25;
array of struct sub_f96c4f5b;
mapping of uint256 sub_5ef7c13d;
mapping of uint256 sub_1a1a6a39;
mapping of uint256 sub_17a17768;
mapping of uint256 sub_187d606b;
array of struct sub_e21bd89c;
mapping of uint256 sub_1b6d980d;
mapping of uint8 stor12;
mapping of uint256 sub_cbf9e09f;

function sub_0e1086d2(?) payable {
    require calldata.size - 4 >= 32
    return sub_355d22d9[arg1]
}

function sub_0ff1cfec(?) payable {
    require calldata.size - 4 >= 32
    return sub_1b6d980d[arg1]
}

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

function _initialized() payable {
    return bool(stor0)
}

function sub_355d22d9(?) payable {
    require calldata.size - 4 >= 32
    return sub_355d22d9[arg1]
}

function sub_40cbc05c(?) payable {
    require calldata.size - 4 >= 64
    return sub_5ef7c13d[arg1][arg2]
}

function sub_45905e0d(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[address(arg1)])
}

function sub_5b3830f3(?) payable {
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

function sub_5ef7c13d(?) payable {
    require calldata.size - 4 >= 64
    return sub_5ef7c13d[arg1][arg2]
}

function sub_61efd9d5(?) payable {
    require calldata.size - 4 >= 64
    return sub_1a1a6a39[arg1][arg2]
}

function sub_69c65ccd(?) payable {
    require calldata.size - 4 >= 64
    return sub_69c65ccd[arg1][address(arg2)]
}

function sub_7769664c(?) payable {
    require calldata.size - 4 >= 64
    return sub_69c65ccd[arg1][arg2]
}

function sub_a3455893(?) payable {
    require calldata.size - 4 >= 64
    return sub_17a17768[arg1][arg2]
}

function sub_b03d369c(?) payable {
    require calldata.size - 4 >= 64
    return sub_187d606b[arg1][arg2]
}

function sub_c322fb83(?) payable {
    require calldata.size - 4 >= 64
    return sub_25e3ee25[arg1][arg2]
}

function sub_cbf9e09f(?) payable {
    require calldata.size - 4 >= 64
    return sub_cbf9e09f[arg1][address(arg2)]
}

function sub_d28df8f5(?) payable {
    require calldata.size - 4 >= 64
    return sub_cbf9e09f[arg1][arg2]
}

function sub_e21bd89c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e21bd89c.length
    return sub_e21bd89c[arg1].field_0
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

function sub_f8a17f88(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function sub_f96c4f5b(?) payable {
    require calldata.size - 4 >= 96
    require arg3 < sub_f96c4f5b[arg1][arg2].field_0
    return sub_f96c4f5b[arg1][arg2][arg3].field_0
}

function _fallback() payable {
    revert
}

function initialize() payable {
    if stor0:
        revert with 0, 'initialize: Already initialized!'
    _governanceAddress = tx.origin
    stor0 = 1
}

function sub_d1f33297(?) payable {
    require calldata.size - 4 >= 64
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    sub_1b6d980d[arg1] = arg2
}

function sub_16347787(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    sub_5ef7c13d[arg1][arg2] = arg3
}

function sub_8b86deb6(?) payable {
    require calldata.size - 4 >= 64
    if _governanceAddress != msg.sender:
        revert with 0, 'not governance'
    stor12[address(arg1)] = uint8(arg2)
}

function sub_05687967(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    sub_25e3ee25[arg1][address(arg2)] = arg3
}

function sub_221b7ec6(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    sub_1a1a6a39[arg1][address(arg2)] = arg3
}

function sub_4b88bf76(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    sub_17a17768[arg1][address(arg2)] = arg3
}

function sub_6a54d910(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    sub_69c65ccd[arg1][address(arg2)] = arg3
}

function sub_7611f5c1(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    sub_187d606b[arg1][address(arg2)] = arg3
}

function sub_520bc922(?) payable {
    require calldata.size - 4 >= 32
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    sub_e21bd89c.length++
    sub_e21bd89c[sub_e21bd89c.length].field_0 = arg1
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
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    if sub_cbf9e09f[arg1][address(arg2)] + arg3 < sub_cbf9e09f[arg1][address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_cbf9e09f[arg1][address(arg2)] += arg3
}

function sub_134353b0(?) payable {
    require calldata.size - 4 >= 352
    require calldata.size - 36 >= 320
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    sub_f6c8d8de[arg1].field_0 = arg2
    sub_f6c8d8de[arg1].field_256 = arg3
    sub_f6c8d8de[arg1].field_512 = arg4
    sub_f6c8d8de[arg1].field_768 = arg5
    sub_f6c8d8de[arg1].field_1280 = arg6
    sub_f6c8d8de[arg1].field_1536 = arg7
    sub_f6c8d8de[arg1].field_1792 = arg8
    sub_f6c8d8de[arg1].field_2048 = arg9
    sub_f6c8d8de[arg1].field_2304 = arg10
}

function sub_dc422cf0(?) payable {
    if sub_e21bd89c.length:
        mem[128] = uint256(sub_e21bd89c.field_0)
        idx = 128
        s = 0
        while (32 * sub_e21bd89c.length) + 96 > idx:
            mem[idx + 32] = sub_e21bd89c[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_e21bd89c.length, data=mem[128 len 32 * sub_e21bd89c.length])
    mem[(32 * sub_e21bd89c.length) + 128] = 32
    mem[(32 * sub_e21bd89c.length) + 160] = sub_e21bd89c.length
    mem[(32 * sub_e21bd89c.length) + 192 len 32 * sub_e21bd89c.length] = mem[128 len 32 * sub_e21bd89c.length]
    return memory
      from (32 * sub_e21bd89c.length) + 128
       len (96 * sub_e21bd89c.length) + 64
}

function sub_5345c7c5(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    if not sub_f6c8d8de[arg1].field_0:
        revert with 0, 'no team'
    if sub_f6c8d8de[arg1].field_512 != 1:
        revert with 0, 'no captain'
    if sub_f6c8d8de[arg1].field_1280 + arg2 < sub_f6c8d8de[arg1].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    if sub_69c65ccd[arg1][address(arg3)] + arg2 < sub_69c65ccd[arg1][address(arg3)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_69c65ccd[arg1][address(arg3)] += arg2
    if sub_25e3ee25[arg1][address(arg3)] + arg2 < sub_25e3ee25[arg1][address(arg3)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_25e3ee25[arg1][address(arg3)] += arg2
    if sub_f6c8d8de[arg1].field_1536 + arg2 < sub_f6c8d8de[arg1].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    sub_187d606b[arg1][address(arg3)] = block.timestamp
    sub_f6c8d8de[arg1].field_256 = sub_f6c8d8de[arg1].field_256
    sub_f6c8d8de[arg1].field_1280 += arg2
    sub_f6c8d8de[arg1].field_1536 += arg2
}

function sub_6d309ba3(?) payable {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    sub_f96c4f5b[cd[4]][address(cd[36])].field_0 = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while sub_f96c4f5b[cd[4]][address(cd[36])].field_0 > idx:
            sub_f96c4f5b[cd[4]][address(cd[36])][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            sub_f96c4f5b[cd[4]][address(cd[36])][s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while sub_f96c4f5b[cd[4]][address(cd[36])].field_0 > idx:
            sub_f96c4f5b[cd[4]][address(cd[36])][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_23eea2ee(?) payable {
    require calldata.size - 4 >= 128
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    if not sub_f6c8d8de[arg1].field_0:
        revert with 0, 'no team'
    if sub_f6c8d8de[arg1].field_512 != 1:
        revert with 0, 'no captain'
    sub_f96c4f5b[arg1][address(arg4)].field_0++
    if not sub_f96c4f5b[arg1][address(arg4)].field_0:
        sub_f96c4f5b[arg1][address(arg4)][sub_f96c4f5b[arg1][address(arg4)].field_0].field_0 = 0
        sub_5ef7c13d[arg1][0] = 0
    sub_f96c4f5b[arg1][address(arg4)][sub_f96c4f5b[arg1][address(arg4)].field_0].field_0 = arg2
    sub_5ef7c13d[arg1][arg2] = sub_f96c4f5b[arg1][address(arg4)].field_0 - 1
    if sub_25e3ee25[arg1][address(arg4)] + arg3 < sub_25e3ee25[arg1][address(arg4)]:
        revert with 0, 'SafeMath: addition overflow'
    if sub_f6c8d8de[arg1].field_1536 + arg3 < sub_f6c8d8de[arg1].field_1536:
        revert with 0, 'SafeMath: addition overflow'
    sub_1b6d980d[arg2] = arg3
    sub_f6c8d8de[arg1].field_256 = sub_f6c8d8de[arg1].field_256
    sub_f6c8d8de[arg1].field_1536 += arg3
    sub_25e3ee25[arg1][address(arg4)] += arg3
    sub_187d606b[arg1][address(arg4)] = block.timestamp
}

function sub_58597f9b(?) payable {
    require calldata.size - 4 >= 64
    if not sub_f96c4f5b[arg1][address(arg2)].field_0:
        mem[(64 * sub_f96c4f5b[arg1][address(arg2)].field_0) + 160] = 32
        mem[(64 * sub_f96c4f5b[arg1][address(arg2)].field_0) + 192] = sub_f96c4f5b[arg1][address(arg2)].field_0
        mem[(64 * sub_f96c4f5b[arg1][address(arg2)].field_0) + 224 len 161 * sub_f96c4f5b[arg1][address(arg2)].field_0] = mem[(32 * sub_f96c4f5b[arg1][address(arg2)].field_0) + 160 len 32 * sub_f96c4f5b[arg1][address(arg2)].field_0]
    else:
        mem[(32 * sub_f96c4f5b[arg1][address(arg2)].field_0) + 160] = sub_f96c4f5b[arg1][address(arg2)].field_0
        idx = (32 * sub_f96c4f5b[arg1][address(arg2)].field_0) + 160
        s = 0
        while (64 * sub_f96c4f5b[arg1][address(arg2)].field_0) + 128 > idx:
            mem[idx + 32] = sub_f96c4f5b[arg1][address(arg2)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(64 * sub_f96c4f5b[arg1][address(arg2)].field_0) + 160] = 32
        mem[(64 * sub_f96c4f5b[arg1][address(arg2)].field_0) + 192] = sub_f96c4f5b[arg1][address(arg2)].field_0
        mem[(64 * sub_f96c4f5b[arg1][address(arg2)].field_0) + 224 len 32 * sub_f96c4f5b[arg1][address(arg2)].field_0] = mem[(32 * sub_f96c4f5b[arg1][address(arg2)].field_0) + 160 len 32 * sub_f96c4f5b[arg1][address(arg2)].field_0]
    return memory
      from (64 * sub_f96c4f5b[arg1][address(arg2)].field_0) + 160
       len (161 * sub_f96c4f5b[arg1][address(arg2)].field_0) + 64
}

function sub_9d5de6db(?) payable {
    require calldata.size - 4 >= 96
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    mem[96] = sub_f96c4f5b[arg1][address(arg2)].field_0
    if sub_f96c4f5b[arg1][address(arg2)].field_0:
        idx = 128
        s = 0
        while (32 * sub_f96c4f5b[arg1][address(arg2)].field_0) + 96 > idx:
            mem[idx + 32] = sub_f96c4f5b[arg1][address(arg2)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    require sub_f96c4f5b[arg1][address(arg2)].field_0 - 1 < sub_f96c4f5b[arg1][address(arg2)].field_0
    require sub_5ef7c13d[arg1][arg3] < sub_f96c4f5b[arg1][address(arg2)].field_0
    sub_f96c4f5b[arg1][address(arg2)][stor6[arg1][arg3]].field_0 = mem[(32 * sub_f96c4f5b[arg1][address(arg2)].field_0 - 1) + 128]
    require sub_f96c4f5b[arg1][address(arg2)].field_0 - 1 < sub_f96c4f5b[arg1][address(arg2)].field_0
    sub_f96c4f5b[arg1][address(arg2)][sub_f96c4f5b[arg1][address(arg2)].field_0].field_0 = 0
    sub_f96c4f5b[arg1][address(arg2)].field_0--
    if sub_f96c4f5b[arg1][address(arg2)].field_0 > sub_f96c4f5b[arg1][address(arg2)].field_0 - 1:
        idx = sub_f96c4f5b[arg1][address(arg2)].field_0 - 1
        while sub_f96c4f5b[arg1][address(arg2)].field_0 > idx:
            sub_f96c4f5b[arg1][address(arg2)][idx].field_0 = 0
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
        if sub_f6c8d8de[arg1].field_1536 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require sub_f6c8d8de[arg1].field_1536
        if sub_f6c8d8de[arg1].field_2304 + (0 / sub_f6c8d8de[arg1].field_1536) < sub_f6c8d8de[arg1].field_2304:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_f6c8d8de[arg1].field_2304 + (0 / sub_f6c8d8de[arg1].field_1536))
    require arg2 - sub_f6c8d8de[arg1].field_2048
    if (arg2 * sub_f6c8d8de[arg1].field_1792) - (sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / arg2 - sub_f6c8d8de[arg1].field_2048 != sub_f6c8d8de[arg1].field_1792:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (arg2 * sub_f6c8d8de[arg1].field_1792) - (sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792):
        if sub_f6c8d8de[arg1].field_1536 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require sub_f6c8d8de[arg1].field_1536
        if sub_f6c8d8de[arg1].field_2304 + (0 / sub_f6c8d8de[arg1].field_1536) < sub_f6c8d8de[arg1].field_2304:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_f6c8d8de[arg1].field_2304 + (0 / sub_f6c8d8de[arg1].field_1536))
    require (arg2 * sub_f6c8d8de[arg1].field_1792) - (sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792)
    if (10^18 * arg2 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / (arg2 * sub_f6c8d8de[arg1].field_1792) - (sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if sub_f6c8d8de[arg1].field_1536 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require sub_f6c8d8de[arg1].field_1536
    if sub_f6c8d8de[arg1].field_2304 + ((10^18 * arg2 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536) < sub_f6c8d8de[arg1].field_2304:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_f6c8d8de[arg1].field_2304 + ((10^18 * arg2 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536))
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
        require sub_25e3ee25[arg1][address(arg2)]
        if (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / sub_25e3ee25[arg1][address(arg2)] != sub_f6c8d8de[arg1].field_2304 - sub_1a1a6a39[arg1][address(arg2)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18) + sub_17a17768[arg1][address(arg2)] < (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18) + sub_17a17768[arg1][address(arg2)])
    if sub_f6c8d8de[arg1].field_2048 > arg3:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not arg3 - sub_f6c8d8de[arg1].field_2048:
        if sub_f6c8d8de[arg1].field_1536 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require sub_f6c8d8de[arg1].field_1536
        if sub_f6c8d8de[arg1].field_2304 + (0 / sub_f6c8d8de[arg1].field_1536) < sub_f6c8d8de[arg1].field_2304:
            revert with 0, 'SafeMath: addition overflow'
        if sub_1a1a6a39[arg1][address(arg2)] > sub_f6c8d8de[arg1].field_2304 + (0 / sub_f6c8d8de[arg1].field_1536):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not sub_25e3ee25[arg1][address(arg2)]:
            if sub_17a17768[arg1][address(arg2)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_17a17768[arg1][address(arg2)]
        require sub_25e3ee25[arg1][address(arg2)]
        if (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) + (0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / sub_25e3ee25[arg1][address(arg2)] != sub_f6c8d8de[arg1].field_2304 + (0 / sub_f6c8d8de[arg1].field_1536) - sub_1a1a6a39[arg1][address(arg2)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) + (0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18) + sub_17a17768[arg1][address(arg2)] < (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) + (0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) + (0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18) + sub_17a17768[arg1][address(arg2)])
    require arg3 - sub_f6c8d8de[arg1].field_2048
    if (arg3 * sub_f6c8d8de[arg1].field_1792) - (sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / arg3 - sub_f6c8d8de[arg1].field_2048 != sub_f6c8d8de[arg1].field_1792:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (arg3 * sub_f6c8d8de[arg1].field_1792) - (sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792):
        if sub_f6c8d8de[arg1].field_1536 <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require sub_f6c8d8de[arg1].field_1536
        if sub_f6c8d8de[arg1].field_2304 + (0 / sub_f6c8d8de[arg1].field_1536) < sub_f6c8d8de[arg1].field_2304:
            revert with 0, 'SafeMath: addition overflow'
        if sub_1a1a6a39[arg1][address(arg2)] > sub_f6c8d8de[arg1].field_2304 + (0 / sub_f6c8d8de[arg1].field_1536):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not sub_25e3ee25[arg1][address(arg2)]:
            if sub_17a17768[arg1][address(arg2)] < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_17a17768[arg1][address(arg2)]
        require sub_25e3ee25[arg1][address(arg2)]
        if (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) + (0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / sub_25e3ee25[arg1][address(arg2)] != sub_f6c8d8de[arg1].field_2304 + (0 / sub_f6c8d8de[arg1].field_1536) - sub_1a1a6a39[arg1][address(arg2)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if ((sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) + (0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18) + sub_17a17768[arg1][address(arg2)] < (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) + (0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (((sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) + (0 / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18) + sub_17a17768[arg1][address(arg2)])
    require (arg3 * sub_f6c8d8de[arg1].field_1792) - (sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792)
    if (10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / (arg3 * sub_f6c8d8de[arg1].field_1792) - (sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if sub_f6c8d8de[arg1].field_1536 <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require sub_f6c8d8de[arg1].field_1536
    if sub_f6c8d8de[arg1].field_2304 + ((10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536) < sub_f6c8d8de[arg1].field_2304:
        revert with 0, 'SafeMath: addition overflow'
    if sub_1a1a6a39[arg1][address(arg2)] > sub_f6c8d8de[arg1].field_2304 + ((10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not sub_25e3ee25[arg1][address(arg2)]:
        if sub_17a17768[arg1][address(arg2)] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return sub_17a17768[arg1][address(arg2)]
    require sub_25e3ee25[arg1][address(arg2)]
    if (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) + ((10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / sub_25e3ee25[arg1][address(arg2)] != sub_f6c8d8de[arg1].field_2304 + ((10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536) - sub_1a1a6a39[arg1][address(arg2)]:
        revert with 0, 'SafeMath: multiplication overflow'
    if ((sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) + ((10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18) + sub_17a17768[arg1][address(arg2)] < (sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) + ((10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((sub_f6c8d8de[arg1].field_2304 * sub_25e3ee25[arg1][address(arg2)]) + ((10^18 * arg3 * sub_f6c8d8de[arg1].field_1792) - (10^18 * sub_f6c8d8de[arg1].field_2048 * sub_f6c8d8de[arg1].field_1792) / sub_f6c8d8de[arg1].field_1536 * sub_25e3ee25[arg1][address(arg2)]) - (sub_1a1a6a39[arg1][address(arg2)] * sub_25e3ee25[arg1][address(arg2)]) / 10^18) + sub_17a17768[arg1][address(arg2)])
}

function sub_d7f06e90(?) payable {
    require calldata.size - 4 >= 96
    mem[0] = msg.sender
    mem[32] = 12
    if not stor12[address(msg.sender)]:
        revert with 0, 'is not implement'
    mem[96] = sub_e21bd89c.length
    mem[64] = (32 * sub_e21bd89c.length) + 128
    if not sub_e21bd89c.length:
        idx = 0
        s = 0
        t = 0
        while idx < sub_e21bd89c.length:
            mem[0] = 10
            _396 = mem[64]
            mem[64] = mem[64] + 320
            mem[_396] = 0
            mem[_396 + 32] = 0
            mem[_396 + 64] = 0
            mem[_396 + 96] = 0
            mem[_396 + 128] = 0
            mem[_396 + 160] = 0
            mem[_396 + 192] = 0
            mem[_396 + 224] = 0
            mem[_396 + 256] = 0
            mem[_396 + 288] = 0
            mem[0] = sub_e21bd89c[idx].field_0
            mem[32] = 1
            _398 = mem[64]
            mem[64] = mem[64] + 320
            mem[_398] = sub_f6c8d8de[stor10[idx].field_0].field_0
            mem[_398 + 32] = sub_f6c8d8de[stor10[idx].field_0].field_256
            mem[_398 + 64] = sub_f6c8d8de[stor10[idx].field_0].field_512
            mem[_398 + 96] = sub_f6c8d8de[stor10[idx].field_0].field_768
            mem[_398 + 128] = sub_f6c8d8de[stor10[idx].field_0].field_1024
            mem[_398 + 160] = sub_f6c8d8de[stor10[idx].field_0].field_1280
            mem[_398 + 192] = sub_f6c8d8de[stor10[idx].field_0].field_1536
            mem[_398 + 224] = sub_f6c8d8de[stor10[idx].field_0].field_1792
            mem[_398 + 256] = sub_f6c8d8de[stor10[idx].field_0].field_2048
            mem[_398 + 288] = sub_f6c8d8de[stor10[idx].field_0].field_2304
            if sub_f6c8d8de[stor10[idx].field_0].field_512 != 1:
                mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                mem[32] = 1
                if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                    mem[_398 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                    mem[_398 + 256] = block.timestamp
                    mem[_398 + 96] = 0
                    mem[_398 + 224] = 0
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
                    _417 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_417] = 30
                    mem[_417 + 32] = 'SafeMath: subtraction overflow'
                    if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 > arg1:
                        _441 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_441 + idx + 68] = mem[_417 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_441 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _441 + -mem[64] + 100
                    if not arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048:
                        _518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_518] = 26
                        mem[_518 + 32] = 'SafeMath: division by zero'
                        if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 <= 0:
                            _531 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_531 + idx + 68] = mem[_518 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_531 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _531 + -mem[64] + 100
                        require sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                        if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_398 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536)
                        mem[_398 + 256] = block.timestamp
                        mem[_398 + 96] = 0
                        mem[_398 + 224] = 0
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
                        require arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048
                        if (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 != sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792):
                            _530 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_530] = 26
                            mem[_530 + 32] = 'SafeMath: division by zero'
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 <= 0:
                                _544 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_544 + idx + 68] = mem[_530 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_544 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _544 + -mem[64] + 100
                            require sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_398 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536)
                            mem[_398 + 256] = block.timestamp
                            mem[_398 + 96] = 0
                            mem[_398 + 224] = 0
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
                            require (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792)
                            if (10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _543 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_543] = 26
                            mem[_543 + 32] = 'SafeMath: division by zero'
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 <= 0:
                                _555 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_555 + idx + 68] = mem[_543 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_555 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _555 + -mem[64] + 100
                            require sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_398 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536)
                            mem[_398 + 256] = block.timestamp
                            mem[_398 + 96] = 0
                            mem[_398 + 224] = 0
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
                    if t + sub_f6c8d8de[stor10[idx].field_0].field_1536 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    require s < mem[96]
                    mem[(32 * s) + 128] = _398
                    idx = idx + 1
                    s = s + 1
                    t = t + sub_f6c8d8de[stor10[idx].field_0].field_1536
                    continue 
                mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                mem[32] = 1
                if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                    mem[_398 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                    mem[_398 + 256] = block.timestamp
                    mem[_398 + 96] = 0
                    mem[_398 + 224] = 0
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
                    _436 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_436] = 30
                    mem[_436 + 32] = 'SafeMath: subtraction overflow'
                    if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 > arg1:
                        _457 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_457 + idx + 68] = mem[_436 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_457 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _457 + -mem[64] + 100
                    if not arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048:
                        _523 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_523] = 26
                        mem[_523 + 32] = 'SafeMath: division by zero'
                        if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 <= 0:
                            _538 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_538 + idx + 68] = mem[_523 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_538 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _538 + -mem[64] + 100
                        require sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                        if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_398 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536)
                        mem[_398 + 256] = block.timestamp
                        mem[_398 + 96] = 0
                        mem[_398 + 224] = 0
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
                        require arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048
                        if (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 != sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792):
                            _537 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_537] = 26
                            mem[_537 + 32] = 'SafeMath: division by zero'
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 <= 0:
                                _552 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_552 + idx + 68] = mem[_537 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_552 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _552 + -mem[64] + 100
                            require sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_398 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536)
                            mem[_398 + 256] = block.timestamp
                            mem[_398 + 96] = 0
                            mem[_398 + 224] = 0
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
                            require (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792)
                            if (10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _551 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_551] = 26
                            mem[_551 + 32] = 'SafeMath: division by zero'
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 <= 0:
                                _564 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_564 + idx + 68] = mem[_551 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_564 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _564 + -mem[64] + 100
                            require sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_398 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536)
                            mem[_398 + 256] = block.timestamp
                            mem[_398 + 96] = 0
                            mem[_398 + 224] = 0
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
                    _1081 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1081] = 0
                    mem[_1081 + 32] = 0
                    mem[_1081 + 64] = 0
                    mem[_1081 + 96] = 0
                    mem[_1081 + 128] = 0
                    mem[_1081 + 160] = 0
                    mem[_1081 + 192] = 0
                    mem[_1081 + 224] = 0
                    mem[_1081 + 256] = 0
                    mem[_1081 + 288] = 0
                    require t < mem[96]
                    _1093 = mem[(32 * t) + 128]
                    require u < mem[96]
                    require t < mem[96]
                    mem[(32 * t) + 128] = mem[(32 * u) + 128]
                    require u < mem[96]
                    mem[(32 * u) + 128] = _1093
                u = u + 1
                continue 
            t = t + 1
            continue 
        if not arg2:
            _824 = mem[64]
            mem[64] = mem[64] + 64
            mem[_824] = 26
            mem[_824 + 32] = 'SafeMath: division by zero'
            _861 = mem[64]
            mem[64] = mem[64] + 64
            mem[_861] = 26
            mem[_861 + 32] = 'SafeMath: division by zero'
            if s > 0:
                require s
                t = 0
                while t < s:
                    _1323 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1323] = 0
                    mem[_1323 + 32] = 0
                    mem[_1323 + 64] = 0
                    mem[_1323 + 96] = 0
                    mem[_1323 + 128] = 0
                    mem[_1323 + 160] = 0
                    mem[_1323 + 192] = 0
                    mem[_1323 + 224] = 0
                    mem[_1323 + 256] = 0
                    mem[_1323 + 288] = 0
                    require t < mem[96]
                    if t + 1:
                        require t + 1
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
                                require u
                                if u * mem[mem[(32 * t) + 128] + 192] / u != mem[mem[(32 * t) + 128] + 192]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if u * mem[mem[(32 * t) + 128] + 192] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    t = t + 1
                    continue 
                if 0 >= s:
                    return arg2
                _1332 = mem[64]
                mem[64] = mem[64] + 320
                mem[_1332] = 0
                mem[_1332 + 32] = 0
                mem[_1332 + 64] = 0
                mem[_1332 + 96] = 0
                mem[_1332 + 128] = 0
                mem[_1332 + 160] = 0
                mem[_1332 + 192] = 0
                mem[_1332 + 224] = 0
                mem[_1332 + 256] = 0
                mem[_1332 + 288] = 0
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
                        require arg2
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            require 50 * arg2 / 100
                            if 0 / 50 * arg2 / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                else:
                    require t
                    if t * mem[mem[128] + 192] / t != mem[mem[128] + 192]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        require arg2
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            require 50 * arg2 / 100
                            if 50 * arg2 / 100 * t * mem[mem[128] + 192] / 50 * arg2 / 100 != t * mem[mem[128] + 192]:
                                revert with 0, 'SafeMath: multiplication overflow'
        else:
            require arg2
            if 50 * arg2 / arg2 != 50:
                revert with 0, 'SafeMath: multiplication overflow'
            _836 = mem[64]
            mem[64] = mem[64] + 64
            mem[_836] = 26
            mem[_836 + 32] = 'SafeMath: division by zero'
            _866 = mem[64]
            mem[64] = mem[64] + 64
            mem[_866] = 26
            mem[_866 + 32] = 'SafeMath: division by zero'
            if s > 0:
                require s
                t = 0
                while t < s:
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
                    require t < mem[96]
                    if t + 1:
                        require t + 1
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
                                require u
                                if u * mem[mem[(32 * t) + 128] + 192] / u != mem[mem[(32 * t) + 128] + 192]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if u * mem[mem[(32 * t) + 128] + 192] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    t = t + 1
                    continue 
                if 0 >= s:
                    return arg2
                _1328 = mem[64]
                mem[64] = mem[64] + 320
                mem[_1328] = 0
                mem[_1328 + 32] = 0
                mem[_1328 + 64] = 0
                mem[_1328 + 96] = 0
                mem[_1328 + 128] = 0
                mem[_1328 + 160] = 0
                mem[_1328 + 192] = 0
                mem[_1328 + 224] = 0
                mem[_1328 + 256] = 0
                mem[_1328 + 288] = 0
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
                        require arg2
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            require 50 * arg2 / 100
                            if 0 / 50 * arg2 / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                else:
                    require t
                    if t * mem[mem[128] + 192] / t != mem[mem[128] + 192]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        require arg2
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            require 50 * arg2 / 100
                            if 50 * arg2 / 100 * t * mem[mem[128] + 192] / 50 * arg2 / 100 != t * mem[mem[128] + 192]:
                                revert with 0, 'SafeMath: multiplication overflow'
    else:
        mem[64] = (32 * sub_e21bd89c.length) + 448
        mem[(32 * sub_e21bd89c.length) + 128] = 0
        mem[(32 * sub_e21bd89c.length) + 160] = 0
        mem[(32 * sub_e21bd89c.length) + 192] = 0
        mem[(32 * sub_e21bd89c.length) + 224] = 0
        mem[(32 * sub_e21bd89c.length) + 256] = 0
        mem[(32 * sub_e21bd89c.length) + 288] = 0
        mem[(32 * sub_e21bd89c.length) + 320] = 0
        mem[(32 * sub_e21bd89c.length) + 352] = 0
        mem[(32 * sub_e21bd89c.length) + 384] = 0
        mem[(32 * sub_e21bd89c.length) + 416] = 0
        mem[var23001] = (32 * sub_e21bd89c.length) + 128
        s = var23001
        idx = var23002
        while idx - 1:
            mem[64] = mem[64] + 320
            mem[(32 * sub_e21bd89c.length) + 128] = 0
            mem[(32 * sub_e21bd89c.length) + 160] = 0
            mem[(32 * sub_e21bd89c.length) + 192] = 0
            mem[(32 * sub_e21bd89c.length) + 224] = 0
            mem[(32 * sub_e21bd89c.length) + 256] = 0
            mem[(32 * sub_e21bd89c.length) + 288] = 0
            mem[(32 * sub_e21bd89c.length) + 320] = 0
            mem[(32 * sub_e21bd89c.length) + 352] = 0
            mem[(32 * sub_e21bd89c.length) + 384] = 0
            mem[(32 * sub_e21bd89c.length) + 416] = 0
            mem[s + 32] = (32 * sub_e21bd89c.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0
        t = 0
        while idx < sub_e21bd89c.length:
            mem[0] = 10
            _1077 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1077] = 0
            mem[_1077 + 32] = 0
            mem[_1077 + 64] = 0
            mem[_1077 + 96] = 0
            mem[_1077 + 128] = 0
            mem[_1077 + 160] = 0
            mem[_1077 + 192] = 0
            mem[_1077 + 224] = 0
            mem[_1077 + 256] = 0
            mem[_1077 + 288] = 0
            mem[0] = sub_e21bd89c[idx].field_0
            mem[32] = 1
            _1079 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1079] = sub_f6c8d8de[stor10[idx].field_0].field_0
            mem[_1079 + 32] = sub_f6c8d8de[stor10[idx].field_0].field_256
            mem[_1079 + 64] = sub_f6c8d8de[stor10[idx].field_0].field_512
            mem[_1079 + 96] = sub_f6c8d8de[stor10[idx].field_0].field_768
            mem[_1079 + 128] = sub_f6c8d8de[stor10[idx].field_0].field_1024
            mem[_1079 + 160] = sub_f6c8d8de[stor10[idx].field_0].field_1280
            mem[_1079 + 192] = sub_f6c8d8de[stor10[idx].field_0].field_1536
            mem[_1079 + 224] = sub_f6c8d8de[stor10[idx].field_0].field_1792
            mem[_1079 + 256] = sub_f6c8d8de[stor10[idx].field_0].field_2048
            mem[_1079 + 288] = sub_f6c8d8de[stor10[idx].field_0].field_2304
            if sub_f6c8d8de[stor10[idx].field_0].field_512 != 1:
                mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                mem[32] = 1
                if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                    mem[_1079 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                    mem[_1079 + 256] = block.timestamp
                    mem[_1079 + 96] = 0
                    mem[_1079 + 224] = 0
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
                    _1109 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1109] = 30
                    mem[_1109 + 32] = 'SafeMath: subtraction overflow'
                    if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 > arg1:
                        _1131 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1131 + idx + 68] = mem[_1109 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1131 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1131 + -mem[64] + 100
                    if not arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048:
                        _1167 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1167] = 26
                        mem[_1167 + 32] = 'SafeMath: division by zero'
                        if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 <= 0:
                            _1177 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1177 + idx + 68] = mem[_1167 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1177 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1177 + -mem[64] + 100
                        require sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                        if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_1079 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536)
                        mem[_1079 + 256] = block.timestamp
                        mem[_1079 + 96] = 0
                        mem[_1079 + 224] = 0
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
                        require arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048
                        if (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 != sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792):
                            _1176 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1176] = 26
                            mem[_1176 + 32] = 'SafeMath: division by zero'
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 <= 0:
                                _1188 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1188 + idx + 68] = mem[_1176 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1188 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1188 + -mem[64] + 100
                            require sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_1079 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536)
                            mem[_1079 + 256] = block.timestamp
                            mem[_1079 + 96] = 0
                            mem[_1079 + 224] = 0
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
                            require (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792)
                            if (10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1187 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1187] = 26
                            mem[_1187 + 32] = 'SafeMath: division by zero'
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 <= 0:
                                _1196 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1196 + idx + 68] = mem[_1187 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1196 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1196 + -mem[64] + 100
                            require sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_1079 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536)
                            mem[_1079 + 256] = block.timestamp
                            mem[_1079 + 96] = 0
                            mem[_1079 + 224] = 0
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
                    if t + sub_f6c8d8de[stor10[idx].field_0].field_1536 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    require s < mem[96]
                    mem[(32 * s) + 128] = _1079
                    idx = idx + 1
                    s = s + 1
                    t = t + sub_f6c8d8de[stor10[idx].field_0].field_1536
                    continue 
                mem[0] = sub_f6c8d8de[stor10[idx].field_0].field_0
                mem[32] = 1
                if not sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536:
                    mem[_1079 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304
                    mem[_1079 + 256] = block.timestamp
                    mem[_1079 + 96] = 0
                    mem[_1079 + 224] = 0
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
                    _1125 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1125] = 30
                    mem[_1125 + 32] = 'SafeMath: subtraction overflow'
                    if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 > arg1:
                        _1146 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1146 + idx + 68] = mem[_1125 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1146 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1146 + -mem[64] + 100
                    if not arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048:
                        _1171 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1171] = 26
                        mem[_1171 + 32] = 'SafeMath: division by zero'
                        if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 <= 0:
                            _1183 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1183 + idx + 68] = mem[_1171 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1183 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1183 + -mem[64] + 100
                        require sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                        if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[_1079 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536)
                        mem[_1079 + 256] = block.timestamp
                        mem[_1079 + 96] = 0
                        mem[_1079 + 224] = 0
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
                        require arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048
                        if (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / arg1 - sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 != sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792):
                            _1182 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1182] = 26
                            mem[_1182 + 32] = 'SafeMath: division by zero'
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 <= 0:
                                _1194 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1194 + idx + 68] = mem[_1182 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1194 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1194 + -mem[64] + 100
                            require sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_1079 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + (0 / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536)
                            mem[_1079 + 256] = block.timestamp
                            mem[_1079 + 96] = 0
                            mem[_1079 + 224] = 0
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
                            require (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792)
                            if (10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / (arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) != 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1193 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1193] = 26
                            mem[_1193 + 32] = 'SafeMath: division by zero'
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536 <= 0:
                                _1202 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_1202 + idx + 68] = mem[_1193 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1202 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1202 + -mem[64] + 100
                            require sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536
                            if sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536) < sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[_1079 + 288] = sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2304 + ((10^18 * arg1 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) - (10^18 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_2048 * sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1792) / sub_f6c8d8de[sub_f6c8d8de[stor10[idx].field_0].field_0].field_1536)
                            mem[_1079 + 256] = block.timestamp
                            mem[_1079 + 96] = 0
                            mem[_1079 + 224] = 0
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
                    _1427 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1427] = 0
                    mem[_1427 + 32] = 0
                    mem[_1427 + 64] = 0
                    mem[_1427 + 96] = 0
                    mem[_1427 + 128] = 0
                    mem[_1427 + 160] = 0
                    mem[_1427 + 192] = 0
                    mem[_1427 + 224] = 0
                    mem[_1427 + 256] = 0
                    mem[_1427 + 288] = 0
                    require t < mem[96]
                    _1437 = mem[(32 * t) + 128]
                    require u < mem[96]
                    require t < mem[96]
                    mem[(32 * t) + 128] = mem[(32 * u) + 128]
                    require u < mem[96]
                    mem[(32 * u) + 128] = _1437
                u = u + 1
                continue 
            t = t + 1
            continue 
        if not arg2:
            _1347 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1347] = 26
            mem[_1347 + 32] = 'SafeMath: division by zero'
            _1377 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1377] = 26
            mem[_1377 + 32] = 'SafeMath: division by zero'
            if s > 0:
                require s
                t = 0
                while t < s:
                    _1567 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1567] = 0
                    mem[_1567 + 32] = 0
                    mem[_1567 + 64] = 0
                    mem[_1567 + 96] = 0
                    mem[_1567 + 128] = 0
                    mem[_1567 + 160] = 0
                    mem[_1567 + 192] = 0
                    mem[_1567 + 224] = 0
                    mem[_1567 + 256] = 0
                    mem[_1567 + 288] = 0
                    require t < mem[96]
                    if t + 1:
                        require t + 1
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
                                require u
                                if u * mem[mem[(32 * t) + 128] + 192] / u != mem[mem[(32 * t) + 128] + 192]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if u * mem[mem[(32 * t) + 128] + 192] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    t = t + 1
                    continue 
                if 0 >= s:
                    return arg2
                _1575 = mem[64]
                mem[64] = mem[64] + 320
                mem[_1575] = 0
                mem[_1575 + 32] = 0
                mem[_1575 + 64] = 0
                mem[_1575 + 96] = 0
                mem[_1575 + 128] = 0
                mem[_1575 + 160] = 0
                mem[_1575 + 192] = 0
                mem[_1575 + 224] = 0
                mem[_1575 + 256] = 0
                mem[_1575 + 288] = 0
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
                        require arg2
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            require 50 * arg2 / 100
                            if 0 / 50 * arg2 / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                else:
                    require t
                    if t * mem[mem[128] + 192] / t != mem[mem[128] + 192]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        require arg2
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            require 50 * arg2 / 100
                            if 50 * arg2 / 100 * t * mem[mem[128] + 192] / 50 * arg2 / 100 != t * mem[mem[128] + 192]:
                                revert with 0, 'SafeMath: multiplication overflow'
        else:
            require arg2
            if 50 * arg2 / arg2 != 50:
                revert with 0, 'SafeMath: multiplication overflow'
            _1359 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1359] = 26
            mem[_1359 + 32] = 'SafeMath: division by zero'
            _1380 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1380] = 26
            mem[_1380 + 32] = 'SafeMath: division by zero'
            if s > 0:
                require s
                t = 0
                while t < s:
                    _1566 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1566] = 0
                    mem[_1566 + 32] = 0
                    mem[_1566 + 64] = 0
                    mem[_1566 + 96] = 0
                    mem[_1566 + 128] = 0
                    mem[_1566 + 160] = 0
                    mem[_1566 + 192] = 0
                    mem[_1566 + 224] = 0
                    mem[_1566 + 256] = 0
                    mem[_1566 + 288] = 0
                    require t < mem[96]
                    if t + 1:
                        require t + 1
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
                                require u
                                if u * mem[mem[(32 * t) + 128] + 192] / u != mem[mem[(32 * t) + 128] + 192]:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if u * mem[mem[(32 * t) + 128] + 192] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                    t = t + 1
                    continue 
                if 0 >= s:
                    return arg2
                _1571 = mem[64]
                mem[64] = mem[64] + 320
                mem[_1571] = 0
                mem[_1571 + 32] = 0
                mem[_1571 + 64] = 0
                mem[_1571 + 96] = 0
                mem[_1571 + 128] = 0
                mem[_1571 + 160] = 0
                mem[_1571 + 192] = 0
                mem[_1571 + 224] = 0
                mem[_1571 + 256] = 0
                mem[_1571 + 288] = 0
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
                        require arg2
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            require 50 * arg2 / 100
                            if 0 / 50 * arg2 / 100:
                                revert with 0, 'SafeMath: multiplication overflow'
                else:
                    require t
                    if t * mem[mem[128] + 192] / t != mem[mem[128] + 192]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        require arg2
                        if 50 * arg2 / arg2 != 50:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 50 * arg2 / 100:
                            require 50 * arg2 / 100
                            if 50 * arg2 / 100 * t * mem[mem[128] + 192] / 50 * arg2 / 100 != t * mem[mem[128] + 192]:
                                revert with 0, 'SafeMath: multiplication overflow'
    revert with 0, 'SafeMath: division by zero', 0
}



}
