contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint8 sub_41aac8e6;
uint8 sub_08fc6f1b; offset 8
address oracleAddress; offset 16
mapping of uint8 stor2;
uint256 sub_d21af768;
uint256 sub_01056010;
uint256 sub_192995ff;
uint256 sub_3744fc0b;
uint256 sub_7ed0f656;
uint256 sub_631430e6;
uint256 proposalsCount;
mapping of uint8 stor11;
mapping of struct sub_0d1eb658;
mapping of address delegation;
mapping of struct stor14;

function sub_01056010(?) payable {
    return sub_01056010
}

function sub_064a7b4f(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= proposalsCount:
        revert with 0, 'Index1 OOB'
    if arg2 >= sub_0d1eb658[arg1].field_3584:
        revert with 0, 'Index2 OOB'
    return sub_0d1eb658[arg1][15][arg2].field_0, sub_0d1eb658[arg1][15][arg2].field_8
}

function sub_08fc6f1b(?) payable {
    return sub_08fc6f1b
}

function proposalsCount() payable {
    return proposalsCount
}

function sub_0d1eb658(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == uint8(arg2)
    if arg1 >= proposalsCount:
        revert with 0, 'Index1 OOB'
    if uint8(arg2) >= sub_0d1eb658[arg1].field_2048:
        revert with 0, 'Index2 OOB'
    return sub_0d1eb658[arg1][9][arg2 << 248].field_0, sub_0d1eb658[arg1][9][arg2 << 248].field_8
}

function sub_192995ff(?) payable {
    return sub_192995ff
}

function sub_2532331d(?) payable {
    require calldata.size - 4 >= 64
    if arg1 >= sub_7ed0f656:
        revert with 0, 'Index1 OOB'
    if arg2 >= sub_2532331d[arg1].field_2048:
        revert with 0, 'Index2 OOB'
    return sub_2532331d[arg1][9][arg2].field_0, sub_2532331d[arg1][9][arg2].field_8
}

function sub_3744fc0b(?) payable {
    return sub_3744fc0b
}

function sub_41aac8e6(?) payable {
    return sub_41aac8e6
}

function sub_5a247a2c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function sub_631430e6(?) payable {
    return sub_631430e6
}

function sub_7ed0f656(?) payable {
    return sub_7ed0f656
}

function oracleAddress() payable {
    return oracleAddress
}

function sub_d21af768(?) payable {
    return sub_d21af768
}

function delegation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegation[arg1]
}

function _fallback() payable {
    revert
}

function sub_1e843af2(?) payable {
    require calldata.size - 4 >= 32
    if oracleAddress != msg.sender:
        revert with 0, 'Oracle'
    sub_01056010 = arg1
    return 1
}

function sub_370a134f(?) payable {
    require calldata.size - 4 >= 32
    if oracleAddress != msg.sender:
        revert with 0, 'Oracle'
    sub_192995ff = arg1
    return 1
}

function sub_84c3dd44(?) payable {
    require calldata.size - 4 >= 32
    if oracleAddress != msg.sender:
        revert with 0, 'Oracle'
    sub_3744fc0b = arg1
    return 1
}

function setDelegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegation[address(msg.sender)] = arg1
    emit 0x39e3ace7: msg.sender, arg1
    return 1
}

function sub_962a2b84(?) payable {
    require calldata.size - 4 >= 32
    if oracleAddress != msg.sender:
        revert with 0, 'Oracle'
    sub_631430e6 = arg1
    emit 0x973cdf9f: sub_631430e6, arg1
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if oracleAddress != msg.sender:
        revert with 0, 'Oracle'
    oracleAddress = arg1
    return 1
}

function sub_8f8d438c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if oracleAddress != msg.sender:
        revert with 0, 'Oracle'
    sub_08fc6f1b = uint8(arg1)
    return 1
}

function sub_2e40bd69(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if oracleAddress != msg.sender:
        revert with 0, 'Oracle'
    if arg1 >= proposalsCount:
        revert with 0, 'Index OOB'
    if not sub_0d1eb658[arg1].field_1024:
        revert with 0, 'Not preapproved'
    if block.timestamp <= sub_0d1eb658[arg1].field_3328:
        revert with 0, 'Not ended'
    if sub_0d1eb658[arg1].field_2816:
        revert with 0, 'Submitted'
    sub_0d1eb658[arg1].field_2816 = 1
    sub_0d1eb658[arg1].field_2560 = uint8(bool(arg2))
    return 1
}

function getProposal(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= proposalsCount:
        revert with 0, 'Index OOB'
    mem[672] = bool(sub_0d1eb658[arg1].field_1024)
    mem[704] = bool(sub_0d1eb658[arg1].field_2560)
    mem[736] = sub_0d1eb658[arg1].field_512
    idx = 0
    s = 672
    t = 1088
    while idx < 2:
        mem[t] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return sub_0d1eb658[arg1].field_512, 
           sub_0d1eb658[arg1].field_256,
           sub_0d1eb658[arg1].field_0,
           sub_0d1eb658[arg1].field_3584,
           sub_0d1eb658[arg1].field_2816,
           mem[1088 len 64]
}

function sub_c2f96e49(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == uint8(arg2)
    if arg1 >= sub_7ed0f656:
        revert with 0, 'Index OOB'
    if block.timestamp >= sub_2532331d[arg1].field_1792:
        revert with 0, 'Vote Ended'
    if sub_2532331d[arg1].field_2048 == -1:
        revert with 0, 17
    sub_2532331d[arg1].field_2048++
    sub_2532331d[arg1][9][sub_2532331d[arg1].field_2048].field_0 = uint8(arg2)
    sub_2532331d[arg1][9][sub_2532331d[arg1].field_2048].field_8 = msg.sender
    sub_2532331d[arg1][9][sub_2532331d[arg1].field_2048].field_8 = 0
    emit 0x9805521d: 160, arg1, sub_2532331d[arg1].field_2048, msg.sender, uint8(arg2), 17, 0x436f6d6d697474656550726f706f73616c000000000000000000000000000000
    return 1
}

function voteProposal(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= proposalsCount:
        revert with 0, 'Index OOB'
    if not sub_0d1eb658[arg1].field_1024:
        revert with 0, 'Not preapproved'
    if block.timestamp <= sub_0d1eb658[arg1].field_3072:
        revert with 0, 'Not started'
    if block.timestamp >= sub_0d1eb658[arg1].field_3328:
        revert with 0, 'Ended'
    if sub_0d1eb658[arg1].field_3584 == -1:
        revert with 0, 17
    sub_0d1eb658[arg1].field_3584++
    sub_0d1eb658[arg1][15][sub_0d1eb658[arg1].field_3584].field_0 = arg2
    sub_0d1eb658[arg1][15][sub_0d1eb658[arg1].field_3584].field_8 = msg.sender
    sub_0d1eb658[arg1][15][sub_0d1eb658[arg1].field_3584].field_8 = 0
    emit 0x9805521d: 160, arg1, sub_0d1eb658[arg1].field_3584, msg.sender, arg2, 8, 0x50726f706f73616c000000000000000000000000000000000000000000000000
    return 1
}

function sub_7446e265(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    if sub_08fc6f1b > sub_d21af768:
        revert with 0, 'Min Committee'
    if proposalsCount == -1:
        revert with 0, 17
    proposalsCount++
    sub_0d1eb658[stor9].field_256 = arg2
    sub_0d1eb658[stor9].field_0 = uint8(arg1)
    sub_0d1eb658[stor9].field_512 = msg.sender
    sub_0d1eb658[stor9].field_1536 = block.timestamp
    if block.timestamp > !sub_3744fc0b:
        revert with 0, 17
    sub_0d1eb658[stor9].field_1792 = block.timestamp + sub_3744fc0b
    sub_0d1eb658[stor9].field_3072 = block.timestamp + sub_3744fc0b
    if block.timestamp + sub_3744fc0b > !sub_192995ff:
        revert with 0, 17
    sub_0d1eb658[stor9].field_3328 = block.timestamp + sub_3744fc0b + sub_192995ff
    emit 0x4ef24817: proposalsCount, sub_0d1eb658[stor9].field_0, sub_0d1eb658[stor9].field_256, sub_0d1eb658[stor9].field_512, sub_0d1eb658[stor9].field_3072, block.timestamp + sub_3744fc0b + sub_192995ff, sub_0d1eb658[stor9].field_1536, sub_0d1eb658[stor9].field_1792
    return 1
}

function sub_c7a579b8(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if not stor2[address(msg.sender)]:
        revert with 0, 'Committee'
    if arg1 >= proposalsCount:
        revert with 0, 'Index OOB'
    if block.timestamp >= sub_0d1eb658[arg1].field_1792:
        revert with 0, 'Ended'
    if sub_0d1eb658[arg1][3][address(msg.sender)].field_0:
        revert with 0, 'Voted'
    if sub_0d1eb658[arg1].field_2048 == -1:
        revert with 0, 17
    sub_0d1eb658[arg1].field_2048++
    sub_0d1eb658[arg1][9][sub_0d1eb658[arg1].field_2048].field_8 = msg.sender
    if not arg2:
        sub_0d1eb658[arg1][9][sub_0d1eb658[arg1].field_2048].field_0 = 0
        sub_0d1eb658[arg1][3][address(msg.sender)].field_0 = 1
    else:
        sub_0d1eb658[arg1][9][sub_0d1eb658[arg1].field_2048].field_0 = 1
        sub_0d1eb658[arg1][3][address(msg.sender)].field_0 = 1
        if sub_0d1eb658[arg1].field_1280 == -1:
            revert with 0, 17
        sub_0d1eb658[arg1].field_1280++
    if sub_0d1eb658[arg1].field_1280 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 2 * sub_0d1eb658[arg1].field_1280 > sub_d21af768:
        sub_0d1eb658[arg1].field_1024 = 1
        emit 0x86201aa7: arg1, sub_0d1eb658[arg1].field_3072, sub_0d1eb658[arg1].field_3328
    if arg2:
        emit 0x9805521d: Array(len=28, data='ProposalCommitteePreapproval'), arg1, sub_0d1eb658[arg1].field_2048, msg.sender, 1
    else:
        emit 0x9805521d: 160, arg1, sub_0d1eb658[arg1].field_2048, msg.sender, 0, 28, 'ProposalCommitteePreapproval'
    return 1
}

function sub_5a50d2f4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if stor14[arg1].field_0:
        if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
            revert with 0, 34
        if stor14[arg1].field_0:
            if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
                revert with 0, 34
            if stor14[arg1].field_1:
                if 31 >= stor14[arg1].field_1:
                    mem[128] = 256 * stor14[arg1].field_8
                else:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while stor14[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor14[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
                revert with 0, 34
            if stor14[arg1].field_1:
                if 31 >= stor14[arg1].field_1:
                    mem[128] = 256 * stor14[arg1].field_8
                else:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while stor14[arg1].field_1 + 96 > idx:
                        mem[idx + 32] = stor14[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return Array(len=2 * Mask(256, -1, stor14[arg1].field_1), data=mem[128 len ceil32(stor14[arg1].field_1)]), 
               stor14[arg1].field_256,
               stor14[arg1].field_512,
               stor14[arg1].field_768,
               stor14[arg1].field_1024
    if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
        revert with 0, 34
    if stor14[arg1].field_0:
        if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
            revert with 0, 34
        if stor14[arg1].field_1:
            if 31 >= stor14[arg1].field_1:
                mem[128] = 256 * stor14[arg1].field_8
            else:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while stor14[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor14[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
            revert with 0, 34
        if stor14[arg1].field_1:
            if 31 >= stor14[arg1].field_1:
                mem[128] = 256 * stor14[arg1].field_8
            else:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while stor14[arg1].field_1 + 96 > idx:
                    mem[idx + 32] = stor14[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return Array(len=stor14[arg1].field_0, data=mem[128 len ceil32(stor14[arg1].field_1)]), 
           stor14[arg1].field_256,
           stor14[arg1].field_512,
           stor14[arg1].field_768,
           stor14[arg1].field_1024
}

function sub_0c01665f(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 36).length > 5:
        revert with 0, '+ limit 5'
    if ('cd', 68).length > 5:
        revert with 0, '- limit 5'
    if sub_7ed0f656 == -1:
        revert with 0, 17
    sub_7ed0f656++
    sub_2532331d[stor7].field_0 = msg.sender
    sub_2532331d[stor7].field_256 = cd[4]
    sub_2532331d[stor7].field_512 = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while sub_2532331d[stor7].field_512 > idx:
            sub_2532331d[stor7][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            sub_2532331d[stor7][s + 2].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while sub_2532331d[stor7].field_512 > idx:
            sub_2532331d[stor7][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    sub_2532331d[stor7].field_768 = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while sub_2532331d[stor7].field_768 > idx:
            sub_2532331d[stor7][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            sub_2532331d[stor7][s + 3].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while sub_2532331d[stor7].field_768 > idx:
            sub_2532331d[stor7][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    sub_2532331d[stor7].field_1536 = block.timestamp
    if block.timestamp > !sub_01056010:
        revert with 0, 17
    sub_2532331d[stor7].field_1792 = block.timestamp + sub_01056010
    idx = 0
    s = 0
    t = 352
    while idx < sub_2532331d[stor7].field_512:
        mem[t] = sub_2532331d[stor7][s + 2].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(32 * sub_2532331d[stor7].field_512) + 352] = sub_2532331d[stor7].field_768
    idx = 0
    s = 0
    t = (32 * sub_2532331d[stor7].field_512) + 384
    while idx < sub_2532331d[stor7].field_768:
        mem[t] = sub_2532331d[stor7][s + 3].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    emit 0x3a68a019: sub_7ed0f656, sub_2532331d[stor7].field_0, sub_2532331d[stor7].field_256, Array(len=sub_2532331d[stor7].field_512, data=mem[352 len (32 * sub_2532331d[stor7].field_512) + (32 * sub_2532331d[stor7].field_768) + 32]), (32 * sub_2532331d[stor7].field_512) + 256, sub_2532331d[stor7].field_1536, block.timestamp + sub_01056010
    return 1
}

function sub_de62ca9b(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if oracleAddress != msg.sender:
        revert with 0, 'Oracle'
    if arg1 >= sub_7ed0f656:
        revert with 0, 'Index OOB'
    if block.timestamp <= sub_2532331d[arg1].field_1792:
        revert with 0, 'Not Ended'
    if 720 * 24 * 3600 > !sub_2532331d[arg1].field_1792:
        revert with 0, 17
    if block.timestamp >= sub_2532331d[arg1].field_1792 + (720 * 24 * 3600):
        revert with 0, 'Expired'
    if sub_2532331d[arg1].field_1280:
        revert with 0, 'Submitted'
    if not arg1:
        sub_2532331d[arg1].field_1280 = 1
        sub_2532331d[arg1].field_1024 = uint8(bool(arg2))
    else:
        if 1 > !sub_631430e6:
            revert with 0, 17
        if arg1 != sub_631430e6 + 1:
            revert with 0, 'Unsequential'
        sub_2532331d[arg1].field_1280 = 1
        sub_2532331d[arg1].field_1024 = uint8(bool(arg2))
        if arg1:
            if sub_631430e6 == -1:
                revert with 0, 17
            sub_631430e6++
    if sub_2532331d[arg1].field_1024:
        if stor11[arg1]:
            revert with 0, 'Already executed'
        emit 0xcfe19ad6: arg1
        idx = 0
        while uint8(idx) < sub_2532331d[arg1].field_512:
            if uint8(idx) >= sub_2532331d[arg1].field_512:
                revert with 0, 50
            if not stor2[stor[uint8(idx) + ('array', 2, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_0]:
                if uint8(idx) >= sub_2532331d[arg1].field_512:
                    revert with 0, 50
                stor2[stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'stor10', 10))) + uint8(idx)].field_0] = 1
                if sub_d21af768 == -1:
                    revert with 0, 17
                sub_d21af768++
                if uint8(idx) >= sub_2532331d[arg1].field_512:
                    revert with 0, 50
                mem[96] = 1
                mem[128] = stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'sub_2532331d', 10))) + uint8(idx)].field_0
                emit 0x89c0d18e: 1, stor[('array', 2, ('map', ('param', 'arg1'), ('name', 'sub_2532331d', 10))) + uint8(idx)].field_0
            if uint8(idx) == 255:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 10
            idx = uint8(idx) + 1
            continue 
        idx = 0
        while uint8(idx) < sub_2532331d[arg1].field_768:
            if uint8(idx) >= sub_2532331d[arg1].field_768:
                revert with 0, 50
            if 1 == bool(stor2[stor[uint8(idx) + ('array', 3, ('map', ('param', 'arg1'), ('name', 'stor10', 10)))].field_0]):
                if uint8(idx) >= sub_2532331d[arg1].field_768:
                    revert with 0, 50
                stor2[stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'stor10', 10))) + uint8(idx)].field_0] = 0
                if not sub_d21af768:
                    revert with 0, 17
                sub_d21af768--
                if uint8(idx) >= sub_2532331d[arg1].field_768:
                    revert with 0, 50
                mem[96] = 0
                mem[128] = stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'sub_2532331d', 10))) + uint8(idx)].field_0
                emit 0x89c0d18e: 0, stor[('array', 3, ('map', ('param', 'arg1'), ('name', 'sub_2532331d', 10))) + uint8(idx)].field_0
            if uint8(idx) == 255:
                revert with 0, 17
            mem[0] = arg1
            mem[32] = 10
            idx = uint8(idx) + 1
            continue 
        stor11[arg1] = 1
        emit 0xcfe19ad6: arg1
    return 1
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if bool(stor0.length):
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
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

function sub_6c6df889(?) payable {
    require calldata.size - 4 >= 32
    mem[96 len 96] = call.data[calldata.size len 96]
    if arg1 >= sub_7ed0f656:
        revert with 0, 'Index OOB'
    mem[192] = sub_2532331d[arg1].field_1536
    mem[224] = sub_2532331d[arg1].field_1792
    mem[256] = sub_2532331d[arg1].field_1280
    mem[0] = arg1
    mem[32] = 10
    mem[288] = sub_2532331d[arg1].field_512
    if not sub_2532331d[arg1].field_512:
        mem[64] = (32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 352
        mem[(32 * sub_2532331d[arg1].field_512) + 320] = sub_2532331d[arg1].field_768
        if sub_2532331d[arg1].field_768:
            mem[(32 * sub_2532331d[arg1].field_512) + 352] = sub_2532331d[arg1][3].field_0
            idx = (32 * sub_2532331d[arg1].field_512) + 352
            s = 0
            while (32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 320 > idx:
                mem[idx + 32] = sub_2532331d[arg1][s + 3].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 352] = sub_2532331d[arg1].field_0
            mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 384] = 288
            mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 640] = sub_2532331d[arg1].field_512
            idx = 0
            s = 320
            t = (32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 672
            while idx < sub_2532331d[arg1].field_512:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 416] = (32 * sub_2532331d[arg1].field_512) + 320
            mem[(64 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 672] = sub_2532331d[arg1].field_768
            idx = 0
            s = (32 * sub_2532331d[arg1].field_512) + 352
            t = (64 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 704
            while idx < sub_2532331d[arg1].field_768:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 352 len 96], 
                   sub_2532331d[arg1].field_1280,
                   bool(sub_2532331d[arg1].field_1024),
                   sub_2532331d[arg1].field_2048,
                   sub_2532331d[arg1].field_256,
                   mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 640 len (32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 64]
        mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 352] = sub_2532331d[arg1].field_0
        mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 384] = 288
        mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 640] = sub_2532331d[arg1].field_512
        idx = 0
        s = 320
        t = (32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 672
        while idx < sub_2532331d[arg1].field_512:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 416] = (96 * sub_2532331d[arg1].field_512) + 320
    else:
        mem[0] = sha3(arg1, 10) + 2
        mem[320] = sub_2532331d[arg1][2].field_0
        idx = 320
        s = 0
        while (32 * sub_2532331d[arg1].field_512) + 288 > idx:
            mem[idx + 32] = sub_2532331d[arg1][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[64] = (32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 352
        mem[(32 * sub_2532331d[arg1].field_512) + 320] = sub_2532331d[arg1].field_768
        if not sub_2532331d[arg1].field_768:
            mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 352] = sub_2532331d[arg1].field_0
            mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 384] = 288
            mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 640] = sub_2532331d[arg1].field_512
            idx = 0
            s = 320
            t = (32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 672
            while idx < sub_2532331d[arg1].field_512:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 416] = (32 * sub_2532331d[arg1].field_512) + 320
            mem[(64 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 672] = sub_2532331d[arg1].field_768
            idx = 0
            s = (32 * sub_2532331d[arg1].field_512) + 352
            t = (64 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 704
            while idx < mem[(32 * sub_2532331d[arg1].field_512) + 320]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            var29001 = 3
            var29002 = 288
            return mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 352 len 96], 
                   sub_2532331d[arg1].field_1280,
                   bool(sub_2532331d[arg1].field_1024),
                   sub_2532331d[arg1].field_2048,
                   sub_2532331d[arg1].field_256,
                   mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 640 len (32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 64]
        mem[(32 * sub_2532331d[arg1].field_512) + 352] = sub_2532331d[arg1][3].field_0
        idx = (32 * sub_2532331d[arg1].field_512) + 352
        s = 0
        while (32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 320 > idx:
            mem[idx + 32] = sub_2532331d[arg1][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 352] = sub_2532331d[arg1].field_0
        mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 384] = 288
        mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 640] = sub_2532331d[arg1].field_512
        idx = 0
        s = 320
        t = (32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 672
        while idx < sub_2532331d[arg1].field_512:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 416] = (32 * sub_2532331d[arg1].field_512) + 320
    mem[(64 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 672] = sub_2532331d[arg1].field_768
    idx = 0
    s = (32 * sub_2532331d[arg1].field_512) + 352
    t = (64 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 704
    while idx < mem[(32 * sub_2532331d[arg1].field_512) + 320]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 448 len 96] = mem[192 len 96]
    mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 544] = bool(sub_2532331d[arg1].field_1024)
    mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 576] = sub_2532331d[arg1].field_2048
    mem[(32 * sub_2532331d[arg1].field_512) + (32 * sub_2532331d[arg1].field_768) + 608] = sub_2532331d[arg1].field_256
    return memory
      from mem[64]
       len (64 * sub_2532331d[arg1].field_512) + (64 * sub_2532331d[arg1].field_768) + -mem[64] + 704
}

function sub_9d9bec8f(?) payable {
    require calldata.size - 4 >= 224
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg6 == bool(arg6)
    require arg7 == uint8(arg7)
    if oracleAddress != msg.sender:
        revert with 0, 'Oracle'
    if sub_41aac8e6 >= 255:
        revert with 0, 'Index OOB'
    if not arg6:
        if stor14[arg7 << 248].field_0:
            if stor14[arg7 << 248].field_0 == stor14[arg7 << 248].field_1 < 32:
                revert with 0, 34
            if arg1.length:
                stor14[arg7 << 248][].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor14[arg7 << 248].field_0 = 0
                idx = 0
                while stor14[arg7 << 248].field_1 + 31 / 32 > idx:
                    stor14[arg7 << 248][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor14[arg7 << 248].field_0 == stor14[arg7 << 248].field_1 < 32:
                revert with 0, 34
            if arg1.length:
                stor14[arg7 << 248][].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor14[arg7 << 248].field_0 = 0
                idx = 0
                while stor14[arg7 << 248].field_1 + 31 / 32 > idx:
                    stor14[arg7 << 248][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        stor14[arg7 << 248].field_256 = arg2
        stor14[arg7 << 248].field_512 = arg3
        stor14[arg7 << 248].field_768 = arg4
        stor14[arg7 << 248].field_1024 = arg5
        mem[ceil32(arg1.length) + 128] = bool(arg6)
        mem[ceil32(arg1.length) + 160] = uint8(arg7)
        if stor14[arg7 << 248].field_0:
            if stor14[arg7 << 248].field_0 == stor14[arg7 << 248].field_1 < 32:
                revert with 0, 34
            if not stor14[arg7 << 248].field_0:
                emit 0xd6275bce: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Array(len=2 * Mask(256, -1, stor14[arg7 << 248].field_1), data=Mask(248, 8, stor14[arg7 << 248].field_0)), arg2, arg3, arg4, arg5
            else:
                if stor14[arg7 << 248].field_0 != 1:
                    emit 0xd6275bce: mem[ceil32(arg1.length) + 128 len -ceil32(arg1.length) - 128]
                else:
                    idx = 0
                    s = 0
                    while idx < stor14[arg7 << 248].field_1:
                        mem[idx + ceil32(arg1.length) + 384] = stor14[arg7 << 248][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd6275bce: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Array(len=2 * Mask(256, -1, stor14[arg7 << 248].field_1), data=mem[ceil32(arg1.length) + 384 len ceil32(stor14[arg7 << 248].field_1)]), arg2, arg3, arg4, arg5
        else:
            if stor14[arg7 << 248].field_0 == stor14[arg7 << 248].field_1 < 32:
                revert with 0, 34
            if not stor14[arg7 << 248].field_0:
                emit 0xd6275bce: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Array(len=stor14[arg7 << 248].field_0, data=Mask(248, 8, stor14[arg7 << 248].field_0)), arg2, arg3, arg4, arg5
            else:
                if stor14[arg7 << 248].field_0 != 1:
                    emit 0xd6275bce: mem[ceil32(arg1.length) + 128 len -ceil32(arg1.length) - 128]
                else:
                    idx = 0
                    s = 0
                    while idx < stor14[arg7 << 248].field_1:
                        mem[idx + ceil32(arg1.length) + 384] = stor14[arg7 << 248][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd6275bce: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Array(len=stor14[arg7 << 248].field_0, data=mem[ceil32(arg1.length) + 384 len ceil32(stor14[arg7 << 248].field_1)]), arg2, arg3, arg4, arg5
    else:
        if sub_41aac8e6 == 255:
            revert with 0, 17
        sub_41aac8e6 = uint8(sub_41aac8e6 + 1)
        if stor14[stor1].field_0:
            if stor14[stor1].field_0 == stor14[stor1].field_1 < 32:
                revert with 0, 34
            if arg1.length:
                stor14[stor1][].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor14[stor1].field_0 = 0
                idx = 0
                while stor14[stor1].field_1 + 31 / 32 > idx:
                    stor14[stor1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if stor14[stor1].field_0 == stor14[stor1].field_1 < 32:
                revert with 0, 34
            if arg1.length:
                stor14[stor1][].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor14[stor1].field_0 = 0
                idx = 0
                while stor14[stor1].field_1 + 31 / 32 > idx:
                    stor14[stor1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        stor14[stor1].field_256 = arg2
        stor14[stor1].field_512 = arg3
        stor14[stor1].field_768 = arg4
        stor14[stor1].field_1024 = arg5
        mem[ceil32(arg1.length) + 128] = bool(arg6)
        mem[ceil32(arg1.length) + 160] = sub_41aac8e6
        if stor14[stor1].field_0:
            if stor14[stor1].field_0 == stor14[stor1].field_1 < 32:
                revert with 0, 34
            if not stor14[stor1].field_0:
                emit 0xd6275bce: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Array(len=2 * Mask(256, -1, stor14[stor1].field_1), data=Mask(248, 8, stor14[stor1].field_0)), arg2, arg3, arg4, arg5
            else:
                if stor14[stor1].field_0 != 1:
                    emit 0xd6275bce: mem[ceil32(arg1.length) + 128 len -ceil32(arg1.length) - 128]
                else:
                    idx = 0
                    s = 0
                    while idx < stor14[stor1].field_1:
                        mem[idx + ceil32(arg1.length) + 384] = stor14[stor1][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd6275bce: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Array(len=2 * Mask(256, -1, stor14[stor1].field_1), data=mem[ceil32(arg1.length) + 384 len ceil32(stor14[stor1].field_1)]), arg2, arg3, arg4, arg5
        else:
            if stor14[stor1].field_0 == stor14[stor1].field_1 < 32:
                revert with 0, 34
            if not stor14[stor1].field_0:
                emit 0xd6275bce: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Array(len=stor14[stor1].field_0, data=Mask(248, 8, stor14[stor1].field_0)), arg2, arg3, arg4, arg5
            else:
                if stor14[stor1].field_0 != 1:
                    emit 0xd6275bce: mem[ceil32(arg1.length) + 128 len -ceil32(arg1.length) - 128]
                else:
                    idx = 0
                    s = 0
                    while idx < stor14[stor1].field_1:
                        mem[idx + ceil32(arg1.length) + 384] = stor14[stor1][s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xd6275bce: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Array(len=stor14[stor1].field_0, data=mem[ceil32(arg1.length) + 384 len ceil32(stor14[stor1].field_1)]), arg2, arg3, arg4, arg5
    mem[ceil32(arg1.length) + 128] = 1
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}



}
