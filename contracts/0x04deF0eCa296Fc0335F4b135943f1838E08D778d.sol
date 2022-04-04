contract main {




// =====================  Runtime code  =====================


#
#  - stake(address arg1)
#
const sub_0b370f12(?) = 10

const TIME_STEP = 1

const PERCENT_FACTOR = 1000

const TOKENS_PER_ROUND = 10

const TOKENS_DECIMAL = 18

const DAILY_STAKE_RETURNS = 10


address contractOwner;
address platformTokenAppAddress;
address platformAddress;
uint256 globalNoOfInvestors;
uint256 sub_e2e78a29;
array of uint256 stor5;
uint256 totalTokensBurned;
uint256 presentLevelNumber;
uint256 sub_089cdd0c;
uint256 donated;
uint256 sub_45972815;
uint256 sub_cc82c768;
uint256 sub_f5326971;
uint256 NMP_RANDOM_BASE;
uint256 NMP_RANDOM_DEVIDER;
uint256 NMP_MIN_DEPOSIT;
uint256 NMP_MIN_DONATED;
mapping of struct terInvestor3;
array of address path;

function sub_089cdd0c(?) {
    return sub_089cdd0c
}

function totalTokensGiven() {
    return stor5.length
}

function NMP_RANDOM_BASE() {
    return NMP_RANDOM_BASE
}

function NMP_MIN_DEPOSIT() {
    return NMP_MIN_DEPOSIT
}

function getterInvestor1(address arg1) {
    require calldata.size - 4 >= 32
    return terInvestor3[address(arg1)].field_512, 
           terInvestor3[address(arg1)].field_768,
           terInvestor3[address(arg1)].field_1024,
           terInvestor3[address(arg1)].field_1536,
           terInvestor3[address(arg1)].field_1792,
           terInvestor3[address(arg1)].field_3840
}

function NMP_RANDOM_DEVIDER() {
    return NMP_RANDOM_DEVIDER
}

function sub_45972815(?) {
    return sub_45972815
}

function NMP_MIN_DONATED() {
    return NMP_MIN_DONATED
}

function donated() {
    return donated
}

function presentLevelNumber() {
    return presentLevelNumber
}

function path(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < path.length
    return path[arg1]
}

function PlatformTokenApp() {
    return platformTokenAppAddress
}

function getterInvestor2(address arg1) {
    require calldata.size - 4 >= 32
    return terInvestor3[address(arg1)].field_3072, terInvestor3[address(arg1)].field_3328, terInvestor3[address(arg1)].field_3584
}

function sub_cc82c768(?) {
    return sub_cc82c768
}

function contractOwner() {
    return contractOwner
}

function globalNoOfInvestors() {
    return globalNoOfInvestors
}

function totalTokensBurned() {
    return totalTokensBurned
}

function platformAddress() {
    return platformAddress
}

function getterInvestor3(address arg1) {
    require calldata.size - 4 >= 32
    return terInvestor3[address(arg1)].field_2048, 
           terInvestor3[address(arg1)].field_2304,
           terInvestor3[address(arg1)].field_2560,
           terInvestor3[address(arg1)].field_256,
           terInvestor3[address(arg1)].field_2816
}

function sub_e2e78a29(?) {
    return sub_e2e78a29
}

function sub_f5326971(?) {
    return sub_f5326971
}

function _fallback() payable {
  stop
}

function setContractOwner(address arg1) {
    require calldata.size - 4 >= 32
    if contractOwner != msg.sender:
        revert with 0, '!contractOwner'
    contractOwner = arg1
}

function getterGlobal1() {
    return eth.balance(this.address), 
           globalNoOfInvestors,
           sub_e2e78a29,
           presentLevelNumber,
           stor5.length,
           totalTokensBurned,
           donated
}

function sub_ab5a0b63(?) {
    require calldata.size - 4 >= 128
    if contractOwner != msg.sender:
        revert with 0, '!contractOwner'
    NMP_RANDOM_BASE = arg1
    NMP_RANDOM_DEVIDER = arg2
    NMP_MIN_DEPOSIT = arg3
    NMP_MIN_DONATED = arg4
}

function withdrawReferral() {
    if terInvestor3[address(msg.sender)].field_2304 <= 0:
        sub_089cdd0c++
        emit 0x8432610d: 0, 0, 2, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
        revert with 0, 'should be positive'
    if terInvestor3[address(msg.sender)].field_2304 < 0:
        revert with 0, 'SafeMath: addition overflow'
    terInvestor3[address(msg.sender)].field_2304 = 0
    sub_089cdd0c++
    emit 0x8432610d: terInvestor3[address(msg.sender)].field_2304, 0, 2, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
    if terInvestor3[address(msg.sender)].field_2304 <= 0:
        revert with 0, 'should be positive'
    call msg.sender with:
       value terInvestor3[address(msg.sender)].field_2304 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getDailyProfitsAvailable(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 18
    if terInvestor3[address(arg1)].field_1280 < 0:
        revert with 0, 'SafeMath: addition overflow'
    idx = 0
    s = 0
    t = stor5[sha3(mem[0 len 64])]
    while idx < terInvestor3[address(arg1)].field_0:
        if not terInvestor3[address(arg1)][idx].field_0:
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            if terInvestor3[address(arg1)][idx].field_256 >= 0:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            if terInvestor3[address(arg1)][idx].field_512 <= terInvestor3[address(arg1)].field_256:
                _828 = mem[64]
                mem[64] = mem[64] + 64
                mem[_828] = 30
                mem[_828 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)].field_256 > block.timestamp:
                    _833 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_833 + idx + 68] = mem[_828 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_833 + 68] = mem[_833 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _833 + -mem[64] + 100
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if not terInvestor3[address(arg1)][idx].field_0:
                    _868 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_868] = 26
                    mem[_868 + 32] = 'SafeMath: division by zero'
                    _882 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_882] = 26
                    mem[_882 + 32] = 'SafeMath: division by zero'
                    require idx < terInvestor3[address(arg1)].field_0
                    if not terInvestor3[address(arg1)][idx].field_0:
                        require idx < terInvestor3[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 18)
                        if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if terInvestor3[address(arg1)][idx].field_256 <= 0:
                            if t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = 0
                            t = t
                            continue 
                        require idx < terInvestor3[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 18)
                        if not terInvestor3[address(arg1)][idx].field_0:
                            _1073 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1073] = 30
                            mem[_1073 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(arg1)][idx].field_256 <= 0:
                                if t - terInvestor3[address(arg1)][idx].field_256 < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = -terInvestor3[address(arg1)][idx].field_256
                                t = t - terInvestor3[address(arg1)][idx].field_256
                                continue 
                            _1114 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1114 + idx + 68] = mem[_1073 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1114 + 68] = mem[_1114 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1114 + -mem[64] + 100
                        require terInvestor3[address(arg1)][idx].field_0
                        if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1113 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1113] = 30
                        mem[_1113 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                            if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                            t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                            continue 
                        _1166 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1166 + idx + 68] = mem[_1113 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1166 + 68] = mem[_1166 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1166 + -mem[64] + 100
                    require terInvestor3[address(arg1)][idx].field_0
                    if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require idx < terInvestor3[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 18)
                    if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                        if t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = 0
                        t = t
                        continue 
                    require idx < terInvestor3[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 18)
                    if not terInvestor3[address(arg1)][idx].field_0:
                        _1112 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1112] = 30
                        mem[_1112 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(arg1)][idx].field_256 <= 0:
                            if t - terInvestor3[address(arg1)][idx].field_256 < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -terInvestor3[address(arg1)][idx].field_256
                            t = t - terInvestor3[address(arg1)][idx].field_256
                            continue 
                        _1163 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1163 + idx + 68] = mem[_1112 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1163 + 68] = mem[_1163 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1163 + -mem[64] + 100
                    require terInvestor3[address(arg1)][idx].field_0
                    if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1162 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1162] = 30
                    mem[_1162 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                        if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                        t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1233 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1233 + idx + 68] = mem[_1162 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1233 + 68] = mem[_1233 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1233 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 10 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 10:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _877 = mem[64]
                mem[64] = mem[64] + 64
                mem[_877] = 26
                mem[_877 + 32] = 'SafeMath: division by zero'
                if not 10 * terInvestor3[address(arg1)][idx].field_0 / 1000:
                    _887 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_887] = 26
                    mem[_887 + 32] = 'SafeMath: division by zero'
                    require idx < terInvestor3[address(arg1)].field_0
                    if not terInvestor3[address(arg1)][idx].field_0:
                        require idx < terInvestor3[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 18)
                        if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        if terInvestor3[address(arg1)][idx].field_256 <= 0:
                            if t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = 0
                            t = t
                            continue 
                        require idx < terInvestor3[address(arg1)].field_0
                        mem[0] = sha3(address(arg1), 18)
                        if not terInvestor3[address(arg1)][idx].field_0:
                            _1111 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1111] = 30
                            mem[_1111 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(arg1)][idx].field_256 <= 0:
                                if t - terInvestor3[address(arg1)][idx].field_256 < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = -terInvestor3[address(arg1)][idx].field_256
                                t = t - terInvestor3[address(arg1)][idx].field_256
                                continue 
                            _1159 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1159 + idx + 68] = mem[_1111 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1159 + 68] = mem[_1159 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1159 + -mem[64] + 100
                        require terInvestor3[address(arg1)][idx].field_0
                        if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1158 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1158] = 30
                        mem[_1158 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                            if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                            t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                            continue 
                        _1229 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1229 + idx + 68] = mem[_1158 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1229 + 68] = mem[_1229 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1229 + -mem[64] + 100
                    require terInvestor3[address(arg1)][idx].field_0
                    if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    require idx < terInvestor3[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 18)
                    if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                        if t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = 0
                        t = t
                        continue 
                    require idx < terInvestor3[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 18)
                    if not terInvestor3[address(arg1)][idx].field_0:
                        _1157 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1157] = 30
                        mem[_1157 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(arg1)][idx].field_256 <= 0:
                            if t - terInvestor3[address(arg1)][idx].field_256 < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -terInvestor3[address(arg1)][idx].field_256
                            t = t - terInvestor3[address(arg1)][idx].field_256
                            continue 
                        _1226 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1226 + idx + 68] = mem[_1157 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1226 + 68] = mem[_1226 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1226 + -mem[64] + 100
                    require terInvestor3[address(arg1)][idx].field_0
                    if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1225 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1225] = 30
                    mem[_1225 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                        if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                        t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1319 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1319 + idx + 68] = mem[_1225 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1319 + 68] = mem[_1319 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1319 + -mem[64] + 100
                require 10 * terInvestor3[address(arg1)][idx].field_0 / 1000
                if (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) / 10 * terInvestor3[address(arg1)][idx].field_0 / 1000 != block.timestamp - terInvestor3[address(arg1)].field_256:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _897 = mem[64]
                mem[64] = mem[64] + 64
                mem[_897] = 26
                mem[_897 + 32] = 'SafeMath: division by zero'
                require idx < terInvestor3[address(arg1)].field_0
                if not terInvestor3[address(arg1)][idx].field_0:
                    require idx < terInvestor3[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 18)
                    if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < terInvestor3[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) <= 0:
                        if t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
                        t = t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
                        continue 
                    require idx < terInvestor3[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 18)
                    if not terInvestor3[address(arg1)][idx].field_0:
                        _1156 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1156] = 30
                        mem[_1156 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(arg1)][idx].field_256 <= 0:
                            if t - terInvestor3[address(arg1)][idx].field_256 < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -terInvestor3[address(arg1)][idx].field_256
                            t = t - terInvestor3[address(arg1)][idx].field_256
                            continue 
                        _1222 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1222 + idx + 68] = mem[_1156 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1222 + 68] = mem[_1222 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1222 + -mem[64] + 100
                    require terInvestor3[address(arg1)][idx].field_0
                    if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1221 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1221] = 30
                    mem[_1221 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                        if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                        t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1315 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1315 + idx + 68] = mem[_1221 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1315 + 68] = mem[_1315 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1315 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < terInvestor3[address(arg1)][idx].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) <= 4 * terInvestor3[address(arg1)][idx].field_0:
                    if t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
                    t = t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
                    continue 
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if not terInvestor3[address(arg1)][idx].field_0:
                    _1220 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1220] = 30
                    mem[_1220 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 0:
                        if t - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -terInvestor3[address(arg1)][idx].field_256
                        t = t - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1312 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1312 + idx + 68] = mem[_1220 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1312 + 68] = mem[_1312 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1312 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1311 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1311] = 30
                mem[_1311 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                    if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    continue 
                _1419 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1419 + idx + 68] = mem[_1311 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1419 + 68] = mem[_1419 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1419 + -mem[64] + 100
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            _830 = mem[64]
            mem[64] = mem[64] + 64
            mem[_830] = 30
            mem[_830 + 32] = 'SafeMath: subtraction overflow'
            if terInvestor3[address(arg1)][idx].field_512 > block.timestamp:
                _837 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_837 + idx + 68] = mem[_830 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_837 + 68] = mem[_837 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _837 + -mem[64] + 100
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            if not terInvestor3[address(arg1)][idx].field_0:
                _873 = mem[64]
                mem[64] = mem[64] + 64
                mem[_873] = 26
                mem[_873 + 32] = 'SafeMath: division by zero'
                _885 = mem[64]
                mem[64] = mem[64] + 64
                mem[_885] = 26
                mem[_885 + 32] = 'SafeMath: division by zero'
                require idx < terInvestor3[address(arg1)].field_0
                if not terInvestor3[address(arg1)][idx].field_0:
                    require idx < terInvestor3[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 18)
                    if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 0:
                        if t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = 0
                        t = t
                        continue 
                    require idx < terInvestor3[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 18)
                    if not terInvestor3[address(arg1)][idx].field_0:
                        _1100 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1100] = 30
                        mem[_1100 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(arg1)][idx].field_256 <= 0:
                            if t - terInvestor3[address(arg1)][idx].field_256 < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -terInvestor3[address(arg1)][idx].field_256
                            t = t - terInvestor3[address(arg1)][idx].field_256
                            continue 
                        _1140 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1140 + idx + 68] = mem[_1100 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1140 + 68] = mem[_1140 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1140 + -mem[64] + 100
                    require terInvestor3[address(arg1)][idx].field_0
                    if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1139 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1139] = 30
                    mem[_1139 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                        if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                        t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1198 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1198 + idx + 68] = mem[_1139 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1198 + 68] = mem[_1198 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1198 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                    if t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = 0
                    t = t
                    continue 
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if not terInvestor3[address(arg1)][idx].field_0:
                    _1138 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1138] = 30
                    mem[_1138 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 0:
                        if t - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -terInvestor3[address(arg1)][idx].field_256
                        t = t - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1195 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1195 + idx + 68] = mem[_1138 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1195 + 68] = mem[_1195 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1195 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1194 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1194] = 30
                mem[_1194 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                    if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    continue 
                _1282 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                s = 0
                while s < 30:
                    mem[_1282 + s + 68] = mem[_1194 + s + 32]
                    s = s + 32
                    continue 
                mem[_1282 + 68] = mem[_1282 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1282 + -mem[64] + 100
            require terInvestor3[address(arg1)][idx].field_0
            if 10 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 10:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _879 = mem[64]
            mem[64] = mem[64] + 64
            mem[_879] = 26
            mem[_879 + 32] = 'SafeMath: division by zero'
            if not 10 * terInvestor3[address(arg1)][idx].field_0 / 1000:
                _893 = mem[64]
                mem[64] = mem[64] + 64
                mem[_893] = 26
                mem[_893 + 32] = 'SafeMath: division by zero'
                require idx < terInvestor3[address(arg1)].field_0
                if not terInvestor3[address(arg1)][idx].field_0:
                    require idx < terInvestor3[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 18)
                    if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 0:
                        if t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = 0
                        t = t
                        continue 
                    require idx < terInvestor3[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 18)
                    if not terInvestor3[address(arg1)][idx].field_0:
                        _1137 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1137] = 30
                        mem[_1137 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(arg1)][idx].field_256 <= 0:
                            if t - terInvestor3[address(arg1)][idx].field_256 < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -terInvestor3[address(arg1)][idx].field_256
                            t = t - terInvestor3[address(arg1)][idx].field_256
                            continue 
                        _1191 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1191 + idx + 68] = mem[_1137 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1191 + 68] = mem[_1191 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1191 + -mem[64] + 100
                    require terInvestor3[address(arg1)][idx].field_0
                    if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1190 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1190] = 30
                    mem[_1190 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                        if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                        t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1278 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    s = 0
                    while s < 30:
                        mem[_1278 + s + 68] = mem[_1190 + s + 32]
                        s = s + 32
                        continue 
                    mem[_1278 + 68] = mem[_1278 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1278 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                    if t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = 0
                    t = t
                    continue 
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if not terInvestor3[address(arg1)][idx].field_0:
                    _1189 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1189] = 30
                    mem[_1189 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 0:
                        if t - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -terInvestor3[address(arg1)][idx].field_256
                        t = t - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1275 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    s = 0
                    while s < 30:
                        mem[_1275 + s + 68] = mem[_1189 + s + 32]
                        s = s + 32
                        continue 
                    mem[_1275 + 68] = mem[_1275 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1275 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1274 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1274] = 30
                mem[_1274 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                    if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    continue 
                _1385 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1385 + idx + 68] = mem[_1274 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1385 + 68] = mem[_1385 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1385 + -mem[64] + 100
            require 10 * terInvestor3[address(arg1)][idx].field_0 / 1000
            if (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) / 10 * terInvestor3[address(arg1)][idx].field_0 / 1000 != block.timestamp - terInvestor3[address(arg1)][idx].field_512:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _899 = mem[64]
            mem[64] = mem[64] + 64
            mem[_899] = 26
            mem[_899 + 32] = 'SafeMath: division by zero'
            require idx < terInvestor3[address(arg1)].field_0
            if not terInvestor3[address(arg1)][idx].field_0:
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < terInvestor3[address(arg1)][idx].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) <= 0:
                    if t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
                    t = t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
                    continue 
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if not terInvestor3[address(arg1)][idx].field_0:
                    _1188 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1188] = 30
                    mem[_1188 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 0:
                        if t - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -terInvestor3[address(arg1)][idx].field_256
                        t = t - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1271 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    s = 0
                    while s < 30:
                        mem[_1271 + s + 68] = mem[_1188 + s + 32]
                        s = s + 32
                        continue 
                    mem[_1271 + 68] = mem[_1271 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1271 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1270 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1270] = 30
                mem[_1270 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                    if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    continue 
                _1381 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1381 + idx + 68] = mem[_1270 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1381 + 68] = mem[_1381 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1381 + -mem[64] + 100
            require terInvestor3[address(arg1)][idx].field_0
            if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < terInvestor3[address(arg1)][idx].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) <= 4 * terInvestor3[address(arg1)][idx].field_0:
                if t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
                t = t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
                continue 
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            if not terInvestor3[address(arg1)][idx].field_0:
                _1269 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1269] = 30
                mem[_1269 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 0:
                    if t - terInvestor3[address(arg1)][idx].field_256 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = -terInvestor3[address(arg1)][idx].field_256
                    t = t - terInvestor3[address(arg1)][idx].field_256
                    continue 
                _1378 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1378 + idx + 68] = mem[_1269 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1378 + 68] = mem[_1378 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1378 + -mem[64] + 100
            require terInvestor3[address(arg1)][idx].field_0
            if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1377 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1377] = 30
            mem[_1377 + 32] = 'SafeMath: subtraction overflow'
            if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                continue 
            _1488 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1488 + idx + 68] = mem[_1377 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1488 + 68] = mem[_1488 + 70 len 30]
            revert with memory
              from mem[64]
               len _1488 + -mem[64] + 100
        require terInvestor3[address(arg1)][idx].field_0
        if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        require idx < terInvestor3[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 18)
        if terInvestor3[address(arg1)][idx].field_256 >= 4 * terInvestor3[address(arg1)][idx].field_0:
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < terInvestor3[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 18)
        if terInvestor3[address(arg1)][idx].field_512 <= terInvestor3[address(arg1)].field_256:
            _831 = mem[64]
            mem[64] = mem[64] + 64
            mem[_831] = 30
            mem[_831 + 32] = 'SafeMath: subtraction overflow'
            if terInvestor3[address(arg1)].field_256 > block.timestamp:
                _840 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_840 + idx + 68] = mem[_831 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_840 + 68] = mem[_840 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _840 + -mem[64] + 100
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            if not terInvestor3[address(arg1)][idx].field_0:
                _874 = mem[64]
                mem[64] = mem[64] + 64
                mem[_874] = 26
                mem[_874 + 32] = 'SafeMath: division by zero'
                _886 = mem[64]
                mem[64] = mem[64] + 64
                mem[_886] = 26
                mem[_886 + 32] = 'SafeMath: division by zero'
                require idx < terInvestor3[address(arg1)].field_0
                if not terInvestor3[address(arg1)][idx].field_0:
                    require idx < terInvestor3[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 18)
                    if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 0:
                        if t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = 0
                        t = t
                        continue 
                    require idx < terInvestor3[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 18)
                    if not terInvestor3[address(arg1)][idx].field_0:
                        _1102 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1102] = 30
                        mem[_1102 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(arg1)][idx].field_256 <= 0:
                            if t - terInvestor3[address(arg1)][idx].field_256 < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -terInvestor3[address(arg1)][idx].field_256
                            t = t - terInvestor3[address(arg1)][idx].field_256
                            continue 
                        _1146 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1146 + idx + 68] = mem[_1102 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1146 + 68] = mem[_1146 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1146 + -mem[64] + 100
                    require terInvestor3[address(arg1)][idx].field_0
                    if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1145 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1145] = 30
                    mem[_1145 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                        if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                        t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1212 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1212 + idx + 68] = mem[_1145 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1212 + 68] = mem[_1212 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1212 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                    if t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = 0
                    t = t
                    continue 
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if not terInvestor3[address(arg1)][idx].field_0:
                    _1144 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1144] = 30
                    mem[_1144 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 0:
                        if t - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -terInvestor3[address(arg1)][idx].field_256
                        t = t - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1209 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1209 + idx + 68] = mem[_1144 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1209 + 68] = mem[_1209 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1209 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1208 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1208] = 30
                mem[_1208 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                    if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    continue 
                _1301 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1301 + idx + 68] = mem[_1208 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1301 + 68] = mem[_1301 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1301 + -mem[64] + 100
            require terInvestor3[address(arg1)][idx].field_0
            if 10 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 10:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _880 = mem[64]
            mem[64] = mem[64] + 64
            mem[_880] = 26
            mem[_880 + 32] = 'SafeMath: division by zero'
            if not 10 * terInvestor3[address(arg1)][idx].field_0 / 1000:
                _894 = mem[64]
                mem[64] = mem[64] + 64
                mem[_894] = 26
                mem[_894 + 32] = 'SafeMath: division by zero'
                require idx < terInvestor3[address(arg1)].field_0
                if not terInvestor3[address(arg1)][idx].field_0:
                    require idx < terInvestor3[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 18)
                    if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 0:
                        if t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = 0
                        t = t
                        continue 
                    require idx < terInvestor3[address(arg1)].field_0
                    mem[0] = sha3(address(arg1), 18)
                    if not terInvestor3[address(arg1)][idx].field_0:
                        _1143 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1143] = 30
                        mem[_1143 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(arg1)][idx].field_256 <= 0:
                            if t - terInvestor3[address(arg1)][idx].field_256 < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = -terInvestor3[address(arg1)][idx].field_256
                            t = t - terInvestor3[address(arg1)][idx].field_256
                            continue 
                        _1205 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1205 + idx + 68] = mem[_1143 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1205 + 68] = mem[_1205 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1205 + -mem[64] + 100
                    require terInvestor3[address(arg1)][idx].field_0
                    if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1204 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1204] = 30
                    mem[_1204 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                        if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                        t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1297 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1297 + idx + 68] = mem[_1204 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1297 + 68] = mem[_1297 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1297 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                    if t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = 0
                    t = t
                    continue 
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if not terInvestor3[address(arg1)][idx].field_0:
                    _1203 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1203] = 30
                    mem[_1203 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 0:
                        if t - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -terInvestor3[address(arg1)][idx].field_256
                        t = t - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1294 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1294 + idx + 68] = mem[_1203 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1294 + 68] = mem[_1294 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1294 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1293 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1293] = 30
                mem[_1293 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                    if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    continue 
                _1402 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1402 + idx + 68] = mem[_1293 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1402 + 68] = mem[_1402 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1402 + -mem[64] + 100
            require 10 * terInvestor3[address(arg1)][idx].field_0 / 1000
            if (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) / 10 * terInvestor3[address(arg1)][idx].field_0 / 1000 != block.timestamp - terInvestor3[address(arg1)].field_256:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _900 = mem[64]
            mem[64] = mem[64] + 64
            mem[_900] = 26
            mem[_900 + 32] = 'SafeMath: division by zero'
            require idx < terInvestor3[address(arg1)].field_0
            if not terInvestor3[address(arg1)][idx].field_0:
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < terInvestor3[address(arg1)][idx].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) <= 0:
                    if t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
                    t = t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
                    continue 
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if not terInvestor3[address(arg1)][idx].field_0:
                    _1202 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1202] = 30
                    mem[_1202 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 0:
                        if t - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -terInvestor3[address(arg1)][idx].field_256
                        t = t - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1290 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1290 + idx + 68] = mem[_1202 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1290 + 68] = mem[_1290 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1290 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1289 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1289] = 30
                mem[_1289 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                    if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    continue 
                _1398 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1398 + idx + 68] = mem[_1289 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1398 + 68] = mem[_1398 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1398 + -mem[64] + 100
            require terInvestor3[address(arg1)][idx].field_0
            if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < terInvestor3[address(arg1)][idx].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) <= 4 * terInvestor3[address(arg1)][idx].field_0:
                if t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
                t = t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)].field_256 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
                continue 
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            if not terInvestor3[address(arg1)][idx].field_0:
                _1288 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1288] = 30
                mem[_1288 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 0:
                    if t - terInvestor3[address(arg1)][idx].field_256 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = -terInvestor3[address(arg1)][idx].field_256
                    t = t - terInvestor3[address(arg1)][idx].field_256
                    continue 
                _1395 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1395 + idx + 68] = mem[_1288 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1395 + 68] = mem[_1395 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1395 + -mem[64] + 100
            require terInvestor3[address(arg1)][idx].field_0
            if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1394 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1394] = 30
            mem[_1394 + 32] = 'SafeMath: subtraction overflow'
            if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                continue 
            _1498 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1498 + idx + 68] = mem[_1394 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1498 + 68] = mem[_1498 + 70 len 30]
            revert with memory
              from mem[64]
               len _1498 + -mem[64] + 100
        require idx < terInvestor3[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 18)
        _836 = mem[64]
        mem[64] = mem[64] + 64
        mem[_836] = 30
        mem[_836 + 32] = 'SafeMath: subtraction overflow'
        if terInvestor3[address(arg1)][idx].field_512 > block.timestamp:
            _844 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_844 + idx + 68] = mem[_836 + idx + 32]
                idx = idx + 32
                continue 
            mem[_844 + 68] = mem[_844 + 70 len 30]
            revert with memory
              from mem[64]
               len _844 + -mem[64] + 100
        require idx < terInvestor3[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 18)
        if not terInvestor3[address(arg1)][idx].field_0:
            _878 = mem[64]
            mem[64] = mem[64] + 64
            mem[_878] = 26
            mem[_878 + 32] = 'SafeMath: division by zero'
            _892 = mem[64]
            mem[64] = mem[64] + 64
            mem[_892] = 26
            mem[_892 + 32] = 'SafeMath: division by zero'
            require idx < terInvestor3[address(arg1)].field_0
            if not terInvestor3[address(arg1)][idx].field_0:
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 0:
                    if t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = 0
                    t = t
                    continue 
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if not terInvestor3[address(arg1)][idx].field_0:
                    _1132 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1132] = 30
                    mem[_1132 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 0:
                        if t - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -terInvestor3[address(arg1)][idx].field_256
                        t = t - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1181 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1181 + idx + 68] = mem[_1132 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1181 + 68] = mem[_1181 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1181 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1180 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1180] = 30
                mem[_1180 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                    if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    continue 
                _1257 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                s = 0
                while s < 30:
                    mem[_1257 + s + 68] = mem[_1180 + s + 32]
                    s = s + 32
                    continue 
                mem[_1257 + 68] = mem[_1257 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1257 + -mem[64] + 100
            require terInvestor3[address(arg1)][idx].field_0
            if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                if t < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = 0
                t = t
                continue 
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            if not terInvestor3[address(arg1)][idx].field_0:
                _1179 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1179] = 30
                mem[_1179 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 0:
                    if t - terInvestor3[address(arg1)][idx].field_256 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = -terInvestor3[address(arg1)][idx].field_256
                    t = t - terInvestor3[address(arg1)][idx].field_256
                    continue 
                _1254 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                s = 0
                while s < 30:
                    mem[_1254 + s + 68] = mem[_1179 + s + 32]
                    s = s + 32
                    continue 
                mem[_1254 + 68] = mem[_1254 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1254 + -mem[64] + 100
            require terInvestor3[address(arg1)][idx].field_0
            if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1253 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1253] = 30
            mem[_1253 + 32] = 'SafeMath: subtraction overflow'
            if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                continue 
            _1357 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1357 + idx + 68] = mem[_1253 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1357 + 68] = mem[_1357 + 70 len 30]
            revert with memory
              from mem[64]
               len _1357 + -mem[64] + 100
        require terInvestor3[address(arg1)][idx].field_0
        if 10 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 10:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _881 = mem[64]
        mem[64] = mem[64] + 64
        mem[_881] = 26
        mem[_881 + 32] = 'SafeMath: division by zero'
        if not 10 * terInvestor3[address(arg1)][idx].field_0 / 1000:
            _898 = mem[64]
            mem[64] = mem[64] + 64
            mem[_898] = 26
            mem[_898 + 32] = 'SafeMath: division by zero'
            require idx < terInvestor3[address(arg1)].field_0
            if not terInvestor3[address(arg1)][idx].field_0:
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 0:
                    if t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = 0
                    t = t
                    continue 
                require idx < terInvestor3[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 18)
                if not terInvestor3[address(arg1)][idx].field_0:
                    _1178 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1178] = 30
                    mem[_1178 + 32] = 'SafeMath: subtraction overflow'
                    if terInvestor3[address(arg1)][idx].field_256 <= 0:
                        if t - terInvestor3[address(arg1)][idx].field_256 < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = -terInvestor3[address(arg1)][idx].field_256
                        t = t - terInvestor3[address(arg1)][idx].field_256
                        continue 
                    _1250 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    s = 0
                    while s < 30:
                        mem[_1250 + s + 68] = mem[_1178 + s + 32]
                        s = s + 32
                        continue 
                    mem[_1250 + 68] = mem[_1250 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1250 + -mem[64] + 100
                require terInvestor3[address(arg1)][idx].field_0
                if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _1249 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1249] = 30
                mem[_1249 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                    if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                    continue 
                _1353 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1353 + idx + 68] = mem[_1249 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1353 + 68] = mem[_1353 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1353 + -mem[64] + 100
            require terInvestor3[address(arg1)][idx].field_0
            if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            if terInvestor3[address(arg1)][idx].field_256 < terInvestor3[address(arg1)][idx].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                if t < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = 0
                t = t
                continue 
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            if not terInvestor3[address(arg1)][idx].field_0:
                _1248 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1248] = 30
                mem[_1248 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 0:
                    if t - terInvestor3[address(arg1)][idx].field_256 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = -terInvestor3[address(arg1)][idx].field_256
                    t = t - terInvestor3[address(arg1)][idx].field_256
                    continue 
                _1350 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1350 + idx + 68] = mem[_1248 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1350 + 68] = mem[_1350 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1350 + -mem[64] + 100
            require terInvestor3[address(arg1)][idx].field_0
            if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1349 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1349] = 30
            mem[_1349 + 32] = 'SafeMath: subtraction overflow'
            if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                continue 
            _1465 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1465 + idx + 68] = mem[_1349 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1465 + 68] = mem[_1465 + 70 len 30]
            revert with memory
              from mem[64]
               len _1465 + -mem[64] + 100
        require 10 * terInvestor3[address(arg1)][idx].field_0 / 1000
        if (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) / 10 * terInvestor3[address(arg1)][idx].field_0 / 1000 != block.timestamp - terInvestor3[address(arg1)][idx].field_512:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _901 = mem[64]
        mem[64] = mem[64] + 64
        mem[_901] = 26
        mem[_901 + 32] = 'SafeMath: division by zero'
        require idx < terInvestor3[address(arg1)].field_0
        if not terInvestor3[address(arg1)][idx].field_0:
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < terInvestor3[address(arg1)][idx].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) <= 0:
                if t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
                t = t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
                continue 
            require idx < terInvestor3[address(arg1)].field_0
            mem[0] = sha3(address(arg1), 18)
            if not terInvestor3[address(arg1)][idx].field_0:
                _1247 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1247] = 30
                mem[_1247 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(arg1)][idx].field_256 <= 0:
                    if t - terInvestor3[address(arg1)][idx].field_256 < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = -terInvestor3[address(arg1)][idx].field_256
                    t = t - terInvestor3[address(arg1)][idx].field_256
                    continue 
                _1346 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1346 + idx + 68] = mem[_1247 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1346 + 68] = mem[_1346 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1346 + -mem[64] + 100
            require terInvestor3[address(arg1)][idx].field_0
            if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _1345 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1345] = 30
            mem[_1345 + 32] = 'SafeMath: subtraction overflow'
            if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
                if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
                continue 
            _1461 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1461 + idx + 68] = mem[_1345 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1461 + 68] = mem[_1461 + 70 len 30]
            revert with memory
              from mem[64]
               len _1461 + -mem[64] + 100
        require terInvestor3[address(arg1)][idx].field_0
        if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        require idx < terInvestor3[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 18)
        if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < terInvestor3[address(arg1)][idx].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if terInvestor3[address(arg1)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) <= 4 * terInvestor3[address(arg1)][idx].field_0:
            if t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) < t:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
            t = t + (block.timestamp * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000) - (terInvestor3[address(arg1)][idx].field_512 * 10 * terInvestor3[address(arg1)][idx].field_0 / 1000)
            continue 
        require idx < terInvestor3[address(arg1)].field_0
        mem[0] = sha3(address(arg1), 18)
        if not terInvestor3[address(arg1)][idx].field_0:
            _1344 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1344] = 30
            mem[_1344 + 32] = 'SafeMath: subtraction overflow'
            if terInvestor3[address(arg1)][idx].field_256 <= 0:
                if t - terInvestor3[address(arg1)][idx].field_256 < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = -terInvestor3[address(arg1)][idx].field_256
                t = t - terInvestor3[address(arg1)][idx].field_256
                continue 
            _1458 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1458 + idx + 68] = mem[_1344 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1458 + 68] = mem[_1458 + 70 len 30]
            revert with memory
              from mem[64]
               len _1458 + -mem[64] + 100
        require terInvestor3[address(arg1)][idx].field_0
        if 4 * terInvestor3[address(arg1)][idx].field_0 / terInvestor3[address(arg1)][idx].field_0 != 4:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1457 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1457] = 30
        mem[_1457 + 32] = 'SafeMath: subtraction overflow'
        if terInvestor3[address(arg1)][idx].field_256 <= 4 * terInvestor3[address(arg1)][idx].field_0:
            if t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256 < t:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
            t = t + (4 * terInvestor3[address(arg1)][idx].field_0) - terInvestor3[address(arg1)][idx].field_256
            continue 
        _1554 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_1554 + idx + 68] = mem[_1457 + idx + 32]
            idx = idx + 32
            continue 
        mem[_1554 + 68] = mem[_1554 + 70 len 30]
        revert with memory
          from mem[64]
           len _1554 + -mem[64] + 100
    return t
}

function sub_82f05eb7(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 < 1:
        revert with 0, 'withdraw range 1-100 percent'
    if arg1 > 100:
        revert with 0, 'withdraw range 1-100 percent'
    mem[0] = msg.sender
    mem[32] = 18
    idx = 0
    s = 0
    t = 0
    while idx < terInvestor3[address(msg.sender)].field_0:
        if not terInvestor3[address(msg.sender)][idx].field_0:
            require idx < terInvestor3[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 18)
            if terInvestor3[address(msg.sender)][idx].field_256 >= 0:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < terInvestor3[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 18)
            if terInvestor3[address(msg.sender)][idx].field_512 <= terInvestor3[address(msg.sender)].field_256:
                _1110 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1110] = 30
                mem[_1110 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(msg.sender)].field_256 > block.timestamp:
                    _1116 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1116 + idx + 68] = mem[_1110 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1116 + 68] = mem[_1116 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1116 + -mem[64] + 100
                require idx < terInvestor3[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 18)
                if not terInvestor3[address(msg.sender)][idx].field_0:
                    _1174 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1174] = 26
                    mem[_1174 + 32] = 'SafeMath: division by zero'
                    _1221 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1221] = 26
                    mem[_1221 + 32] = 'SafeMath: division by zero'
                    require idx < terInvestor3[address(msg.sender)].field_0
                    if not terInvestor3[address(msg.sender)][idx].field_0:
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 18)
                            if t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = 0
                            t = t
                            continue 
                        mem[0] = sha3(address(msg.sender), 18)
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            _1531 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1531] = 30
                            mem[_1531 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                require idx < terInvestor3[address(msg.sender)].field_0
                                if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = 0
                                if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = -terInvestor3[address(msg.sender)][idx].field_256
                                t = t - terInvestor3[address(msg.sender)][idx].field_256
                                continue 
                            _1611 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1611 + idx + 68] = mem[_1531 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1611 + 68] = mem[_1611 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1611 + -mem[64] + 100
                        require terInvestor3[address(msg.sender)][idx].field_0
                        if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1610 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1610] = 30
                        mem[_1610 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                            _1712 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1712 + idx + 68] = mem[_1610 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1712 + 68] = mem[_1712 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1712 + -mem[64] + 100
                    else:
                        require terInvestor3[address(msg.sender)][idx].field_0
                        if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 <= 4 * terInvestor3[address(msg.sender)][idx].field_0:
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 18)
                            if t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = 0
                            t = t
                            continue 
                        mem[0] = sha3(address(msg.sender), 18)
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            _1609 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1609] = 30
                            mem[_1609 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                require idx < terInvestor3[address(msg.sender)].field_0
                                if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = 0
                                if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = -terInvestor3[address(msg.sender)][idx].field_256
                                t = t - terInvestor3[address(msg.sender)][idx].field_256
                                continue 
                            _1709 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1709 + idx + 68] = mem[_1609 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1709 + 68] = mem[_1709 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1709 + -mem[64] + 100
                        require terInvestor3[address(msg.sender)][idx].field_0
                        if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1708 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1708] = 30
                        mem[_1708 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                            _1815 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1815 + idx + 68] = mem[_1708 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1815 + 68] = mem[_1815 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1815 + -mem[64] + 100
                else:
                    require terInvestor3[address(msg.sender)][idx].field_0
                    if 10 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 10:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1185 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1185] = 26
                    mem[_1185 + 32] = 'SafeMath: division by zero'
                    if not 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000:
                        _1241 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1241] = 26
                        mem[_1241 + 32] = 'SafeMath: division by zero'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                if t < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = 0
                                t = t
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1606 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1606] = 30
                                mem[_1606 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _1705 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1705 + idx + 68] = mem[_1606 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1705 + 68] = mem[_1705 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1705 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1704 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1704] = 30
                            mem[_1704 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _1811 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1811 + idx + 68] = mem[_1704 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1811 + 68] = mem[_1811 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1811 + -mem[64] + 100
                        else:
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                if t < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = 0
                                t = t
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1703 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1703] = 30
                                mem[_1703 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _1808 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1808 + idx + 68] = mem[_1703 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1808 + 68] = mem[_1808 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1808 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1807 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1807] = 30
                            mem[_1807 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _1924 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1924 + idx + 68] = mem[_1807 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1924 + 68] = mem[_1924 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1924 + -mem[64] + 100
                    else:
                        require 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000
                        if (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) / 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000 != block.timestamp - terInvestor3[address(msg.sender)].field_256:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1261 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1261] = 26
                        mem[_1261 + 32] = 'SafeMath: division by zero'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) <= 0:
                                if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                if t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                t = t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1700 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1700] = 30
                                mem[_1700 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _1804 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1804 + idx + 68] = mem[_1700 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1804 + 68] = mem[_1804 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1804 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1803 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1803] = 30
                            mem[_1803 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _1920 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1920 + idx + 68] = mem[_1803 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1920 + 68] = mem[_1920 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1920 + -mem[64] + 100
                        else:
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) <= 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                if t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                t = t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1802 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1802] = 30
                                mem[_1802 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _1917 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1917 + idx + 68] = mem[_1802 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1917 + 68] = mem[_1917 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1917 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1916 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1916] = 30
                            mem[_1916 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _2044 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2044 + idx + 68] = mem[_1916 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2044 + 68] = mem[_2044 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2044 + -mem[64] + 100
            else:
                require idx < terInvestor3[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 18)
                _1113 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1113] = 30
                mem[_1113 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(msg.sender)][idx].field_512 > block.timestamp:
                    _1124 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1124 + idx + 68] = mem[_1113 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1124 + 68] = mem[_1124 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1124 + -mem[64] + 100
                require idx < terInvestor3[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 18)
                if not terInvestor3[address(msg.sender)][idx].field_0:
                    _1181 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1181] = 26
                    mem[_1181 + 32] = 'SafeMath: division by zero'
                    _1230 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1230] = 26
                    mem[_1230 + 32] = 'SafeMath: division by zero'
                    require idx < terInvestor3[address(msg.sender)].field_0
                    if not terInvestor3[address(msg.sender)][idx].field_0:
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 18)
                            if t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = 0
                            t = t
                            continue 
                        mem[0] = sha3(address(msg.sender), 18)
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            _1574 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1574] = 30
                            mem[_1574 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                require idx < terInvestor3[address(msg.sender)].field_0
                                if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = 0
                                if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = -terInvestor3[address(msg.sender)][idx].field_256
                                t = t - terInvestor3[address(msg.sender)][idx].field_256
                                continue 
                            _1661 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1661 + idx + 68] = mem[_1574 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1661 + 68] = mem[_1661 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1661 + -mem[64] + 100
                        require terInvestor3[address(msg.sender)][idx].field_0
                        if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1660 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1660] = 30
                        mem[_1660 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                            _1767 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1767 + idx + 68] = mem[_1660 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1767 + 68] = mem[_1767 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1767 + -mem[64] + 100
                    else:
                        require terInvestor3[address(msg.sender)][idx].field_0
                        if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 <= 4 * terInvestor3[address(msg.sender)][idx].field_0:
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 18)
                            if t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = 0
                            t = t
                            continue 
                        mem[0] = sha3(address(msg.sender), 18)
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            _1659 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1659] = 30
                            mem[_1659 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                require idx < terInvestor3[address(msg.sender)].field_0
                                if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = 0
                                if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = -terInvestor3[address(msg.sender)][idx].field_256
                                t = t - terInvestor3[address(msg.sender)][idx].field_256
                                continue 
                            _1764 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1764 + idx + 68] = mem[_1659 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1764 + 68] = mem[_1764 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1764 + -mem[64] + 100
                        require terInvestor3[address(msg.sender)][idx].field_0
                        if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1763 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1763] = 30
                        mem[_1763 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                            _1881 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1881 + idx + 68] = mem[_1763 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1881 + 68] = mem[_1881 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1881 + -mem[64] + 100
                else:
                    require terInvestor3[address(msg.sender)][idx].field_0
                    if 10 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 10:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1189 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1189] = 26
                    mem[_1189 + 32] = 'SafeMath: division by zero'
                    if not 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000:
                        _1257 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1257] = 26
                        mem[_1257 + 32] = 'SafeMath: division by zero'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                if t < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = 0
                                t = t
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1656 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1656] = 30
                                mem[_1656 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _1760 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1760 + idx + 68] = mem[_1656 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1760 + 68] = mem[_1760 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1760 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1759 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1759] = 30
                            mem[_1759 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _1877 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1877 + idx + 68] = mem[_1759 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1877 + 68] = mem[_1877 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1877 + -mem[64] + 100
                        else:
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                if t < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = 0
                                t = t
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1758 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1758] = 30
                                mem[_1758 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _1874 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1874 + idx + 68] = mem[_1758 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1874 + 68] = mem[_1874 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1874 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1873 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1873] = 30
                            mem[_1873 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _1998 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1998 + idx + 68] = mem[_1873 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1998 + 68] = mem[_1998 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1998 + -mem[64] + 100
                    else:
                        require 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000
                        if (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) / 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000 != block.timestamp - terInvestor3[address(msg.sender)][idx].field_512:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1273 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1273] = 26
                        mem[_1273 + 32] = 'SafeMath: division by zero'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) <= 0:
                                if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                if t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                t = t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1755 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1755] = 30
                                mem[_1755 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _1870 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1870 + idx + 68] = mem[_1755 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1870 + 68] = mem[_1870 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1870 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1869 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1869] = 30
                            mem[_1869 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _1994 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1994 + idx + 68] = mem[_1869 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1994 + 68] = mem[_1994 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1994 + -mem[64] + 100
                        else:
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) <= 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                if t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                t = t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1868 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1868] = 30
                                mem[_1868 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _1991 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1991 + idx + 68] = mem[_1868 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1991 + 68] = mem[_1991 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1991 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1990 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1990] = 30
                            mem[_1990 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _2114 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2114 + idx + 68] = mem[_1990 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2114 + 68] = mem[_2114 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2114 + -mem[64] + 100
        else:
            require terInvestor3[address(msg.sender)][idx].field_0
            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            require idx < terInvestor3[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 18)
            if terInvestor3[address(msg.sender)][idx].field_256 >= 4 * terInvestor3[address(msg.sender)][idx].field_0:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < terInvestor3[address(msg.sender)].field_0
            mem[0] = sha3(address(msg.sender), 18)
            if terInvestor3[address(msg.sender)][idx].field_512 <= terInvestor3[address(msg.sender)].field_256:
                _1114 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1114] = 30
                mem[_1114 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(msg.sender)].field_256 > block.timestamp:
                    _1127 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1127 + idx + 68] = mem[_1114 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1127 + 68] = mem[_1127 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1127 + -mem[64] + 100
                require idx < terInvestor3[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 18)
                if not terInvestor3[address(msg.sender)][idx].field_0:
                    _1182 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1182] = 26
                    mem[_1182 + 32] = 'SafeMath: division by zero'
                    _1240 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1240] = 26
                    mem[_1240 + 32] = 'SafeMath: division by zero'
                    require idx < terInvestor3[address(msg.sender)].field_0
                    if not terInvestor3[address(msg.sender)][idx].field_0:
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 18)
                            if t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = 0
                            t = t
                            continue 
                        mem[0] = sha3(address(msg.sender), 18)
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            _1595 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1595] = 30
                            mem[_1595 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                require idx < terInvestor3[address(msg.sender)].field_0
                                if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = 0
                                if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = -terInvestor3[address(msg.sender)][idx].field_256
                                t = t - terInvestor3[address(msg.sender)][idx].field_256
                                continue 
                            _1689 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1689 + idx + 68] = mem[_1595 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1689 + 68] = mem[_1689 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1689 + -mem[64] + 100
                        require terInvestor3[address(msg.sender)][idx].field_0
                        if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1688 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1688] = 30
                        mem[_1688 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                            _1792 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1792 + idx + 68] = mem[_1688 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1792 + 68] = mem[_1792 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1792 + -mem[64] + 100
                    else:
                        require terInvestor3[address(msg.sender)][idx].field_0
                        if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 <= 4 * terInvestor3[address(msg.sender)][idx].field_0:
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 18)
                            if t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = 0
                            t = t
                            continue 
                        mem[0] = sha3(address(msg.sender), 18)
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            _1687 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1687] = 30
                            mem[_1687 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                require idx < terInvestor3[address(msg.sender)].field_0
                                if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = 0
                                if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = -terInvestor3[address(msg.sender)][idx].field_256
                                t = t - terInvestor3[address(msg.sender)][idx].field_256
                                continue 
                            _1789 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1789 + idx + 68] = mem[_1687 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1789 + 68] = mem[_1789 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1789 + -mem[64] + 100
                        require terInvestor3[address(msg.sender)][idx].field_0
                        if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1788 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1788] = 30
                        mem[_1788 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                            _1905 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1905 + idx + 68] = mem[_1788 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1905 + 68] = mem[_1905 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1905 + -mem[64] + 100
                else:
                    require terInvestor3[address(msg.sender)][idx].field_0
                    if 10 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 10:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1191 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1191] = 26
                    mem[_1191 + 32] = 'SafeMath: division by zero'
                    if not 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000:
                        _1258 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1258] = 26
                        mem[_1258 + 32] = 'SafeMath: division by zero'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                if t < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = 0
                                t = t
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1684 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1684] = 30
                                mem[_1684 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _1785 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1785 + idx + 68] = mem[_1684 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1785 + 68] = mem[_1785 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1785 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1784 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1784] = 30
                            mem[_1784 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _1901 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1901 + idx + 68] = mem[_1784 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1901 + 68] = mem[_1901 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1901 + -mem[64] + 100
                        else:
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                if t < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = 0
                                t = t
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1783 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1783] = 30
                                mem[_1783 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _1898 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1898 + idx + 68] = mem[_1783 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1898 + 68] = mem[_1898 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1898 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1897 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1897] = 30
                            mem[_1897 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _2024 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2024 + idx + 68] = mem[_1897 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2024 + 68] = mem[_2024 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2024 + -mem[64] + 100
                    else:
                        require 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000
                        if (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) / 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000 != block.timestamp - terInvestor3[address(msg.sender)].field_256:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1279 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1279] = 26
                        mem[_1279 + 32] = 'SafeMath: division by zero'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) <= 0:
                                if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                if t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                t = t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1780 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1780] = 30
                                mem[_1780 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _1894 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1894 + idx + 68] = mem[_1780 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1894 + 68] = mem[_1894 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1894 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1893 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1893] = 30
                            mem[_1893 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _2020 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2020 + idx + 68] = mem[_1893 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2020 + 68] = mem[_2020 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2020 + -mem[64] + 100
                        else:
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) <= 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                if t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                t = t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)].field_256 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1892 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1892] = 30
                                mem[_1892 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _2017 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2017 + idx + 68] = mem[_1892 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2017 + 68] = mem[_2017 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2017 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _2016 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2016] = 30
                            mem[_2016 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _2137 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                s = 0
                                while s < 30:
                                    mem[_2137 + s + 68] = mem[_2016 + s + 32]
                                    s = s + 32
                                    continue 
                                mem[_2137 + 68] = mem[_2137 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2137 + -mem[64] + 100
            else:
                require idx < terInvestor3[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 18)
                _1123 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1123] = 30
                mem[_1123 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(msg.sender)][idx].field_512 > block.timestamp:
                    _1135 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1135 + idx + 68] = mem[_1123 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1135 + 68] = mem[_1135 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1135 + -mem[64] + 100
                require idx < terInvestor3[address(msg.sender)].field_0
                mem[0] = sha3(address(msg.sender), 18)
                if not terInvestor3[address(msg.sender)][idx].field_0:
                    _1188 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1188] = 26
                    mem[_1188 + 32] = 'SafeMath: division by zero'
                    _1256 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1256] = 26
                    mem[_1256 + 32] = 'SafeMath: division by zero'
                    require idx < terInvestor3[address(msg.sender)].field_0
                    if not terInvestor3[address(msg.sender)][idx].field_0:
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 18)
                            if t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = 0
                            t = t
                            continue 
                        mem[0] = sha3(address(msg.sender), 18)
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            _1645 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1645] = 30
                            mem[_1645 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                require idx < terInvestor3[address(msg.sender)].field_0
                                if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = 0
                                if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = -terInvestor3[address(msg.sender)][idx].field_256
                                t = t - terInvestor3[address(msg.sender)][idx].field_256
                                continue 
                            _1745 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1745 + idx + 68] = mem[_1645 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1745 + 68] = mem[_1745 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1745 + -mem[64] + 100
                        require terInvestor3[address(msg.sender)][idx].field_0
                        if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1744 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1744] = 30
                        mem[_1744 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                            _1856 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1856 + idx + 68] = mem[_1744 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1856 + 68] = mem[_1856 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1856 + -mem[64] + 100
                    else:
                        require terInvestor3[address(msg.sender)][idx].field_0
                        if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if terInvestor3[address(msg.sender)][idx].field_256 <= 4 * terInvestor3[address(msg.sender)][idx].field_0:
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            mem[0] = sha3(address(msg.sender), 18)
                            if t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = 0
                            t = t
                            continue 
                        mem[0] = sha3(address(msg.sender), 18)
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            _1743 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1743] = 30
                            mem[_1743 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                require idx < terInvestor3[address(msg.sender)].field_0
                                if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = 0
                                if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = -terInvestor3[address(msg.sender)][idx].field_256
                                t = t - terInvestor3[address(msg.sender)][idx].field_256
                                continue 
                            _1853 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1853 + idx + 68] = mem[_1743 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1853 + 68] = mem[_1853 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1853 + -mem[64] + 100
                        require terInvestor3[address(msg.sender)][idx].field_0
                        if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1852 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1852] = 30
                        mem[_1852 + 32] = 'SafeMath: subtraction overflow'
                        if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                            _1975 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1975 + idx + 68] = mem[_1852 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1975 + 68] = mem[_1975 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1975 + -mem[64] + 100
                else:
                    require terInvestor3[address(msg.sender)][idx].field_0
                    if 10 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 10:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _1194 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1194] = 26
                    mem[_1194 + 32] = 'SafeMath: division by zero'
                    if not 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000:
                        _1272 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1272] = 26
                        mem[_1272 + 32] = 'SafeMath: division by zero'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                if t < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = 0
                                t = t
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1740 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1740] = 30
                                mem[_1740 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _1849 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1849 + idx + 68] = mem[_1740 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1849 + 68] = mem[_1849 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1849 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1848 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1848] = 30
                            mem[_1848 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _1971 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1971 + idx + 68] = mem[_1848 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1971 + 68] = mem[_1971 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1971 + -mem[64] + 100
                        else:
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 <= 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                if terInvestor3[address(msg.sender)][idx].field_256 < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                if t < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = 0
                                t = t
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1847 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1847] = 30
                                mem[_1847 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _1968 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1968 + idx + 68] = mem[_1847 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1968 + 68] = mem[_1968 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1968 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1967 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1967] = 30
                            mem[_1967 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _2094 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2094 + idx + 68] = mem[_1967 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2094 + 68] = mem[_2094 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2094 + -mem[64] + 100
                    else:
                        require 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000
                        if (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) / 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000 != block.timestamp - terInvestor3[address(msg.sender)][idx].field_512:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _1286 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1286] = 26
                        mem[_1286 + 32] = 'SafeMath: division by zero'
                        require idx < terInvestor3[address(msg.sender)].field_0
                        if not terInvestor3[address(msg.sender)][idx].field_0:
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) <= 0:
                                if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                if t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                t = t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1844 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1844] = 30
                                mem[_1844 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _1964 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1964 + idx + 68] = mem[_1844 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1964 + 68] = mem[_1964 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1964 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1963 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1963] = 30
                            mem[_1963 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _2090 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2090 + idx + 68] = mem[_1963 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2090 + 68] = mem[_2090 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2090 + -mem[64] + 100
                        else:
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < terInvestor3[address(msg.sender)].field_0
                            if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) <= 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                if terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < terInvestor3[address(msg.sender)][idx].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < terInvestor3[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 18)
                                terInvestor3[address(msg.sender)][idx].field_256 = terInvestor3[address(msg.sender)][idx].field_256 + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                if t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) < t:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                t = t + (block.timestamp * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000) - (terInvestor3[address(msg.sender)][idx].field_512 * 10 * terInvestor3[address(msg.sender)][idx].field_0 / 1000)
                                continue 
                            mem[0] = sha3(address(msg.sender), 18)
                            if not terInvestor3[address(msg.sender)][idx].field_0:
                                _1962 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1962] = 30
                                mem[_1962 + 32] = 'SafeMath: subtraction overflow'
                                if terInvestor3[address(msg.sender)][idx].field_256 <= 0:
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    if 0 < terInvestor3[address(msg.sender)][idx].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < terInvestor3[address(msg.sender)].field_0
                                    mem[0] = sha3(address(msg.sender), 18)
                                    terInvestor3[address(msg.sender)][idx].field_256 = 0
                                    if t - terInvestor3[address(msg.sender)][idx].field_256 < t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = -terInvestor3[address(msg.sender)][idx].field_256
                                    t = t - terInvestor3[address(msg.sender)][idx].field_256
                                    continue 
                                _2087 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2087 + idx + 68] = mem[_1962 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2087 + 68] = mem[_2087 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2087 + -mem[64] + 100
                            require terInvestor3[address(msg.sender)][idx].field_0
                            if 4 * terInvestor3[address(msg.sender)][idx].field_0 / terInvestor3[address(msg.sender)][idx].field_0 != 4:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _2086 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2086] = 30
                            mem[_2086 + 32] = 'SafeMath: subtraction overflow'
                            if terInvestor3[address(msg.sender)][idx].field_256 > 4 * terInvestor3[address(msg.sender)][idx].field_0:
                                _2199 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2199 + idx + 68] = mem[_2086 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2199 + 68] = mem[_2199 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2199 + -mem[64] + 100
        ('le', ('field', 256, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'terInvestor3', 18))))), ('mask_shl', 254, 0, 2, ('field', 0, ('stor', ('array', ('mul', 3, ('var', 0)), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'terInvestor3', 18)))))))
        require idx < terInvestor3[address(msg.sender)].field_0
        if 4 * terInvestor3[address(msg.sender)][idx].field_0 < terInvestor3[address(msg.sender)][idx].field_256:
            revert with 0, 'SafeMath: addition overflow'
        require idx < terInvestor3[address(msg.sender)].field_0
        mem[0] = sha3(address(msg.sender), 18)
        terInvestor3[address(msg.sender)][idx].field_256 = 0
        terInvestor3[address(msg.sender)][idx].field_258 = terInvestor3[address(msg.sender)][idx].field_0
        if t + (4 * terInvestor3[address(msg.sender)][idx].field_0) - terInvestor3[address(msg.sender)][idx].field_256 < t:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = (4 * terInvestor3[address(msg.sender)][idx].field_0) - terInvestor3[address(msg.sender)][idx].field_256
        t = t + (4 * terInvestor3[address(msg.sender)][idx].field_0) - terInvestor3[address(msg.sender)][idx].field_256
        continue 
    if not t + terInvestor3[address(msg.sender)].field_1280:
        _1102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1102] = 26
        mem[_1102 + 32] = 'SafeMath: division by zero'
        terInvestor3[address(msg.sender)].field_1280 = 0
        _1112 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1112] = 30
        mem[_1112 + 32] = 'SafeMath: subtraction overflow'
        if terInvestor3[address(msg.sender)].field_1280 > t + terInvestor3[address(msg.sender)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        terInvestor3[address(msg.sender)].field_256 = block.timestamp
        if t <= 0:
            revert with 0, 'should be positive'
        if terInvestor3[address(msg.sender)].field_1024 + t < terInvestor3[address(msg.sender)].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        terInvestor3[address(msg.sender)].field_1024 += t
        if t + terInvestor3[address(msg.sender)].field_1024 < t:
            revert with 0, 'SafeMath: addition overflow'
        if t + terInvestor3[address(msg.sender)].field_1024 <= terInvestor3[address(msg.sender)].field_512:
            terInvestor3[address(msg.sender)].field_1536 += t / 10
            sub_089cdd0c++
            emit 0x8432610d: t, terInvestor3[address(msg.sender)].field_1280, 0, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
            sub_089cdd0c++
            emit 0x8432610d: t / 10, 0, 1, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
            if t / 10 > t:
                revert with 0, 'SafeMath: subtraction overflow'
            donated += t / 10
            call msg.sender with:
               value t - (t / 10) wei
                 gas 2300 * is_zero(value) wei
        else:
            if terInvestor3[address(msg.sender)].field_512 <= terInvestor3[address(msg.sender)].field_1024:
                _1192 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1192] = 30
                mem[_1192 + 32] = 'SafeMath: subtraction overflow'
                if 0 > t:
                    revert with 0, 'SafeMath: subtraction overflow'
                _1212 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1212] = 26
                mem[_1212 + 32] = 'SafeMath: division by zero'
                if not t:
                    sub_089cdd0c++
                    emit 0x8432610d: t, terInvestor3[address(msg.sender)].field_1280, 0, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    sub_089cdd0c++
                    emit 0x8432610d: 0, 0, 1, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    if 0 > t:
                        revert with 0, 'SafeMath: subtraction overflow'
                    call msg.sender with:
                       value t wei
                         gas 2300 * is_zero(value) wei
                else:
                    require t
                    if 3 * t / t != 3:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 3 * t / 10 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    terInvestor3[address(msg.sender)].field_1536 += 3 * t / 10
                    sub_089cdd0c++
                    emit 0x8432610d: t, terInvestor3[address(msg.sender)].field_1280, 0, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    sub_089cdd0c++
                    emit 0x8432610d: 3 * t / 10, 0, 1, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    if 3 * t / 10 > t:
                        revert with 0, 'SafeMath: subtraction overflow'
                    donated += 3 * t / 10
                    call msg.sender with:
                       value t - (3 * t / 10) wei
                         gas 2300 * is_zero(value) wei
            else:
                _1193 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1193] = 30
                mem[_1193 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(msg.sender)].field_1024 > terInvestor3[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                _1225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1225] = 30
                mem[_1225 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 > t:
                    revert with 0, 'SafeMath: subtraction overflow'
                _1274 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1274] = 26
                mem[_1274 + 32] = 'SafeMath: division by zero'
                if not t - terInvestor3[address(msg.sender)].field_512 + terInvestor3[address(msg.sender)].field_1024:
                    if terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10 < terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10:
                        revert with 0, 'SafeMath: addition overflow'
                    terInvestor3[address(msg.sender)].field_1536 += terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10
                    sub_089cdd0c++
                    emit 0x8432610d: t, terInvestor3[address(msg.sender)].field_1280, 0, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    sub_089cdd0c++
                    emit 0x8432610d: terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10, 0, 1, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    if terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10 > t:
                        revert with 0, 'SafeMath: subtraction overflow'
                    donated += terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10
                    call msg.sender with:
                       value t - (terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require t - terInvestor3[address(msg.sender)].field_512 + terInvestor3[address(msg.sender)].field_1024
                    if (3 * t) - (3 * terInvestor3[address(msg.sender)].field_512) + (3 * terInvestor3[address(msg.sender)].field_1024) / t - terInvestor3[address(msg.sender)].field_512 + terInvestor3[address(msg.sender)].field_1024 != 3:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10) + ((3 * t) - (3 * terInvestor3[address(msg.sender)].field_512) + (3 * terInvestor3[address(msg.sender)].field_1024) / 10) < terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10:
                        revert with 0, 'SafeMath: addition overflow'
                    terInvestor3[address(msg.sender)].field_1536 = terInvestor3[address(msg.sender)].field_1536 + (terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10) + ((3 * t) - (3 * terInvestor3[address(msg.sender)].field_512) + (3 * terInvestor3[address(msg.sender)].field_1024) / 10)
                    sub_089cdd0c++
                    emit 0x8432610d: t, terInvestor3[address(msg.sender)].field_1280, 0, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    sub_089cdd0c++
                    emit 0x8432610d: (terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10) + ((3 * t) - (3 * terInvestor3[address(msg.sender)].field_512) + (3 * terInvestor3[address(msg.sender)].field_1024) / 10), 0, 1, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    if (terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10) + ((3 * t) - (3 * terInvestor3[address(msg.sender)].field_512) + (3 * terInvestor3[address(msg.sender)].field_1024) / 10) > t:
                        revert with 0, 'SafeMath: subtraction overflow'
                    donated = donated + (terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10) + ((3 * t) - (3 * terInvestor3[address(msg.sender)].field_512) + (3 * terInvestor3[address(msg.sender)].field_1024) / 10)
                    call msg.sender with:
                       value t - (terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10) - ((3 * t) - (3 * terInvestor3[address(msg.sender)].field_512) + (3 * terInvestor3[address(msg.sender)].field_1024) / 10) wei
                         gas 2300 * is_zero(value) wei
    else:
        require t + terInvestor3[address(msg.sender)].field_1280
        if (100 * t) - (arg1 * t) + (100 * terInvestor3[address(msg.sender)].field_1280) - (arg1 * terInvestor3[address(msg.sender)].field_1280) / t + terInvestor3[address(msg.sender)].field_1280 != -arg1 + 100:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _1106 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1106] = 26
        mem[_1106 + 32] = 'SafeMath: division by zero'
        terInvestor3[address(msg.sender)].field_1280 = (100 * t) - (arg1 * t) + (100 * terInvestor3[address(msg.sender)].field_1280) - (arg1 * terInvestor3[address(msg.sender)].field_1280) / 100
        _1119 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1119] = 30
        mem[_1119 + 32] = 'SafeMath: subtraction overflow'
        if terInvestor3[address(msg.sender)].field_1280 > t + terInvestor3[address(msg.sender)].field_1280:
            revert with 0, 'SafeMath: subtraction overflow'
        terInvestor3[address(msg.sender)].field_256 = block.timestamp
        if t <= 0:
            revert with 0, 'should be positive'
        if terInvestor3[address(msg.sender)].field_1024 + t < terInvestor3[address(msg.sender)].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        terInvestor3[address(msg.sender)].field_1024 += t
        if t + terInvestor3[address(msg.sender)].field_1024 < t:
            revert with 0, 'SafeMath: addition overflow'
        if t + terInvestor3[address(msg.sender)].field_1024 <= terInvestor3[address(msg.sender)].field_512:
            terInvestor3[address(msg.sender)].field_1536 += t / 10
            sub_089cdd0c++
            emit 0x8432610d: t, terInvestor3[address(msg.sender)].field_1280, 0, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
            sub_089cdd0c++
            emit 0x8432610d: t / 10, 0, 1, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
            if t / 10 > t:
                revert with 0, 'SafeMath: subtraction overflow'
            donated += t / 10
            call msg.sender with:
               value t - (t / 10) wei
                 gas 2300 * is_zero(value) wei
        else:
            if terInvestor3[address(msg.sender)].field_512 <= terInvestor3[address(msg.sender)].field_1024:
                _1196 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1196] = 30
                mem[_1196 + 32] = 'SafeMath: subtraction overflow'
                if 0 > t:
                    revert with 0, 'SafeMath: subtraction overflow'
                _1231 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1231] = 26
                mem[_1231 + 32] = 'SafeMath: division by zero'
                if not t:
                    sub_089cdd0c++
                    emit 0x8432610d: t, terInvestor3[address(msg.sender)].field_1280, 0, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    sub_089cdd0c++
                    emit 0x8432610d: 0, 0, 1, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    if 0 > t:
                        revert with 0, 'SafeMath: subtraction overflow'
                    call msg.sender with:
                       value t wei
                         gas 2300 * is_zero(value) wei
                else:
                    require t
                    if 3 * t / t != 3:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 3 * t / 10 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    terInvestor3[address(msg.sender)].field_1536 += 3 * t / 10
                    sub_089cdd0c++
                    emit 0x8432610d: t, terInvestor3[address(msg.sender)].field_1280, 0, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    sub_089cdd0c++
                    emit 0x8432610d: 3 * t / 10, 0, 1, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    if 3 * t / 10 > t:
                        revert with 0, 'SafeMath: subtraction overflow'
                    donated += 3 * t / 10
                    call msg.sender with:
                       value t - (3 * t / 10) wei
                         gas 2300 * is_zero(value) wei
            else:
                _1197 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1197] = 30
                mem[_1197 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(msg.sender)].field_1024 > terInvestor3[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                _1245 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1245] = 30
                mem[_1245 + 32] = 'SafeMath: subtraction overflow'
                if terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 > t:
                    revert with 0, 'SafeMath: subtraction overflow'
                _1288 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1288] = 26
                mem[_1288 + 32] = 'SafeMath: division by zero'
                if not t - terInvestor3[address(msg.sender)].field_512 + terInvestor3[address(msg.sender)].field_1024:
                    if terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10 < terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10:
                        revert with 0, 'SafeMath: addition overflow'
                    terInvestor3[address(msg.sender)].field_1536 += terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10
                    sub_089cdd0c++
                    emit 0x8432610d: t, terInvestor3[address(msg.sender)].field_1280, 0, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    sub_089cdd0c++
                    emit 0x8432610d: terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10, 0, 1, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    if terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10 > t:
                        revert with 0, 'SafeMath: subtraction overflow'
                    donated += terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10
                    call msg.sender with:
                       value t - (terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10) wei
                         gas 2300 * is_zero(value) wei
                else:
                    require t - terInvestor3[address(msg.sender)].field_512 + terInvestor3[address(msg.sender)].field_1024
                    if (3 * t) - (3 * terInvestor3[address(msg.sender)].field_512) + (3 * terInvestor3[address(msg.sender)].field_1024) / t - terInvestor3[address(msg.sender)].field_512 + terInvestor3[address(msg.sender)].field_1024 != 3:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10) + ((3 * t) - (3 * terInvestor3[address(msg.sender)].field_512) + (3 * terInvestor3[address(msg.sender)].field_1024) / 10) < terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10:
                        revert with 0, 'SafeMath: addition overflow'
                    terInvestor3[address(msg.sender)].field_1536 = terInvestor3[address(msg.sender)].field_1536 + (terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10) + ((3 * t) - (3 * terInvestor3[address(msg.sender)].field_512) + (3 * terInvestor3[address(msg.sender)].field_1024) / 10)
                    sub_089cdd0c++
                    emit 0x8432610d: t, terInvestor3[address(msg.sender)].field_1280, 0, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    sub_089cdd0c++
                    emit 0x8432610d: (terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10) + ((3 * t) - (3 * terInvestor3[address(msg.sender)].field_512) + (3 * terInvestor3[address(msg.sender)].field_1024) / 10), 0, 1, sub_089cdd0c, terInvestor3[address(msg.sender)].field_3840, msg.sender
                    if (terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10) + ((3 * t) - (3 * terInvestor3[address(msg.sender)].field_512) + (3 * terInvestor3[address(msg.sender)].field_1024) / 10) > t:
                        revert with 0, 'SafeMath: subtraction overflow'
                    donated = donated + (terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10) + ((3 * t) - (3 * terInvestor3[address(msg.sender)].field_512) + (3 * terInvestor3[address(msg.sender)].field_1024) / 10)
                    call msg.sender with:
                       value t - (terInvestor3[address(msg.sender)].field_512 - terInvestor3[address(msg.sender)].field_1024 / 10) - ((3 * t) - (3 * terInvestor3[address(msg.sender)].field_512) + (3 * terInvestor3[address(msg.sender)].field_1024) / 10) wei
                         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
