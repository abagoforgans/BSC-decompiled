contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of struct pendingRewards;
array of struct stor54;
uint256 totalFeesCollected;
address controllerAddress;
mapping of struct sub_7687c0e0;
array of address stor58;
mapping of uint256 sub_05fb93ea;
mapping of address sub_81c93976;
array of struct sub_bb22e718;
array of address stor33502907836418749244169045844382937189522934634747984393157770024170991419832;
mapping of uint256 stor59768178255667966330125729603570434856755451748680801415770323481870701362933;
array of address stor73546096136405737578683964780285827720112598822927516584487316002982633787038;
array of address stor107152959319940232439345901675596047553297829346973061663397423193890342378947;
uint256 storFE75;

function sub_05fb93ea(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_05fb93ea[arg1]
}

function sub_0bfceeec(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor2[address(arg1)])
}

function sub_392243e1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_7687c0e0[address(arg1)].field_256)
}

function sub_5bf920c5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(sub_81c93976[address(arg1)])
}

function totalFeesCollected() {
    return totalFeesCollected
}

function sub_7687c0e0(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7687c0e0[arg1].field_0, sub_7687c0e0[arg1].field_256, sub_7687c0e0[arg1].field_512
}

function getPendingRewards(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return pendingRewards[address(arg1)][1][address(arg2)].field_0
}

function sub_81c93976(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_81c93976[address(arg1)]
}

function sub_8995547e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_81c93976[arg1]
}

function sub_aa0e0067(?) {
    return stor58.length
}

function sub_bb22e718(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_bb22e718.length
    return sub_bb22e718[arg1].field_0
}

function isWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    return bool(stor1[address(arg1)])
}

function sub_c717dc46(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if arg1 >= stor58.length:
        revert with 0, 50
    return sub_7687c0e0[stor58[arg1]][3][address(arg2)].field_0
}

function controller() {
    return controllerAddress
}

function sub_27326e91(?) {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor2[address(msg.sender)] = 0
}

function renounceWhitelistAdmin() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account does not have role'
    stor1[address(msg.sender)] = 0
    emit WhitelistAdminRemoved(msg.sender);
}

function sub_b4cbac44(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'NFTBridgeMigratorRole: caller does not have the NFTBridgeMigrator'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor2[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor2[address(arg1)] = 1
}

function addWhitelistAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor1[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor1[address(arg1)] = 1
    emit WhitelistAdminAdded(arg1);
}

function setController(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if pendingRewards[0][1][arg1].field_0 > !pendingRewards[0][1][stor56].field_0:
        revert with 0, 17
    pendingRewards[0][1][address(arg1)].field_0 = pendingRewards[0][1][arg1].field_0 + pendingRewards[0][1][stor56].field_0
    pendingRewards[0][1][stor56].field_0 = 0
    controllerAddress = arg1
}

function getRewardTokens() {
    if stor54.length:
        mem[128] = address(stor54.field_0)
        if (32 * stor54.length) + 32 > 64:
            mem[160] = address(stor54.field_256)
            idx = 160
            s = 1
            while (32 * stor54.length) + 96 > idx:
                mem[idx + 32] = stor54[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor54.length) + 128] = 32
    mem[(32 * stor54.length) + 160] = stor54.length
    idx = 0
    s = 128
    t = (32 * stor54.length) + 192
    while idx < stor54.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor54.length) + 128
       len (96 * stor54.length) + 64
}

function sub_0f2f5d3f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if sub_81c93976[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AdvancedBuyBack: This token contract has assigned swap router!'
    sub_81c93976[address(arg1)] = address(arg2)
    sub_bb22e718.length++
    storECE6[stor61.length] = address(arg1)
}

function sub_15abbfc7(?) {
    mem[64] = (32 * sub_bb22e718.length) + 128
    mem[96] = sub_bb22e718.length
    if not sub_bb22e718.length:
        mem[(32 * sub_bb22e718.length) + 128] = 32
        mem[(32 * sub_bb22e718.length) + 160] = sub_bb22e718.length
        idx = 0
        s = 128
        t = (32 * sub_bb22e718.length) + 192
        while idx < sub_bb22e718.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * sub_bb22e718.length) + 128
           len (96 * sub_bb22e718.length) + 64
    mem[128] = address(sub_bb22e718.field_0)
    idx = 128
    s = 0
    while (32 * sub_bb22e718.length) + 96 > idx:
        mem[idx + 32] = sub_bb22e718[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_bb22e718.length) + 128] = 32
    mem[(32 * sub_bb22e718.length) + 160] = sub_bb22e718.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < sub_bb22e718.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * sub_bb22e718.length) + -mem[64] + 192
}

function sub_460aeabc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if not sub_81c93976[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AdvancedBuyBack: This token contract has no assigned swap router!'
    idx = 0
    while idx < sub_bb22e718.length:
        mem[0] = 61
        if sub_bb22e718[idx].field_0 != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if sub_bb22e718.length < 1:
            revert with 0, 17
        if sub_bb22e718.length - 1 >= sub_bb22e718.length:
            revert with 0, 50
        if idx >= sub_bb22e718.length:
            revert with 0, 50
        sub_bb22e718[idx].field_0 = sub_bb22e718[sub_bb22e718.length].field_0
        if not sub_bb22e718.length:
            revert with 0, 49
        sub_bb22e718[sub_bb22e718.length].field_0 = 0
        sub_bb22e718.length--
        sub_81c93976[address(arg1)] = 0
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No such token found in available list!'
}

function sub_fa8a408c(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if arg1 >= stor58.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This position is not available as a reward receiver!'
    if sub_7687c0e0[stor58[arg1]][3][address(arg2)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This token is not available as a reward receiver buyback!'
    if arg1 >= stor58.length:
        revert with 0, 50
    if sub_05fb93ea[address(arg2)] < sub_7687c0e0[stor58[arg1]][3][address(arg2)].field_0:
        revert with 0, 17
    sub_05fb93ea[address(arg2)] -= sub_7687c0e0[stor58[arg1]][3][address(arg2)].field_0
    if storFE75 > !sub_7687c0e0[stor58[arg1]][3][address(arg2)].field_0:
        revert with 0, 17
    storFE75 += sub_7687c0e0[stor58[arg1]][3][address(arg2)].field_0
    if arg1 >= stor58.length:
        revert with 0, 50
    if sub_7687c0e0[stor58[arg1]].field_512 > !sub_7687c0e0[stor58[arg1]][3][address(arg2)].field_0:
        revert with 0, 17
    if arg1 >= stor58.length:
        revert with 0, 50
    sub_7687c0e0[stor58[arg1]].field_512 += sub_7687c0e0[stor58[arg1]][3][address(arg2)].field_0
    sub_7687c0e0[stor58[arg1]][3][address(arg2)].field_0 = 0
}

function sub_564f4c33(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if arg1 >= stor58.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This position is not available as a reward receiver!'
    idx = 0
    while idx < sub_bb22e718.length:
        mem[0] = sub_bb22e718[idx].field_0
        mem[32] = sha3(stor58[arg1], 57) + 3
        if sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0 > 0:
            if idx >= sub_bb22e718.length:
                revert with 0, 50
            if sub_05fb93ea[stor61[idx].field_0] < sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0:
                revert with 0, 17
            if idx >= sub_bb22e718.length:
                revert with 0, 50
            sub_05fb93ea[stor61[idx].field_0] -= sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0
            if storFE75 > !sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0:
                revert with 0, 17
            storFE75 += sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0
            if idx >= sub_bb22e718.length:
                revert with 0, 50
            mem[0] = sub_bb22e718[idx].field_0
            mem[32] = sha3(stor58[arg1], 57) + 3
            sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0 = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    sub_7687c0e0[stor58[arg1]].field_256 = 0
    if stor58.length < 1:
        revert with 0, 17
    if stor58.length - 1 >= stor58.length:
        revert with 0, 50
    if arg1 >= stor58.length:
        revert with 0, 50
    stor58[arg1] = stor58[stor58.length]
    if not stor58.length:
        revert with 0, 49
    stor58[stor58.length] = 0
    stor58.length--
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint16(stor0.field_0) = 257
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
        if stor1[address(msg.sender)]:
            revert with 0, 'Roles: account already has role'
        stor1[address(msg.sender)] = 1
        emit WhitelistAdminAdded(msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint16(stor0.field_0) = 257
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if stor2[address(msg.sender)]:
        revert with 0, 'Roles: account already has role'
    stor2[address(msg.sender)] = 1
    if uint8(stor0.field_8):
        controllerAddress = arg1
        storFE75 = 100
    else:
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        controllerAddress = arg1
        storFE75 = 100
        uint8(stor0.field_8) = 0
}

function sub_26c711c4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if sub_7687c0e0[address(arg1)].field_256:
        revert with 0, 'This receiver is already added!'
    idx = 0
    s = 0
    while idx < stor58.length:
        mem[0] = stor58[idx]
        mem[32] = 57
        if s > !sub_7687c0e0[stor58[idx]].field_256:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_7687c0e0[stor58[idx]].field_256
        continue 
    if s * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length > !arg2:
        revert with 0, 17
    if (s * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length * stor58.length) + arg2 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total shares sent out cannot be more than 100%'
    sub_7687c0e0[address(arg1)].field_0 = address(arg1)
    sub_7687c0e0[address(arg1)].field_256 = arg2
    sub_7687c0e0[address(arg1)].field_512 = arg2
    stor58.length++
    storA299[stor58.length] = address(arg1)
}

function sub_8d802cac(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not pendingRewards[address(arg1)][1][msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No pending rewards for you in selected token!'
    if not address(arg1):
        if eth.balance(this.address) < pendingRewards[address(arg1)][1][address(msg.sender)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Contract does not have the required amount of ETH for transfer!'
        if not ext_code.size(msg.sender):
            call msg.sender with:
               value pendingRewards[address(arg1)][1][address(msg.sender)].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(msg.sender)
            call msg.sender.receiveETH() with:
               value pendingRewards[address(arg1)][1][address(msg.sender)].field_0 wei
                 gas gas_remaining wei
            if not ext_call.success:
                call msg.sender with:
                   value pendingRewards[address(arg1)][1][address(msg.sender)].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < pendingRewards[address(arg1)][1][address(msg.sender)].field_0:
            revert with 0, 'Contract does not have the required amount of tokens for trasnfer!'
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = pendingRewards[address(arg1)][1][address(msg.sender)].field_0
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, pendingRewards[address(arg1)][1][address(msg.sender)].field_0, 0
        mem[ceil32(return_data.size) + 328] = 0
        call address(arg1) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, pendingRewards[address(arg1)][1][address(msg.sender)].field_0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, pendingRewards[address(arg1)][1][address(msg.sender)].field_0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    pendingRewards[address(arg1)][1][address(msg.sender)].field_0 = 0
}

function sub_8b90a904(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor2[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'NFTBridgeMigratorRole: caller does not have the NFTBridgeMigrator'
    if not pendingRewards[address(arg1)][1][address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'No pending rewards for receiver in selected token!'
    if not address(arg1):
        if eth.balance(this.address) < pendingRewards[address(arg1)][1][address(arg2)].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Contract does not have the required amount of ETH for transfer!'
        if not ext_code.size(address(arg2)):
            call address(arg2) with:
               value pendingRewards[address(arg1)][1][address(arg2)].field_0 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(arg2))
            call address(arg2).receiveETH() with:
               value pendingRewards[address(arg1)][1][address(arg2)].field_0 wei
                 gas gas_remaining wei
            if not ext_call.success:
                call address(arg2) with:
                   value pendingRewards[address(arg1)][1][address(arg2)].field_0 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[100] = this.address
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < pendingRewards[address(arg1)][1][address(arg2)].field_0:
            revert with 0, 'Contract does not have the required amount of tokens for trasnfer!'
        mem[ceil32(return_data.size) + 132] = address(arg2)
        mem[ceil32(return_data.size) + 164] = pendingRewards[address(arg1)][1][address(arg2)].field_0
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(arg1)):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, pendingRewards[address(arg1)][1][address(arg2)].field_0, 0
        mem[ceil32(return_data.size) + 328] = 0
        call address(arg1) with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, pendingRewards[address(arg1)][1][address(arg2)].field_0, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, pendingRewards[address(arg1)][1][address(arg2)].field_0, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    pendingRewards[address(arg1)][1][address(arg2)].field_0 = 0
}

function sub_c0f7e5c5(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Roles: account is the zero address'
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'WhitelistAdminRole: caller does not have the WhitelistAdmin'
    if not sub_81c93976[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AdvancedBuyBack: This token contract has no assigned swap router!'
    if arg1 >= stor58.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This position is not available as a reward receiver!'
    if sub_7687c0e0[stor58[arg1]][3][address(arg2)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This token is already available as a reward receiver buyback!'
    if arg1 >= stor58.length:
        revert with 0, 50
    idx = 0
    s = 0
    while idx < sub_bb22e718.length:
        if arg1 >= stor58.length:
            revert with 0, 50
        if idx >= sub_bb22e718.length:
            revert with 0, 50
        mem[0] = sub_bb22e718[idx].field_0
        mem[32] = sha3(stor58[arg1], 57) + 3
        if s > !sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0
        continue 
    if s * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length > !arg3:
        revert with 0, 17
    if (s * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length * sub_bb22e718.length) + arg3 > sub_7687c0e0[stor58[arg1]].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Total shares sent out cannot be more than 100%'
    if arg1 >= stor58.length:
        revert with 0, 50
    sub_7687c0e0[stor58[arg1]][3][address(arg2)].field_0 = arg3
    if sub_7687c0e0[stor58[arg1]].field_512 < arg3:
        revert with 0, 17
    if arg1 >= stor58.length:
        revert with 0, 50
    sub_7687c0e0[stor58[arg1]].field_512 -= arg3
    if sub_05fb93ea[address(arg2)] > !arg3:
        revert with 0, 17
    sub_05fb93ea[address(arg2)] += arg3
    if storFE75 < arg3:
        revert with 0, 17
    storFE75 -= arg3
}

function withdrawAllRewards() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor54.length:
        mem[0] = stor54[idx].field_0
        mem[32] = 53
        if pendingRewards[stor54[idx].field_0].field_0:
            if idx >= stor54.length:
                revert with 0, 50
            mem[0] = msg.sender
            mem[32] = sha3(stor54[idx].field_0, 53) + 1
            if pendingRewards[stor54[idx].field_0][1][msg.sender].field_0 > 0:
                if idx >= stor54.length:
                    revert with 0, 50
                mem[0] = msg.sender
                mem[32] = sha3(stor54[idx].field_0, 53) + 1
                if not stor54[idx].field_0:
                    if eth.balance(this.address) < pendingRewards[stor54[idx].field_0][1][address(msg.sender)].field_0:
                        revert with 0, 'Contract does not have the required amount of ETH for transfer!'
                    if not ext_code.size(msg.sender):
                        call msg.sender with:
                           value pendingRewards[stor54[idx].field_0][1][address(msg.sender)].field_0 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[mem[64]] = 0x3ecfd51e00000000000000000000000000000000000000000000000000000000
                        require ext_code.size(msg.sender)
                        call msg.sender.receiveETH() with:
                           value pendingRewards[stor54[idx].field_0][1][address(msg.sender)].field_0 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            call msg.sender with:
                               value pendingRewards[stor54[idx].field_0][1][address(msg.sender)].field_0 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor54[idx].field_0)
                    staticcall stor54[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _144 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_144] < pendingRewards[stor54[idx].field_0][1][address(msg.sender)].field_0:
                        revert with 0, 'Contract does not have the required amount of tokens for trasnfer!'
                    _153 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = pendingRewards[stor54[idx].field_0][1][address(msg.sender)].field_0
                    _154 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_154 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_154 + 36 len 28]
                    mem[64] = _153 + 164
                    mem[_153 + 100] = 32
                    mem[_153 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(stor54[idx].field_0):
                        revert with 0, 'Address: call to non-contract'
                    _169 = mem[_154]
                    s = 0
                    while s < _169:
                        mem[s + _153 + 164] = mem[s + _154 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_169) > _169:
                        mem[_153 + _169 + 164] = 0
                    call stor54[idx].field_0.mem[_153 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_153 + 168 len _169 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_153 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_153 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _153 + 232] = mem[idx + _153 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_153 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _153 + ceil32(return_data.size) + 165
                        mem[_153 + 164] = return_data.size
                        mem[_153 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_153 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_153 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _153 + ceil32(return_data.size) + 233] = mem[idx + _153 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_153 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_153 + 196] == bool(mem[_153 + 196])
                            if not mem[_153 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[0] = msg.sender
                mem[32] = sha3(stor54[idx].field_0, 53) + 1
                pendingRewards[stor54[idx].field_0][1][address(msg.sender)].field_0 = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_5a6cada4(?) payable {
    mem[64] = 96
    idx = 0
    while idx < sub_bb22e718.length:
        mem[0] = sub_bb22e718[idx].field_0
        mem[32] = 59
        if sub_05fb93ea[stor61[idx].field_0]:
            mem[0] = sub_bb22e718[idx].field_0
            mem[32] = 59
            if msg.value and sub_05fb93ea[stor61[idx].field_0] > -1 / msg.value:
                revert with 0, 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_bb22e718[idx].field_0)
            staticcall sub_bb22e718[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _85 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _86 = mem[_85]
            mem[0] = sub_bb22e718[idx].field_0
            mem[32] = 60
            if not sub_81c93976[stor61[idx].field_0]:
                revert with 0, 'BuyBack: router cannot be empty address!'
            _88 = mem[64]
            require ext_code.size(sub_81c93976[stor61[idx].field_0])
            staticcall sub_81c93976[stor61[idx].field_0].WETH() with:
                    gas gas_remaining wei
            mem[mem[64] + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if 0 >= mem[_88]:
                revert with 0, 50
            mem[_88 + 32] = ext_call.return_data[12 len 20]
            if 1 >= mem[_88]:
                revert with 0, 50
            mem[_88 + 64] = sub_bb22e718[idx].field_0
            mem[_88 + ceil32(return_data.size) + 96] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
            mem[_88 + ceil32(return_data.size) + 100] = 0
            mem[_88 + ceil32(return_data.size) + 132] = 128
            mem[_88 + ceil32(return_data.size) + 228] = mem[_88]
            s = 0
            t = _88 + 32
            u = _88 + ceil32(return_data.size) + 260
            while s < mem[_88]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_88 + ceil32(return_data.size) + 164] = this.address
            mem[_88 + ceil32(return_data.size) + 196] = block.timestamp
            require ext_code.size(sub_81c93976[stor61[idx].field_0])
            call sub_81c93976[stor61[idx].field_0].swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value msg.value * sub_05fb93ea[stor61[idx].field_0] / 100 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp, mem[_88 + ceil32(return_data.size) + 228 len (32 * mem[_88]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_88 + ceil32(return_data.size) + 100] = this.address
            require ext_code.size(sub_bb22e718[idx].field_0)
            staticcall sub_bb22e718[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[_88 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _88 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            if ext_call.return_data[0] < _86:
                revert with 0, 17
            mem[0] = sub_bb22e718[idx].field_0
            mem[32] = 59
            if ext_call.return_data[0] - _86 and 10^12 > -1 / ext_call.return_data[0] - _86:
                revert with 0, 17
            if not sub_05fb93ea[stor61[idx].field_0]:
                revert with 0, 18
            s = 0
            while s < stor58.length:
                mem[0] = sub_bb22e718[idx].field_0
                mem[32] = sha3(stor58[s], 57) + 3
                if sub_7687c0e0[stor58[s]][3][stor61[idx].field_0].field_0:
                    if stor58.length < 1:
                        revert with 0, 17
                    if s != stor58.length - 1:
                        if s >= stor58.length:
                            revert with 0, 50
                        if not pendingRewards[stor61[idx].field_0].field_8:
                            stor54.length++
                            stor4A11[stor54.length] = sub_bb22e718[idx].field_0
                            pendingRewards[stor61[idx].field_0].field_8 = 1
                        pendingRewards[stor61[idx].field_0].field_0 = 1
                        if pendingRewards[stor61[idx].field_0][1][stor58[s]].field_0 > !(ext_call.return_data[0] - _86):
                            revert with 0, 17
                        mem[0] = stor58[s]
                        mem[32] = sha3(sub_bb22e718[idx].field_0, 53) + 1
                        pendingRewards[stor61[idx].field_0][1][stor58[s]].field_0 = pendingRewards[stor61[idx].field_0][1][stor58[s]].field_0 + ext_call.return_data[0] - _86
                    else:
                        if sub_7687c0e0[stor58[s]][3][stor61[idx].field_0].field_0 and (10^12 * ext_call.return_data[0]) - (10^12 * _86) / sub_05fb93ea[stor61[idx].field_0] > -1 / sub_7687c0e0[stor58[s]][3][stor61[idx].field_0].field_0:
                            revert with 0, 17
                        if ext_call.return_data[0] - _86 < sub_7687c0e0[stor58[s]][3][stor61[idx].field_0].field_0 * (10^12 * ext_call.return_data[0]) - (10^12 * _86) / sub_05fb93ea[stor61[idx].field_0] / 10^12 / 100:
                            revert with 0, 17
                        if s >= stor58.length:
                            revert with 0, 50
                        if not pendingRewards[stor61[idx].field_0].field_8:
                            stor54.length++
                            stor4A11[stor54.length] = sub_bb22e718[idx].field_0
                            pendingRewards[stor61[idx].field_0].field_8 = 1
                        pendingRewards[stor61[idx].field_0].field_0 = 1
                        if pendingRewards[stor61[idx].field_0][1][stor58[s]].field_0 > !(sub_7687c0e0[stor58[s]][3][stor61[idx].field_0].field_0 * (10^12 * ext_call.return_data[0]) - (10^12 * _86) / sub_05fb93ea[stor61[idx].field_0] / 10^12 / 100):
                            revert with 0, 17
                        mem[0] = stor58[s]
                        mem[32] = sha3(sub_bb22e718[idx].field_0, 53) + 1
                        pendingRewards[stor61[idx].field_0][1][stor58[s]].field_0 += sub_7687c0e0[stor58[s]][3][stor61[idx].field_0].field_0 * (10^12 * ext_call.return_data[0]) - (10^12 * _86) / sub_05fb93ea[stor61[idx].field_0] / 10^12 / 100
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if msg.value < msg.value * sub_05fb93ea[stor61[idx].field_0] / 100:
                revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if msg.value and 10^12 > -1 / msg.value:
        revert with 0, 17
    if not storFE75:
        revert with 0, 18
    if 10^12 * msg.value / storFE75 and 100 > -1 / 10^12 * msg.value / storFE75:
        revert with 0, 17
    idx = 0
    while idx < stor58.length:
        mem[0] = stor58[idx]
        mem[32] = 57
        if sub_7687c0e0[stor58[idx]].field_512:
            if sub_7687c0e0[stor58[idx]].field_512 and 100 * 10^12 * msg.value / storFE75 > -1 / sub_7687c0e0[stor58[idx]].field_512:
                revert with 0, 17
            if msg.value < 100 * sub_7687c0e0[stor58[idx]].field_512 * 10^12 * msg.value / storFE75 / 10^12 / 100:
                revert with 0, 17
            if idx >= stor58.length:
                revert with 0, 50
            if not pendingRewards[0].field_8:
                stor54.length++
                stor4A11[stor54.length] = 0
                pendingRewards[0].field_8 = 1
            pendingRewards[0].field_0 = 1
            if pendingRewards[0][1][stor58[idx]].field_0 > !(100 * sub_7687c0e0[stor58[idx]].field_512 * 10^12 * msg.value / storFE75 / 10^12 / 100):
                revert with 0, 17
            mem[0] = stor58[idx]
            mem[32] = sha3(0, 53) + 1
            pendingRewards[0][1][stor58[idx]].field_0 += 100 * sub_7687c0e0[stor58[idx]].field_512 * 10^12 * msg.value / storFE75 / 10^12 / 100
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if msg.value:
        if not pendingRewards[0].field_8:
            stor54.length++
            stor4A11[stor54.length] = 0
            pendingRewards[0].field_8 = 1
        pendingRewards[0].field_0 = 1
        if pendingRewards[0][1][stor56].field_0 > !msg.value:
            revert with 0, 17
        pendingRewards[0][1][stor56].field_0 += msg.value
    if totalFeesCollected > !msg.value:
        revert with 0, 17
    totalFeesCollected += msg.value
}

function sub_3c0d015e(?) {
    require calldata.size - 4 >= 32
    if stor58.length <= arg1:
        revert with 0, 'No such receiver!'
    if arg1 >= stor58.length:
        revert with 0, 50
    idx = 0
    s = 0
    while idx < sub_bb22e718.length:
        if arg1 >= stor58.length:
            revert with 0, 50
        mem[0] = sub_bb22e718[idx].field_0
        mem[32] = sha3(stor58[arg1], 57) + 3
        if not sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    if 1 > !s:
        revert with 0, 17
    if s + 1 > test266151307():
        revert with 0, 65
    mem[96] = s + 1
    if not s + 1:
        if 1 > !s:
            revert with 0, 17
        if s + 1 > test266151307():
            revert with 0, 65
        mem[(32 * s + 1) + 128] = s + 1
        if not s + 1:
            if 1 > !s:
                revert with 0, 17
            if s + 1 > test266151307():
                revert with 0, 65
            mem[(64 * s + 1) + 160] = s + 1
            mem[64] = (98 * s) + 290
            if not s + 1:
                if 0 >= s + 1:
                    revert with 0, 50
                mem[128] = 0
                if arg1 >= stor58.length:
                    revert with 0, 50
                if not s + 1:
                    revert with 0, 50
                mem[(32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]].field_512
                if arg1 >= stor58.length:
                    revert with 0, 50
                if not s + 1:
                    revert with 0, 50
                mem[(64 * s + 1) + 192] = stor8423[stor58[arg1]]
                idx = 0
                t = 1
                while idx < sub_bb22e718.length:
                    if arg1 >= stor58.length:
                        revert with 0, 50
                    mem[0] = sub_bb22e718[idx].field_0
                    mem[32] = sha3(stor58[arg1], 57) + 3
                    if not sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t
                        continue 
                    if t >= s + 1:
                        revert with 0, 50
                    mem[(32 * t) + 128] = sub_bb22e718[idx].field_0
                    if t >= mem[(32 * s + 1) + 128]:
                        revert with 0, 50
                    mem[(32 * t) + (32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0
                    if arg1 >= stor58.length:
                        revert with 0, 50
                    mem[0] = stor58[arg1]
                    mem[32] = sha3(sub_bb22e718[idx].field_0, 53) + 1
                    if t >= mem[(64 * s + 1) + 160]:
                        revert with 0, 50
                    mem[(32 * t) + (64 * s + 1) + 192] = pendingRewards[stor61[idx].field_0][1][stor58[arg1]].field_0
                    if t > -2:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t + 1
                    continue 
                mem[(98 * s) + 290] = sub_7687c0e0[stor58[arg1]].field_0
                mem[(98 * s) + 322] = sub_7687c0e0[stor58[arg1]].field_256
                mem[(98 * s) + 354] = 160
                mem[(98 * s) + 450] = s + 1
                t = 0
                u = 128
                v = (98 * s) + 482
                while t < s + 1:
                    mem[v] = mem[u + 12 len 20]
                    t = t + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[(98 * s) + 386] = (32 * s + 1) + 192
                mem[(98 * s) + (32 * s + 1) + 482] = mem[(32 * s + 1) + 128]
                mem[(98 * s) + (32 * s + 1) + 514 len 32 * mem[(32 * s + 1) + 128]] = mem[(32 * s + 1) + 160 len 32 * mem[(32 * s + 1) + 128]]
                mem[(98 * s) + 418] = (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 224
                _450 = mem[(64 * s + 1) + 160]
                mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 514] = mem[(64 * s + 1) + 160]
                mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 546 len 32 * _450] = mem[(64 * s + 1) + 192 len 32 * _450]
                return memory
                  from mem[64]
                   len (98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + (32 * _450) + -mem[64] + 546
            mem[(64 * s + 1) + 192 len 32 * s + 1] = call.data[calldata.size len 32 * s + 1]
            if 0 >= s + 1:
                revert with 0, 50
            mem[128] = 0
            if arg1 >= stor58.length:
                revert with 0, 50
            if not s + 1:
                revert with 0, 50
            mem[(32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]].field_512
            if arg1 >= stor58.length:
                revert with 0, 50
            if not s + 1:
                revert with 0, 50
            mem[(64 * s + 1) + 192] = stor8423[stor58[arg1]]
            idx = 0
            t = 1
            while idx < sub_bb22e718.length:
                if arg1 >= stor58.length:
                    revert with 0, 50
                mem[0] = sub_bb22e718[idx].field_0
                mem[32] = sha3(stor58[arg1], 57) + 3
                if not sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if t >= s + 1:
                    revert with 0, 50
                mem[(32 * t) + 128] = sub_bb22e718[idx].field_0
                if t >= mem[(32 * s + 1) + 128]:
                    revert with 0, 50
                mem[(32 * t) + (32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0
                if arg1 >= stor58.length:
                    revert with 0, 50
                mem[0] = stor58[arg1]
                mem[32] = sha3(sub_bb22e718[idx].field_0, 53) + 1
                if t >= mem[(64 * s + 1) + 160]:
                    revert with 0, 50
                mem[(32 * t) + (64 * s + 1) + 192] = pendingRewards[stor61[idx].field_0][1][stor58[arg1]].field_0
                if t > -2:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + 1
                continue 
            mem[(98 * s) + 290] = sub_7687c0e0[stor58[arg1]].field_0
            mem[(98 * s) + 322] = sub_7687c0e0[stor58[arg1]].field_256
            mem[(98 * s) + 354] = 160
            mem[(98 * s) + 450] = s + 1
            t = 0
            u = 128
            v = (98 * s) + 482
            while t < s + 1:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[(98 * s) + 386] = (32 * s + 1) + 192
            mem[(98 * s) + (32 * s + 1) + 482] = mem[(32 * s + 1) + 128]
            mem[(98 * s) + (32 * s + 1) + 514 len 32 * mem[(32 * s + 1) + 128]] = mem[(32 * s + 1) + 160 len 32 * mem[(32 * s + 1) + 128]]
            mem[(98 * s) + 418] = (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 224
            _451 = mem[(64 * s + 1) + 160]
            mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 514] = mem[(64 * s + 1) + 160]
            mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 546 len 32 * _451] = mem[(64 * s + 1) + 192 len 32 * _451]
            return memory
              from mem[64]
               len (98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + (32 * _451) + -mem[64] + 546
        mem[(32 * s + 1) + 160 len 32 * s + 1] = call.data[calldata.size len 32 * s + 1]
        if 1 > !s:
            revert with 0, 17
        if s + 1 > test266151307():
            revert with 0, 65
        mem[(64 * s + 1) + 160] = s + 1
        mem[64] = (98 * s) + 290
        if not s + 1:
            if 0 >= s + 1:
                revert with 0, 50
            mem[128] = 0
            if arg1 >= stor58.length:
                revert with 0, 50
            if not s + 1:
                revert with 0, 50
            mem[(32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]].field_512
            if arg1 >= stor58.length:
                revert with 0, 50
            if not s + 1:
                revert with 0, 50
            mem[(64 * s + 1) + 192] = stor8423[stor58[arg1]]
            idx = 0
            t = 1
            while idx < sub_bb22e718.length:
                if arg1 >= stor58.length:
                    revert with 0, 50
                mem[0] = sub_bb22e718[idx].field_0
                mem[32] = sha3(stor58[arg1], 57) + 3
                if not sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if t >= s + 1:
                    revert with 0, 50
                mem[(32 * t) + 128] = sub_bb22e718[idx].field_0
                if t >= mem[(32 * s + 1) + 128]:
                    revert with 0, 50
                mem[(32 * t) + (32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0
                if arg1 >= stor58.length:
                    revert with 0, 50
                mem[0] = stor58[arg1]
                mem[32] = sha3(sub_bb22e718[idx].field_0, 53) + 1
                if t >= mem[(64 * s + 1) + 160]:
                    revert with 0, 50
                mem[(32 * t) + (64 * s + 1) + 192] = pendingRewards[stor61[idx].field_0][1][stor58[arg1]].field_0
                if t > -2:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + 1
                continue 
            mem[(98 * s) + 290] = sub_7687c0e0[stor58[arg1]].field_0
            mem[(98 * s) + 322] = sub_7687c0e0[stor58[arg1]].field_256
            mem[(98 * s) + 354] = 160
            mem[(98 * s) + 450] = s + 1
            t = 0
            u = 128
            v = (98 * s) + 482
            while t < s + 1:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[(98 * s) + 386] = (32 * s + 1) + 192
            mem[(98 * s) + (32 * s + 1) + 482] = mem[(32 * s + 1) + 128]
            mem[(98 * s) + (32 * s + 1) + 514 len 32 * mem[(32 * s + 1) + 128]] = mem[(32 * s + 1) + 160 len 32 * mem[(32 * s + 1) + 128]]
            mem[(98 * s) + 418] = (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 224
            _452 = mem[(64 * s + 1) + 160]
            mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 514] = mem[(64 * s + 1) + 160]
            mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 546 len 32 * _452] = mem[(64 * s + 1) + 192 len 32 * _452]
            return memory
              from mem[64]
               len (98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + (32 * _452) + -mem[64] + 546
        mem[(64 * s + 1) + 192 len 32 * s + 1] = call.data[calldata.size len 32 * s + 1]
        if 0 >= s + 1:
            revert with 0, 50
        mem[128] = 0
        if arg1 >= stor58.length:
            revert with 0, 50
        if not s + 1:
            revert with 0, 50
        mem[(32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]].field_512
        if arg1 >= stor58.length:
            revert with 0, 50
        if not s + 1:
            revert with 0, 50
        mem[(64 * s + 1) + 192] = stor8423[stor58[arg1]]
        idx = 0
        t = 1
        while idx < sub_bb22e718.length:
            if arg1 >= stor58.length:
                revert with 0, 50
            mem[0] = sub_bb22e718[idx].field_0
            mem[32] = sha3(stor58[arg1], 57) + 3
            if not sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t
                continue 
            if t >= s + 1:
                revert with 0, 50
            mem[(32 * t) + 128] = sub_bb22e718[idx].field_0
            if t >= mem[(32 * s + 1) + 128]:
                revert with 0, 50
            mem[(32 * t) + (32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0
            if arg1 >= stor58.length:
                revert with 0, 50
            mem[0] = stor58[arg1]
            mem[32] = sha3(sub_bb22e718[idx].field_0, 53) + 1
            if t >= mem[(64 * s + 1) + 160]:
                revert with 0, 50
            mem[(32 * t) + (64 * s + 1) + 192] = pendingRewards[stor61[idx].field_0][1][stor58[arg1]].field_0
            if t > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t + 1
            continue 
        mem[(98 * s) + 290] = sub_7687c0e0[stor58[arg1]].field_0
        mem[(98 * s) + 322] = sub_7687c0e0[stor58[arg1]].field_256
        mem[(98 * s) + 354] = 160
        mem[(98 * s) + 450] = s + 1
        t = 0
        u = 128
        v = (98 * s) + 482
        while t < s + 1:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[(98 * s) + 386] = (32 * s + 1) + 192
        mem[(98 * s) + (32 * s + 1) + 482] = mem[(32 * s + 1) + 128]
        mem[(98 * s) + (32 * s + 1) + 514 len 32 * mem[(32 * s + 1) + 128]] = mem[(32 * s + 1) + 160 len 32 * mem[(32 * s + 1) + 128]]
        mem[(98 * s) + 418] = (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 224
        _453 = mem[(64 * s + 1) + 160]
        mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 514] = mem[(64 * s + 1) + 160]
        mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 546 len 32 * _453] = mem[(64 * s + 1) + 192 len 32 * _453]
        return memory
          from mem[64]
           len (98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + (32 * _453) + -mem[64] + 546
    mem[128 len 32 * s + 1] = call.data[calldata.size len 32 * s + 1]
    if 1 > !s:
        revert with 0, 17
    if s + 1 > test266151307():
        revert with 0, 65
    mem[(32 * s + 1) + 128] = s + 1
    if not s + 1:
        if 1 > !s:
            revert with 0, 17
        if s + 1 > test266151307():
            revert with 0, 65
        mem[(64 * s + 1) + 160] = s + 1
        mem[64] = (98 * s) + 290
        if not s + 1:
            if 0 >= s + 1:
                revert with 0, 50
            mem[128] = 0
            if arg1 >= stor58.length:
                revert with 0, 50
            if not s + 1:
                revert with 0, 50
            mem[(32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]].field_512
            if arg1 >= stor58.length:
                revert with 0, 50
            if not s + 1:
                revert with 0, 50
            mem[(64 * s + 1) + 192] = stor8423[stor58[arg1]]
            idx = 0
            t = 1
            while idx < sub_bb22e718.length:
                if arg1 >= stor58.length:
                    revert with 0, 50
                mem[0] = sub_bb22e718[idx].field_0
                mem[32] = sha3(stor58[arg1], 57) + 3
                if not sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = t
                    continue 
                if t >= s + 1:
                    revert with 0, 50
                mem[(32 * t) + 128] = sub_bb22e718[idx].field_0
                if t >= mem[(32 * s + 1) + 128]:
                    revert with 0, 50
                mem[(32 * t) + (32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0
                if arg1 >= stor58.length:
                    revert with 0, 50
                mem[0] = stor58[arg1]
                mem[32] = sha3(sub_bb22e718[idx].field_0, 53) + 1
                if t >= mem[(64 * s + 1) + 160]:
                    revert with 0, 50
                mem[(32 * t) + (64 * s + 1) + 192] = pendingRewards[stor61[idx].field_0][1][stor58[arg1]].field_0
                if t > -2:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t + 1
                continue 
            mem[(98 * s) + 290] = sub_7687c0e0[stor58[arg1]].field_0
            mem[(98 * s) + 322] = sub_7687c0e0[stor58[arg1]].field_256
            mem[(98 * s) + 354] = 160
            mem[(98 * s) + 450] = s + 1
            t = 0
            u = 128
            v = (98 * s) + 482
            while t < s + 1:
                mem[v] = mem[u + 12 len 20]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[(98 * s) + 386] = (32 * s + 1) + 192
            mem[(98 * s) + (32 * s + 1) + 482] = mem[(32 * s + 1) + 128]
            mem[(98 * s) + (32 * s + 1) + 514 len 32 * mem[(32 * s + 1) + 128]] = mem[(32 * s + 1) + 160 len 32 * mem[(32 * s + 1) + 128]]
            mem[(98 * s) + 418] = (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 224
            _454 = mem[(64 * s + 1) + 160]
            mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 514] = mem[(64 * s + 1) + 160]
            mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 546 len 32 * _454] = mem[(64 * s + 1) + 192 len 32 * _454]
            return memory
              from mem[64]
               len (98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + (32 * _454) + -mem[64] + 546
        mem[(64 * s + 1) + 192 len 32 * s + 1] = call.data[calldata.size len 32 * s + 1]
        if 0 >= s + 1:
            revert with 0, 50
        mem[128] = 0
        if arg1 >= stor58.length:
            revert with 0, 50
        if not s + 1:
            revert with 0, 50
        mem[(32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]].field_512
        if arg1 >= stor58.length:
            revert with 0, 50
        if not s + 1:
            revert with 0, 50
        mem[(64 * s + 1) + 192] = stor8423[stor58[arg1]]
        idx = 0
        t = 1
        while idx < sub_bb22e718.length:
            if arg1 >= stor58.length:
                revert with 0, 50
            mem[0] = sub_bb22e718[idx].field_0
            mem[32] = sha3(stor58[arg1], 57) + 3
            if not sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t
                continue 
            if t >= s + 1:
                revert with 0, 50
            mem[(32 * t) + 128] = sub_bb22e718[idx].field_0
            if t >= mem[(32 * s + 1) + 128]:
                revert with 0, 50
            mem[(32 * t) + (32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0
            if arg1 >= stor58.length:
                revert with 0, 50
            mem[0] = stor58[arg1]
            mem[32] = sha3(sub_bb22e718[idx].field_0, 53) + 1
            if t >= mem[(64 * s + 1) + 160]:
                revert with 0, 50
            mem[(32 * t) + (64 * s + 1) + 192] = pendingRewards[stor61[idx].field_0][1][stor58[arg1]].field_0
            if t > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t + 1
            continue 
        mem[(98 * s) + 290] = sub_7687c0e0[stor58[arg1]].field_0
        mem[(98 * s) + 322] = sub_7687c0e0[stor58[arg1]].field_256
        mem[(98 * s) + 354] = 160
        mem[(98 * s) + 450] = s + 1
        t = 0
        u = 128
        v = (98 * s) + 482
        while t < s + 1:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[(98 * s) + 386] = (32 * s + 1) + 192
        mem[(98 * s) + (32 * s + 1) + 482] = mem[(32 * s + 1) + 128]
        mem[(98 * s) + (32 * s + 1) + 514 len 32 * mem[(32 * s + 1) + 128]] = mem[(32 * s + 1) + 160 len 32 * mem[(32 * s + 1) + 128]]
        mem[(98 * s) + 418] = (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 224
        _455 = mem[(64 * s + 1) + 160]
        mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 514] = mem[(64 * s + 1) + 160]
        mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 546 len 32 * _455] = mem[(64 * s + 1) + 192 len 32 * _455]
        return memory
          from mem[64]
           len (98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + (32 * _455) + -mem[64] + 546
    mem[(32 * s + 1) + 160 len 32 * s + 1] = call.data[calldata.size len 32 * s + 1]
    if 1 > !s:
        revert with 0, 17
    if s + 1 > test266151307():
        revert with 0, 65
    mem[(64 * s + 1) + 160] = s + 1
    mem[64] = (98 * s) + 290
    if not s + 1:
        if 0 >= s + 1:
            revert with 0, 50
        mem[128] = 0
        if arg1 >= stor58.length:
            revert with 0, 50
        if not s + 1:
            revert with 0, 50
        mem[(32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]].field_512
        if arg1 >= stor58.length:
            revert with 0, 50
        if not s + 1:
            revert with 0, 50
        mem[(64 * s + 1) + 192] = stor8423[stor58[arg1]]
        idx = 0
        t = 1
        while idx < sub_bb22e718.length:
            if arg1 >= stor58.length:
                revert with 0, 50
            mem[0] = sub_bb22e718[idx].field_0
            mem[32] = sha3(stor58[arg1], 57) + 3
            if not sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = t
                continue 
            if t >= s + 1:
                revert with 0, 50
            mem[(32 * t) + 128] = sub_bb22e718[idx].field_0
            if t >= mem[(32 * s + 1) + 128]:
                revert with 0, 50
            mem[(32 * t) + (32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0
            if arg1 >= stor58.length:
                revert with 0, 50
            mem[0] = stor58[arg1]
            mem[32] = sha3(sub_bb22e718[idx].field_0, 53) + 1
            if t >= mem[(64 * s + 1) + 160]:
                revert with 0, 50
            mem[(32 * t) + (64 * s + 1) + 192] = pendingRewards[stor61[idx].field_0][1][stor58[arg1]].field_0
            if t > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t + 1
            continue 
        mem[(98 * s) + 290] = sub_7687c0e0[stor58[arg1]].field_0
        mem[(98 * s) + 322] = sub_7687c0e0[stor58[arg1]].field_256
        mem[(98 * s) + 354] = 160
        mem[(98 * s) + 450] = s + 1
        t = 0
        u = 128
        v = (98 * s) + 482
        while t < s + 1:
            mem[v] = mem[u + 12 len 20]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[(98 * s) + 386] = (32 * s + 1) + 192
        mem[(98 * s) + (32 * s + 1) + 482] = mem[(32 * s + 1) + 128]
        mem[(98 * s) + (32 * s + 1) + 514 len 32 * mem[(32 * s + 1) + 128]] = mem[(32 * s + 1) + 160 len 32 * mem[(32 * s + 1) + 128]]
        mem[(98 * s) + 418] = (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 224
        _456 = mem[(64 * s + 1) + 160]
        mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 514] = mem[(64 * s + 1) + 160]
        mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 546 len 32 * _456] = mem[(64 * s + 1) + 192 len 32 * _456]
        return memory
          from mem[64]
           len (98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + (32 * _456) + -mem[64] + 546
    mem[(64 * s + 1) + 192 len 32 * s + 1] = call.data[calldata.size len 32 * s + 1]
    if 0 >= s + 1:
        revert with 0, 50
    mem[128] = 0
    if arg1 >= stor58.length:
        revert with 0, 50
    if not s + 1:
        revert with 0, 50
    mem[(32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]].field_512
    if arg1 >= stor58.length:
        revert with 0, 50
    if not s + 1:
        revert with 0, 50
    mem[(64 * s + 1) + 192] = stor8423[stor58[arg1]]
    idx = 0
    t = 1
    while idx < sub_bb22e718.length:
        if arg1 >= stor58.length:
            revert with 0, 50
        mem[0] = sub_bb22e718[idx].field_0
        mem[32] = sha3(stor58[arg1], 57) + 3
        if not sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = t
            continue 
        if t >= s + 1:
            revert with 0, 50
        mem[(32 * t) + 128] = sub_bb22e718[idx].field_0
        if t >= mem[(32 * s + 1) + 128]:
            revert with 0, 50
        mem[(32 * t) + (32 * s + 1) + 160] = sub_7687c0e0[stor58[arg1]][3][stor61[idx].field_0].field_0
        if arg1 >= stor58.length:
            revert with 0, 50
        mem[0] = stor58[arg1]
        mem[32] = sha3(sub_bb22e718[idx].field_0, 53) + 1
        if t >= mem[(64 * s + 1) + 160]:
            revert with 0, 50
        mem[(32 * t) + (64 * s + 1) + 192] = pendingRewards[stor61[idx].field_0][1][stor58[arg1]].field_0
        if t > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        t = t + 1
        continue 
    mem[(98 * s) + 290] = sub_7687c0e0[stor58[arg1]].field_0
    mem[(98 * s) + 322] = sub_7687c0e0[stor58[arg1]].field_256
    mem[(98 * s) + 354] = 160
    mem[(98 * s) + 450] = s + 1
    t = 0
    u = 128
    v = (98 * s) + 482
    while t < s + 1:
        mem[v] = mem[u + 12 len 20]
        t = t + 1
        u = u + 32
        v = v + 32
        continue 
    mem[(98 * s) + 386] = (32 * s + 1) + 192
    mem[(98 * s) + (32 * s + 1) + 482] = mem[(32 * s + 1) + 128]
    mem[(98 * s) + (32 * s + 1) + 514 len 32 * mem[(32 * s + 1) + 128]] = mem[(32 * s + 1) + 160 len 32 * mem[(32 * s + 1) + 128]]
    mem[(98 * s) + 418] = (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 224
    _457 = mem[(64 * s + 1) + 160]
    mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 514] = mem[(64 * s + 1) + 160]
    mem[(98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + 546 len 32 * _457] = mem[(64 * s + 1) + 192 len 32 * _457]
    return memory
      from mem[64]
       len (98 * s) + (32 * s + 1) + (32 * mem[(32 * s + 1) + 128]) + (32 * _457) + -mem[64] + 546
}

function sub_8c6ef13c(?) {
    mem[96] = sub_bb22e718.length
    if not sub_bb22e718.length:
        if sub_bb22e718.length > test266151307():
            revert with 0, 65
        mem[(32 * sub_bb22e718.length) + 128] = sub_bb22e718.length
        if not sub_bb22e718.length:
            if sub_bb22e718.length > test266151307():
                revert with 0, 65
            mem[(64 * sub_bb22e718.length) + 160] = sub_bb22e718.length
            mem[64] = (98 * sub_bb22e718.length) + 192
            if not sub_bb22e718.length:
                idx = 0
                while idx < sub_bb22e718.length:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 60
                    if idx >= mem[(32 * sub_bb22e718.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_bb22e718.length) + 160] = sub_81c93976[mem[(32 * idx) + 140 len 20]]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _130 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_130))
                    staticcall address(_130).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _148 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _162 = mem[_148]
                    require mem[_148] <= test266151307()
                    require _148 + mem[_148] + 31 < _148 + return_data.size
                    _170 = mem[_148 + mem[_148]]
                    if mem[_148 + mem[_148]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_148 + mem[_148]])) + 1 < 0 or _148 + ceil32(return_data.size) + ceil32(ceil32(mem[_148 + mem[_148]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _148 + ceil32(return_data.size) + ceil32(ceil32(mem[_148 + mem[_148]])) + 1
                    mem[_148 + ceil32(return_data.size)] = _170
                    require _162 + _170 + 32 <= return_data.size
                    s = 0
                    while s < _170:
                        mem[s + _148 + ceil32(return_data.size) + 32] = mem[s + _148 + _162 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_170) > _170:
                        mem[_148 + ceil32(return_data.size) + _170 + 32] = 0
                    if idx >= mem[(64 * sub_bb22e718.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * sub_bb22e718.length) + 192] = _148 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _117 = mem[64]
                mem[mem[64]] = 96
                _129 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _129:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_117 + 32] = (32 * _129) + 128
                _236 = mem[(32 * sub_bb22e718.length) + 128]
                mem[_117 + (32 * _129) + 128] = mem[(32 * sub_bb22e718.length) + 128]
                idx = 0
                s = (32 * sub_bb22e718.length) + 160
                t = _117 + (32 * _129) + 160
                while idx < _236:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_117 + 64] = (32 * _129) + (32 * _236) + 160
                _411 = mem[(64 * sub_bb22e718.length) + 160]
                mem[_117 + (32 * _129) + (32 * _236) + 160] = mem[(64 * sub_bb22e718.length) + 160]
                idx = 0
                s = (64 * sub_bb22e718.length) + 192
                t = _117 + (32 * _129) + (32 * _236) + (32 * _411) + 192
                u = _117 + (32 * _129) + (32 * _236) + 192
                while idx < _411:
                    mem[u] = t + -_117 + -(32 * _129) + -(32 * _236) - 192
                    _541 = mem[s]
                    _552 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _552:
                        mem[v + t + 32] = mem[v + _541 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_552) > _552:
                        mem[t + _552 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_552) + t + 32
                    u = u + 32
                    continue 
            else:
                mem[(64 * sub_bb22e718.length) + 192] = 96
                s = (64 * sub_bb22e718.length) + 192
                idx = sub_bb22e718.length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                _217 = mem[(32 * sub_bb22e718.length) + 128]
                idx = 0
                while idx < _217:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 60
                    if idx >= mem[(32 * sub_bb22e718.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_bb22e718.length) + 160] = sub_81c93976[mem[(32 * idx) + 140 len 20]]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _244 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_244))
                    staticcall address(_244).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _260 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _273 = mem[_260]
                    require mem[_260] <= test266151307()
                    require _260 + mem[_260] + 31 < _260 + return_data.size
                    _295 = mem[_260 + mem[_260]]
                    if mem[_260 + mem[_260]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_260 + mem[_260]])) + 1 < 0 or _260 + ceil32(return_data.size) + ceil32(ceil32(mem[_260 + mem[_260]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _260 + ceil32(return_data.size) + ceil32(ceil32(mem[_260 + mem[_260]])) + 1
                    mem[_260 + ceil32(return_data.size)] = _295
                    require _273 + _295 + 32 <= return_data.size
                    s = 0
                    while s < _295:
                        mem[s + _260 + ceil32(return_data.size) + 32] = mem[s + _260 + _273 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_295) > _295:
                        mem[_260 + ceil32(return_data.size) + _295 + 32] = 0
                    if idx >= mem[(64 * sub_bb22e718.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * sub_bb22e718.length) + 192] = _260 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _227 = mem[64]
                mem[mem[64]] = 96
                _243 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _243:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_227 + 32] = (32 * _243) + 128
                _421 = mem[(32 * sub_bb22e718.length) + 128]
                mem[_227 + (32 * _243) + 128] = mem[(32 * sub_bb22e718.length) + 128]
                idx = 0
                s = (32 * sub_bb22e718.length) + 160
                t = _227 + (32 * _243) + 160
                while idx < _421:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_227 + 64] = (32 * _243) + (32 * _421) + 160
                _553 = mem[(64 * sub_bb22e718.length) + 160]
                mem[_227 + (32 * _243) + (32 * _421) + 160] = mem[(64 * sub_bb22e718.length) + 160]
                idx = 0
                s = (64 * sub_bb22e718.length) + 192
                t = _227 + (32 * _243) + (32 * _421) + (32 * _553) + 192
                u = _227 + (32 * _243) + (32 * _421) + 192
                while idx < _553:
                    mem[u] = t + -_227 + -(32 * _243) + -(32 * _421) - 192
                    _634 = mem[s]
                    _644 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _644:
                        mem[v + t + 32] = mem[v + _634 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_644) > _644:
                        mem[t + _644 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_644) + t + 32
                    u = u + 32
                    continue 
        else:
            mem[(32 * sub_bb22e718.length) + 160 len 32 * sub_bb22e718.length] = call.data[calldata.size len 32 * sub_bb22e718.length]
            if sub_bb22e718.length > test266151307():
                revert with 0, 65
            mem[(64 * sub_bb22e718.length) + 160] = sub_bb22e718.length
            mem[64] = (98 * sub_bb22e718.length) + 192
            if not sub_bb22e718.length:
                idx = 0
                while idx < sub_bb22e718.length:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 60
                    if idx >= mem[(32 * sub_bb22e718.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_bb22e718.length) + 160] = sub_81c93976[mem[(32 * idx) + 140 len 20]]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _135 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_135))
                    staticcall address(_135).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _151 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _164 = mem[_151]
                    require mem[_151] <= test266151307()
                    require _151 + mem[_151] + 31 < _151 + return_data.size
                    _172 = mem[_151 + mem[_151]]
                    if mem[_151 + mem[_151]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_151 + mem[_151]])) + 1 < 0 or _151 + ceil32(return_data.size) + ceil32(ceil32(mem[_151 + mem[_151]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _151 + ceil32(return_data.size) + ceil32(ceil32(mem[_151 + mem[_151]])) + 1
                    mem[_151 + ceil32(return_data.size)] = _172
                    require _164 + _172 + 32 <= return_data.size
                    s = 0
                    while s < _172:
                        mem[s + _151 + ceil32(return_data.size) + 32] = mem[s + _151 + _164 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_172) > _172:
                        mem[_151 + ceil32(return_data.size) + _172 + 32] = 0
                    if idx >= mem[(64 * sub_bb22e718.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * sub_bb22e718.length) + 192] = _151 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _121 = mem[64]
                mem[mem[64]] = 96
                _134 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _134:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_121 + 32] = (32 * _134) + 128
                _238 = mem[(32 * sub_bb22e718.length) + 128]
                mem[_121 + (32 * _134) + 128] = mem[(32 * sub_bb22e718.length) + 128]
                idx = 0
                s = (32 * sub_bb22e718.length) + 160
                t = _121 + (32 * _134) + 160
                while idx < _238:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_121 + 64] = (32 * _134) + (32 * _238) + 160
                _412 = mem[(64 * sub_bb22e718.length) + 160]
                mem[_121 + (32 * _134) + (32 * _238) + 160] = mem[(64 * sub_bb22e718.length) + 160]
                idx = 0
                s = (64 * sub_bb22e718.length) + 192
                t = _121 + (32 * _134) + (32 * _238) + (32 * _412) + 192
                u = _121 + (32 * _134) + (32 * _238) + 192
                while idx < _412:
                    mem[u] = t + -_121 + -(32 * _134) + -(32 * _238) - 192
                    _543 = mem[s]
                    _555 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _555:
                        mem[v + t + 32] = mem[v + _543 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_555) > _555:
                        mem[t + _555 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_555) + t + 32
                    u = u + 32
                    continue 
            else:
                mem[(64 * sub_bb22e718.length) + 192] = 96
                s = (64 * sub_bb22e718.length) + 192
                idx = sub_bb22e718.length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                _218 = mem[(32 * sub_bb22e718.length) + 128]
                idx = 0
                while idx < _218:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 60
                    if idx >= mem[(32 * sub_bb22e718.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_bb22e718.length) + 160] = sub_81c93976[mem[(32 * idx) + 140 len 20]]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _249 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_249))
                    staticcall address(_249).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _263 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _276 = mem[_263]
                    require mem[_263] <= test266151307()
                    require _263 + mem[_263] + 31 < _263 + return_data.size
                    _297 = mem[_263 + mem[_263]]
                    if mem[_263 + mem[_263]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_263 + mem[_263]])) + 1 < 0 or _263 + ceil32(return_data.size) + ceil32(ceil32(mem[_263 + mem[_263]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _263 + ceil32(return_data.size) + ceil32(ceil32(mem[_263 + mem[_263]])) + 1
                    mem[_263 + ceil32(return_data.size)] = _297
                    require _276 + _297 + 32 <= return_data.size
                    s = 0
                    while s < _297:
                        mem[s + _263 + ceil32(return_data.size) + 32] = mem[s + _263 + _276 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_297) > _297:
                        mem[_263 + ceil32(return_data.size) + _297 + 32] = 0
                    if idx >= mem[(64 * sub_bb22e718.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * sub_bb22e718.length) + 192] = _263 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _231 = mem[64]
                mem[mem[64]] = 96
                _248 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _248:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_231 + 32] = (32 * _248) + 128
                _422 = mem[(32 * sub_bb22e718.length) + 128]
                mem[_231 + (32 * _248) + 128] = mem[(32 * sub_bb22e718.length) + 128]
                idx = 0
                s = (32 * sub_bb22e718.length) + 160
                t = _231 + (32 * _248) + 160
                while idx < _422:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_231 + 64] = (32 * _248) + (32 * _422) + 160
                _556 = mem[(64 * sub_bb22e718.length) + 160]
                mem[_231 + (32 * _248) + (32 * _422) + 160] = mem[(64 * sub_bb22e718.length) + 160]
                idx = 0
                s = (64 * sub_bb22e718.length) + 192
                t = _231 + (32 * _248) + (32 * _422) + (32 * _556) + 192
                u = _231 + (32 * _248) + (32 * _422) + 192
                while idx < _556:
                    mem[u] = t + -_231 + -(32 * _248) + -(32 * _422) - 192
                    _636 = mem[s]
                    _646 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _646:
                        mem[v + t + 32] = mem[v + _636 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_646) > _646:
                        mem[t + _646 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_646) + t + 32
                    u = u + 32
                    continue 
    else:
        mem[0] = 61
        mem[128] = address(sub_bb22e718.field_0)
        idx = 128
        s = 0
        while (32 * sub_bb22e718.length) + 96 > idx:
            mem[idx + 32] = sub_bb22e718[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if sub_bb22e718.length > test266151307():
            revert with 0, 65
        mem[(32 * sub_bb22e718.length) + 128] = sub_bb22e718.length
        if not sub_bb22e718.length:
            if sub_bb22e718.length > test266151307():
                revert with 0, 65
            mem[(64 * sub_bb22e718.length) + 160] = sub_bb22e718.length
            mem[64] = (98 * sub_bb22e718.length) + 192
            if not sub_bb22e718.length:
                idx = 0
                while idx < sub_bb22e718.length:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 60
                    if idx >= mem[(32 * sub_bb22e718.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_bb22e718.length) + 160] = sub_81c93976[mem[(32 * idx) + 140 len 20]]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _432 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_432))
                    staticcall address(_432).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _460 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _478 = mem[_460]
                    require mem[_460] <= test266151307()
                    require _460 + mem[_460] + 31 < _460 + return_data.size
                    _490 = mem[_460 + mem[_460]]
                    if mem[_460 + mem[_460]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_460 + mem[_460]])) + 1 < 0 or _460 + ceil32(return_data.size) + ceil32(ceil32(mem[_460 + mem[_460]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _460 + ceil32(return_data.size) + ceil32(ceil32(mem[_460 + mem[_460]])) + 1
                    mem[_460 + ceil32(return_data.size)] = _490
                    require _478 + _490 + 32 <= return_data.size
                    s = 0
                    while s < _490:
                        mem[s + _460 + ceil32(return_data.size) + 32] = mem[s + _460 + _478 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_490) > _490:
                        mem[_460 + ceil32(return_data.size) + _490 + 32] = 0
                    if idx >= mem[(64 * sub_bb22e718.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * sub_bb22e718.length) + 192] = _460 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _413 = mem[64]
                mem[mem[64]] = 96
                _431 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _431:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_413 + 32] = (32 * _431) + 128
                _565 = mem[(32 * sub_bb22e718.length) + 128]
                mem[_413 + (32 * _431) + 128] = mem[(32 * sub_bb22e718.length) + 128]
                idx = 0
                s = (32 * sub_bb22e718.length) + 160
                t = _413 + (32 * _431) + 160
                while idx < _565:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_413 + 64] = (32 * _431) + (32 * _565) + 160
                _647 = mem[(64 * sub_bb22e718.length) + 160]
                mem[_413 + (32 * _431) + (32 * _565) + 160] = mem[(64 * sub_bb22e718.length) + 160]
                idx = 0
                s = (64 * sub_bb22e718.length) + 192
                t = _413 + (32 * _431) + (32 * _565) + (32 * _647) + 192
                u = _413 + (32 * _431) + (32 * _565) + 192
                while idx < _647:
                    mem[u] = t + -_413 + -(32 * _431) + -(32 * _565) - 192
                    _679 = mem[s]
                    _684 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _684:
                        mem[v + t + 32] = mem[v + _679 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_684) > _684:
                        mem[t + _684 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_684) + t + 32
                    u = u + 32
                    continue 
            else:
                mem[(64 * sub_bb22e718.length) + 192] = 96
                s = (64 * sub_bb22e718.length) + 192
                idx = sub_bb22e718.length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                _539 = mem[(32 * sub_bb22e718.length) + 128]
                idx = 0
                while idx < _539:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 60
                    if idx >= mem[(32 * sub_bb22e718.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_bb22e718.length) + 160] = sub_81c93976[mem[(32 * idx) + 140 len 20]]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _573 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_573))
                    staticcall address(_573).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _593 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _601 = mem[_593]
                    require mem[_593] <= test266151307()
                    require _593 + mem[_593] + 31 < _593 + return_data.size
                    _610 = mem[_593 + mem[_593]]
                    if mem[_593 + mem[_593]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_593 + mem[_593]])) + 1 < 0 or _593 + ceil32(return_data.size) + ceil32(ceil32(mem[_593 + mem[_593]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _593 + ceil32(return_data.size) + ceil32(ceil32(mem[_593 + mem[_593]])) + 1
                    mem[_593 + ceil32(return_data.size)] = _610
                    require _601 + _610 + 32 <= return_data.size
                    s = 0
                    while s < _610:
                        mem[s + _593 + ceil32(return_data.size) + 32] = mem[s + _593 + _601 + 32]
                        _539 = mem[(32 * sub_bb22e718.length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_610) > _610:
                        mem[_593 + ceil32(return_data.size) + _610 + 32] = 0
                    if idx >= mem[(64 * sub_bb22e718.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * sub_bb22e718.length) + 192] = _593 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 0, 17
                    _539 = mem[(32 * sub_bb22e718.length) + 128]
                    idx = idx + 1
                    continue 
                _557 = mem[64]
                mem[mem[64]] = 96
                _572 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _572:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_557 + 32] = (32 * _572) + 128
                _649 = mem[(32 * sub_bb22e718.length) + 128]
                mem[_557 + (32 * _572) + 128] = mem[(32 * sub_bb22e718.length) + 128]
                idx = 0
                s = (32 * sub_bb22e718.length) + 160
                t = _557 + (32 * _572) + 160
                while idx < _649:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_557 + 64] = (32 * _572) + (32 * _649) + 160
                _685 = mem[(64 * sub_bb22e718.length) + 160]
                mem[_557 + (32 * _572) + (32 * _649) + 160] = mem[(64 * sub_bb22e718.length) + 160]
                idx = 0
                s = (64 * sub_bb22e718.length) + 192
                t = _557 + (32 * _572) + (32 * _649) + (32 * _685) + 192
                u = _557 + (32 * _572) + (32 * _649) + 192
                while idx < _685:
                    mem[u] = t + -_557 + -(32 * _572) + -(32 * _649) - 192
                    _700 = mem[s]
                    _704 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _704:
                        mem[v + t + 32] = mem[v + _700 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_704) > _704:
                        mem[t + _704 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_704) + t + 32
                    u = u + 32
                    continue 
        else:
            mem[(32 * sub_bb22e718.length) + 160 len 32 * sub_bb22e718.length] = call.data[calldata.size len 32 * sub_bb22e718.length]
            if sub_bb22e718.length > test266151307():
                revert with 0, 65
            mem[(64 * sub_bb22e718.length) + 160] = sub_bb22e718.length
            mem[64] = (98 * sub_bb22e718.length) + 192
            if not sub_bb22e718.length:
                idx = 0
                while idx < sub_bb22e718.length:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 60
                    if idx >= mem[(32 * sub_bb22e718.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_bb22e718.length) + 160] = sub_81c93976[mem[(32 * idx) + 140 len 20]]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _437 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_437))
                    staticcall address(_437).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _463 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _480 = mem[_463]
                    require mem[_463] <= test266151307()
                    require _463 + mem[_463] + 31 < _463 + return_data.size
                    _492 = mem[_463 + mem[_463]]
                    if mem[_463 + mem[_463]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_463 + mem[_463]])) + 1 < 0 or _463 + ceil32(return_data.size) + ceil32(ceil32(mem[_463 + mem[_463]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _463 + ceil32(return_data.size) + ceil32(ceil32(mem[_463 + mem[_463]])) + 1
                    mem[_463 + ceil32(return_data.size)] = _492
                    require _480 + _492 + 32 <= return_data.size
                    s = 0
                    while s < _492:
                        mem[s + _463 + ceil32(return_data.size) + 32] = mem[s + _463 + _480 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_492) > _492:
                        mem[_463 + ceil32(return_data.size) + _492 + 32] = 0
                    if idx >= mem[(64 * sub_bb22e718.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * sub_bb22e718.length) + 192] = _463 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _417 = mem[64]
                mem[mem[64]] = 96
                _436 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _436:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_417 + 32] = (32 * _436) + 128
                _567 = mem[(32 * sub_bb22e718.length) + 128]
                mem[_417 + (32 * _436) + 128] = mem[(32 * sub_bb22e718.length) + 128]
                idx = 0
                s = (32 * sub_bb22e718.length) + 160
                t = _417 + (32 * _436) + 160
                while idx < _567:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_417 + 64] = (32 * _436) + (32 * _567) + 160
                _648 = mem[(64 * sub_bb22e718.length) + 160]
                mem[_417 + (32 * _436) + (32 * _567) + 160] = mem[(64 * sub_bb22e718.length) + 160]
                idx = 0
                s = (64 * sub_bb22e718.length) + 192
                t = _417 + (32 * _436) + (32 * _567) + (32 * _648) + 192
                u = _417 + (32 * _436) + (32 * _567) + 192
                while idx < _648:
                    mem[u] = t + -_417 + -(32 * _436) + -(32 * _567) - 192
                    _681 = mem[s]
                    _687 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _687:
                        mem[v + t + 32] = mem[v + _681 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_687) > _687:
                        mem[t + _687 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_687) + t + 32
                    u = u + 32
                    continue 
            else:
                mem[(64 * sub_bb22e718.length) + 192] = 96
                s = (64 * sub_bb22e718.length) + 192
                idx = sub_bb22e718.length
                while idx - 1:
                    mem[s + 32] = 96
                    s = s + 32
                    idx = idx - 1
                    continue 
                _540 = mem[(32 * sub_bb22e718.length) + 128]
                idx = 0
                while idx < _540:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 60
                    if idx >= mem[(32 * sub_bb22e718.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * sub_bb22e718.length) + 160] = sub_81c93976[mem[(32 * idx) + 140 len 20]]
                    if idx >= mem[96]:
                        revert with 0, 50
                    _578 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_578))
                    staticcall address(_578).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _596 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _604 = mem[_596]
                    require mem[_596] <= test266151307()
                    require _596 + mem[_596] + 31 < _596 + return_data.size
                    _612 = mem[_596 + mem[_596]]
                    if mem[_596 + mem[_596]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_596 + mem[_596]])) + 1 < 0 or _596 + ceil32(return_data.size) + ceil32(ceil32(mem[_596 + mem[_596]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _596 + ceil32(return_data.size) + ceil32(ceil32(mem[_596 + mem[_596]])) + 1
                    mem[_596 + ceil32(return_data.size)] = _612
                    require _604 + _612 + 32 <= return_data.size
                    s = 0
                    while s < _612:
                        mem[s + _596 + ceil32(return_data.size) + 32] = mem[s + _596 + _604 + 32]
                        _540 = mem[(32 * sub_bb22e718.length) + 128]
                        s = s + 32
                        continue 
                    if ceil32(_612) > _612:
                        mem[_596 + ceil32(return_data.size) + _612 + 32] = 0
                    if idx >= mem[(64 * sub_bb22e718.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * sub_bb22e718.length) + 192] = _596 + ceil32(return_data.size)
                    if idx == -1:
                        revert with 0, 17
                    _540 = mem[(32 * sub_bb22e718.length) + 128]
                    idx = idx + 1
                    continue 
                _561 = mem[64]
                mem[mem[64]] = 96
                _577 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _577:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_561 + 32] = (32 * _577) + 128
                _650 = mem[(32 * sub_bb22e718.length) + 128]
                mem[_561 + (32 * _577) + 128] = mem[(32 * sub_bb22e718.length) + 128]
                idx = 0
                s = (32 * sub_bb22e718.length) + 160
                t = _561 + (32 * _577) + 160
                while idx < _650:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_561 + 64] = (32 * _577) + (32 * _650) + 160
                _688 = mem[(64 * sub_bb22e718.length) + 160]
                mem[_561 + (32 * _577) + (32 * _650) + 160] = mem[(64 * sub_bb22e718.length) + 160]
                idx = 0
                s = (64 * sub_bb22e718.length) + 192
                t = _561 + (32 * _577) + (32 * _650) + (32 * _688) + 192
                u = _561 + (32 * _577) + (32 * _650) + 192
                while idx < _688:
                    mem[u] = t + -_561 + -(32 * _577) + -(32 * _650) - 192
                    _702 = mem[s]
                    _706 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _706:
                        mem[v + t + 32] = mem[v + _702 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_706) > _706:
                        mem[t + _706 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_706) + t + 32
                    u = u + 32
                    continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
