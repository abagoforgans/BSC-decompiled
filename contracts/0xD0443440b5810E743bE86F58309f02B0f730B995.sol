contract main {




// =====================  Runtime code  =====================


array of uint256 stor3;
uint256 stor4;
uint256 sub_ddafc21c;
uint256 stor7;
uint256 sub_85e99289;
uint256 stor14;
uint256 sub_0fcfccd4;
uint256 sub_e635c84c;
uint8 sub_845c1c9f; offset 8
uint8 contractStatus; offset 16
uint16 stor27; offset 8
address stor27; offset 24
uint256 stor27; offset 24
uint256 stor27; offset 16
uint256 stor27; offset 8
address stor28;
address stor29;
address stor32;
address stor35;
address stor38;
mapping of uint256 stor43;
mapping of uint8 stor44;
mapping of uint256 stor46;
mapping of uint256 sub_7e03dbb3;
mapping of struct stor51;
mapping of struct bonusPercentage;
mapping of struct sub_2df6929e;
mapping of uint256 sub_4f956a6c;
mapping of struct sub_cbc463e2;
uint256 stor60;
uint256 stor14B8;
uint256 stor15EE;
uint8 stor2725;
uint256 stor2FED;
uint8 stor346E;
uint8 stor4910;
uint8 stor65A4;
uint256 stor6946;
uint256 stor6E6D;
uint256 stor6F5F;
uint32 stor7C36;
address stor7C36;
uint256 stor7C36;
uint256 stor7C36;
uint256 stor87B5;
uint256 stor99E9;
uint256 stor9F08;
uint256 storB1E0;
address storB531;
uint256 storB531;
mapping of uint256 stor82975749523923053629734044151534416711484802866024201532805645436754205843223;
mapping of uint256 stor86818815084287132987740267713445193816492274797958128862210579028418210209960;
uint256 storEEC6;
uint256 storF1BA;
uint8 storFB74;

function sub_0fcfccd4(?) {
    return sub_0fcfccd4
}

function sub_2df6929e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_2df6929e[address(arg1)][1][arg2].field_0, 
           sub_2df6929e[address(arg1)][1][arg2].field_512,
           sub_2df6929e[address(arg1)][1][arg2].field_768,
           sub_2df6929e[address(arg1)][1][arg2].field_1280
}

function getBonusPercentage(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bonusPercentage[arg1].field_0, bonusPercentage[arg1].field_256, bonusPercentage[arg1].field_512
}

function sub_46ec4528(?) {
    require calldata.size - 4 >= 32
    return bool(stor44[arg1])
}

function sub_4f956a6c(?) {
    require calldata.size - 4 >= 64
    return sub_4f956a6c[arg1][arg2]
}

function sub_7e03dbb3(?) {
    require calldata.size - 4 >= 32
    return sub_7e03dbb3[arg1]
}

function sub_845c1c9f(?) {
    return bool(sub_845c1c9f)
}

function sub_85e99289(?) {
    return sub_85e99289
}

function sub_bbfec43f(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    return sub_2df6929e[address(arg1)][1][arg2][6][arg3].field_0, sub_2df6929e[address(arg1)][1][arg2][7][arg3].field_0
}

function getContractStatus() {
    return bool(contractStatus)
}

function sub_cbc463e2(?) {
    require calldata.size - 4 >= 64
    return sub_cbc463e2[arg1][arg2].field_0, sub_cbc463e2[arg1][arg2].field_256, sub_cbc463e2[arg1][arg2].field_512
}

function sub_ddafc21c(?) {
    return sub_ddafc21c
}

function sub_e635c84c(?) {
    return sub_e635c84c
}

function sub_ea342852(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    return sub_2df6929e[address(arg1)][1][arg2][8][arg3][arg4].field_0
}

function _fallback() payable {
    revert
}

function sub_9474452f(?) {
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    Mask(248, 0, stor27.field_8) = Mask(248, 0, not sub_845c1c9f)
}

function changeContractStatus() {
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    Mask(240, 0, stor27.field_16) = Mask(240, 0, not contractStatus)
}

function sub_741b1f8b(?) {
    require calldata.size - 4 >= 32
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    sub_e635c84c = arg1
}

function sub_d37ccd61(?) {
    require calldata.size - 4 >= 32
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    sub_0fcfccd4 = arg1
}

function sub_57d6b43f(?) {
    require calldata.size - 4 >= 64
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    sub_7e03dbb3[arg1] = arg2
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    address(stor27.field_24) = arg1
    uint256(storB531) = arg1
}

function sub_675cb4e5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    stor32 = address(arg1)
}

function sub_a4d02127(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    stor29 = address(arg1)
}

function sub_cb3dc057(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    stor38 = address(arg1)
}

function sub_ead72f8c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    stor35 = address(arg1)
}

function sub_ec5c918e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    stor28 = address(arg1)
}

function sub_9149e04e(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    stor44[arg1] = uint8(bool(arg2))
}

function sub_ac58707d(?) {
    require calldata.size - 4 >= 64
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    if stor7 < arg1:
        revert with 0, 'E43'
    bonusPercentage[arg1].field_256 = arg2
}

function sub_ebccb3ef(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor38 != msg.sender:
        revert with 0, 'E5'
    if bool(contractStatus) != 1:
        revert with 0, 'E1'
    if stor60 == 2:
        revert with 0, 'E6'
    sub_2df6929e[address(arg1)].field_0 = arg2
    stor60 = 1
    return 1
}

function processMonth() {
    if stor29 != msg.sender:
        revert with 0, 'E5'
    if stor43[stor6] > !sub_e635c84c:
        revert with 0, 17
    if block.timestamp <= stor43[stor6] + sub_e635c84c:
        revert with 0, 'E53'
    if stor4 == -1:
        revert with 0, 17
    stor4++
    if sub_ddafc21c == -1:
        revert with 0, 17
    sub_ddafc21c++
    stor43[stor6] = block.timestamp
    emit 0xc2e07d5a: sub_ddafc21c, stor4
}

function sub_c6531c3b(?) {
    require calldata.size - 4 >= 64
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    if arg1 != 1:
        if arg1 != 2:
            revert with 0, 'E44'
    if stor7 == -1:
        revert with 0, 17
    stor7++
    bonusPercentage[stor7].field_0 = arg1
    bonusPercentage[stor7].field_256 = arg2
    bonusPercentage[stor7].field_512 = 0
}

function upgradeTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(storB531) != msg.sender:
        revert with 0, 'E5'
    uint256(stor7C36) = arg1
    if not stor4910:
        stor4910 = 1
        mem[164 len 64] = unknown_0x3659cfe6(?????), Mask(224, 0, stor7C36), uint32(stor7C36), mem[164 len 28]
        delegate arg1.mem[164 len 4] with:
             gas gas_remaining wei
            args mem[168]
        if not delegate.return_code:
            revert with 0, 'E64'
        stor4910 = 0
        if address(stor7C36) != address(stor7C36):
            revert with 0, 'E64'
        uint256(stor7C36) = arg1
}

function sub_0b81d126(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor28 != msg.sender:
        revert with 0, 'E5'
    if bool(contractStatus) != 1:
        revert with 0, 'E1'
    if stor60 == 2:
        revert with 0, 'E6'
    stor60 = 2
    if bool(stor44[arg2]) != 1:
        revert with 0, 'E15'
    if stor4 == -1:
        revert with 0, 17
    stor4++
    if not sub_2df6929e[address(arg1)][1][arg2].field_0:
        sub_2df6929e[address(arg1)][1][arg2].field_0 = block.timestamp
        sub_2df6929e[address(arg1)][1][arg2].field_256 = 2
        sub_2df6929e[address(arg1)][1][arg2].field_512 = sub_ddafc21c
        if sub_ddafc21c < 1:
            revert with 0, 17
        sub_2df6929e[address(arg1)][1][arg2].field_768 = sub_ddafc21c - 1
    sub_2df6929e[address(arg1)][1][arg2].field_1280 = 1
    if sub_4f956a6c[arg2][stor6] == -1:
        revert with 0, 17
    sub_4f956a6c[arg2][stor6]++
    emit 0xfe6a82dc: arg2, 0, sub_ddafc21c, 1, 0, stor4, address(arg1)
    stor60 = 1
    return 1
}

function sub_6de9e9a4(?) {
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    idx = 1
    s = 0
    while idx <= stor7:
        mem[0] = idx
        mem[32] = 55
        if s > !bonusPercentage[idx].field_256:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + bonusPercentage[idx].field_256
        continue 
    if s * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 * stor7 != 100:
        return 0
    return 1
}

function sub_a9940dc1(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor38 != msg.sender:
        revert with 0, 'E5'
    if bool(contractStatus) != 1:
        revert with 0, 'E1'
    if stor60 == 2:
        revert with 0, 'E6'
    stor60 = 2
    if not sub_7e03dbb3[arg2]:
        revert with 0, 'E38'
    if stor4 == -1:
        revert with 0, 17
    stor4++
    if not sub_2df6929e[address(arg1)][1][1].field_0:
        sub_2df6929e[address(arg1)][1][1].field_0 = block.timestamp
        sub_2df6929e[address(arg1)][1][1].field_256 = 1
        sub_2df6929e[address(arg1)][1][1].field_512 = sub_ddafc21c
        if sub_ddafc21c < 1:
            revert with 0, 17
        sub_2df6929e[address(arg1)][1][1].field_768 = sub_ddafc21c - 1
    if sub_2df6929e[address(arg1)][1][1][6][stor6].field_0 > !sub_7e03dbb3[arg2]:
        revert with 0, 17
    sub_2df6929e[address(arg1)][1][1][6][stor6].field_0 += sub_7e03dbb3[arg2]
    if sub_2df6929e[address(arg1)][1][1][7][stor6].field_0 == -1:
        revert with 0, 17
    sub_2df6929e[address(arg1)][1][1][7][stor6].field_0++
    if storBFF1[stor6] > !sub_7e03dbb3[arg2]:
        revert with 0, 17
    storBFF1[stor6] += sub_7e03dbb3[arg2]
    emit 0xfe6a82dc: 1, arg2, sub_ddafc21c, sub_7e03dbb3[arg2], 0, stor4, address(arg1)
    stor60 = 1
    return 1
}

function sub_a8527855(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor38 != msg.sender:
        revert with 0, 'E5'
    if bool(contractStatus) != 1:
        revert with 0, 'E1'
    if stor60 == 2:
        revert with 0, 'E6'
    stor60 = 2
    if not sub_7e03dbb3[arg2]:
        revert with 0, 'E38'
    if stor4 == -1:
        revert with 0, 17
    stor4++
    if not sub_2df6929e[address(arg1)][1][2].field_0:
        sub_2df6929e[address(arg1)][1][2].field_0 = block.timestamp
        sub_2df6929e[address(arg1)][1][2].field_256 = 1
        sub_2df6929e[address(arg1)][1][2].field_512 = sub_ddafc21c
        if sub_ddafc21c < 1:
            revert with 0, 17
        sub_2df6929e[address(arg1)][1][2].field_768 = sub_ddafc21c - 1
    if sub_2df6929e[address(arg1)][1][2][7][stor6].field_0 == -1:
        revert with 0, 17
    sub_2df6929e[address(arg1)][1][2][7][stor6].field_0++
    if sub_2df6929e[address(arg1)][1][2][8][stor6][arg2].field_0 == -1:
        revert with 0, 17
    sub_2df6929e[address(arg1)][1][2][8][stor6][arg2].field_0++
    if not sub_0fcfccd4:
        revert with 0, 18
    if not sub_2df6929e[address(arg1)][1][2][8][stor6][arg2].field_0 % sub_0fcfccd4:
        if sub_2df6929e[address(arg1)][1][2][6][stor6].field_0 > !sub_7e03dbb3[arg2]:
            revert with 0, 17
        sub_2df6929e[address(arg1)][1][2][6][stor6].field_0 += sub_7e03dbb3[arg2]
        if storB772[stor6] > !sub_7e03dbb3[arg2]:
            revert with 0, 17
        storB772[stor6] += sub_7e03dbb3[arg2]
        emit 0xfe6a82dc: 2, arg2, sub_ddafc21c, sub_7e03dbb3[arg2], 0, stor4, address(arg1)
    stor60 = 1
    return 1
}

function sub_38562197(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor35 != msg.sender:
        revert with 0, 'E5'
    if not stor51[address(arg1)].field_0:
        revert with 0, 'E23'
    if block.timestamp <= stor51[address(arg1)].field_0:
        revert with 0, 'E23'
    if stor4 == -1:
        revert with 0, 17
    stor4++
    idx = 1
    while idx <= stor7:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 57) + 1
        if sub_2df6929e[address(arg1)][1][idx].field_0:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 57) + 1
            if 2 == sub_2df6929e[address(arg1)][1][idx].field_256:
                if sub_ddafc21c < 1:
                    revert with 0, 17
                sub_2df6929e[address(arg1)][1][idx].field_768 = sub_ddafc21c - 1
                sub_2df6929e[address(arg1)][1][idx].field_1024 = 0
                mem[32] = sha3(idx, 58)
                if sub_4f956a6c[idx][stor6] > -2:
                    revert with 0, 17
                sub_4f956a6c[idx][stor6]++
                mem[mem[64]] = idx
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = sub_ddafc21c
                mem[mem[64] + 96] = sub_2df6929e[address(arg1)][1][idx].field_1280
                mem[mem[64] + 128] = 0
                mem[mem[64] + 160] = stor4
                mem[0] = sub_ddafc21c
                emit 0xfe6a82dc: idx, 0, sub_ddafc21c, sub_2df6929e[address(arg1)][1][idx].field_1280, 0, stor4, address(arg1)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor51[address(arg1)].field_0 = 0
    stor51[address(arg1)].field_256 = 0
    return 1
}

function init(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if sub_ddafc21c:
        revert with 0, 'E22'
    Mask(232, 0, stor27.field_24) = address(storB531)
    if 0 or address(storB531) != msg.sender:
        revert with 0, 'E5'
    stor60 = 1
    uint16(stor27.field_8) = 0
    stor28 = arg1
    stor29 = arg2
    stor38 = arg3
    sub_ddafc21c = 1
    if block.timestamp < 24 * 3600:
        revert with 0, 17
    stor43[stor6] = block.timestamp - (24 * 3600)
    sub_0fcfccd4 = arg4
    sub_e635c84c = arg5
    stor2FED = 1
    stor14B8 = 2
    stor6946 = 4
    stor15EE = 7
    storEEC6 = 10
    storB1E0 = 14
    stor6E6D = 24
    stor99E9 = 34
    storF1BA = 40
    stor87B5 = 50
    stor9F08 = 67
    stor6F5F = 84
    stor346E = 1
    stor65A4 = 1
    stor2725 = 1
    storFB74 = 1
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    if stor7 == -1:
        revert with 0, 17
    stor7++
    bonusPercentage[stor7].field_0 = 1
    bonusPercentage[stor7].field_256 = 45
    bonusPercentage[stor7].field_512 = 0
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    if stor7 == -1:
        revert with 0, 17
    stor7++
    bonusPercentage[stor7].field_0 = 1
    bonusPercentage[stor7].field_256 = 35
    bonusPercentage[stor7].field_512 = 0
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    if stor7 == -1:
        revert with 0, 17
    stor7++
    bonusPercentage[stor7].field_0 = 2
    bonusPercentage[stor7].field_256 = 3
    bonusPercentage[stor7].field_512 = 0
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    if stor7 == -1:
        revert with 0, 17
    stor7++
    bonusPercentage[stor7].field_0 = 2
    bonusPercentage[stor7].field_256 = 4
    bonusPercentage[stor7].field_512 = 0
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    if stor7 == -1:
        revert with 0, 17
    stor7++
    bonusPercentage[stor7].field_0 = 2
    bonusPercentage[stor7].field_256 = 5
    bonusPercentage[stor7].field_512 = 0
    if contractStatus:
        revert with 0, 'E2'
    if address(stor27.field_24) != msg.sender:
        revert with 0, 'E5'
    if stor7 == -1:
        revert with 0, 17
    stor7++
    bonusPercentage[stor7].field_0 = 2
    bonusPercentage[stor7].field_256 = 8
    bonusPercentage[stor7].field_512 = 0
}

function sub_83a9aa34(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if stor35 != msg.sender:
        revert with 0, 'E5'
    if stor51[address(arg1)].field_0:
        revert with 0, 'E23'
    if stor4 == -1:
        revert with 0, 17
    stor4++
    stor51[address(arg1)].field_0 = arg2
    idx = 1
    s = 0
    while idx <= stor7:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 57) + 1
        if not sub_2df6929e[address(arg1)][1][idx].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if sub_2df6929e[address(arg1)][1][idx].field_256 != 2:
            sub_2df6929e[address(arg1)][1][idx][6][stor6].field_0 = 0
            mem[0] = sub_ddafc21c
            mem[32] = sha3(idx, 58)
            if sub_4f956a6c[idx][stor6] < sub_2df6929e[address(arg1)][1][idx][6][stor6].field_0:
                revert with 0, 17
            sub_4f956a6c[idx][stor6] -= sub_2df6929e[address(arg1)][1][idx][6][stor6].field_0
            if sub_2df6929e[address(arg1)][1][idx][6][stor6].field_0:
                mem[mem[64]] = idx
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = sub_ddafc21c
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = sub_2df6929e[address(arg1)][1][idx][6][stor6].field_0
                mem[mem[64] + 160] = stor4
                mem[0] = sub_ddafc21c
                emit 0xfe6a82dc: idx, 0, sub_ddafc21c, 0, sub_2df6929e[address(arg1)][1][idx][6][stor6].field_0, stor4, address(arg1)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sub_2df6929e[address(arg1)][1][idx][6][stor6].field_0
            continue 
        if sub_ddafc21c < 1:
            revert with 0, 17
        sub_2df6929e[address(arg1)][1][idx].field_1024 = sub_ddafc21c - 1
        if sub_2df6929e[address(arg1)][1][idx].field_512 >= sub_ddafc21c:
            mem[0] = sub_ddafc21c
            mem[32] = sha3(idx, 58)
            if sub_4f956a6c[idx][stor6] < sub_2df6929e[address(arg1)][1][idx].field_1280:
                revert with 0, 17
            sub_4f956a6c[idx][stor6] -= sub_2df6929e[address(arg1)][1][idx].field_1280
            if sub_2df6929e[address(arg1)][1][idx].field_1280:
                mem[mem[64]] = idx
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = sub_ddafc21c
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = sub_2df6929e[address(arg1)][1][idx].field_1280
                mem[mem[64] + 160] = stor4
                mem[0] = sub_ddafc21c
                emit 0xfe6a82dc: idx, 0, sub_ddafc21c, 0, sub_2df6929e[address(arg1)][1][idx].field_1280, stor4, address(arg1)
        else:
            mem[0] = idx
            mem[32] = 46
            if stor46[idx] < sub_2df6929e[address(arg1)][1][idx].field_1280:
                revert with 0, 17
            stor46[idx] -= sub_2df6929e[address(arg1)][1][idx].field_1280
            if sub_2df6929e[address(arg1)][1][idx].field_1280:
                mem[mem[64]] = idx
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = sub_ddafc21c
                mem[mem[64] + 96] = 0
                mem[mem[64] + 128] = sub_2df6929e[address(arg1)][1][idx].field_1280
                mem[mem[64] + 160] = stor4
                mem[0] = idx
                emit 0xfe6a82dc: idx, 0, sub_ddafc21c, 0, sub_2df6929e[address(arg1)][1][idx].field_1280, stor4, address(arg1)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sub_2df6929e[address(arg1)][1][idx].field_1280
        continue 
    return 1
}

function sub_f901ff55(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 1
    while idx <= stor7:
        mem[0] = idx
        mem[32] = sha3(address(arg1), 57) + 1
        if not sub_2df6929e[address(arg1)][1][idx].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(address(arg1), 57) + 1
        if 1 > !sub_2df6929e[address(arg1)][1][idx].field_768:
            revert with 0, 17
        s = stor3[sha3(mem[0 len 64])] + 1
        while s <= sub_85e99289:
            if sub_2df6929e[address(arg1)][1][s].field_1280:
                if sub_2df6929e[address(arg1)][1][s].field_1024 <= 0:
                    mem[0] = s
                    if sub_2df6929e[address(arg1)][1][s].field_256 != 2:
                        mem[32] = sha3(s, sha3(address(arg1), 57) + 1) + 6
                        if sub_2df6929e[address(arg1)][1][s][6][s].field_0 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(arg1)][1][s][6][s].field_0:
                            revert with 0, 17
                        if 0 > !(sub_2df6929e[address(arg1)][1][s][6][s].field_0 * sub_cbc463e2[s][s].field_512):
                            revert with 0, 17
                    else:
                        mem[32] = sha3(s, 59)
                        if sub_2df6929e[address(arg1)][1][s].field_1280 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(arg1)][1][s].field_1280:
                            revert with 0, 17
                        if 0 > !(sub_2df6929e[address(arg1)][1][s].field_1280 * sub_cbc463e2[s][s].field_512):
                            revert with 0, 17
                else:
                    if sub_2df6929e[address(arg1)][1][s].field_1024 >= s:
                        mem[0] = s
                        if sub_2df6929e[address(arg1)][1][s].field_256 != 2:
                            mem[32] = sha3(s, sha3(address(arg1), 57) + 1) + 6
                            if sub_2df6929e[address(arg1)][1][s][6][s].field_0 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(arg1)][1][s][6][s].field_0:
                                revert with 0, 17
                            if 0 > !(sub_2df6929e[address(arg1)][1][s][6][s].field_0 * sub_cbc463e2[s][s].field_512):
                                revert with 0, 17
                        else:
                            mem[32] = sha3(s, 59)
                            if sub_2df6929e[address(arg1)][1][s].field_1280 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(arg1)][1][s].field_1280:
                                revert with 0, 17
                            if 0 > !(sub_2df6929e[address(arg1)][1][s].field_1280 * sub_cbc463e2[s][s].field_512):
                                revert with 0, 17
            else:
                mem[0] = s
                mem[32] = sha3(s, sha3(address(arg1), 57) + 1) + 6
                if sub_2df6929e[address(arg1)][1][s][6][s].field_0:
                    if sub_2df6929e[address(arg1)][1][s].field_1024 <= 0:
                        mem[0] = s
                        if sub_2df6929e[address(arg1)][1][s].field_256 != 2:
                            mem[32] = sha3(s, sha3(address(arg1), 57) + 1) + 6
                            if sub_2df6929e[address(arg1)][1][s][6][s].field_0 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(arg1)][1][s][6][s].field_0:
                                revert with 0, 17
                            if 0 > !(sub_2df6929e[address(arg1)][1][s][6][s].field_0 * sub_cbc463e2[s][s].field_512):
                                revert with 0, 17
                        else:
                            mem[32] = sha3(s, 59)
                            if sub_2df6929e[address(arg1)][1][s].field_1280 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(arg1)][1][s].field_1280:
                                revert with 0, 17
                            if 0 > !(sub_2df6929e[address(arg1)][1][s].field_1280 * sub_cbc463e2[s][s].field_512):
                                revert with 0, 17
                    else:
                        if sub_2df6929e[address(arg1)][1][s].field_1024 >= s:
                            mem[0] = s
                            if sub_2df6929e[address(arg1)][1][s].field_256 != 2:
                                mem[32] = sha3(s, sha3(address(arg1), 57) + 1) + 6
                                if sub_2df6929e[address(arg1)][1][s][6][s].field_0 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(arg1)][1][s][6][s].field_0:
                                    revert with 0, 17
                                if 0 > !(sub_2df6929e[address(arg1)][1][s][6][s].field_0 * sub_cbc463e2[s][s].field_512):
                                    revert with 0, 17
                            else:
                                mem[32] = sha3(s, 59)
                                if sub_2df6929e[address(arg1)][1][s].field_1280 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(arg1)][1][s].field_1280:
                                    revert with 0, 17
                                if 0 > !(sub_2df6929e[address(arg1)][1][s].field_1280 * sub_cbc463e2[s][s].field_512):
                                    revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        if s == -1:
            revert with 0, 17
        s = s + 1
        continue 
    return 0
}

function claimPayout() payable {
    mem[64] = 96
    require not msg.value
    mem[0] = msg.sender
    mem[32] = 57
    if not sub_2df6929e[msg.sender].field_0:
        revert with 0, 'E26'
    if bool(contractStatus) != 1:
        revert with 0, 'E1'
    if stor60 == 2:
        revert with 0, 'E6'
    stor60 = 2
    if bool(sub_845c1c9f) != 1:
        revert with 0, 'E3'
    if stor4 == -1:
        revert with 0, 17
    stor4++
    idx = 1
    while idx <= stor7:
        mem[0] = idx
        mem[32] = sha3(msg.sender, 57) + 1
        if not sub_2df6929e[msg.sender][1][idx].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 57) + 1
        if 1 > !sub_2df6929e[address(msg.sender)][1][idx].field_768:
            revert with 0, 17
        s = stor3[sha3(mem[0 len 64])] + 1
        while s <= sub_85e99289:
            if sub_2df6929e[address(msg.sender)][1][s].field_1280:
                if sub_2df6929e[address(msg.sender)][1][s].field_1024 <= 0:
                    mem[0] = s
                    if sub_2df6929e[address(msg.sender)][1][s].field_256 != 2:
                        mem[32] = sha3(s, sha3(address(msg.sender), 57) + 1) + 6
                        if sub_2df6929e[address(msg.sender)][1][s][6][s].field_0 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(msg.sender)][1][s][6][s].field_0:
                            revert with 0, 17
                        if 0 > !(sub_2df6929e[address(msg.sender)][1][s][6][s].field_0 * sub_cbc463e2[s][s].field_512):
                            revert with 0, 17
                    else:
                        mem[32] = sha3(s, 59)
                        if sub_2df6929e[address(msg.sender)][1][s].field_1280 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(msg.sender)][1][s].field_1280:
                            revert with 0, 17
                        if 0 > !(sub_2df6929e[address(msg.sender)][1][s].field_1280 * sub_cbc463e2[s][s].field_512):
                            revert with 0, 17
                else:
                    if sub_2df6929e[address(msg.sender)][1][s].field_1024 >= s:
                        mem[0] = s
                        if sub_2df6929e[address(msg.sender)][1][s].field_256 != 2:
                            mem[32] = sha3(s, sha3(address(msg.sender), 57) + 1) + 6
                            if sub_2df6929e[address(msg.sender)][1][s][6][s].field_0 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(msg.sender)][1][s][6][s].field_0:
                                revert with 0, 17
                            if 0 > !(sub_2df6929e[address(msg.sender)][1][s][6][s].field_0 * sub_cbc463e2[s][s].field_512):
                                revert with 0, 17
                        else:
                            mem[32] = sha3(s, 59)
                            if sub_2df6929e[address(msg.sender)][1][s].field_1280 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(msg.sender)][1][s].field_1280:
                                revert with 0, 17
                            if 0 > !(sub_2df6929e[address(msg.sender)][1][s].field_1280 * sub_cbc463e2[s][s].field_512):
                                revert with 0, 17
            else:
                mem[0] = s
                mem[32] = sha3(s, sha3(address(msg.sender), 57) + 1) + 6
                if sub_2df6929e[address(msg.sender)][1][s][6][s].field_0:
                    if sub_2df6929e[address(msg.sender)][1][s].field_1024 <= 0:
                        mem[0] = s
                        if sub_2df6929e[address(msg.sender)][1][s].field_256 != 2:
                            mem[32] = sha3(s, sha3(address(msg.sender), 57) + 1) + 6
                            if sub_2df6929e[address(msg.sender)][1][s][6][s].field_0 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(msg.sender)][1][s][6][s].field_0:
                                revert with 0, 17
                            if 0 > !(sub_2df6929e[address(msg.sender)][1][s][6][s].field_0 * sub_cbc463e2[s][s].field_512):
                                revert with 0, 17
                        else:
                            mem[32] = sha3(s, 59)
                            if sub_2df6929e[address(msg.sender)][1][s].field_1280 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(msg.sender)][1][s].field_1280:
                                revert with 0, 17
                            if 0 > !(sub_2df6929e[address(msg.sender)][1][s].field_1280 * sub_cbc463e2[s][s].field_512):
                                revert with 0, 17
                    else:
                        if sub_2df6929e[address(msg.sender)][1][s].field_1024 >= s:
                            mem[0] = s
                            if sub_2df6929e[address(msg.sender)][1][s].field_256 != 2:
                                mem[32] = sha3(s, sha3(address(msg.sender), 57) + 1) + 6
                                if sub_2df6929e[address(msg.sender)][1][s][6][s].field_0 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(msg.sender)][1][s][6][s].field_0:
                                    revert with 0, 17
                                if 0 > !(sub_2df6929e[address(msg.sender)][1][s][6][s].field_0 * sub_cbc463e2[s][s].field_512):
                                    revert with 0, 17
                            else:
                                mem[32] = sha3(s, 59)
                                if sub_2df6929e[address(msg.sender)][1][s].field_1280 and sub_cbc463e2[s][s].field_512 > -1 / sub_2df6929e[address(msg.sender)][1][s].field_1280:
                                    revert with 0, 17
                                if 0 > !(sub_2df6929e[address(msg.sender)][1][s].field_1280 * sub_cbc463e2[s][s].field_512):
                                    revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            continue 
        sub_2df6929e[address(msg.sender)][1][s].field_768 = sub_85e99289
        mem[mem[64]] = sub_85e99289
        mem[mem[64] + 32] = s
        mem[mem[64] + 64] = 0
        mem[mem[64] + 96] = stor4
        emit 0x5f559830: sub_85e99289, s, 0, stor4, msg.sender
        if s == -1:
            revert with 0, 17
        s = s + 1
        continue 
    revert with 0, 'E40'
}

function sub_a62df5e7(?) payable {
    if stor32 != msg.sender:
        revert with 0, 'E5'
    if bool(contractStatus) != 1:
        revert with 0, 'E1'
    if stor60 == 2:
        revert with 0, 'E6'
    stor60 = 2
    if stor14 > !sub_e635c84c:
        revert with 0, 17
    if block.timestamp <= stor14 + sub_e635c84c:
        revert with 0, 'E41'
    if msg.value <= 0:
        revert with 0, 'E42'
    if 1 > !sub_85e99289:
        revert with 0, 17
    if sub_ddafc21c <= sub_85e99289 + 1:
        revert with 0, 'E52'
    if stor4 == -1:
        revert with 0, 17
    stor4++
    if sub_85e99289 == -1:
        revert with 0, 17
    sub_85e99289++
    if 1 > !stor7:
        revert with 0, 17
    if stor7 + 1 > test266151307():
        revert with 0, 65
    mem[96] = stor7 + 1
    mem[64] = (32 * stor7 + 1) + 128
    if not stor7 + 1:
        idx = 1
        s = 0
        while idx <= stor7:
            if not sub_4f956a6c[idx][stor8]:
                if bonusPercentage[idx].field_0 != 2:
                    mem[0] = idx
                    mem[32] = 55
                    if msg.value / 100 and bonusPercentage[idx].field_256 > -1 / msg.value / 100:
                        revert with 0, 17
                    if s > !(msg.value / 100 * bonusPercentage[idx].field_256):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (msg.value / 100 * bonusPercentage[idx].field_256)
                    continue 
                if not stor46[idx]:
                    mem[0] = idx
                    mem[32] = 55
                    if msg.value / 100 and bonusPercentage[idx].field_256 > -1 / msg.value / 100:
                        revert with 0, 17
                    if s > !(msg.value / 100 * bonusPercentage[idx].field_256):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (msg.value / 100 * bonusPercentage[idx].field_256)
                    continue 
            mem[0] = idx
            mem[32] = 55
            if msg.value / 100 and bonusPercentage[idx].field_256 > -1 / msg.value / 100:
                revert with 0, 17
            if idx >= stor7 + 1:
                revert with 0, 50
            mem[(32 * idx) + 128] = msg.value / 100 * bonusPercentage[idx].field_256
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s:
            revert with 0, 18
        idx = 1
        while idx <= stor7:
            if idx >= mem[96]:
                revert with 0, 50
            if mem[(32 * idx) + 128] != 0:
                if idx >= mem[96]:
                    revert with 0, 50
                _180 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] > -1:
                    revert with 0, 17
                if 0 > !mem[(32 * idx) + 128]:
                    revert with 0, 17
                if idx != 0:
                    if bonusPercentage[idx].field_0 != 2:
                        mem[0] = sub_85e99289
                        mem[32] = sha3(idx, 58)
                        if not sub_4f956a6c[idx][stor8]:
                            revert with 0, 18
                        _208 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_208] = block.timestamp
                        mem[_208 + 32] = _180
                        mem[_208 + 64] = _180 / sub_4f956a6c[idx][stor8]
                        mem[0] = sub_85e99289
                        mem[32] = sha3(idx, 59)
                        sub_cbc463e2[idx][stor8].field_0 = block.timestamp
                        sub_cbc463e2[idx][stor8].field_256 = _180
                        sub_cbc463e2[idx][stor8].field_512 = _180 / sub_4f956a6c[idx][stor8]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = _180
                        mem[mem[64] + 64] = _180 / sub_4f956a6c[idx][stor8]
                        mem[mem[64] + 96] = stor4
                        emit 0xc96cdc7b: idx, _180, _180 / sub_4f956a6c[idx][stor8], stor4, sub_85e99289
                    else:
                        if stor46[idx] > !sub_4f956a6c[idx][stor8]:
                            revert with 0, 17
                        stor46[idx] += sub_4f956a6c[idx][stor8]
                        mem[0] = idx
                        mem[32] = 46
                        if not stor46[idx]:
                            revert with 0, 18
                        _242 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_242] = block.timestamp
                        mem[_242 + 32] = _180
                        mem[_242 + 64] = _180 / stor46[idx]
                        mem[0] = sub_85e99289
                        mem[32] = sha3(idx, 59)
                        sub_cbc463e2[idx][stor8].field_0 = block.timestamp
                        sub_cbc463e2[idx][stor8].field_256 = _180
                        sub_cbc463e2[idx][stor8].field_512 = _180 / stor46[idx]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = _180
                        mem[mem[64] + 64] = _180 / stor46[idx]
                        mem[mem[64] + 96] = stor4
                        emit 0xc96cdc7b: idx, _180, _180 / stor46[idx], stor4, sub_85e99289
                else:
                    if msg.value <= mem[(32 * idx) + 128]:
                        if bonusPercentage[idx].field_0 != 2:
                            mem[0] = sub_85e99289
                            mem[32] = sha3(idx, 58)
                            if not sub_4f956a6c[idx][stor8]:
                                revert with 0, 18
                            _226 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_226] = block.timestamp
                            mem[_226 + 32] = _180
                            mem[_226 + 64] = _180 / sub_4f956a6c[idx][stor8]
                            mem[0] = sub_85e99289
                            mem[32] = sha3(idx, 59)
                            sub_cbc463e2[idx][stor8].field_0 = block.timestamp
                            sub_cbc463e2[idx][stor8].field_256 = _180
                            sub_cbc463e2[idx][stor8].field_512 = _180 / sub_4f956a6c[idx][stor8]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = _180
                            mem[mem[64] + 64] = _180 / sub_4f956a6c[idx][stor8]
                            mem[mem[64] + 96] = stor4
                            emit 0xc96cdc7b: idx, _180, _180 / sub_4f956a6c[idx][stor8], stor4, sub_85e99289
                        else:
                            if stor46[idx] > !sub_4f956a6c[idx][stor8]:
                                revert with 0, 17
                            stor46[idx] += sub_4f956a6c[idx][stor8]
                            mem[0] = idx
                            mem[32] = 46
                            if not stor46[idx]:
                                revert with 0, 18
                            _258 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_258] = block.timestamp
                            mem[_258 + 32] = _180
                            mem[_258 + 64] = _180 / stor46[idx]
                            mem[0] = sub_85e99289
                            mem[32] = sha3(idx, 59)
                            sub_cbc463e2[idx][stor8].field_0 = block.timestamp
                            sub_cbc463e2[idx][stor8].field_256 = _180
                            sub_cbc463e2[idx][stor8].field_512 = _180 / stor46[idx]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = _180
                            mem[mem[64] + 64] = _180 / stor46[idx]
                            mem[mem[64] + 96] = stor4
                            emit 0xc96cdc7b: idx, _180, _180 / stor46[idx], stor4, sub_85e99289
                    else:
                        if msg.value < mem[(32 * idx) + 128]:
                            revert with 0, 17
                        if mem[(32 * idx) + 128] > !(msg.value - mem[(32 * idx) + 128]):
                            revert with 0, 17
                        if bonusPercentage[idx].field_0 != 2:
                            mem[0] = sub_85e99289
                            mem[32] = sha3(idx, 58)
                            if not sub_4f956a6c[idx][stor8]:
                                revert with 0, 18
                            _288 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_288] = block.timestamp
                            mem[_288 + 32] = msg.value
                            mem[_288 + 64] = msg.value / sub_4f956a6c[idx][stor8]
                            mem[0] = sub_85e99289
                            mem[32] = sha3(idx, 59)
                            sub_cbc463e2[idx][stor8].field_0 = block.timestamp
                            sub_cbc463e2[idx][stor8].field_256 = msg.value
                            sub_cbc463e2[idx][stor8].field_512 = msg.value / sub_4f956a6c[idx][stor8]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.value
                            mem[mem[64] + 64] = msg.value / sub_4f956a6c[idx][stor8]
                            mem[mem[64] + 96] = stor4
                            emit 0xc96cdc7b: idx, msg.value, msg.value / sub_4f956a6c[idx][stor8], stor4, sub_85e99289
                        else:
                            if stor46[idx] > !sub_4f956a6c[idx][stor8]:
                                revert with 0, 17
                            stor46[idx] += sub_4f956a6c[idx][stor8]
                            mem[0] = idx
                            mem[32] = 46
                            if not stor46[idx]:
                                revert with 0, 18
                            _304 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_304] = block.timestamp
                            mem[_304 + 32] = msg.value
                            mem[_304 + 64] = msg.value / stor46[idx]
                            mem[0] = sub_85e99289
                            mem[32] = sha3(idx, 59)
                            sub_cbc463e2[idx][stor8].field_0 = block.timestamp
                            sub_cbc463e2[idx][stor8].field_256 = msg.value
                            sub_cbc463e2[idx][stor8].field_512 = msg.value / stor46[idx]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.value
                            mem[mem[64] + 64] = msg.value / stor46[idx]
                            mem[mem[64] + 96] = stor4
                            emit 0xc96cdc7b: idx, msg.value, msg.value / stor46[idx], stor4, sub_85e99289
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor7 + 1] = call.data[calldata.size len 32 * stor7 + 1]
        idx = 1
        s = 0
        while idx <= stor7:
            if not sub_4f956a6c[idx][stor8]:
                if bonusPercentage[idx].field_0 != 2:
                    mem[0] = idx
                    mem[32] = 55
                    if msg.value / 100 and bonusPercentage[idx].field_256 > -1 / msg.value / 100:
                        revert with 0, 17
                    if s > !(msg.value / 100 * bonusPercentage[idx].field_256):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (msg.value / 100 * bonusPercentage[idx].field_256)
                    continue 
                if not stor46[idx]:
                    mem[0] = idx
                    mem[32] = 55
                    if msg.value / 100 and bonusPercentage[idx].field_256 > -1 / msg.value / 100:
                        revert with 0, 17
                    if s > !(msg.value / 100 * bonusPercentage[idx].field_256):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (msg.value / 100 * bonusPercentage[idx].field_256)
                    continue 
            mem[0] = idx
            mem[32] = 55
            if msg.value / 100 and bonusPercentage[idx].field_256 > -1 / msg.value / 100:
                revert with 0, 17
            if idx >= stor7 + 1:
                revert with 0, 50
            mem[(32 * idx) + 128] = msg.value / 100 * bonusPercentage[idx].field_256
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s:
            revert with 0, 18
        idx = 1
        while idx <= stor7:
            if idx >= mem[96]:
                revert with 0, 50
            if mem[(32 * idx) + 128] != 0:
                if idx >= mem[96]:
                    revert with 0, 50
                _181 = mem[(32 * idx) + 128]
                if mem[(32 * idx) + 128] > -1:
                    revert with 0, 17
                if 0 > !mem[(32 * idx) + 128]:
                    revert with 0, 17
                if idx != 0:
                    if bonusPercentage[idx].field_0 != 2:
                        mem[0] = sub_85e99289
                        mem[32] = sha3(idx, 58)
                        if not sub_4f956a6c[idx][stor8]:
                            revert with 0, 18
                        _217 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_217] = block.timestamp
                        mem[_217 + 32] = _181
                        mem[_217 + 64] = _181 / sub_4f956a6c[idx][stor8]
                        mem[0] = sub_85e99289
                        mem[32] = sha3(idx, 59)
                        sub_cbc463e2[idx][stor8].field_0 = block.timestamp
                        sub_cbc463e2[idx][stor8].field_256 = _181
                        sub_cbc463e2[idx][stor8].field_512 = _181 / sub_4f956a6c[idx][stor8]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = _181
                        mem[mem[64] + 64] = _181 / sub_4f956a6c[idx][stor8]
                        mem[mem[64] + 96] = stor4
                        emit 0xc96cdc7b: idx, _181, _181 / sub_4f956a6c[idx][stor8], stor4, sub_85e99289
                    else:
                        if stor46[idx] > !sub_4f956a6c[idx][stor8]:
                            revert with 0, 17
                        stor46[idx] += sub_4f956a6c[idx][stor8]
                        mem[0] = idx
                        mem[32] = 46
                        if not stor46[idx]:
                            revert with 0, 18
                        _250 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_250] = block.timestamp
                        mem[_250 + 32] = _181
                        mem[_250 + 64] = _181 / stor46[idx]
                        mem[0] = sub_85e99289
                        mem[32] = sha3(idx, 59)
                        sub_cbc463e2[idx][stor8].field_0 = block.timestamp
                        sub_cbc463e2[idx][stor8].field_256 = _181
                        sub_cbc463e2[idx][stor8].field_512 = _181 / stor46[idx]
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = _181
                        mem[mem[64] + 64] = _181 / stor46[idx]
                        mem[mem[64] + 96] = stor4
                        emit 0xc96cdc7b: idx, _181, _181 / stor46[idx], stor4, sub_85e99289
                else:
                    if msg.value <= mem[(32 * idx) + 128]:
                        if bonusPercentage[idx].field_0 != 2:
                            mem[0] = sub_85e99289
                            mem[32] = sha3(idx, 58)
                            if not sub_4f956a6c[idx][stor8]:
                                revert with 0, 18
                            _234 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_234] = block.timestamp
                            mem[_234 + 32] = _181
                            mem[_234 + 64] = _181 / sub_4f956a6c[idx][stor8]
                            mem[0] = sub_85e99289
                            mem[32] = sha3(idx, 59)
                            sub_cbc463e2[idx][stor8].field_0 = block.timestamp
                            sub_cbc463e2[idx][stor8].field_256 = _181
                            sub_cbc463e2[idx][stor8].field_512 = _181 / sub_4f956a6c[idx][stor8]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = _181
                            mem[mem[64] + 64] = _181 / sub_4f956a6c[idx][stor8]
                            mem[mem[64] + 96] = stor4
                            emit 0xc96cdc7b: idx, _181, _181 / sub_4f956a6c[idx][stor8], stor4, sub_85e99289
                        else:
                            if stor46[idx] > !sub_4f956a6c[idx][stor8]:
                                revert with 0, 17
                            stor46[idx] += sub_4f956a6c[idx][stor8]
                            mem[0] = idx
                            mem[32] = 46
                            if not stor46[idx]:
                                revert with 0, 18
                            _266 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_266] = block.timestamp
                            mem[_266 + 32] = _181
                            mem[_266 + 64] = _181 / stor46[idx]
                            mem[0] = sub_85e99289
                            mem[32] = sha3(idx, 59)
                            sub_cbc463e2[idx][stor8].field_0 = block.timestamp
                            sub_cbc463e2[idx][stor8].field_256 = _181
                            sub_cbc463e2[idx][stor8].field_512 = _181 / stor46[idx]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = _181
                            mem[mem[64] + 64] = _181 / stor46[idx]
                            mem[mem[64] + 96] = stor4
                            emit 0xc96cdc7b: idx, _181, _181 / stor46[idx], stor4, sub_85e99289
                    else:
                        if msg.value < mem[(32 * idx) + 128]:
                            revert with 0, 17
                        if mem[(32 * idx) + 128] > !(msg.value - mem[(32 * idx) + 128]):
                            revert with 0, 17
                        if bonusPercentage[idx].field_0 != 2:
                            mem[0] = sub_85e99289
                            mem[32] = sha3(idx, 58)
                            if not sub_4f956a6c[idx][stor8]:
                                revert with 0, 18
                            _296 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_296] = block.timestamp
                            mem[_296 + 32] = msg.value
                            mem[_296 + 64] = msg.value / sub_4f956a6c[idx][stor8]
                            mem[0] = sub_85e99289
                            mem[32] = sha3(idx, 59)
                            sub_cbc463e2[idx][stor8].field_0 = block.timestamp
                            sub_cbc463e2[idx][stor8].field_256 = msg.value
                            sub_cbc463e2[idx][stor8].field_512 = msg.value / sub_4f956a6c[idx][stor8]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.value
                            mem[mem[64] + 64] = msg.value / sub_4f956a6c[idx][stor8]
                            mem[mem[64] + 96] = stor4
                            emit 0xc96cdc7b: idx, msg.value, msg.value / sub_4f956a6c[idx][stor8], stor4, sub_85e99289
                        else:
                            if stor46[idx] > !sub_4f956a6c[idx][stor8]:
                                revert with 0, 17
                            stor46[idx] += sub_4f956a6c[idx][stor8]
                            mem[0] = idx
                            mem[32] = 46
                            if not stor46[idx]:
                                revert with 0, 18
                            _312 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_312] = block.timestamp
                            mem[_312 + 32] = msg.value
                            mem[_312 + 64] = msg.value / stor46[idx]
                            mem[0] = sub_85e99289
                            mem[32] = sha3(idx, 59)
                            sub_cbc463e2[idx][stor8].field_0 = block.timestamp
                            sub_cbc463e2[idx][stor8].field_256 = msg.value
                            sub_cbc463e2[idx][stor8].field_512 = msg.value / stor46[idx]
                            mem[mem[64]] = idx
                            mem[mem[64] + 32] = msg.value
                            mem[mem[64] + 64] = msg.value / stor46[idx]
                            mem[mem[64] + 96] = stor4
                            emit 0xc96cdc7b: idx, msg.value, msg.value / stor46[idx], stor4, sub_85e99289
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    stor14 = block.timestamp
    if msg.value != 0:
        revert with 0, 'E7'
    stor60 = 1
}



}
