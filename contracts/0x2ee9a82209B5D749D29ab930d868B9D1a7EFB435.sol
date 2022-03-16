contract main {




// =====================  Runtime code  =====================


#
#  - sub_68dea57d(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address sub_b9e344daAddress;
address sub_feed1562Address;
address sub_d81aacffAddress;
uint256 sub_fa5bcc9d;
mapping of address sub_f9f2d343;
array of uint256 sub_0e367954;
mapping of address sub_597064ae;
mapping of uint256 sub_2d4d8435;
mapping of uint256 sub_b964ac3d;
mapping of uint256 sub_72d774c3;
mapping of uint256 sub_82977ac2;
mapping of uint8 stor62;
array of address sub_4878351b;
array of uint256 sub_babd8af7;
mapping of uint256 sub_4f502c75;
mapping of uint256 sub_29a65f8f;
mapping of uint256 sub_96186484;
uint256 sub_a71925cb;
mapping of uint256 sub_118c9704;
mapping of uint256 sub_7416dcd6;
mapping of uint256 sub_a3157d06;
mapping of uint8 stor73;
mapping of uint256 sub_bbe7180d;
mapping of uint256 stor75;
mapping of uint8 stor76;
uint256 sub_d4e398c9;

function sub_0e367954(?) {
    return sub_0e367954[arg1][0 len sub_0e367954[arg1].length]
}

function sub_118c9704(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_118c9704[arg1][arg2]
}

function sub_29a65f8f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_29a65f8f[arg1]
}

function sub_2d4d8435(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_2d4d8435[arg1]
}

function sub_4878351b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(sub_4878351b[arg1])
}

function sub_4f502c75(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_4f502c75[arg1]
}

function sub_507a0a3d(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < sub_507a0a3d[arg1]
    return sub_507a0a3d[arg1][arg2]
}

function sub_597064ae(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_597064ae[arg1]
}

function sub_72d774c3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_72d774c3[arg1]
}

function sub_7416dcd6(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_7416dcd6[arg1][arg2]
}

function sub_74ffc226(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor76[arg1])
}

function sub_82977ac2(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_82977ac2[arg1]
}

function sub_864ce6b2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_507a0a3d[address(arg1)]
}

function sub_96186484(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_96186484[arg1]
}

function sub_9a9183a0(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < uint256(sub_4878351b[arg1])
    return address(sub_4878351b[arg1][arg2])
}

function sub_a3157d06(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_a3157d06[arg1][arg2]
}

function sub_a71925cb(?) {
    return sub_a71925cb
}

function sub_b964ac3d(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_b964ac3d[arg1]
}

function sub_b9e344da(?) {
    return sub_b9e344daAddress
}

function sub_babd8af7(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < sub_babd8af7[arg1]
    return sub_babd8af7[arg1][arg2]
}

function sub_bbe7180d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bbe7180d[arg1]
}

function sub_d286bea5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return bool(stor73[arg1][arg2])
}

function sub_d4e398c9(?) {
    return sub_d4e398c9
}

function sub_d81aacff(?) {
    return sub_d81aacffAddress
}

function sub_e87ba7aa(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor62[arg1])
}

function sub_f9f2d343(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_f9f2d343[arg1]
}

function sub_fa5bcc9d(?) {
    return sub_fa5bcc9d
}

function sub_feed1562(?) {
    return sub_feed1562Address
}

function _fallback() payable {
    revert
}

function sub_1ce0a59b(?) {
    sub_d4e398c9 = 2 * 10^15
    sub_fa5bcc9d = 1000
    sub_b9e344daAddress = 0x5beabaebb3146685dd74176f68a0721f91297d37
    sub_feed1562Address = 0x98945bc69a554f8b129b09ac8afdc2cc2431c48e
    sub_d81aacffAddress = 0x73282a63f0e3d7e9604575420f777361eca3c86a
}

function sub_9d6ce84b(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 <= test266151307() and ceil32(arg1.length) + 128 >= 96
    require arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor75[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function initialize() {
    if uint8(stor0.field_8):
        sub_d4e398c9 = 2 * 10^15
        sub_fa5bcc9d = 1000
        sub_b9e344daAddress = 0x5beabaebb3146685dd74176f68a0721f91297d37
        sub_feed1562Address = 0x98945bc69a554f8b129b09ac8afdc2cc2431c48e
        sub_d81aacffAddress = 0x73282a63f0e3d7e9604575420f777361eca3c86a
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if uint8(stor0.field_8):
            sub_d4e398c9 = 2 * 10^15
            sub_fa5bcc9d = 1000
            sub_b9e344daAddress = 0x5beabaebb3146685dd74176f68a0721f91297d37
            sub_feed1562Address = 0x98945bc69a554f8b129b09ac8afdc2cc2431c48e
            sub_d81aacffAddress = 0x73282a63f0e3d7e9604575420f777361eca3c86a
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            sub_d4e398c9 = 2 * 10^15
            sub_fa5bcc9d = 1000
            sub_b9e344daAddress = 0x5beabaebb3146685dd74176f68a0721f91297d37
            sub_feed1562Address = 0x98945bc69a554f8b129b09ac8afdc2cc2431c48e
            sub_d81aacffAddress = 0x73282a63f0e3d7e9604575420f777361eca3c86a
            Mask(248, 0, stor0.field_8) = 0
}

function sub_b97d9f02(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if arg2 >= sub_507a0a3d[address(arg1)]:
        mem[160 len 1024] = 32, mem[160 len 992]
        return 32, 32, mem[160 len 1024]
    if arg3:
        if arg2 + arg3 < arg2:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 + arg3 <= sub_507a0a3d[address(arg1)]:
            require arg3 <= test266151307()
            if arg3:
                mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
            idx = 0
            while idx < arg3:
                mem[32] = 69
                require arg2 + idx < sub_507a0a3d[address(arg1)]
                mem[0] = sha3(address(arg1), 69)
                require idx < arg3
                mem[(32 * idx) + 128] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_507a0a3d', 69)) + arg2 + idx]
                idx = idx + 1
                continue 
            return Array(len=arg3, data=mem[128 len 32 * arg3])
    if arg2 > sub_507a0a3d[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require sub_507a0a3d[address(arg1)] - arg2 <= test266151307()
    mem[160] = sub_507a0a3d[address(arg1)] - arg2
    if sub_507a0a3d[address(arg1)] - arg2:
        mem[192 len 32 * sub_507a0a3d[address(arg1)] - arg2] = call.data[calldata.size len 32 * sub_507a0a3d[address(arg1)] - arg2]
    idx = 0
    while idx < sub_507a0a3d[address(arg1)] - arg2:
        mem[32] = 69
        require arg2 + idx < sub_507a0a3d[address(arg1)]
        mem[0] = sha3(address(arg1), 69)
        require idx < mem[160]
        mem[(32 * idx) + 192] = stor[('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_507a0a3d', 69)) + arg2 + idx]
        idx = idx + 1
        continue 
    mem[(32 * sub_507a0a3d[address(arg1)] - arg2) + 192] = 32
    mem[(32 * sub_507a0a3d[address(arg1)] - arg2) + 224] = mem[160]
    mem[(32 * sub_507a0a3d[address(arg1)] - arg2) + 256 len 32 * mem[160]] = mem[192 len 32 * mem[160]]
    return 32, mem[(32 * sub_507a0a3d[address(arg1)] - arg2) + 224 len (32 * mem[160]) + 32]
}

function sub_5d417a19(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint256(sub_4878351b[arg1]) <= 0:
        return 0
    mem[0] = arg1
    mem[32] = 58
    s = sub_4f502c75[arg1]
    t = 0
    idx = 0
    while idx < sub_2d4d8435[arg1]:
        require s < uint256(sub_4878351b[arg1])
        mem[0] = arg1
        mem[32] = 58
        _71 = mem[64]
        mem[64] = mem[64] + 64
        mem[_71] = 30
        mem[_71 + 32] = 'SafeMath: subtraction overflow'
        if idx > sub_2d4d8435[arg1]:
            _72 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_72 + idx + 68] = mem[_71 + idx + 32]
                mem[0] = arg1
                mem[32] = 58
                idx = idx + 32
                continue 
            mem[_72 + 98] = 0
            revert with memory
              from mem[64]
               len _72 + -mem[64] + 100
        if sub_2d4d8435[arg1] - idx > sub_118c9704[address(stor63[arg1][s])][arg1]:
            if idx + sub_118c9704[address(stor63[arg1][s])][arg1] < idx:
                revert with 0, 'SafeMath: addition overflow'
            if t + sub_7416dcd6[address(stor63[arg1][s])][arg1] < t:
                revert with 0, 'SafeMath: addition overflow'
            require s < sub_babd8af7[arg1]
            if sub_babd8af7[arg1][s] == -1:
                return idx + sub_118c9704[address(stor63[arg1][s])][arg1], t + sub_7416dcd6[address(stor63[arg1][s])][arg1]
            mem[0] = arg1
            mem[32] = 58
            s = sub_babd8af7[arg1][s]
            t = t + sub_7416dcd6[address(stor63[arg1][s])][arg1]
            idx = idx + sub_118c9704[address(stor63[arg1][s])][arg1]
            continue 
        mem[0] = arg1
        mem[32] = 58
        _77 = mem[64]
        mem[64] = mem[64] + 64
        mem[_77] = 30
        mem[_77 + 32] = 'SafeMath: subtraction overflow'
        if idx > sub_2d4d8435[arg1]:
            _79 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_79 + idx + 68] = mem[_77 + idx + 32]
                mem[0] = arg1
                mem[32] = 58
                idx = idx + 32
                continue 
            mem[_79 + 98] = 0
            revert with memory
              from mem[64]
               len _79 + -mem[64] + 100
        mem[0] = arg1
        mem[32] = sha3(address(sub_4878351b[arg1][s]), 71)
        if not sub_2d4d8435[arg1] - idx:
            _93 = mem[64]
            mem[64] = mem[64] + 64
            mem[_93] = 26
            mem[_93 + 32] = 'SafeMath: division by zero'
            if sub_118c9704[address(stor63[arg1][s])][arg1] > 0:
                require sub_118c9704[address(stor63[arg1][s])][arg1]
                if t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) < t:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_2d4d8435[arg1], t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1])
            _96 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_96 + idx + 68] = mem[_93 + idx + 32]
                mem[0] = arg1
                mem[32] = 58
                idx = idx + 32
                continue 
            mem[_96 + 94] = 0
            revert with memory
              from mem[64]
               len _96 + -mem[64] + 100
        require sub_2d4d8435[arg1] - idx
        if (sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_2d4d8435[arg1] - idx != sub_7416dcd6[address(stor63[arg1][s])][arg1]:
            revert with 0, 'SafeMath: multiplication overflow'
        _95 = mem[64]
        mem[64] = mem[64] + 64
        mem[_95] = 26
        mem[_95 + 32] = 'SafeMath: division by zero'
        if sub_118c9704[address(stor63[arg1][s])][arg1] > 0:
            require sub_118c9704[address(stor63[arg1][s])][arg1]
            if t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) < t:
                revert with 0, 'SafeMath: addition overflow'
            return sub_2d4d8435[arg1], 
                   t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1])
        _101 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[_101 + idx + 68] = mem[_95 + idx + 32]
            mem[0] = arg1
            mem[32] = 58
            idx = idx + 32
            continue 
        mem[_101 + 94] = 0
        revert with memory
          from mem[64]
           len _101 + -mem[64] + 100
    return idx, t
}

function sub_359fd093(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if uint256(sub_4878351b[arg2]):
        mem[0] = arg2
        mem[32] = 58
        s = sub_4f502c75[arg2]
        t = 0
        idx = 0
        while idx < sub_2d4d8435[arg2]:
            require s < uint256(sub_4878351b[arg2])
            mem[0] = arg2
            mem[32] = 58
            _75 = mem[64]
            mem[64] = mem[64] + 64
            mem[_75] = 30
            mem[_75 + 32] = 'SafeMath: subtraction overflow'
            if idx > sub_2d4d8435[arg2]:
                _76 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_76 + idx + 68] = mem[_75 + idx + 32]
                    mem[0] = arg2
                    mem[32] = 58
                    idx = idx + 32
                    continue 
                mem[_76 + 98] = 0
                revert with memory
                  from mem[64]
                   len _76 + -mem[64] + 100
            if sub_2d4d8435[arg2] - idx > sub_118c9704[address(stor63[arg2][s])][arg2]:
                if address(arg1) == address(sub_4878351b[arg2][s]):
                    return sub_118c9704[address(stor63[arg2][s])][arg2], sub_7416dcd6[address(stor63[arg2][s])][arg2]
                if idx + sub_118c9704[address(stor63[arg2][s])][arg2] < idx:
                    revert with 0, 'SafeMath: addition overflow'
                if t + sub_7416dcd6[address(stor63[arg2][s])][arg2] < t:
                    revert with 0, 'SafeMath: addition overflow'
                require s < sub_babd8af7[arg2]
                if sub_babd8af7[arg2][s] == -1:
                    return 0
                mem[0] = arg2
                mem[32] = 58
                s = sub_babd8af7[arg2][s]
                t = t + sub_7416dcd6[address(stor63[arg2][s])][arg2]
                idx = idx + sub_118c9704[address(stor63[arg2][s])][arg2]
                continue 
            mem[0] = arg2
            mem[32] = 58
            _79 = mem[64]
            mem[64] = mem[64] + 64
            mem[_79] = 30
            mem[_79 + 32] = 'SafeMath: subtraction overflow'
            if idx > sub_2d4d8435[arg2]:
                _86 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_86 + idx + 68] = mem[_79 + idx + 32]
                    mem[0] = arg2
                    mem[32] = 58
                    idx = idx + 32
                    continue 
                mem[_86 + 98] = 0
                revert with memory
                  from mem[64]
                   len _86 + -mem[64] + 100
            mem[0] = arg2
            mem[32] = sha3(address(sub_4878351b[arg2][s]), 71)
            if not sub_2d4d8435[arg2] - idx:
                _102 = mem[64]
                mem[64] = mem[64] + 64
                mem[_102] = 26
                mem[_102 + 32] = 'SafeMath: division by zero'
                if sub_118c9704[address(stor63[arg2][s])][arg2] > 0:
                    require sub_118c9704[address(stor63[arg2][s])][arg2]
                    if address(arg1) != address(sub_4878351b[arg2][s]):
                        return 0
                    return sub_2d4d8435[arg2] - idx, 0 / sub_118c9704[address(stor63[arg2][s])][arg2]
                _104 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_104 + idx + 68] = mem[_102 + idx + 32]
                    mem[0] = arg2
                    mem[32] = 58
                    idx = idx + 32
                    continue 
                mem[_104 + 94] = 0
                revert with memory
                  from mem[64]
                   len _104 + -mem[64] + 100
            require sub_2d4d8435[arg2] - idx
            if (sub_2d4d8435[arg2] * sub_7416dcd6[address(stor63[arg2][s])][arg2]) - (idx * sub_7416dcd6[address(stor63[arg2][s])][arg2]) / sub_2d4d8435[arg2] - idx != sub_7416dcd6[address(stor63[arg2][s])][arg2]:
                revert with 0, 'SafeMath: multiplication overflow'
            _103 = mem[64]
            mem[64] = mem[64] + 64
            mem[_103] = 26
            mem[_103 + 32] = 'SafeMath: division by zero'
            if sub_118c9704[address(stor63[arg2][s])][arg2] > 0:
                require sub_118c9704[address(stor63[arg2][s])][arg2]
                if address(arg1) != address(sub_4878351b[arg2][s]):
                    return 0
                return sub_2d4d8435[arg2] - idx, 
                       (sub_2d4d8435[arg2] * sub_7416dcd6[address(stor63[arg2][s])][arg2]) - (idx * sub_7416dcd6[address(stor63[arg2][s])][arg2]) / sub_118c9704[address(stor63[arg2][s])][arg2]
            _111 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_111 + idx + 68] = mem[_103 + idx + 32]
                mem[0] = arg2
                mem[32] = 58
                idx = idx + 32
                continue 
            mem[_111 + 94] = 0
            revert with memory
              from mem[64]
               len _111 + -mem[64] + 100
        return 0
    else:
        return 0
}

function bidderClaim(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_a71925cb:
        revert with 0, 'this pool does not exist'
    if sub_82977ac2[arg1] > block.timestamp:
        revert with 0, 'this pool is not closed'
    if stor73[address(msg.sender)][arg1]:
        revert with 0, 'sender has claimed this pool'
    stor73[address(msg.sender)][arg1] = 1
    if uint256(sub_4878351b[arg1]):
        mem[0] = arg1
        mem[32] = 58
        s = sub_4f502c75[arg1]
        t = 0
        idx = 0
        while idx < sub_2d4d8435[arg1]:
            require s < uint256(sub_4878351b[arg1])
            mem[0] = arg1
            mem[32] = 58
            _261 = mem[64]
            mem[64] = mem[64] + 64
            mem[_261] = 30
            mem[_261 + 32] = 'SafeMath: subtraction overflow'
            if idx > sub_2d4d8435[arg1]:
                _263 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_263 + idx + 68] = mem[_261 + idx + 32]
                    mem[0] = arg1
                    mem[32] = 58
                    idx = idx + 32
                    continue 
                mem[_263 + 98] = 0
                revert with memory
                  from mem[64]
                   len _263 + -mem[64] + 100
            if sub_2d4d8435[arg1] - idx > sub_118c9704[address(stor63[arg1][s])][arg1]:
                if address(sub_4878351b[arg1][s]) != msg.sender:
                    if idx + sub_118c9704[address(stor63[arg1][s])][arg1] < idx:
                        revert with 0, 'SafeMath: addition overflow'
                    if t + sub_7416dcd6[address(stor63[arg1][s])][arg1] < t:
                        revert with 0, 'SafeMath: addition overflow'
                    require s < sub_babd8af7[arg1]
                    mem[0] = arg1
                    if sub_babd8af7[arg1][s] != -1:
                        mem[32] = 58
                        s = sub_babd8af7[arg1][s]
                        t = t + sub_7416dcd6[address(stor63[arg1][s])][arg1]
                        idx = idx + sub_118c9704[address(stor63[arg1][s])][arg1]
                        continue 
                    mem[32] = sha3(address(msg.sender), 71)
                    _316 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_316] = 30
                    mem[_316 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > sub_7416dcd6[address(msg.sender)][arg1]:
                        _323 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_323 + idx + 68] = mem[_316 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_323 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _323 + -mem[64] + 100
                    if sub_7416dcd6[address(msg.sender)][arg1] > 0:
                        call msg.sender with:
                           value sub_7416dcd6[address(msg.sender)][arg1] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d81aacffAddress)
                    call sub_d81aacffAddress.0xba167067 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claimed(msg.sender, arg1, 0, sub_7416dcd6[address(msg.sender)][arg1]);
                else:
                    mem[0] = arg1
                    mem[32] = sha3(address(msg.sender), 71)
                    _287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_287] = 30
                    mem[_287 + 32] = 'SafeMath: subtraction overflow'
                    if sub_7416dcd6[address(stor63[arg1][s])][arg1] > sub_7416dcd6[address(msg.sender)][arg1]:
                        _294 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_294 + idx + 68] = mem[_287 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_294 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _294 + -mem[64] + 100
                    if sub_118c9704[address(stor63[arg1][s])][arg1] > 0:
                        mem[0] = arg1
                        mem[32] = 57
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_118c9704[address(stor63[arg1][s])][arg1]
                        require ext_code.size(sub_597064ae[arg1])
                        call sub_597064ae[arg1].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_118c9704[address(stor63[arg1][s])][arg1]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _385 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_385] == bool(mem[_385])
                    if sub_7416dcd6[address(msg.sender)][arg1] - sub_7416dcd6[address(stor63[arg1][s])][arg1] > 0:
                        call msg.sender with:
                           value sub_7416dcd6[address(msg.sender)][arg1] - sub_7416dcd6[address(stor63[arg1][s])][arg1] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_d81aacffAddress)
                    call sub_d81aacffAddress.0xba167067 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claimed(msg.sender, arg1, sub_118c9704[address(stor63[arg1][s])][arg1], sub_7416dcd6[address(msg.sender)][arg1] - sub_7416dcd6[address(stor63[arg1][s])][arg1]);
            else:
                mem[0] = arg1
                mem[32] = 58
                _270 = mem[64]
                mem[64] = mem[64] + 64
                mem[_270] = 30
                mem[_270 + 32] = 'SafeMath: subtraction overflow'
                if idx > sub_2d4d8435[arg1]:
                    _280 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_280 + idx + 68] = mem[_270 + idx + 32]
                        mem[0] = arg1
                        mem[32] = 58
                        idx = idx + 32
                        continue 
                    mem[_280 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _280 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = sha3(address(sub_4878351b[arg1][s]), 71)
                if not sub_2d4d8435[arg1] - idx:
                    _303 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_303] = 26
                    mem[_303 + 32] = 'SafeMath: division by zero'
                    if sub_118c9704[address(stor63[arg1][s])][arg1] <= 0:
                        _308 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_308 + idx + 68] = mem[_303 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_308 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _308 + -mem[64] + 100
                    require sub_118c9704[address(stor63[arg1][s])][arg1]
                    mem[0] = arg1
                    mem[32] = sha3(address(msg.sender), 71)
                    if address(sub_4878351b[arg1][s]) != msg.sender:
                        _335 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_335] = 30
                        mem[_335 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > sub_7416dcd6[address(msg.sender)][arg1]:
                            _347 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_347 + idx + 68] = mem[_335 + idx + 32]
                                mem[0] = arg1
                                mem[32] = 58
                                idx = idx + 32
                                continue 
                            mem[_347 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _347 + -mem[64] + 100
                        if sub_7416dcd6[address(msg.sender)][arg1] > 0:
                            call msg.sender with:
                               value sub_7416dcd6[address(msg.sender)][arg1] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d81aacffAddress)
                        call sub_d81aacffAddress.0xba167067 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, arg1, 0, sub_7416dcd6[address(msg.sender)][arg1]);
                    else:
                        _336 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_336] = 30
                        mem[_336 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / sub_118c9704[address(stor63[arg1][s])][arg1] > sub_7416dcd6[address(msg.sender)][arg1]:
                            _348 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_348 + idx + 68] = mem[_336 + idx + 32]
                                mem[0] = arg1
                                mem[32] = 58
                                idx = idx + 32
                                continue 
                            mem[_348 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _348 + -mem[64] + 100
                        if sub_2d4d8435[arg1] - idx > 0:
                            mem[0] = arg1
                            mem[32] = 57
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_2d4d8435[arg1] - idx
                            require ext_code.size(sub_597064ae[arg1])
                            call sub_597064ae[arg1].0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_2d4d8435[arg1] - idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _432 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_432] == bool(mem[_432])
                        if sub_7416dcd6[address(msg.sender)][arg1] - (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) > 0:
                            call msg.sender with:
                               value sub_7416dcd6[address(msg.sender)][arg1] - (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d81aacffAddress)
                        call sub_d81aacffAddress.0xba167067 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, arg1, sub_2d4d8435[arg1] - idx, sub_7416dcd6[address(msg.sender)][arg1] - (0 / sub_118c9704[address(stor63[arg1][s])][arg1]));
                else:
                    require sub_2d4d8435[arg1] - idx
                    if (sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_2d4d8435[arg1] - idx != sub_7416dcd6[address(stor63[arg1][s])][arg1]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _307 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_307] = 26
                    mem[_307 + 32] = 'SafeMath: division by zero'
                    if sub_118c9704[address(stor63[arg1][s])][arg1] <= 0:
                        _320 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_320 + idx + 68] = mem[_307 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_320 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _320 + -mem[64] + 100
                    require sub_118c9704[address(stor63[arg1][s])][arg1]
                    mem[0] = arg1
                    mem[32] = sha3(address(msg.sender), 71)
                    if address(sub_4878351b[arg1][s]) != msg.sender:
                        _345 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_345] = 30
                        mem[_345 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > sub_7416dcd6[address(msg.sender)][arg1]:
                            _354 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_354 + idx + 68] = mem[_345 + idx + 32]
                                mem[0] = arg1
                                mem[32] = 58
                                idx = idx + 32
                                continue 
                            mem[_354 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _354 + -mem[64] + 100
                        if sub_7416dcd6[address(msg.sender)][arg1] > 0:
                            call msg.sender with:
                               value sub_7416dcd6[address(msg.sender)][arg1] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d81aacffAddress)
                        call sub_d81aacffAddress.0xba167067 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, arg1, 0, sub_7416dcd6[address(msg.sender)][arg1]);
                    else:
                        _346 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_346] = 30
                        mem[_346 + 32] = 'SafeMath: subtraction overflow'
                        if (sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] > sub_7416dcd6[address(msg.sender)][arg1]:
                            _355 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_355 + idx + 68] = mem[_346 + idx + 32]
                                mem[0] = arg1
                                mem[32] = 58
                                idx = idx + 32
                                continue 
                            mem[_355 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _355 + -mem[64] + 100
                        if sub_2d4d8435[arg1] - idx > 0:
                            mem[0] = arg1
                            mem[32] = 57
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = sub_2d4d8435[arg1] - idx
                            require ext_code.size(sub_597064ae[arg1])
                            call sub_597064ae[arg1].0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, sub_2d4d8435[arg1] - idx
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _435 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_435] == bool(mem[_435])
                        if sub_7416dcd6[address(msg.sender)][arg1] - ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) > 0:
                            call msg.sender with:
                               value sub_7416dcd6[address(msg.sender)][arg1] - ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(sub_d81aacffAddress)
                        call sub_d81aacffAddress.0xba167067 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, arg1, sub_2d4d8435[arg1] - idx, sub_7416dcd6[address(msg.sender)][arg1] - ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]));
    if 0 > sub_7416dcd6[address(msg.sender)][arg1]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_7416dcd6[address(msg.sender)][arg1] > 0:
        call msg.sender with:
           value sub_7416dcd6[address(msg.sender)][arg1] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_d81aacffAddress)
    call sub_d81aacffAddress.0xba167067 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Claimed(msg.sender, arg1, 0, sub_7416dcd6[address(msg.sender)][arg1]);
}

function creatorClaim(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= sub_a71925cb:
        revert with 0, 'this pool does not exist'
    if sub_82977ac2[arg1] > block.timestamp:
        revert with 0, 'this pool is not closed'
    if sub_f9f2d343[arg1] != msg.sender:
        revert with 0, 'sender is not pool creator'
    if stor62[arg1]:
        revert with 0, 'creator has claimed this pool'
    stor62[arg1] = 1
    sub_bbe7180d[address(msg.sender)] = 0
    if uint256(sub_4878351b[arg1]) <= 0:
        if 0 > sub_2d4d8435[arg1]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if sub_2d4d8435[arg1] > 0:
            require ext_code.size(sub_597064ae[arg1])
            call sub_597064ae[arg1].0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_2d4d8435[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Claimed(msg.sender, arg1, sub_2d4d8435[arg1], 0);
    else:
        mem[0] = arg1
        mem[32] = 58
        s = sub_4f502c75[arg1]
        t = 0
        idx = 0
        while idx < sub_2d4d8435[arg1]:
            require s < uint256(sub_4878351b[arg1])
            mem[0] = arg1
            mem[32] = 58
            _330 = mem[64]
            mem[64] = mem[64] + 64
            mem[_330] = 30
            mem[_330 + 32] = 'SafeMath: subtraction overflow'
            if idx > sub_2d4d8435[arg1]:
                _332 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_332 + idx + 68] = mem[_330 + idx + 32]
                    mem[0] = arg1
                    mem[32] = 58
                    idx = idx + 32
                    continue 
                mem[_332 + 98] = 0
                revert with memory
                  from mem[64]
                   len _332 + -mem[64] + 100
            if sub_2d4d8435[arg1] - idx > sub_118c9704[address(stor63[arg1][s])][arg1]:
                if idx + sub_118c9704[address(stor63[arg1][s])][arg1] < idx:
                    revert with 0, 'SafeMath: addition overflow'
                if t + sub_7416dcd6[address(stor63[arg1][s])][arg1] < t:
                    revert with 0, 'SafeMath: addition overflow'
                require s < sub_babd8af7[arg1]
                mem[0] = arg1
                mem[32] = 58
                if sub_babd8af7[arg1][s] != -1:
                    s = sub_babd8af7[arg1][s]
                    t = t + sub_7416dcd6[address(stor63[arg1][s])][arg1]
                    idx = idx + sub_118c9704[address(stor63[arg1][s])][arg1]
                    continue 
                _372 = mem[64]
                mem[64] = mem[64] + 64
                mem[_372] = 30
                mem[_372 + 32] = 'SafeMath: subtraction overflow'
                if idx + sub_118c9704[address(stor63[arg1][s])][arg1] > sub_2d4d8435[arg1]:
                    _380 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_380 + idx + 68] = mem[_372 + idx + 32]
                        mem[0] = arg1
                        mem[32] = 58
                        idx = idx + 32
                        continue 
                    mem[_380 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _380 + -mem[64] + 100
                if not t + sub_7416dcd6[address(stor63[arg1][s])][arg1]:
                    _411 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_411] = 26
                    mem[_411 + 32] = 'SafeMath: division by zero'
                    _429 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_429] = 30
                    mem[_429 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > t + sub_7416dcd6[address(stor63[arg1][s])][arg1]:
                        _437 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_437 + idx + 68] = mem[_429 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_437 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _437 + -mem[64] + 100
                    if sub_2d4d8435[arg1] - idx - sub_118c9704[address(stor63[arg1][s])][arg1] > 0:
                        mem[0] = arg1
                        mem[32] = 57
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_2d4d8435[arg1] - idx - sub_118c9704[address(stor63[arg1][s])][arg1]
                        require ext_code.size(sub_597064ae[arg1])
                        call sub_597064ae[arg1].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_2d4d8435[arg1] - idx - sub_118c9704[address(stor63[arg1][s])][arg1]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _557 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_557] == bool(mem[_557])
                    if t + sub_7416dcd6[address(stor63[arg1][s])][arg1] > 0:
                        call msg.sender with:
                           value t + sub_7416dcd6[address(stor63[arg1][s])][arg1] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit Claimed(msg.sender, arg1, sub_2d4d8435[arg1] - idx - sub_118c9704[address(stor63[arg1][s])][arg1], t + sub_7416dcd6[address(stor63[arg1][s])][arg1]);
                else:
                    require t + sub_7416dcd6[address(stor63[arg1][s])][arg1]
                    if (t * sub_d4e398c9) + (sub_7416dcd6[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / t + sub_7416dcd6[address(stor63[arg1][s])][arg1] != sub_d4e398c9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _419 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_419] = 26
                    mem[_419 + 32] = 'SafeMath: division by zero'
                    _436 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_436] = 30
                    mem[_436 + 32] = 'SafeMath: subtraction overflow'
                    if (t * sub_d4e398c9) + (sub_7416dcd6[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18 > t + sub_7416dcd6[address(stor63[arg1][s])][arg1]:
                        _444 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_444 + idx + 68] = mem[_436 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_444 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _444 + -mem[64] + 100
                    if sub_2d4d8435[arg1] - idx - sub_118c9704[address(stor63[arg1][s])][arg1] > 0:
                        mem[0] = arg1
                        mem[32] = 57
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = sub_2d4d8435[arg1] - idx - sub_118c9704[address(stor63[arg1][s])][arg1]
                        require ext_code.size(sub_597064ae[arg1])
                        call sub_597064ae[arg1].0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, sub_2d4d8435[arg1] - idx - sub_118c9704[address(stor63[arg1][s])][arg1]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _561 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_561] == bool(mem[_561])
                    if t + sub_7416dcd6[address(stor63[arg1][s])][arg1] - ((t * sub_d4e398c9) + (sub_7416dcd6[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18) > 0:
                        call msg.sender with:
                           value t + sub_7416dcd6[address(stor63[arg1][s])][arg1] - ((t * sub_d4e398c9) + (sub_7416dcd6[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if (t * sub_d4e398c9) + (sub_7416dcd6[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18 > 0:
                        require ext_code.size(sub_feed1562Address)
                        call sub_feed1562Address.depositReward() with:
                           value (t * sub_d4e398c9) + (sub_7416dcd6[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit Claimed(msg.sender, arg1, sub_2d4d8435[arg1] - idx - sub_118c9704[address(stor63[arg1][s])][arg1], t + sub_7416dcd6[address(stor63[arg1][s])][arg1] - ((t * sub_d4e398c9) + (sub_7416dcd6[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18));
            else:
                mem[0] = arg1
                mem[32] = 58
                _341 = mem[64]
                mem[64] = mem[64] + 64
                mem[_341] = 30
                mem[_341 + 32] = 'SafeMath: subtraction overflow'
                if idx > sub_2d4d8435[arg1]:
                    _343 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_343 + idx + 68] = mem[_341 + idx + 32]
                        mem[0] = arg1
                        mem[32] = 58
                        idx = idx + 32
                        continue 
                    mem[_343 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _343 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = sha3(address(sub_4878351b[arg1][s]), 71)
                if not sub_2d4d8435[arg1] - idx:
                    _361 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_361] = 26
                    mem[_361 + 32] = 'SafeMath: division by zero'
                    if sub_118c9704[address(stor63[arg1][s])][arg1] <= 0:
                        _365 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_365 + idx + 68] = mem[_361 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_365 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _365 + -mem[64] + 100
                    require sub_118c9704[address(stor63[arg1][s])][arg1]
                    if t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) < t:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 58
                    _410 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_410] = 30
                    mem[_410 + 32] = 'SafeMath: subtraction overflow'
                    if sub_2d4d8435[arg1] > sub_2d4d8435[arg1]:
                        _418 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_418 + idx + 68] = mem[_410 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_418 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _418 + -mem[64] + 100
                    if not t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]):
                        _440 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_440] = 26
                        mem[_440 + 32] = 'SafeMath: division by zero'
                        _466 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_466] = 30
                        mem[_466 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]):
                            if t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) > 0:
                                call msg.sender with:
                                   value t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit Claimed(msg.sender, arg1, 0, t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]));
                        _475 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_475 + idx + 68] = mem[_466 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_475 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _475 + -mem[64] + 100
                    require t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1])
                    if (t * sub_d4e398c9) + (0 / sub_118c9704[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) != sub_d4e398c9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _446 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_446] = 26
                    mem[_446 + 32] = 'SafeMath: division by zero'
                    _474 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_474] = 30
                    mem[_474 + 32] = 'SafeMath: subtraction overflow'
                    if (t * sub_d4e398c9) + (0 / sub_118c9704[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18 > t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]):
                        _486 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_486 + idx + 68] = mem[_474 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_486 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _486 + -mem[64] + 100
                    if t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) - ((t * sub_d4e398c9) + (0 / sub_118c9704[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18) > 0:
                        call msg.sender with:
                           value t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) - ((t * sub_d4e398c9) + (0 / sub_118c9704[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if (t * sub_d4e398c9) + (0 / sub_118c9704[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18 > 0:
                        require ext_code.size(sub_feed1562Address)
                        call sub_feed1562Address.depositReward() with:
                           value (t * sub_d4e398c9) + (0 / sub_118c9704[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit Claimed(msg.sender, arg1, 0, t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) - ((t * sub_d4e398c9) + (0 / sub_118c9704[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18));
                else:
                    require sub_2d4d8435[arg1] - idx
                    if (sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_2d4d8435[arg1] - idx != sub_7416dcd6[address(stor63[arg1][s])][arg1]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _364 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_364] = 26
                    mem[_364 + 32] = 'SafeMath: division by zero'
                    if sub_118c9704[address(stor63[arg1][s])][arg1] <= 0:
                        _375 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_375 + idx + 68] = mem[_364 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_375 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _375 + -mem[64] + 100
                    require sub_118c9704[address(stor63[arg1][s])][arg1]
                    if t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) < t:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 58
                    _417 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_417] = 30
                    mem[_417 + 32] = 'SafeMath: subtraction overflow'
                    if sub_2d4d8435[arg1] > sub_2d4d8435[arg1]:
                        _423 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_423 + idx + 68] = mem[_417 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_423 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _423 + -mem[64] + 100
                    if not t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]):
                        _445 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_445] = 26
                        mem[_445 + 32] = 'SafeMath: division by zero'
                        _473 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_473] = 30
                        mem[_473 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]):
                            if t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) > 0:
                                call msg.sender with:
                                   value t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit Claimed(msg.sender, arg1, 0, t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]));
                        _484 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_484 + idx + 68] = mem[_473 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_484 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _484 + -mem[64] + 100
                    require t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1])
                    if (t * sub_d4e398c9) + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) != sub_d4e398c9:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _455 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_455] = 26
                    mem[_455 + 32] = 'SafeMath: division by zero'
                    _483 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_483] = 30
                    mem[_483 + 32] = 'SafeMath: subtraction overflow'
                    if (t * sub_d4e398c9) + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18 > t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]):
                        _494 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_494 + idx + 68] = mem[_483 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_494 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _494 + -mem[64] + 100
                    if t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) - ((t * sub_d4e398c9) + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18) > 0:
                        call msg.sender with:
                           value t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) - ((t * sub_d4e398c9) + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if (t * sub_d4e398c9) + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18 > 0:
                        require ext_code.size(sub_feed1562Address)
                        call sub_feed1562Address.depositReward() with:
                           value (t * sub_d4e398c9) + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit Claimed(msg.sender, arg1, 0, t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) - ((t * sub_d4e398c9) + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] * sub_d4e398c9) / 10^18));
        mem[0] = arg1
        mem[32] = 58
        _331 = mem[64]
        mem[64] = mem[64] + 64
        mem[_331] = 30
        mem[_331 + 32] = 'SafeMath: subtraction overflow'
        if idx > sub_2d4d8435[arg1]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not t:
            _347 = mem[64]
            mem[64] = mem[64] + 64
            mem[_347] = 26
            mem[_347 + 32] = 'SafeMath: division by zero'
            _362 = mem[64]
            mem[64] = mem[64] + 64
            mem[_362] = 30
            mem[_362 + 32] = 'SafeMath: subtraction overflow'
            if 0 > t:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_2d4d8435[arg1] - idx > 0:
                mem[0] = arg1
                mem[32] = 57
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = sub_2d4d8435[arg1] - idx
                require ext_code.size(sub_597064ae[arg1])
                call sub_597064ae[arg1].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_2d4d8435[arg1] - idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _452 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_452] == bool(mem[_452])
            if t > 0:
                call msg.sender with:
                   value t wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit Claimed(msg.sender, arg1, sub_2d4d8435[arg1] - idx, t);
        else:
            require t
            if t * sub_d4e398c9 / t != sub_d4e398c9:
                revert with 0, 'SafeMath: multiplication overflow'
            _355 = mem[64]
            mem[64] = mem[64] + 64
            mem[_355] = 26
            mem[_355 + 32] = 'SafeMath: division by zero'
            _369 = mem[64]
            mem[64] = mem[64] + 64
            mem[_369] = 30
            mem[_369 + 32] = 'SafeMath: subtraction overflow'
            if t * sub_d4e398c9 / 10^18 > t:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if sub_2d4d8435[arg1] - idx > 0:
                mem[0] = arg1
                mem[32] = 57
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = sub_2d4d8435[arg1] - idx
                require ext_code.size(sub_597064ae[arg1])
                call sub_597064ae[arg1].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_2d4d8435[arg1] - idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _461 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_461] == bool(mem[_461])
            if t - (t * sub_d4e398c9 / 10^18) > 0:
                call msg.sender with:
                   value t - (t * sub_d4e398c9 / 10^18) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if t * sub_d4e398c9 / 10^18 > 0:
                require ext_code.size(sub_feed1562Address)
                call sub_feed1562Address.depositReward() with:
                   value t * sub_d4e398c9 / 10^18 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit Claimed(msg.sender, arg1, sub_2d4d8435[arg1] - idx, t - (t * sub_d4e398c9 / 10^18));
}

function bid(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 >= sub_a71925cb:
        revert with 0, 'this pool does not exist'
    if sub_72d774c3[arg1]:
        if sub_82977ac2[arg1] <= block.timestamp:
            revert with 0, 'this pool is closed'
        if sub_f9f2d343[arg1] == msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'creator can't bid the pool created by self'
        if not arg2:
            revert with 0, 'the value of amount0 is zero'
        if not msg.value:
            revert with 0, 'the value of amount1 is zero'
        if sub_118c9704[address(msg.sender)][arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this pool has been bid by this sender'
        if not arg2:
            if 0 < sub_2d4d8435[arg1]:
                revert with 0, 'the bid amount is too low'
        else:
            require arg2
            if arg2 * sub_fa5bcc9d / arg2 != sub_fa5bcc9d:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if arg2 * sub_fa5bcc9d < sub_2d4d8435[arg1]:
                revert with 0, 'the bid amount is too low'
        if msg.value < sub_96186484[arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the bid amount is lower than minimum ETH'
        if sub_72d774c3[arg1]:
            if sub_72d774c3[arg1] != arg3:
                revert with 0, 'password is not correct'
        if not sub_b964ac3d[arg1]:
            if sub_2d4d8435[arg1] <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require sub_2d4d8435[arg1]
            if not msg.value:
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require arg2
                if 0 / arg2 < 0 / sub_2d4d8435[arg1]:
                    revert with 0, 'your bid price is lower than the minimum price'
                sub_507a0a3d[address(msg.sender)]++
                sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                sub_a3157d06[address(msg.sender)][arg1] = 0 / arg2
                sub_118c9704[address(msg.sender)][arg1] = arg2
                sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                sub_29a65f8f[arg1]++
                if not uint256(sub_4878351b[arg1]):
                    sub_babd8af7[arg1]++
                    sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                else:
                    require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                    if 0 / arg2 > sub_a3157d06[address(stor63[arg1][stor65[arg1]])][arg1]:
                        sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                    else:
                        require sub_4f502c75[arg1] < sub_babd8af7[arg1]
                        s = address(sub_4878351b[arg1][stor65[arg1]])
                        s = 0
                        idx = sub_4f502c75[arg1]
                        while sub_babd8af7[arg1][idx] != -1:
                            require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                            mem[32] = sha3(address(sub_4878351b[arg1][stor64[arg1][idx]]), 72)
                            if 0 / arg2 <= sub_a3157d06[address(stor63[arg1][stor64[arg1][idx]])][arg1]:
                                require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                mem[0] = sha3(arg1, 64)
                                s = address(sub_4878351b[arg1][stor64[arg1][idx]])
                                s = sub_babd8af7[arg1][idx]
                                idx = sub_babd8af7[arg1][idx]
                                continue 
                            require idx < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                            uint256(sub_4878351b[arg1])++
                            address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                            require ext_code.size(sub_d81aacffAddress)
                            call sub_d81aacffAddress.0xba167067 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Bid(msg.sender, arg1, arg2, msg.value);
                        require idx < sub_babd8af7[arg1]
                        sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
            else:
                require msg.value
                if 10^18 * msg.value / msg.value != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require arg2
                if 10^18 * msg.value / arg2 < 0 / sub_2d4d8435[arg1]:
                    revert with 0, 'your bid price is lower than the minimum price'
                sub_507a0a3d[address(msg.sender)]++
                sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                sub_a3157d06[address(msg.sender)][arg1] = 10^18 * msg.value / arg2
                sub_118c9704[address(msg.sender)][arg1] = arg2
                sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                sub_29a65f8f[arg1]++
                if not uint256(sub_4878351b[arg1]):
                    sub_babd8af7[arg1]++
                    sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                else:
                    require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                    if 10^18 * msg.value / arg2 > sub_a3157d06[address(stor63[arg1][stor65[arg1]])][arg1]:
                        sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                    else:
                        require sub_4f502c75[arg1] < sub_babd8af7[arg1]
                        s = address(sub_4878351b[arg1][stor65[arg1]])
                        s = 0
                        idx = sub_4f502c75[arg1]
                        while sub_babd8af7[arg1][idx] != -1:
                            require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                            mem[32] = sha3(address(sub_4878351b[arg1][stor64[arg1][idx]]), 72)
                            if 10^18 * msg.value / arg2 <= sub_a3157d06[address(stor63[arg1][stor64[arg1][idx]])][arg1]:
                                require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                mem[0] = sha3(arg1, 64)
                                s = address(sub_4878351b[arg1][stor64[arg1][idx]])
                                s = sub_babd8af7[arg1][idx]
                                idx = sub_babd8af7[arg1][idx]
                                continue 
                            require idx < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                            uint256(sub_4878351b[arg1])++
                            address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                            require ext_code.size(sub_d81aacffAddress)
                            call sub_d81aacffAddress.0xba167067 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Bid(msg.sender, arg1, arg2, msg.value);
                        require idx < sub_babd8af7[arg1]
                        sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
        else:
            require sub_b964ac3d[arg1]
            if 10^18 * sub_b964ac3d[arg1] / sub_b964ac3d[arg1] != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if sub_2d4d8435[arg1] <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            require sub_2d4d8435[arg1]
            if not msg.value:
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require arg2
                if 0 / arg2 < 10^18 * sub_b964ac3d[arg1] / sub_2d4d8435[arg1]:
                    revert with 0, 'your bid price is lower than the minimum price'
                sub_507a0a3d[address(msg.sender)]++
                sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                sub_a3157d06[address(msg.sender)][arg1] = 0 / arg2
                sub_118c9704[address(msg.sender)][arg1] = arg2
                sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                sub_29a65f8f[arg1]++
                if not uint256(sub_4878351b[arg1]):
                    sub_babd8af7[arg1]++
                    sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                else:
                    require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                    if 0 / arg2 > sub_a3157d06[address(stor63[arg1][stor65[arg1]])][arg1]:
                        sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                    else:
                        require sub_4f502c75[arg1] < sub_babd8af7[arg1]
                        s = address(sub_4878351b[arg1][stor65[arg1]])
                        s = 0
                        idx = sub_4f502c75[arg1]
                        while sub_babd8af7[arg1][idx] != -1:
                            require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                            mem[32] = sha3(address(sub_4878351b[arg1][stor64[arg1][idx]]), 72)
                            if 0 / arg2 <= sub_a3157d06[address(stor63[arg1][stor64[arg1][idx]])][arg1]:
                                require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                mem[0] = sha3(arg1, 64)
                                s = address(sub_4878351b[arg1][stor64[arg1][idx]])
                                s = sub_babd8af7[arg1][idx]
                                idx = sub_babd8af7[arg1][idx]
                                continue 
                            require idx < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                            uint256(sub_4878351b[arg1])++
                            address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                            require ext_code.size(sub_d81aacffAddress)
                            call sub_d81aacffAddress.0xba167067 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Bid(msg.sender, arg1, arg2, msg.value);
                        require idx < sub_babd8af7[arg1]
                        sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
            else:
                require msg.value
                if 10^18 * msg.value / msg.value != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require arg2
                if 10^18 * msg.value / arg2 < 10^18 * sub_b964ac3d[arg1] / sub_2d4d8435[arg1]:
                    revert with 0, 'your bid price is lower than the minimum price'
                sub_507a0a3d[address(msg.sender)]++
                sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                sub_a3157d06[address(msg.sender)][arg1] = 10^18 * msg.value / arg2
                sub_118c9704[address(msg.sender)][arg1] = arg2
                sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                sub_29a65f8f[arg1]++
                if not uint256(sub_4878351b[arg1]):
                    sub_babd8af7[arg1]++
                    sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                else:
                    require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                    if 10^18 * msg.value / arg2 > sub_a3157d06[address(stor63[arg1][stor65[arg1]])][arg1]:
                        sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                    else:
                        require sub_4f502c75[arg1] < sub_babd8af7[arg1]
                        s = address(sub_4878351b[arg1][stor65[arg1]])
                        s = 0
                        idx = sub_4f502c75[arg1]
                        while sub_babd8af7[arg1][idx] != -1:
                            require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                            mem[32] = sha3(address(sub_4878351b[arg1][stor64[arg1][idx]]), 72)
                            if 10^18 * msg.value / arg2 <= sub_a3157d06[address(stor63[arg1][stor64[arg1][idx]])][arg1]:
                                require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                mem[0] = sha3(arg1, 64)
                                s = address(sub_4878351b[arg1][stor64[arg1][idx]])
                                s = sub_babd8af7[arg1][idx]
                                idx = sub_babd8af7[arg1][idx]
                                continue 
                            require idx < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                            uint256(sub_4878351b[arg1])++
                            address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                            require ext_code.size(sub_d81aacffAddress)
                            call sub_d81aacffAddress.0xba167067 with:
                                 gas gas_remaining wei
                                args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Bid(msg.sender, arg1, arg2, msg.value);
                        require idx < sub_babd8af7[arg1]
                        sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
    else:
        if not stor76[arg1]:
            if sub_82977ac2[arg1] <= block.timestamp:
                revert with 0, 'this pool is closed'
            if sub_f9f2d343[arg1] == msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'creator can't bid the pool created by self'
            if not arg2:
                revert with 0, 'the value of amount0 is zero'
            if not msg.value:
                revert with 0, 'the value of amount1 is zero'
            if sub_118c9704[address(msg.sender)][arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'this pool has been bid by this sender'
            if not arg2:
                if 0 < sub_2d4d8435[arg1]:
                    revert with 0, 'the bid amount is too low'
            else:
                require arg2
                if arg2 * sub_fa5bcc9d / arg2 != sub_fa5bcc9d:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if arg2 * sub_fa5bcc9d < sub_2d4d8435[arg1]:
                    revert with 0, 'the bid amount is too low'
            if msg.value < sub_96186484[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'the bid amount is lower than minimum ETH'
            if sub_72d774c3[arg1]:
                if sub_72d774c3[arg1] != arg3:
                    revert with 0, 'password is not correct'
            if not sub_b964ac3d[arg1]:
                if sub_2d4d8435[arg1] <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require sub_2d4d8435[arg1]
                if not msg.value:
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require arg2
                    if 0 / arg2 < 0 / sub_2d4d8435[arg1]:
                        revert with 0, 'your bid price is lower than the minimum price'
                    sub_507a0a3d[address(msg.sender)]++
                    sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                    sub_a3157d06[address(msg.sender)][arg1] = 0 / arg2
                    sub_118c9704[address(msg.sender)][arg1] = arg2
                    sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                    sub_29a65f8f[arg1]++
                    if not uint256(sub_4878351b[arg1]):
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                    else:
                        require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                        if 0 / arg2 > sub_a3157d06[address(stor63[arg1][stor65[arg1]])][arg1]:
                            sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                        else:
                            require sub_4f502c75[arg1] < sub_babd8af7[arg1]
                            s = address(sub_4878351b[arg1][stor65[arg1]])
                            s = 0
                            idx = sub_4f502c75[arg1]
                            while sub_babd8af7[arg1][idx] != -1:
                                require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                                mem[32] = sha3(address(sub_4878351b[arg1][stor64[arg1][idx]]), 72)
                                if 0 / arg2 <= sub_a3157d06[address(stor63[arg1][stor64[arg1][idx]])][arg1]:
                                    require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                    mem[0] = sha3(arg1, 64)
                                    s = address(sub_4878351b[arg1][stor64[arg1][idx]])
                                    s = sub_babd8af7[arg1][idx]
                                    idx = sub_babd8af7[arg1][idx]
                                    continue 
                                require idx < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                                uint256(sub_4878351b[arg1])++
                                address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                                require ext_code.size(sub_d81aacffAddress)
                                call sub_d81aacffAddress.0xba167067 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Bid(msg.sender, arg1, arg2, msg.value);
                            require idx < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                else:
                    require msg.value
                    if 10^18 * msg.value / msg.value != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require arg2
                    if 10^18 * msg.value / arg2 < 0 / sub_2d4d8435[arg1]:
                        revert with 0, 'your bid price is lower than the minimum price'
                    sub_507a0a3d[address(msg.sender)]++
                    sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                    sub_a3157d06[address(msg.sender)][arg1] = 10^18 * msg.value / arg2
                    sub_118c9704[address(msg.sender)][arg1] = arg2
                    sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                    sub_29a65f8f[arg1]++
                    if not uint256(sub_4878351b[arg1]):
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                    else:
                        require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                        if 10^18 * msg.value / arg2 > sub_a3157d06[address(stor63[arg1][stor65[arg1]])][arg1]:
                            sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                        else:
                            require sub_4f502c75[arg1] < sub_babd8af7[arg1]
                            s = address(sub_4878351b[arg1][stor65[arg1]])
                            s = 0
                            idx = sub_4f502c75[arg1]
                            while sub_babd8af7[arg1][idx] != -1:
                                require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                                mem[32] = sha3(address(sub_4878351b[arg1][stor64[arg1][idx]]), 72)
                                if 10^18 * msg.value / arg2 <= sub_a3157d06[address(stor63[arg1][stor64[arg1][idx]])][arg1]:
                                    require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                    mem[0] = sha3(arg1, 64)
                                    s = address(sub_4878351b[arg1][stor64[arg1][idx]])
                                    s = sub_babd8af7[arg1][idx]
                                    idx = sub_babd8af7[arg1][idx]
                                    continue 
                                require idx < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                                uint256(sub_4878351b[arg1])++
                                address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                                require ext_code.size(sub_d81aacffAddress)
                                call sub_d81aacffAddress.0xba167067 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Bid(msg.sender, arg1, arg2, msg.value);
                            require idx < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
            else:
                require sub_b964ac3d[arg1]
                if 10^18 * sub_b964ac3d[arg1] / sub_b964ac3d[arg1] != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if sub_2d4d8435[arg1] <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require sub_2d4d8435[arg1]
                if not msg.value:
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require arg2
                    if 0 / arg2 < 10^18 * sub_b964ac3d[arg1] / sub_2d4d8435[arg1]:
                        revert with 0, 'your bid price is lower than the minimum price'
                    sub_507a0a3d[address(msg.sender)]++
                    sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                    sub_a3157d06[address(msg.sender)][arg1] = 0 / arg2
                    sub_118c9704[address(msg.sender)][arg1] = arg2
                    sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                    sub_29a65f8f[arg1]++
                    if not uint256(sub_4878351b[arg1]):
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                    else:
                        require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                        if 0 / arg2 > sub_a3157d06[address(stor63[arg1][stor65[arg1]])][arg1]:
                            sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                        else:
                            require sub_4f502c75[arg1] < sub_babd8af7[arg1]
                            s = address(sub_4878351b[arg1][stor65[arg1]])
                            s = 0
                            idx = sub_4f502c75[arg1]
                            while sub_babd8af7[arg1][idx] != -1:
                                require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                                mem[32] = sha3(address(sub_4878351b[arg1][stor64[arg1][idx]]), 72)
                                if 0 / arg2 <= sub_a3157d06[address(stor63[arg1][stor64[arg1][idx]])][arg1]:
                                    require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                    mem[0] = sha3(arg1, 64)
                                    s = address(sub_4878351b[arg1][stor64[arg1][idx]])
                                    s = sub_babd8af7[arg1][idx]
                                    idx = sub_babd8af7[arg1][idx]
                                    continue 
                                require idx < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                                uint256(sub_4878351b[arg1])++
                                address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                                require ext_code.size(sub_d81aacffAddress)
                                call sub_d81aacffAddress.0xba167067 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Bid(msg.sender, arg1, arg2, msg.value);
                            require idx < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                else:
                    require msg.value
                    if 10^18 * msg.value / msg.value != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require arg2
                    if 10^18 * msg.value / arg2 < 10^18 * sub_b964ac3d[arg1] / sub_2d4d8435[arg1]:
                        revert with 0, 'your bid price is lower than the minimum price'
                    sub_507a0a3d[address(msg.sender)]++
                    sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                    sub_a3157d06[address(msg.sender)][arg1] = 10^18 * msg.value / arg2
                    sub_118c9704[address(msg.sender)][arg1] = arg2
                    sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                    sub_29a65f8f[arg1]++
                    if not uint256(sub_4878351b[arg1]):
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                    else:
                        require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                        if 10^18 * msg.value / arg2 > sub_a3157d06[address(stor63[arg1][stor65[arg1]])][arg1]:
                            sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                        else:
                            require sub_4f502c75[arg1] < sub_babd8af7[arg1]
                            s = address(sub_4878351b[arg1][stor65[arg1]])
                            s = 0
                            idx = sub_4f502c75[arg1]
                            while sub_babd8af7[arg1][idx] != -1:
                                require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                                mem[32] = sha3(address(sub_4878351b[arg1][stor64[arg1][idx]]), 72)
                                if 10^18 * msg.value / arg2 <= sub_a3157d06[address(stor63[arg1][stor64[arg1][idx]])][arg1]:
                                    require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                    mem[0] = sha3(arg1, 64)
                                    s = address(sub_4878351b[arg1][stor64[arg1][idx]])
                                    s = sub_babd8af7[arg1][idx]
                                    idx = sub_babd8af7[arg1][idx]
                                    continue 
                                require idx < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                                uint256(sub_4878351b[arg1])++
                                address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                                require ext_code.size(sub_d81aacffAddress)
                                call sub_d81aacffAddress.0xba167067 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Bid(msg.sender, arg1, arg2, msg.value);
                            require idx < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
        else:
            require ext_code.size(sub_b9e344daAddress)
            staticcall sub_b9e344daAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < 10^17:
                revert with 0, 'BOT is not enough'
            if sub_82977ac2[arg1] <= block.timestamp:
                revert with 0, 'this pool is closed'
            if sub_f9f2d343[arg1] == msg.sender:
                revert with 0, 'creator can't bid the pool created by self'
            if not arg2:
                revert with 0, 'the value of amount0 is zero'
            if not msg.value:
                revert with 0, 'the value of amount1 is zero'
            if sub_118c9704[address(msg.sender)][arg1]:
                revert with 0, 'this pool has been bid by this sender'
            if not arg2:
                if 0 < sub_2d4d8435[arg1]:
                    revert with 0, 'the bid amount is too low'
            else:
                require arg2
                if arg2 * sub_fa5bcc9d / arg2 != sub_fa5bcc9d:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 * sub_fa5bcc9d < sub_2d4d8435[arg1]:
                    revert with 0, 'the bid amount is too low'
            if msg.value < sub_96186484[arg1]:
                revert with 0, 'the bid amount is lower than minimum ETH'
            if sub_72d774c3[arg1]:
                if sub_72d774c3[arg1] != arg3:
                    revert with 0, 'password is not correct'
            if not sub_b964ac3d[arg1]:
                if sub_2d4d8435[arg1] <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require sub_2d4d8435[arg1]
                if not msg.value:
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require arg2
                    if 0 / arg2 < 0 / sub_2d4d8435[arg1]:
                        revert with 0, 'your bid price is lower than the minimum price'
                    sub_507a0a3d[address(msg.sender)]++
                    sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                    sub_a3157d06[address(msg.sender)][arg1] = 0 / arg2
                    sub_118c9704[address(msg.sender)][arg1] = arg2
                    sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                    sub_29a65f8f[arg1]++
                    if not uint256(sub_4878351b[arg1]):
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                    else:
                        require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                        if 0 / arg2 > sub_a3157d06[address(stor63[arg1][stor65[arg1]])][arg1]:
                            sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                        else:
                            require sub_4f502c75[arg1] < sub_babd8af7[arg1]
                            s = address(sub_4878351b[arg1][stor65[arg1]])
                            s = 0
                            idx = sub_4f502c75[arg1]
                            while sub_babd8af7[arg1][idx] != -1:
                                require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                                mem[32] = sha3(address(sub_4878351b[arg1][stor64[arg1][idx]]), 72)
                                if 0 / arg2 <= sub_a3157d06[address(stor63[arg1][stor64[arg1][idx]])][arg1]:
                                    require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                    mem[0] = sha3(arg1, 64)
                                    s = address(sub_4878351b[arg1][stor64[arg1][idx]])
                                    s = sub_babd8af7[arg1][idx]
                                    idx = sub_babd8af7[arg1][idx]
                                    continue 
                                require idx < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                                uint256(sub_4878351b[arg1])++
                                address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                                require ext_code.size(sub_d81aacffAddress)
                                call sub_d81aacffAddress.0xba167067 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Bid(msg.sender, arg1, arg2, msg.value);
                            require idx < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                else:
                    require msg.value
                    if 10^18 * msg.value / msg.value != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require arg2
                    if 10^18 * msg.value / arg2 < 0 / sub_2d4d8435[arg1]:
                        revert with 0, 'your bid price is lower than the minimum price'
                    sub_507a0a3d[address(msg.sender)]++
                    sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                    sub_a3157d06[address(msg.sender)][arg1] = 10^18 * msg.value / arg2
                    sub_118c9704[address(msg.sender)][arg1] = arg2
                    sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                    sub_29a65f8f[arg1]++
                    if not uint256(sub_4878351b[arg1]):
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                    else:
                        require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                        if 10^18 * msg.value / arg2 > sub_a3157d06[address(stor63[arg1][stor65[arg1]])][arg1]:
                            sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                        else:
                            require sub_4f502c75[arg1] < sub_babd8af7[arg1]
                            s = address(sub_4878351b[arg1][stor65[arg1]])
                            s = 0
                            idx = sub_4f502c75[arg1]
                            while sub_babd8af7[arg1][idx] != -1:
                                require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                                mem[32] = sha3(address(sub_4878351b[arg1][stor64[arg1][idx]]), 72)
                                if 10^18 * msg.value / arg2 <= sub_a3157d06[address(stor63[arg1][stor64[arg1][idx]])][arg1]:
                                    require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                    mem[0] = sha3(arg1, 64)
                                    s = address(sub_4878351b[arg1][stor64[arg1][idx]])
                                    s = sub_babd8af7[arg1][idx]
                                    idx = sub_babd8af7[arg1][idx]
                                    continue 
                                require idx < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                                uint256(sub_4878351b[arg1])++
                                address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                                require ext_code.size(sub_d81aacffAddress)
                                call sub_d81aacffAddress.0xba167067 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Bid(msg.sender, arg1, arg2, msg.value);
                            require idx < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
            else:
                require sub_b964ac3d[arg1]
                if 10^18 * sub_b964ac3d[arg1] / sub_b964ac3d[arg1] != 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if sub_2d4d8435[arg1] <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require sub_2d4d8435[arg1]
                if not msg.value:
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require arg2
                    if 0 / arg2 < 10^18 * sub_b964ac3d[arg1] / sub_2d4d8435[arg1]:
                        revert with 0, 'your bid price is lower than the minimum price'
                    sub_507a0a3d[address(msg.sender)]++
                    sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                    sub_a3157d06[address(msg.sender)][arg1] = 0 / arg2
                    sub_118c9704[address(msg.sender)][arg1] = arg2
                    sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                    sub_29a65f8f[arg1]++
                    if not uint256(sub_4878351b[arg1]):
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                    else:
                        require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                        if 0 / arg2 > sub_a3157d06[address(stor63[arg1][stor65[arg1]])][arg1]:
                            sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                        else:
                            require sub_4f502c75[arg1] < sub_babd8af7[arg1]
                            s = address(sub_4878351b[arg1][stor65[arg1]])
                            s = 0
                            idx = sub_4f502c75[arg1]
                            while sub_babd8af7[arg1][idx] != -1:
                                require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                                mem[32] = sha3(address(sub_4878351b[arg1][stor64[arg1][idx]]), 72)
                                if 0 / arg2 <= sub_a3157d06[address(stor63[arg1][stor64[arg1][idx]])][arg1]:
                                    require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                    mem[0] = sha3(arg1, 64)
                                    s = address(sub_4878351b[arg1][stor64[arg1][idx]])
                                    s = sub_babd8af7[arg1][idx]
                                    idx = sub_babd8af7[arg1][idx]
                                    continue 
                                require idx < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                                uint256(sub_4878351b[arg1])++
                                address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                                require ext_code.size(sub_d81aacffAddress)
                                call sub_d81aacffAddress.0xba167067 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Bid(msg.sender, arg1, arg2, msg.value);
                            require idx < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                else:
                    require msg.value
                    if 10^18 * msg.value / msg.value != 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    require arg2
                    if 10^18 * msg.value / arg2 < 10^18 * sub_b964ac3d[arg1] / sub_2d4d8435[arg1]:
                        revert with 0, 'your bid price is lower than the minimum price'
                    sub_507a0a3d[address(msg.sender)]++
                    sub_507a0a3d[address(msg.sender)][sub_507a0a3d[address(msg.sender)]] = arg1
                    sub_a3157d06[address(msg.sender)][arg1] = 10^18 * msg.value / arg2
                    sub_118c9704[address(msg.sender)][arg1] = arg2
                    sub_7416dcd6[address(msg.sender)][arg1] = msg.value
                    sub_29a65f8f[arg1]++
                    if not uint256(sub_4878351b[arg1]):
                        sub_babd8af7[arg1]++
                        sub_babd8af7[arg1][sub_babd8af7[arg1]] = -1
                    else:
                        require sub_4f502c75[arg1] < uint256(sub_4878351b[arg1])
                        if 10^18 * msg.value / arg2 > sub_a3157d06[address(stor63[arg1][stor65[arg1]])][arg1]:
                            sub_4f502c75[arg1] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_4f502c75[arg1]
                        else:
                            require sub_4f502c75[arg1] < sub_babd8af7[arg1]
                            s = address(sub_4878351b[arg1][stor65[arg1]])
                            s = 0
                            idx = sub_4f502c75[arg1]
                            while sub_babd8af7[arg1][idx] != -1:
                                require sub_babd8af7[arg1][idx] < uint256(sub_4878351b[arg1])
                                mem[32] = sha3(address(sub_4878351b[arg1][stor64[arg1][idx]]), 72)
                                if 10^18 * msg.value / arg2 <= sub_a3157d06[address(stor63[arg1][stor64[arg1][idx]])][arg1]:
                                    require sub_babd8af7[arg1][idx] < sub_babd8af7[arg1]
                                    mem[0] = sha3(arg1, 64)
                                    s = address(sub_4878351b[arg1][stor64[arg1][idx]])
                                    s = sub_babd8af7[arg1][idx]
                                    idx = sub_babd8af7[arg1][idx]
                                    continue 
                                require idx < sub_babd8af7[arg1]
                                sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                                sub_babd8af7[arg1]++
                                sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
                                uint256(sub_4878351b[arg1])++
                                address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
                                require ext_code.size(sub_d81aacffAddress)
                                call sub_d81aacffAddress.0xba167067 with:
                                     gas gas_remaining wei
                                    args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                emit Bid(msg.sender, arg1, arg2, msg.value);
                            require idx < sub_babd8af7[arg1]
                            sub_babd8af7[arg1][idx] = uint256(sub_4878351b[arg1])
                            sub_babd8af7[arg1]++
                            sub_babd8af7[arg1][sub_babd8af7[arg1]] = sub_babd8af7[arg1][idx]
    uint256(sub_4878351b[arg1])++
    address(sub_4878351b[arg1][uint256(sub_4878351b[arg1])]) = msg.sender
    require ext_code.size(sub_d81aacffAddress)
    call sub_d81aacffAddress.0xba167067 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Bid(msg.sender, arg1, arg2, msg.value);
}



}
