contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
array of struct stor1;
mapping of struct stake;
mapping of uint256 sub_db9bdc15;
address logicContractAddress;
address stor5;

function sub_40643e0f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return bool(stake[address(arg1)][arg2].field_0), stake[address(arg1)][arg2].field_256
}

function getLogicContract() payable {
    return logicContractAddress
}

function getStake(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stake[address(arg1)][arg2].field_256 >= stor1[address(arg1)].field_0:
        revert with 'NH{q', 50
    if stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_0 > 1:
        revert with 'NH{q', 33
    if stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_8 > 1:
        revert with 'NH{q', 33
    if stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_16 > 4:
        revert with 'NH{q', 33
    if stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_24 > 8:
        revert with 'NH{q', 33
    if stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_32 > 8:
        revert with 'NH{q', 33
    if stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_40 > 8:
        revert with 'NH{q', 33
    if stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_0 >= 2:
        revert with 'NH{q', 33
    if stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_8 >= 2:
        revert with 'NH{q', 33
    if stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_16 >= 5:
        revert with 'NH{q', 33
    if stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_24 >= 9:
        revert with 'NH{q', 33
    if stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_32 >= 9:
        revert with 'NH{q', 33
    if stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_40 >= 9:
        revert with 'NH{q', 33
    return stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_0, 
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_0,
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_0,
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_0,
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_0,
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_0,
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_256,
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_512,
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_768,
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_1024,
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_1280,
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_1536,
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_1792,
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_2048,
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_2304,
           stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_2560,
           bool(stor1[address(arg1)][stor2[address(arg1)][arg2].field_256].field_2816)
}

function sub_db9bdc15(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_db9bdc15[address(arg1)]
}

function _fallback() payable {
    revert
}

function setLogicContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 != msg.sender:
        revert with 0, 'Caller Not Owner'
    logicContractAddress = arg1
}

function sub_db7d48f2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if sub_db9bdc15[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    sub_db9bdc15[address(arg1)] += arg2
}

function sub_fec14687(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require calldata.size - 68 >= 64
    require arg3 == bool(arg3)
    require arg4 == arg4
    stake[address(arg1)][arg2].field_0 = uint8(bool(arg3))
    stake[address(arg1)][arg2].field_256 = arg4
}

function getPerformance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[arg1].field_0 > 8:
        revert with 'NH{q', 33
    if stor0[arg1].field_0 >= 9:
        revert with 'NH{q', 33
    return stor0[arg1].field_0, 
           bool(stor0[arg1].field_8),
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536,
           stor0[arg1].field_1792,
           stor0[arg1].field_2048,
           stor0[arg1].field_2304,
           stor0[arg1].field_2560,
           stor0[arg1].field_2816,
           stor0[arg1].field_3072,
           stor0[arg1].field_3328,
           stor0[arg1].field_3584,
           stor0[arg1].field_3840
}

function sub_9b203f21(?) payable {
    require calldata.size - 4 >= 576
    require arg1 == arg1
    require calldata.size - 36 >= 544
    require arg2 < 9
    require arg3 == bool(arg3)
    require calldata.size - 100 >= 384
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    require arg10 == arg10
    require arg11 == arg11
    require arg12 == arg12
    require arg13 == arg13
    require arg14 == arg14
    require arg15 == arg15
    require arg16 == arg16
    require arg17 == arg17
    require arg18 == arg18
    if arg2 > 8:
        revert with 'NH{q', 33
    stor0[arg1].field_0 = arg2 or Mask(248, 8, stor0[arg1].field_0)
    stor0[arg1].field_8 = Mask(248, 0, bool(arg3))
    stor0[arg1].field_256 = arg4
    stor0[arg1].field_512 = arg5
    stor0[arg1].field_768 = arg6
    stor0[arg1].field_1024 = arg7
    stor0[arg1].field_1280 = arg8
    stor0[arg1].field_1536 = arg9
    stor0[arg1].field_1792 = arg10
    stor0[arg1].field_2048 = arg11
    stor0[arg1].field_2304 = arg12
    stor0[arg1].field_2560 = arg13
    stor0[arg1].field_2816 = arg14
    stor0[arg1].field_3072 = arg15
    stor0[arg1].field_3328 = arg16
    stor0[arg1].field_3584 = arg17
    stor0[arg1].field_3840 = arg18
}

function sub_dc12e1ed(?) payable {
    require calldata.size - 4 >= 608
    require arg1 == address(arg1)
    require arg2 == arg2
    require calldata.size - 68 >= 544
    require arg3 < 2
    require arg4 < 2
    require arg5 < 5
    require arg6 < 9
    require arg7 < 9
    require arg8 < 9
    require calldata.size - 260 >= 320
    require arg9 == arg9
    require arg10 == arg10
    require arg11 == arg11
    require arg12 == arg12
    require arg13 == arg13
    require arg14 == arg14
    require arg15 == arg15
    require arg16 == arg16
    require arg17 == arg17
    require arg18 == arg18
    require arg19 == bool(arg19)
    if arg2 >= stor1[address(arg1)].field_0:
        revert with 'NH{q', 50
    if arg3 > 1:
        revert with 'NH{q', 33
    stor1[address(arg1)][arg2].field_0 = arg3 or Mask(248, 8, stor1[address(arg1)][arg2].field_0)
    if arg4 > 1:
        revert with 'NH{q', 33
    stor1[address(arg1)][arg2].field_8 = Mask(248, 0, arg4)
    if arg5 > 4:
        revert with 'NH{q', 33
    stor1[address(arg1)][arg2].field_16 = Mask(240, 0, arg5)
    if arg6 > 8:
        revert with 'NH{q', 33
    stor1[address(arg1)][arg2].field_24 = Mask(232, 0, arg6)
    if arg7 > 8:
        revert with 'NH{q', 33
    stor1[address(arg1)][arg2].field_32 = Mask(224, 0, arg7)
    if arg8 > 8:
        revert with 'NH{q', 33
    stor1[address(arg1)][arg2].field_40 = Mask(216, 0, arg8)
    stor1[address(arg1)][arg2].field_256 = arg9
    stor1[address(arg1)][arg2].field_512 = arg10
    stor1[address(arg1)][arg2].field_768 = arg11
    stor1[address(arg1)][arg2].field_1024 = arg12
    stor1[address(arg1)][arg2].field_1280 = arg13
    stor1[address(arg1)][arg2].field_1536 = arg14
    stor1[address(arg1)][arg2].field_1792 = arg15
    stor1[address(arg1)][arg2].field_2048 = arg16
    stor1[address(arg1)][arg2].field_2304 = arg17
    stor1[address(arg1)][arg2].field_2560 = arg18
    stor1[address(arg1)][arg2].field_2816 = uint8(bool(arg19))
}

function sub_ff65376c(?) payable {
    require calldata.size - 4 >= 576
    require arg1 == address(arg1)
    require calldata.size - 36 >= 544
    require arg2 < 2
    require arg3 < 2
    require arg4 < 5
    require arg5 < 9
    require arg6 < 9
    require arg7 < 9
    require calldata.size - 228 >= 320
    require arg8 == arg8
    require arg9 == arg9
    require arg10 == arg10
    require arg11 == arg11
    require arg12 == arg12
    require arg13 == arg13
    require arg14 == arg14
    require arg15 == arg15
    require arg16 == arg16
    require arg17 == arg17
    require arg18 == bool(arg18)
    stor1[address(arg1)].field_0++
    if arg2 > 1:
        revert with 'NH{q', 33
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = arg2 or Mask(248, 8, stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
    if arg3 > 1:
        revert with 'NH{q', 33
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_8 = Mask(248, 0, arg3)
    if arg4 > 4:
        revert with 'NH{q', 33
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_16 = Mask(240, 0, arg4)
    if arg5 > 8:
        revert with 'NH{q', 33
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_24 = Mask(232, 0, arg5)
    if arg6 > 8:
        revert with 'NH{q', 33
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_32 = Mask(224, 0, arg6)
    if arg7 > 8:
        revert with 'NH{q', 33
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_40 = Mask(216, 0, arg7)
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_256 = arg8
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_512 = arg9
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_768 = arg10
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_1024 = arg11
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_1280 = arg12
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_1536 = arg13
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_1792 = arg14
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_2048 = arg15
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_2304 = arg16
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_2560 = arg17
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_2816 = uint8(bool(arg18))
}

function sub_9284e765(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 1
    mem[64] = (32 * stor1[address(arg1)].field_0) + 128
    mem[96] = stor1[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < stor1[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 1)
        _29 = mem[64]
        mem[64] = mem[64] + 256
        if stor1[address(arg1)][idx].field_0 > 1:
            revert with 'NH{q', 33
        mem[_29] = stor1[address(arg1)][idx].field_0
        if stor1[address(arg1)][idx].field_8 > 1:
            revert with 'NH{q', 33
        mem[_29 + 32] = stor1[address(arg1)][idx].field_8
        if stor1[address(arg1)][idx].field_16 > 4:
            revert with 'NH{q', 33
        mem[_29 + 64] = stor1[address(arg1)][idx].field_16
        if stor1[address(arg1)][idx].field_24 > 8:
            revert with 'NH{q', 33
        mem[_29 + 96] = stor1[address(arg1)][idx].field_24
        if stor1[address(arg1)][idx].field_32 > 8:
            revert with 'NH{q', 33
        mem[_29 + 128] = stor1[address(arg1)][idx].field_32
        if stor1[address(arg1)][idx].field_40 > 8:
            revert with 'NH{q', 33
        mem[_29 + 160] = stor1[address(arg1)][idx].field_40
        _33 = mem[64]
        mem[64] = mem[64] + 320
        mem[_33] = stor1[address(arg1)][idx].field_256
        mem[_33 + 32] = stor1[address(arg1)][idx].field_512
        mem[_33 + 64] = stor1[address(arg1)][idx].field_768
        mem[_33 + 96] = stor1[address(arg1)][idx].field_1024
        mem[_33 + 128] = stor1[address(arg1)][idx].field_1280
        mem[_33 + 160] = stor1[address(arg1)][idx].field_1536
        mem[_33 + 192] = stor1[address(arg1)][idx].field_1792
        mem[_33 + 224] = stor1[address(arg1)][idx].field_2048
        mem[_33 + 256] = stor1[address(arg1)][idx].field_2304
        mem[_33 + 288] = stor1[address(arg1)][idx].field_2560
        mem[_29 + 192] = _33
        mem[_29 + 224] = bool(stor1[address(arg1)][idx].field_2816)
        mem[s] = _29
        s = s + 32
        idx = idx + 1
        continue 
    _30 = mem[64]
    mem[mem[64]] = 32
    _31 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _31:
        _53 = mem[s]
        if mem[mem[s]] >= 2:
            revert with 'NH{q', 33
        mem[t] = mem[mem[s]]
        if mem[_53 + 32] >= 2:
            revert with 'NH{q', 33
        mem[t + 32] = mem[_53 + 32]
        if mem[_53 + 64] >= 5:
            revert with 'NH{q', 33
        mem[t + 64] = mem[_53 + 64]
        if mem[_53 + 96] >= 9:
            revert with 'NH{q', 33
        mem[t + 96] = mem[_53 + 96]
        if mem[_53 + 128] >= 9:
            revert with 'NH{q', 33
        mem[t + 128] = mem[_53 + 128]
        if mem[_53 + 160] >= 9:
            revert with 'NH{q', 33
        mem[t + 160] = mem[_53 + 160]
        _61 = mem[_53 + 192]
        mem[t + 192] = mem[mem[_53 + 192]]
        mem[t + 224] = mem[_61 + 32]
        mem[t + 256] = mem[_61 + 64]
        mem[t + 288] = mem[_61 + 96]
        mem[t + 320] = mem[_61 + 128]
        mem[t + 352] = mem[_61 + 160]
        mem[t + 384] = mem[_61 + 192]
        mem[t + 416] = mem[_61 + 224]
        mem[t + 448] = mem[_61 + 256]
        mem[t + 480] = mem[_61 + 288]
        mem[t + 512] = bool(mem[_53 + 224])
        idx = idx + 1
        s = s + 32
        t = t + 544
        continue 
    return memory
      from mem[64]
       len _30 + (544 * _31) + -mem[64] + 64
}

function sub_571f24c2(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stor1[address(arg1)].field_0:
        if idx >= stor1[address(arg1)].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(address(arg1), 1)
        if stor1[address(arg1)][idx].field_24 > 8:
            revert with 'NH{q', 33
        if stor1[address(arg1)][idx].field_24 != 1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor1[address(arg1)].field_0 < 1:
            revert with 'NH{q', 17
        if var90002 < stor1[address(arg1)].field_0 - 1:
            if var102003 > -2:
                revert with 'NH{q', 17
            idx = var104002 + 1
            s = var104006
            while idx < stor1[address(arg1)].field_0:
                if s >= stor1[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 1)
                if stor1[address(arg1)][idx].field_0 > 1:
                    revert with 'NH{q', 33
                stor1[address(arg1)][s].field_0 = stor1[address(arg1)][idx].field_0
                if stor1[address(arg1)][idx].field_8 > 1:
                    revert with 'NH{q', 33
                stor1[address(arg1)][s].field_8 = stor1[address(arg1)][idx].field_8
                if stor1[address(arg1)][idx].field_16 > 4:
                    revert with 'NH{q', 33
                stor1[address(arg1)][s].field_16 = stor1[address(arg1)][idx].field_16
                if stor1[address(arg1)][idx].field_24 > 8:
                    revert with 'NH{q', 33
                stor1[address(arg1)][s].field_24 = stor1[address(arg1)][idx].field_24
                if stor1[address(arg1)][idx].field_32 > 8:
                    revert with 'NH{q', 33
                stor1[address(arg1)][s].field_32 = stor1[address(arg1)][idx].field_32
                if stor1[address(arg1)][idx].field_40 > 8:
                    revert with 'NH{q', 33
                stor1[address(arg1)][s].field_40 = stor1[address(arg1)][idx].field_40
                stor1[address(arg1)][s].field_256 = stor1[address(arg1)][idx].field_256
                stor1[address(arg1)][s].field_512 = stor1[address(arg1)][idx].field_512
                stor1[address(arg1)][s].field_768 = stor1[address(arg1)][idx].field_768
                stor1[address(arg1)][s].field_1024 = stor1[address(arg1)][idx].field_1024
                stor1[address(arg1)][s].field_1280 = stor1[address(arg1)][idx].field_1280
                stor1[address(arg1)][s].field_1536 = stor1[address(arg1)][idx].field_1536
                stor1[address(arg1)][s].field_1792 = stor1[address(arg1)][idx].field_1792
                stor1[address(arg1)][s].field_2048 = stor1[address(arg1)][idx].field_2048
                stor1[address(arg1)][s].field_2304 = stor1[address(arg1)][idx].field_2304
                stor1[address(arg1)][s].field_2560 = stor1[address(arg1)][idx].field_2560
                stor1[address(arg1)][s].field_2816 = uint8(bool(stor1[address(arg1)][idx].field_2816))
                _178 = mem[64]
                mem[64] = mem[64] + 64
                mem[_178] = 1
                mem[_178 + 32] = s
                if s >= stor1[address(arg1)].field_0:
                    revert with 'NH{q', 50
                mem[0] = sha3(address(arg1), 1)
                mem[mem[64]] = 0xfec1468700000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = stor1[address(arg1)][s].field_1536
                mem[mem[64] + 68] = 1
                mem[mem[64] + 100] = s
                require ext_code.size(this.address)
                call this.address.0xfec14687 with:
                     gas gas_remaining wei
                    args address(arg1), stor1[address(arg1)][s].field_1536, 1, s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if s == -1:
                    revert with 'NH{q', 17
                if stor1[address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if s + 1 < stor1[address(arg1)].field_0 - 1:
                    if s + 1 > -2:
                        revert with 'NH{q', 17
                    idx = s + 2
                    s = s + 1
                    continue 
                if not stor1[address(arg1)].field_0:
                    revert with 'NH{q', 49
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
                stor1[address(arg1)].field_0--
                mem[0] = address(arg1)
                mem[32] = 3
                if sub_db9bdc15[address(arg1)] < 1:
                    revert with 'NH{q', 17
                sub_db9bdc15[address(arg1)]--
                idx = 1
                continue 
            revert with 'NH{q', 50
        if not stor1[address(arg1)].field_0:
            revert with 'NH{q', 49
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = 0
        stor1[address(arg1)].field_0--
        mem[0] = address(arg1)
        mem[32] = 3
        if sub_db9bdc15[address(arg1)] < 1:
            revert with 'NH{q', 17
        sub_db9bdc15[address(arg1)]--
        idx = 1
        continue 
}



}
