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
address governorAddress;
mapping of address txFeeRatio;

function governor() {
    return governorAddress
}

function sub_0e367954(?) {
    return sub_0e367954[arg1][0 len sub_0e367954[arg1].length]
}

function sub_118c9704(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_118c9704[arg1][arg2]
}

function getTxFeeRatio() {
    return uint256(txFeeRatio['BounceSB::TxFeeRatio'])
}

function sub_208ff02e(?) {
    return uint256(txFeeRatio['BounceSB::MaxBidCount2'])
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

function getConfig(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return uint256(txFeeRatio[arg1 xor arg2])
}

function sub_597064ae(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_597064ae[arg1]
}

function getMinValueOfBotHolder() {
    return uint256(txFeeRatio['BounceSB::MinValueOfBotHolder'])
}

function getConfig(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(txFeeRatio[arg1])
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

function getConfig(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return uint256(txFeeRatio[arg1 xor arg2])
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

function getBotToken() {
    return address(txFeeRatio['BounceSB::BotTokenAddress'])
}

function sub_d286bea5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return bool(stor73[arg1][arg2])
}

function sub_d41620d1(?) {
    return address(txFeeRatio['BounceSB::BounceContractAddress'])
}

function sub_d4e398c9(?) {
    return sub_d4e398c9
}

function sub_d81aacff(?) {
    return sub_d81aacffAddress
}

function getStakeContract() {
    return address(txFeeRatio['BounceSB::StakeContractAddress'])
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

function renounceGovernorship() {
    require msg.sender == governorAddress
    emit GovernorshipTransferred(governorAddress, 0);
    governorAddress = 0
}

function transferGovernorship(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == governorAddress
    require arg1
    emit GovernorshipTransferred(governorAddress, arg1);
    governorAddress = arg1
}

function setConfig(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == governorAddress
    if uint256(txFeeRatio[arg1]) != arg2:
        uint256(txFeeRatio[arg1]) = arg2
}

function setConfig(bytes32 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == governorAddress
    if uint256(txFeeRatio[arg1 xor arg2]) != arg3:
        uint256(txFeeRatio[arg1 xor arg2]) = arg3
}

function setConfig(bytes32 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require msg.sender == governorAddress
    if uint256(txFeeRatio[arg1 xor arg2]) != arg3:
        uint256(txFeeRatio[arg1 xor arg2]) = arg3
}

function initialize() {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            Mask(248, 0, stor0.field_8) = 0
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

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        if governorAddress:
            revert with 0, 'invalid governor'
    governorAddress = arg1
    uint256(txFeeRatio['BounceSB::TxFeeRatio']) = 5 * 10^15
    uint256(txFeeRatio['BounceSB::MaxBidCount2']) = 1000
    uint256(txFeeRatio['BounceSB::MinValueOfBotHolder']) = 10^17
    uint256(txFeeRatio['BounceSB::BotTokenAddress']) = 0x48dc0190df5ece990c649a7a07ba19d3650a9572
    uint256(txFeeRatio['BounceSB::StakeContractAddress']) = 0x1dd665ba1591756aa87157f082f175bdca9fb91a
    uint256(txFeeRatio['BounceSB::BounceContractAddress']) = 0x4fc4bfedc5c82644514facf716c7f888a0c73ccc
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
            _283 = mem[64]
            mem[64] = mem[64] + 64
            mem[_283] = 30
            mem[_283 + 32] = 'SafeMath: subtraction overflow'
            if idx > sub_2d4d8435[arg1]:
                _285 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_285 + idx + 68] = mem[_283 + idx + 32]
                    mem[0] = arg1
                    mem[32] = 58
                    idx = idx + 32
                    continue 
                mem[_285 + 98] = 0
                revert with memory
                  from mem[64]
                   len _285 + -mem[64] + 100
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
                    _340 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_340] = 30
                    mem[_340 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > sub_7416dcd6[address(msg.sender)][arg1]:
                        _348 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_348 + idx + 68] = mem[_340 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_348 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _348 + -mem[64] + 100
                    if sub_7416dcd6[address(msg.sender)][arg1] > 0:
                        call msg.sender with:
                           value sub_7416dcd6[address(msg.sender)][arg1] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                    call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claimed(msg.sender, arg1, 0, sub_7416dcd6[address(msg.sender)][arg1]);
                else:
                    mem[0] = arg1
                    mem[32] = sha3(address(msg.sender), 71)
                    _309 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_309] = 30
                    mem[_309 + 32] = 'SafeMath: subtraction overflow'
                    if sub_7416dcd6[address(stor63[arg1][s])][arg1] > sub_7416dcd6[address(msg.sender)][arg1]:
                        _318 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_318 + idx + 68] = mem[_309 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_318 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _318 + -mem[64] + 100
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
                        _410 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_410] == bool(mem[_410])
                    if sub_7416dcd6[address(msg.sender)][arg1] - sub_7416dcd6[address(stor63[arg1][s])][arg1] > 0:
                        call msg.sender with:
                           value sub_7416dcd6[address(msg.sender)][arg1] - sub_7416dcd6[address(stor63[arg1][s])][arg1] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                    call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claimed(msg.sender, arg1, sub_118c9704[address(stor63[arg1][s])][arg1], sub_7416dcd6[address(msg.sender)][arg1] - sub_7416dcd6[address(stor63[arg1][s])][arg1]);
            else:
                mem[0] = arg1
                mem[32] = 58
                _292 = mem[64]
                mem[64] = mem[64] + 64
                mem[_292] = 30
                mem[_292 + 32] = 'SafeMath: subtraction overflow'
                if idx > sub_2d4d8435[arg1]:
                    _302 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_302 + idx + 68] = mem[_292 + idx + 32]
                        mem[0] = arg1
                        mem[32] = 58
                        idx = idx + 32
                        continue 
                    mem[_302 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _302 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = sha3(address(sub_4878351b[arg1][s]), 71)
                if not sub_2d4d8435[arg1] - idx:
                    _327 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_327] = 26
                    mem[_327 + 32] = 'SafeMath: division by zero'
                    if sub_118c9704[address(stor63[arg1][s])][arg1] <= 0:
                        _332 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_332 + idx + 68] = mem[_327 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_332 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _332 + -mem[64] + 100
                    require sub_118c9704[address(stor63[arg1][s])][arg1]
                    mem[0] = arg1
                    mem[32] = sha3(address(msg.sender), 71)
                    if address(sub_4878351b[arg1][s]) != msg.sender:
                        _360 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_360] = 30
                        mem[_360 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > sub_7416dcd6[address(msg.sender)][arg1]:
                            _373 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_373 + idx + 68] = mem[_360 + idx + 32]
                                mem[0] = arg1
                                mem[32] = 58
                                idx = idx + 32
                                continue 
                            mem[_373 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _373 + -mem[64] + 100
                        if sub_7416dcd6[address(msg.sender)][arg1] > 0:
                            call msg.sender with:
                               value sub_7416dcd6[address(msg.sender)][arg1] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                        call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, arg1, 0, sub_7416dcd6[address(msg.sender)][arg1]);
                    else:
                        _361 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_361] = 30
                        mem[_361 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / sub_118c9704[address(stor63[arg1][s])][arg1] > sub_7416dcd6[address(msg.sender)][arg1]:
                            _374 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_374 + idx + 68] = mem[_361 + idx + 32]
                                mem[0] = arg1
                                mem[32] = 58
                                idx = idx + 32
                                continue 
                            mem[_374 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _374 + -mem[64] + 100
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
                        if sub_7416dcd6[address(msg.sender)][arg1] - (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) > 0:
                            call msg.sender with:
                               value sub_7416dcd6[address(msg.sender)][arg1] - (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                        call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, arg1, sub_2d4d8435[arg1] - idx, sub_7416dcd6[address(msg.sender)][arg1] - (0 / sub_118c9704[address(stor63[arg1][s])][arg1]));
                else:
                    require sub_2d4d8435[arg1] - idx
                    if (sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_2d4d8435[arg1] - idx != sub_7416dcd6[address(stor63[arg1][s])][arg1]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _331 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_331] = 26
                    mem[_331 + 32] = 'SafeMath: division by zero'
                    if sub_118c9704[address(stor63[arg1][s])][arg1] <= 0:
                        _344 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_344 + idx + 68] = mem[_331 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_344 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _344 + -mem[64] + 100
                    require sub_118c9704[address(stor63[arg1][s])][arg1]
                    mem[0] = arg1
                    mem[32] = sha3(address(msg.sender), 71)
                    if address(sub_4878351b[arg1][s]) != msg.sender:
                        _371 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_371] = 30
                        mem[_371 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > sub_7416dcd6[address(msg.sender)][arg1]:
                            _380 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_380 + idx + 68] = mem[_371 + idx + 32]
                                mem[0] = arg1
                                mem[32] = 58
                                idx = idx + 32
                                continue 
                            mem[_380 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _380 + -mem[64] + 100
                        if sub_7416dcd6[address(msg.sender)][arg1] > 0:
                            call msg.sender with:
                               value sub_7416dcd6[address(msg.sender)][arg1] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                        call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
                             gas gas_remaining wei
                            args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Claimed(msg.sender, arg1, 0, sub_7416dcd6[address(msg.sender)][arg1]);
                    else:
                        _372 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_372] = 30
                        mem[_372 + 32] = 'SafeMath: subtraction overflow'
                        if (sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] > sub_7416dcd6[address(msg.sender)][arg1]:
                            _381 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_381 + idx + 68] = mem[_372 + idx + 32]
                                mem[0] = arg1
                                mem[32] = 58
                                idx = idx + 32
                                continue 
                            mem[_381 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _381 + -mem[64] + 100
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
                            _471 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_471] == bool(mem[_471])
                        if sub_7416dcd6[address(msg.sender)][arg1] - ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) > 0:
                            call msg.sender with:
                               value sub_7416dcd6[address(msg.sender)][arg1] - ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                        call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
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
    require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
    call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
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
            _347 = mem[64]
            mem[64] = mem[64] + 64
            mem[_347] = 30
            mem[_347 + 32] = 'SafeMath: subtraction overflow'
            if idx > sub_2d4d8435[arg1]:
                _349 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_349 + idx + 68] = mem[_347 + idx + 32]
                    mem[0] = arg1
                    mem[32] = 58
                    idx = idx + 32
                    continue 
                mem[_349 + 98] = 0
                revert with memory
                  from mem[64]
                   len _349 + -mem[64] + 100
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
                _388 = mem[64]
                mem[64] = mem[64] + 64
                mem[_388] = 30
                mem[_388 + 32] = 'SafeMath: subtraction overflow'
                if idx + sub_118c9704[address(stor63[arg1][s])][arg1] > sub_2d4d8435[arg1]:
                    _397 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_397 + idx + 68] = mem[_388 + idx + 32]
                        mem[0] = arg1
                        mem[32] = 58
                        idx = idx + 32
                        continue 
                    mem[_397 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _397 + -mem[64] + 100
                mem[0] = 'BounceSB::TxFeeRatio'
                mem[32] = 79
                if not t + sub_7416dcd6[address(stor63[arg1][s])][arg1]:
                    _434 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_434] = 26
                    mem[_434 + 32] = 'SafeMath: division by zero'
                    _455 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_455] = 30
                    mem[_455 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > t + sub_7416dcd6[address(stor63[arg1][s])][arg1]:
                        _462 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_462 + idx + 68] = mem[_455 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_462 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _462 + -mem[64] + 100
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
                        _581 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_581] == bool(mem[_581])
                    if t + sub_7416dcd6[address(stor63[arg1][s])][arg1] > 0:
                        call msg.sender with:
                           value t + sub_7416dcd6[address(stor63[arg1][s])][arg1] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit Claimed(msg.sender, arg1, sub_2d4d8435[arg1] - idx - sub_118c9704[address(stor63[arg1][s])][arg1], t + sub_7416dcd6[address(stor63[arg1][s])][arg1]);
                else:
                    require t + sub_7416dcd6[address(stor63[arg1][s])][arg1]
                    if (t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + (sub_7416dcd6[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / t + sub_7416dcd6[address(stor63[arg1][s])][arg1] != uint256(txFeeRatio['BounceSB::TxFeeRatio']):
                        revert with 0, 'SafeMath: multiplication overflow'
                    _442 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_442] = 26
                    mem[_442 + 32] = 'SafeMath: division by zero'
                    _461 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_461] = 30
                    mem[_461 + 32] = 'SafeMath: subtraction overflow'
                    if (t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + (sub_7416dcd6[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18 > t + sub_7416dcd6[address(stor63[arg1][s])][arg1]:
                        _468 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_468 + idx + 68] = mem[_461 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_468 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _468 + -mem[64] + 100
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
                        _590 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_590] == bool(mem[_590])
                    if t + sub_7416dcd6[address(stor63[arg1][s])][arg1] - ((t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + (sub_7416dcd6[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18) > 0:
                        call msg.sender with:
                           value t + sub_7416dcd6[address(stor63[arg1][s])][arg1] - ((t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + (sub_7416dcd6[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if (t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + (sub_7416dcd6[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18 > 0:
                        require ext_code.size(address(txFeeRatio['BounceSB::StakeContractAddress']))
                        call address(txFeeRatio['BounceSB::StakeContractAddress']).depositReward() with:
                           value (t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + (sub_7416dcd6[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit Claimed(msg.sender, arg1, sub_2d4d8435[arg1] - idx - sub_118c9704[address(stor63[arg1][s])][arg1], t + sub_7416dcd6[address(stor63[arg1][s])][arg1] - ((t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + (sub_7416dcd6[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18));
            else:
                mem[0] = arg1
                mem[32] = 58
                _359 = mem[64]
                mem[64] = mem[64] + 64
                mem[_359] = 30
                mem[_359 + 32] = 'SafeMath: subtraction overflow'
                if idx > sub_2d4d8435[arg1]:
                    _361 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_361 + idx + 68] = mem[_359 + idx + 32]
                        mem[0] = arg1
                        mem[32] = 58
                        idx = idx + 32
                        continue 
                    mem[_361 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _361 + -mem[64] + 100
                mem[0] = arg1
                mem[32] = sha3(address(sub_4878351b[arg1][s]), 71)
                if not sub_2d4d8435[arg1] - idx:
                    _378 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_378] = 26
                    mem[_378 + 32] = 'SafeMath: division by zero'
                    if sub_118c9704[address(stor63[arg1][s])][arg1] <= 0:
                        _382 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_382 + idx + 68] = mem[_378 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_382 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _382 + -mem[64] + 100
                    require sub_118c9704[address(stor63[arg1][s])][arg1]
                    if t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) < t:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 58
                    _422 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_422] = 30
                    mem[_422 + 32] = 'SafeMath: subtraction overflow'
                    if sub_2d4d8435[arg1] > sub_2d4d8435[arg1]:
                        _433 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_433 + idx + 68] = mem[_422 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_433 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _433 + -mem[64] + 100
                    mem[0] = 'BounceSB::TxFeeRatio'
                    mem[32] = 79
                    if not t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]):
                        _464 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_464] = 26
                        mem[_464 + 32] = 'SafeMath: division by zero'
                        _489 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_489] = 30
                        mem[_489 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]):
                            if t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) > 0:
                                call msg.sender with:
                                   value t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit Claimed(msg.sender, arg1, 0, t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]));
                        _500 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_500 + idx + 68] = mem[_489 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_500 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _500 + -mem[64] + 100
                    require t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1])
                    if (t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + (0 / sub_118c9704[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) != uint256(txFeeRatio['BounceSB::TxFeeRatio']):
                        revert with 0, 'SafeMath: multiplication overflow'
                    _471 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_471] = 26
                    mem[_471 + 32] = 'SafeMath: division by zero'
                    _499 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_499] = 30
                    mem[_499 + 32] = 'SafeMath: subtraction overflow'
                    if (t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + (0 / sub_118c9704[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18 > t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]):
                        _509 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_509 + idx + 68] = mem[_499 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_509 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _509 + -mem[64] + 100
                    if t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) - ((t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + (0 / sub_118c9704[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18) > 0:
                        call msg.sender with:
                           value t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) - ((t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + (0 / sub_118c9704[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if (t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + (0 / sub_118c9704[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18 > 0:
                        require ext_code.size(address(txFeeRatio['BounceSB::StakeContractAddress']))
                        call address(txFeeRatio['BounceSB::StakeContractAddress']).depositReward() with:
                           value (t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + (0 / sub_118c9704[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit Claimed(msg.sender, arg1, 0, t + (0 / sub_118c9704[address(stor63[arg1][s])][arg1]) - ((t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + (0 / sub_118c9704[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18));
                else:
                    require sub_2d4d8435[arg1] - idx
                    if (sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_2d4d8435[arg1] - idx != sub_7416dcd6[address(stor63[arg1][s])][arg1]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _381 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_381] = 26
                    mem[_381 + 32] = 'SafeMath: division by zero'
                    if sub_118c9704[address(stor63[arg1][s])][arg1] <= 0:
                        _391 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_391 + idx + 68] = mem[_381 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_391 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _391 + -mem[64] + 100
                    require sub_118c9704[address(stor63[arg1][s])][arg1]
                    if t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) < t:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 58
                    _432 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_432] = 30
                    mem[_432 + 32] = 'SafeMath: subtraction overflow'
                    if sub_2d4d8435[arg1] > sub_2d4d8435[arg1]:
                        _441 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_441 + idx + 68] = mem[_432 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_441 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _441 + -mem[64] + 100
                    mem[0] = 'BounceSB::TxFeeRatio'
                    mem[32] = 79
                    if not t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]):
                        _469 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_469] = 26
                        mem[_469 + 32] = 'SafeMath: division by zero'
                        _497 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_497] = 30
                        mem[_497 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]):
                            if t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) > 0:
                                call msg.sender with:
                                   value t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            emit Claimed(msg.sender, arg1, 0, t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]));
                        _508 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_508 + idx + 68] = mem[_497 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_508 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _508 + -mem[64] + 100
                    require t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1])
                    if (t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) != uint256(txFeeRatio['BounceSB::TxFeeRatio']):
                        revert with 0, 'SafeMath: multiplication overflow'
                    _479 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_479] = 26
                    mem[_479 + 32] = 'SafeMath: division by zero'
                    _507 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_507] = 30
                    mem[_507 + 32] = 'SafeMath: subtraction overflow'
                    if (t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18 > t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]):
                        _518 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_518 + idx + 68] = mem[_507 + idx + 32]
                            mem[0] = arg1
                            mem[32] = 58
                            idx = idx + 32
                            continue 
                        mem[_518 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _518 + -mem[64] + 100
                    if t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) - ((t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18) > 0:
                        call msg.sender with:
                           value t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) - ((t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if (t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18 > 0:
                        require ext_code.size(address(txFeeRatio['BounceSB::StakeContractAddress']))
                        call address(txFeeRatio['BounceSB::StakeContractAddress']).depositReward() with:
                           value (t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    emit Claimed(msg.sender, arg1, 0, t + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1]) - ((t * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) + ((sub_2d4d8435[arg1] * sub_7416dcd6[address(stor63[arg1][s])][arg1]) - (idx * sub_7416dcd6[address(stor63[arg1][s])][arg1]) / sub_118c9704[address(stor63[arg1][s])][arg1] * uint256(txFeeRatio['BounceSB::TxFeeRatio'])) / 10^18));
        mem[0] = arg1
        mem[32] = 58
        _348 = mem[64]
        mem[64] = mem[64] + 64
        mem[_348] = 30
        mem[_348 + 32] = 'SafeMath: subtraction overflow'
        if idx > sub_2d4d8435[arg1]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        mem[0] = 'BounceSB::TxFeeRatio'
        mem[32] = 79
        if not t:
            _372 = mem[64]
            mem[64] = mem[64] + 64
            mem[_372] = 26
            mem[_372 + 32] = 'SafeMath: division by zero'
            _386 = mem[64]
            mem[64] = mem[64] + 64
            mem[_386] = 30
            mem[_386 + 32] = 'SafeMath: subtraction overflow'
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
                _476 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_476] == bool(mem[_476])
            if t > 0:
                call msg.sender with:
                   value t wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit Claimed(msg.sender, arg1, sub_2d4d8435[arg1] - idx, t);
        else:
            require t
            if t * uint256(txFeeRatio['BounceSB::TxFeeRatio']) / t != uint256(txFeeRatio['BounceSB::TxFeeRatio']):
                revert with 0, 'SafeMath: multiplication overflow'
            _376 = mem[64]
            mem[64] = mem[64] + 64
            mem[_376] = 26
            mem[_376 + 32] = 'SafeMath: division by zero'
            _392 = mem[64]
            mem[64] = mem[64] + 64
            mem[_392] = 30
            mem[_392 + 32] = 'SafeMath: subtraction overflow'
            if t * uint256(txFeeRatio['BounceSB::TxFeeRatio']) / 10^18 > t:
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
                _484 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_484] == bool(mem[_484])
            if t - (t * uint256(txFeeRatio['BounceSB::TxFeeRatio']) / 10^18) > 0:
                call msg.sender with:
                   value t - (t * uint256(txFeeRatio['BounceSB::TxFeeRatio']) / 10^18) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if t * uint256(txFeeRatio['BounceSB::TxFeeRatio']) / 10^18 > 0:
                require ext_code.size(address(txFeeRatio['BounceSB::StakeContractAddress']))
                call address(txFeeRatio['BounceSB::StakeContractAddress']).depositReward() with:
                   value t * uint256(txFeeRatio['BounceSB::TxFeeRatio']) / 10^18 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit Claimed(msg.sender, arg1, sub_2d4d8435[arg1] - idx, t - (t * uint256(txFeeRatio['BounceSB::TxFeeRatio']) / 10^18));
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
            if arg2 * uint256(txFeeRatio['BounceSB::MaxBidCount2']) / arg2 != uint256(txFeeRatio['BounceSB::MaxBidCount2']):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if arg2 * uint256(txFeeRatio['BounceSB::MaxBidCount2']) < sub_2d4d8435[arg1]:
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
                            require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                            call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
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
                            require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                            call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
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
                            require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                            call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
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
                            require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                            call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
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
                if arg2 * uint256(txFeeRatio['BounceSB::MaxBidCount2']) / arg2 != uint256(txFeeRatio['BounceSB::MaxBidCount2']):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                if arg2 * uint256(txFeeRatio['BounceSB::MaxBidCount2']) < sub_2d4d8435[arg1]:
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
                                require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                                call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
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
                                require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                                call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
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
                                require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                                call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
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
                                require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                                call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
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
            require ext_code.size(address(txFeeRatio['BounceSB::BotTokenAddress']))
            staticcall address(txFeeRatio['BounceSB::BotTokenAddress']).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < uint256(txFeeRatio['BounceSB::MinValueOfBotHolder']):
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
                if arg2 * uint256(txFeeRatio['BounceSB::MaxBidCount2']) / arg2 != uint256(txFeeRatio['BounceSB::MaxBidCount2']):
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2 * uint256(txFeeRatio['BounceSB::MaxBidCount2']) < sub_2d4d8435[arg1]:
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
                                require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                                call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
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
                                require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                                call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
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
                                require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                                call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
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
                                require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
                                call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
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
    require ext_code.size(address(txFeeRatio['BounceSB::BounceContractAddress']))
    call address(txFeeRatio['BounceSB::BounceContractAddress']).0xba167067 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Bid(msg.sender, arg1, arg2, msg.value);
}



}
