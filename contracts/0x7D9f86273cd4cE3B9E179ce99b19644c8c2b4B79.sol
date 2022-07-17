contract main {




// =====================  Runtime code  =====================


#
#  - sub_45338e88(?)
#
address owner;
array of uint256 stor1;
mapping of struct sub_89a5f084;
mapping of struct sub_f3a4d071;
mapping of struct stor4;
array of struct stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function sub_3c337921(?) {
    return uint64(stor5.length)
}

function getBetInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > stor6:
        revert with 0, 'invalid bid'
    if uint8(sub_f3a4d071[arg1].field_0) >= 2:
        revert with 'NH{q', 33
    return uint64(sub_f3a4d071[arg1].field_0), 
           uint256(sub_f3a4d071[arg1].field_256),
           uint8(sub_f3a4d071[arg1].field_0),
           uint256(sub_f3a4d071[arg1].field_512),
           address(sub_f3a4d071[arg1].field_1536)
}

function sub_89a5f084(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    return uint8(sub_89a5f084[arg1].field_0), 
           uint16(sub_89a5f084[arg1].field_0),
           uint64(sub_89a5f084[arg1].field_0),
           uint256(sub_89a5f084[arg1].field_256),
           uint256(sub_89a5f084[arg1].field_512),
           uint256(sub_89a5f084[arg1].field_768),
           uint256(sub_89a5f084[arg1].field_1024),
           bool(uint8(sub_89a5f084[arg1].field_1280)),
           bool(uint8(sub_89a5f084[arg1].field_1288)),
           address(sub_89a5f084[arg1].field_1296)
}

function owner() {
    return owner
}

function sub_f3a4d071(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    return bool(uint8(sub_f3a4d071[arg1 << 192].field_1032)), bool(uint8(sub_f3a4d071[arg1 << 192].field_1024))
}

function _fallback() payable {
    revert
}

function setServiceFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1.length = arg1
}

function getRewardAmount(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 and arg2 > -1 / arg1:
        revert with 'NH{q', 17
    if arg2 > -(arg1 * arg2 / 100) - 1:
        revert with 'NH{q', 17
    return (arg2 + (arg1 * arg2 / 100))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: newOwner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > eth.balance(this.address):
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_385b51e8(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    idx = stor6
    s = 0
    while idx > 0:
        mem[0] = idx
        mem[32] = 3
        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = s + 1
        continue 
    return s
}

function sub_54de8e78(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if stor8 != 1:
        revert with 0, 'Guess: reentrant call'
    stor8 = 0
    if msg.value < 10^18:
        revert with 0, 'At least 1BNB!'
    if not uint8(sub_89a5f084[arg1 << 192].field_1280):
        revert with 0, 'pool closed!'
    if address(sub_89a5f084[arg1 << 192].field_1296) != msg.sender:
        revert with 0, 'non-admin!'
    if uint256(sub_89a5f084[arg1 << 192].field_1024) > -msg.value - 1:
        revert with 'NH{q', 17
    uint256(sub_89a5f084[arg1 << 192].field_1024) += msg.value
    stor8 = 1
}

function sub_c24729e4(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint64(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if stor8 != 1:
        revert with 0, 'Guess: reentrant call'
    stor8 = 0
    if arg2 < 10^16:
        revert with 0, 'Min bet >= 0.01'
    if arg3 <= arg2:
        revert with 0, 'Max bet > Min bet!'
    if not uint8(sub_89a5f084[arg1 << 192].field_1280):
        revert with 0, 'pool closed!'
    if address(sub_89a5f084[arg1 << 192].field_1296) != msg.sender:
        revert with 0, 'non-admin!'
    uint256(sub_89a5f084[arg1 << 192].field_512) = arg3
    uint256(sub_89a5f084[arg1 << 192].field_256) = arg2
    stor8 = 1
}

function sub_9fdf0972(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint64(arg1)
    require arg2 == address(arg2)
    idx = stor6
    s = 0
    while idx > 0:
        mem[0] = idx
        mem[32] = 3
        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 3
        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = s + 1
        continue 
    return s
}

function sub_db95e097(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = stor6
    s = 0
    t = 0
    while idx > stor7:
        mem[0] = idx
        mem[32] = 3
        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = s
            t = t
            continue 
        if uint8(t) == 255:
            revert with 'NH{q', 17
        mem[0] = idx
        mem[32] = 3
        if s > -uint256(sub_f3a4d071[idx].field_512) - 1:
            revert with 'NH{q', 17
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = s + uint256(sub_f3a4d071[idx].field_512)
        t = uint8(t) + 1
        continue 
    return t << 248, s
}

function sub_a8687b1b(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6 < stor7:
        revert with 'NH{q', 17
    if stor6 - stor7 > test266151307():
        revert with 'NH{q', 65
    mem[96] = stor6 - stor7
    if stor6 - stor7:
        mem[128 len 32 * stor6 - stor7] = call.data[calldata.size len 32 * stor6 - stor7]
    idx = stor6
    s = 0
    while idx > stor7:
        if s == -1:
            revert with 'NH{q', 17
        if s >= stor6 - stor7:
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = idx
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = s + 1
        continue 
    mem[(32 * stor6 - stor7) + 128] = 32
    mem[(32 * stor6 - stor7) + 160] = stor6 - stor7
    mem[(32 * stor6 - stor7) + 192 len 32 * stor6 - stor7] = mem[128 len 32 * stor6 - stor7]
    return 32, mem[(32 * stor6 - stor7) + 160 len (32 * stor6 - stor7) + 32]
}

function sub_61763cc0(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if stor8 != 1:
        revert with 0, 'Guess: reentrant call'
    stor8 = 0
    if address(sub_89a5f084[arg1 << 192].field_1296) == msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != msg.sender:
            revert with 0, 'non-admin!'
    ('eq', ('stor', ('name', 'owner', 0)), 'msg.sender')
    idx = stor6
    s = 0
    t = 0
    while idx > stor7:
        mem[0] = idx
        mem[32] = 3
        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = s
            t = t
            continue 
        if uint8(t) == 255:
            revert with 'NH{q', 17
        mem[0] = idx
        mem[32] = 3
        if s > -uint256(sub_f3a4d071[idx].field_512) - 1:
            revert with 'NH{q', 17
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = s + uint256(sub_f3a4d071[idx].field_512)
        t = uint8(t) + 1
        continue 
    if s:
        revert with 0, 'There are unprocessed bets!'
    uint8(sub_89a5f084[arg1 << 192].field_1280) = 0
    if uint64(stor5.length.field_64) == test266151307():
        revert with 'NH{q', 17
    uint64(stor5.length.field_64) = uint64(uint64(stor5.length.field_64) + 1)
    stor8 = 1
}

function sub_0f051155(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if stor8 != 1:
        revert with 0, 'Guess: reentrant call'
    stor8 = 0
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Contract not allowed'
    if tx.origin != msg.sender:
        revert with 0, 'Proxy contract not allowed'
    if not uint8(sub_89a5f084[arg1 << 192].field_1280):
        revert with 0, 'Invalid pid of pool'
    if uint8(sub_89a5f084[arg1 << 192].field_1288):
        revert with 0, 'pool pausing'
    if msg.value < uint256(sub_89a5f084[arg1 << 192].field_256):
        revert with 0, 'Less than min bet'
    if msg.value > uint256(sub_89a5f084[arg1 << 192].field_512):
        revert with 0, 'Greater than max bet'
    if stor6 == -1:
        revert with 'NH{q', 17
    stor6++
    uint8(sub_f3a4d071[stor6 + 1].field_0) = 0
    uint64(sub_f3a4d071[stor6 + 1].field_8) = uint64(arg1)
    uint256(sub_f3a4d071[stor6 + 1].field_256) = block.number
    uint256(sub_f3a4d071[stor6 + 1].field_512) = msg.value
    uint256(sub_f3a4d071[stor6 + 1].field_768) = block.timestamp
    address(sub_f3a4d071[stor6 + 1].field_1536) = msg.sender
    if msg.value and stor1.length > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value < msg.value * stor1.length / 100:
        revert with 'NH{q', 17
    if uint256(sub_89a5f084[arg1 << 192].field_1024) > -msg.value + (msg.value * stor1.length / 100) - 1:
        revert with 'NH{q', 17
    uint256(sub_89a5f084[arg1 << 192].field_1024) = uint256(sub_89a5f084[arg1 << 192].field_1024) + msg.value - (msg.value * stor1.length / 100)
    stor8 = 1
}

function sub_8c41c40c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if stor8 != 1:
        revert with 0, 'Guess: reentrant call'
    stor8 = 0
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'Contract not allowed'
    if tx.origin != msg.sender:
        revert with 0, 'Proxy contract not allowed'
    if not uint8(sub_89a5f084[arg1 << 192].field_1280):
        revert with 0, 'Invalid pid of pool'
    if uint8(sub_89a5f084[arg1 << 192].field_1288):
        revert with 0, 'Invalid pid of pool'
    if msg.value < uint256(sub_89a5f084[arg1 << 192].field_256):
        revert with 0, 'less than min bet'
    if msg.value > uint256(sub_89a5f084[arg1 << 192].field_512):
        revert with 0, 'Greater than max bet'
    if stor6 == -1:
        revert with 'NH{q', 17
    stor6++
    uint8(sub_f3a4d071[stor6 + 1].field_0) = 1
    uint64(sub_f3a4d071[stor6 + 1].field_8) = uint64(arg1)
    uint256(sub_f3a4d071[stor6 + 1].field_256) = block.number
    uint256(sub_f3a4d071[stor6 + 1].field_512) = msg.value
    uint256(sub_f3a4d071[stor6 + 1].field_768) = block.timestamp
    address(sub_f3a4d071[stor6 + 1].field_1536) = msg.sender
    if msg.value and stor1.length > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value < msg.value * stor1.length / 100:
        revert with 'NH{q', 17
    if uint256(sub_89a5f084[arg1 << 192].field_1024) > -msg.value + (msg.value * stor1.length / 100) - 1:
        revert with 'NH{q', 17
    uint256(sub_89a5f084[arg1 << 192].field_1024) = uint256(sub_89a5f084[arg1 << 192].field_1024) + msg.value - (msg.value * stor1.length / 100)
    stor8 = 1
}

function sub_f84479d6(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == uint8(arg3)
    if stor8 != 1:
        revert with 0, 'Guess: reentrant call'
    stor8 = 0
    if arg1 < 10^16:
        revert with 0, 'Min bet >= 0.01'
    if arg2 <= arg1:
        revert with 0, 'Max bet > Min bet!'
    if uint8(arg3) < 50:
        revert with 0, 'Odds cannot be lower than 50!'
    if uint8(arg3) and arg2 > -1 / uint8(arg3):
        revert with 'NH{q', 17
    if arg2 > -(uint8(arg3) * arg2 / 100) - 1:
        revert with 'NH{q', 17
    if msg.value < arg2 + (uint8(arg3) * arg2 / 100):
        revert with 0, 'Payout is not enough!'
    if uint64(stor5.length) == test266151307():
        revert with 'NH{q', 17
    uint64(stor5.length) = uint64(uint64(stor5.length) + 1)
    uint8(sub_89a5f084[uint64(stor5.length)].field_0) = uint8(arg3)
    Mask(232, 0, sub_89a5f084[uint64(stor5.length)].field_24) = uint64(stor5.length)
    uint256(sub_89a5f084[uint64(stor5.length)].field_256) = arg1
    uint256(sub_89a5f084[uint64(stor5.length)].field_512) = arg2
    uint256(sub_89a5f084[uint64(stor5.length)].field_1024) = msg.value
    uint8(sub_89a5f084[uint64(stor5.length)].field_1280) = 1
    address(sub_89a5f084[uint64(stor5.length)].field_1296) = msg.sender
    uint256(stor4[address(msg.sender)].field_0)++
    uint256(stor4[address(msg.sender)][Mask(254, 0, stor4[address(msg.sender)].field_2)].field_0) = uint64(stor5.length) * 256^(8 * stor4[address(msg.sender)].field_0 % 4) or !(test266151307() * 256^(8 * stor4[address(msg.sender)].field_0 % 4)) and uint256(stor4[address(msg.sender)][Mask(254, 0, stor4[address(msg.sender)].field_2)].field_0)
    emit 0x4f345444: block.timestamp, msg.sender, uint64(stor5.length)
    stor8 = 1
}

function getBalances() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 1
    s = 0
    while uint64(idx) <= uint64(stor5.length):
        if s > -uint256(sub_89a5f084[idx << 192].field_1024) - 1:
            revert with 'NH{q', 17
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        t = stor6
        u = 0
        v = 0
        while t > stor7:
            mem[0] = t
            mem[32] = 3
            if uint64(sub_f3a4d071[t].field_8) != uint64(idx):
                if not t:
                    revert with 'NH{q', 17
                t = t - 1
                u = u
                v = v
                continue 
            if uint8(v) == 255:
                revert with 'NH{q', 17
            mem[0] = t
            mem[32] = 3
            if u > -uint256(sub_f3a4d071[t].field_512) - 1:
                revert with 'NH{q', 17
            if not t:
                revert with 'NH{q', 17
            t = t - 1
            u = u + uint256(sub_f3a4d071[t].field_512)
            v = uint8(v) + 1
            continue 
        mem[0] = uint64(idx)
        mem[32] = 2
        if uint8(sub_89a5f084[idx << 192].field_0) and u > -1 / uint8(sub_89a5f084[idx << 192].field_0):
            revert with 'NH{q', 17
        if u > -(uint8(sub_89a5f084[idx << 192].field_0) * u / 100) - 1:
            revert with 'NH{q', 17
        if 0 > -u + -(uint8(sub_89a5f084[idx << 192].field_0) * u / 100) - 1:
            revert with 'NH{q', 17
        if uint64(idx) == test266151307():
            revert with 'NH{q', 17
        idx = uint64(idx) + 1
        s = s + uint256(sub_89a5f084[idx << 192].field_1024)
        continue 
    if eth.balance(this.address) < s:
        revert with 'NH{q', 17
    return s, 0, eth.balance(this.address) - s
}

function sub_d5de83a2(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint64(arg1)
    require arg2 == bool(arg2)
    if stor8 != 1:
        revert with 0, 'Guess: reentrant call'
    stor8 = 0
    if address(sub_89a5f084[arg1 << 192].field_1296) != msg.sender:
        if owner != msg.sender:
            revert with 0, 'non-admin!'
    if not arg2:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = stor6
        s = 0
        t = 0
        while idx > stor7:
            mem[0] = idx
            mem[32] = 3
            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = s
                t = t
                continue 
            if uint8(t) == 255:
                revert with 'NH{q', 17
            mem[0] = idx
            mem[32] = 3
            if s > -uint256(sub_f3a4d071[idx].field_512) - 1:
                revert with 'NH{q', 17
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = s + uint256(sub_f3a4d071[idx].field_512)
            t = uint8(t) + 1
            continue 
        if s > -uint256(sub_89a5f084[arg1 << 192].field_512) - 1:
            revert with 'NH{q', 17
        if uint8(sub_89a5f084[arg1 << 192].field_0) and s + uint256(sub_89a5f084[arg1 << 192].field_512) > -1 / uint8(sub_89a5f084[arg1 << 192].field_0):
            revert with 'NH{q', 17
        if s + uint256(sub_89a5f084[arg1 << 192].field_512) > -((s * uint8(sub_89a5f084[arg1 << 192].field_0)) + (uint256(sub_89a5f084[arg1 << 192].field_512) * uint8(sub_89a5f084[arg1 << 192].field_0)) / 100) - 1:
            revert with 'NH{q', 17
        if uint256(sub_89a5f084[arg1 << 192].field_1024) < s + uint256(sub_89a5f084[arg1 << 192].field_512) + ((s * uint8(sub_89a5f084[arg1 << 192].field_0)) + (uint256(sub_89a5f084[arg1 << 192].field_512) * uint8(sub_89a5f084[arg1 << 192].field_0)) / 100):
            revert with 0, 'Pool bonuses are not enough!'
    Mask(248, 0, sub_89a5f084[arg1 << 192].field_1288) = Mask(248, 0, bool(arg2))
    stor8 = 1
}

function sub_3e9d8728(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if address(sub_89a5f084[arg1 << 192].field_1296) != msg.sender:
        revert with 0, 'non-admin!'
    if not uint8(sub_89a5f084[arg1 << 192].field_1280):
        return uint256(sub_89a5f084[arg1 << 192].field_1024)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = stor6
    s = 0
    t = 0
    while idx > stor7:
        mem[0] = idx
        mem[32] = 3
        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = s
            t = t
            continue 
        if uint8(t) == 255:
            revert with 'NH{q', 17
        mem[0] = idx
        mem[32] = 3
        if s > -uint256(sub_f3a4d071[idx].field_512) - 1:
            revert with 'NH{q', 17
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = s + uint256(sub_f3a4d071[idx].field_512)
        t = uint8(t) + 1
        continue 
    if s > -uint256(sub_89a5f084[arg1 << 192].field_512) - 1:
        revert with 'NH{q', 17
    if uint8(sub_89a5f084[arg1 << 192].field_0) and s + uint256(sub_89a5f084[arg1 << 192].field_512) > -1 / uint8(sub_89a5f084[arg1 << 192].field_0):
        revert with 'NH{q', 17
    if s + uint256(sub_89a5f084[arg1 << 192].field_512) > -((s * uint8(sub_89a5f084[arg1 << 192].field_0)) + (uint256(sub_89a5f084[arg1 << 192].field_512) * uint8(sub_89a5f084[arg1 << 192].field_0)) / 100) - 1:
        revert with 'NH{q', 17
    if s + uint256(sub_89a5f084[arg1 << 192].field_512) + ((s * uint8(sub_89a5f084[arg1 << 192].field_0)) + (uint256(sub_89a5f084[arg1 << 192].field_512) * uint8(sub_89a5f084[arg1 << 192].field_0)) / 100) >= uint256(sub_89a5f084[arg1 << 192].field_1024):
        return 0
    if uint256(sub_89a5f084[arg1 << 192].field_1024) < s + uint256(sub_89a5f084[arg1 << 192].field_512) + ((s * uint8(sub_89a5f084[arg1 << 192].field_0)) + (uint256(sub_89a5f084[arg1 << 192].field_512) * uint8(sub_89a5f084[arg1 << 192].field_0)) / 100):
        revert with 'NH{q', 17
    return (uint256(sub_89a5f084[arg1 << 192].field_1024) - s - uint256(sub_89a5f084[arg1 << 192].field_512) - ((s * uint8(sub_89a5f084[arg1 << 192].field_0)) + (uint256(sub_89a5f084[arg1 << 192].field_512) * uint8(sub_89a5f084[arg1 << 192].field_0)) / 100))
}

function sub_1abcfea7(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if bool(arg1) != 1:
        if uint64(stor5.length.field_64) > test266151307():
            revert with 'NH{q', 65
        if uint64(stor5.length.field_64):
            mem[128 len 32 * uint64(stor5.length.field_64)] = call.data[calldata.size len 32 * uint64(stor5.length.field_64)]
        idx = 1
        s = 0
        while uint64(idx) <= uint64(stor5.length):
            mem[0] = uint64(idx)
            mem[32] = 2
            if bool(uint8(sub_89a5f084[idx << 192].field_1280)) != bool(arg1):
                if uint64(idx) == test266151307():
                    revert with 'NH{q', 17
                idx = uint64(idx) + 1
                s = s
                continue 
            mem[0] = uint64(idx)
            mem[32] = 2
            if s >= uint64(stor5.length.field_64):
                revert with 'NH{q', 50
            mem[(32 * s) + 128] = uint64(sub_89a5f084[idx << 192].field_24)
            if s == -1:
                revert with 'NH{q', 17
            if uint64(idx) == test266151307():
                revert with 'NH{q', 17
            idx = uint64(idx) + 1
            s = s + 1
            continue 
        return Array(len=uint64(stor5.length), data=mem[128 len 32 * uint64(stor5.length.field_64)])
    if uint64(stor5.length) < uint64(stor5.length.field_64):
        revert with 'NH{q', 17
    if uint64(uint64(stor5.length) - uint64(stor5.length.field_64)) > test266151307():
        revert with 'NH{q', 65
    mem[96] = uint64(uint64(stor5.length) - uint64(stor5.length.field_64))
    if uint64(uint64(stor5.length) - uint64(stor5.length.field_64)):
        mem[128 len 32 * uint64(uint64(stor5.length) - uint64(stor5.length.field_64))] = call.data[calldata.size len 32 * uint64(uint64(stor5.length) - uint64(stor5.length.field_64))]
    idx = 1
    s = 0
    while uint64(idx) <= uint64(stor5.length):
        mem[0] = uint64(idx)
        mem[32] = 2
        if bool(uint8(sub_89a5f084[idx << 192].field_1280)) != bool(arg1):
            if uint64(idx) == test266151307():
                revert with 'NH{q', 17
            idx = uint64(idx) + 1
            s = s
            continue 
        mem[0] = uint64(idx)
        mem[32] = 2
        if s >= uint64(uint64(stor5.length) - uint64(stor5.length.field_64)):
            revert with 'NH{q', 50
        mem[(32 * s) + 128] = uint64(sub_89a5f084[idx << 192].field_24)
        if s == -1:
            revert with 'NH{q', 17
        if uint64(idx) == test266151307():
            revert with 'NH{q', 17
        idx = uint64(idx) + 1
        s = s + 1
        continue 
    mem[(32 * uint64(uint64(stor5.length) - uint64(stor5.length.field_64))) + 128] = 32
    mem[(32 * uint64(uint64(stor5.length) - uint64(stor5.length.field_64))) + 160] = uint64(uint64(stor5.length) - uint64(stor5.length.field_64))
    mem[(32 * uint64(uint64(stor5.length) - uint64(stor5.length.field_64))) + 192 len 32 * uint64(uint64(stor5.length) - uint64(stor5.length.field_64))] = mem[128 len 32 * uint64(uint64(stor5.length) - uint64(stor5.length.field_64))]
    return 32, mem[(32 * uint64(uint64(stor5.length) - uint64(stor5.length.field_64))) + 160 len (32 * uint64(uint64(stor5.length) - uint64(stor5.length.field_64))) + 32], 
}

function sub_bd49cf87(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint64(arg1)
    require arg2 == arg2
    if stor8 != 1:
        revert with 0, 'Guess: reentrant call'
    stor8 = 0
    if address(sub_89a5f084[arg1 << 192].field_1296) != msg.sender:
        revert with 0, 'non-admin!'
    if address(sub_89a5f084[arg1 << 192].field_1296) != msg.sender:
        revert with 0, 'non-admin!'
    if not uint8(sub_89a5f084[arg1 << 192].field_1280):
        if arg2 > uint256(sub_89a5f084[arg1 << 192].field_1024):
            revert with 0, 'Insufficient balance'
    else:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = stor6
        s = 0
        t = 0
        while idx > stor7:
            mem[0] = idx
            mem[32] = 3
            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = s
                t = t
                continue 
            if uint8(t) == 255:
                revert with 'NH{q', 17
            mem[0] = idx
            mem[32] = 3
            if s > -uint256(sub_f3a4d071[idx].field_512) - 1:
                revert with 'NH{q', 17
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = s + uint256(sub_f3a4d071[idx].field_512)
            t = uint8(t) + 1
            continue 
        if s > -uint256(sub_89a5f084[arg1 << 192].field_512) - 1:
            revert with 'NH{q', 17
        if uint8(sub_89a5f084[arg1 << 192].field_0) and s + uint256(sub_89a5f084[arg1 << 192].field_512) > -1 / uint8(sub_89a5f084[arg1 << 192].field_0):
            revert with 'NH{q', 17
        if s + uint256(sub_89a5f084[arg1 << 192].field_512) > -((s * uint8(sub_89a5f084[arg1 << 192].field_0)) + (uint256(sub_89a5f084[arg1 << 192].field_512) * uint8(sub_89a5f084[arg1 << 192].field_0)) / 100) - 1:
            revert with 'NH{q', 17
        if s + uint256(sub_89a5f084[arg1 << 192].field_512) + ((s * uint8(sub_89a5f084[arg1 << 192].field_0)) + (uint256(sub_89a5f084[arg1 << 192].field_512) * uint8(sub_89a5f084[arg1 << 192].field_0)) / 100) >= uint256(sub_89a5f084[arg1 << 192].field_1024):
            if arg2 > 0:
                revert with 0, 'Insufficient balance'
        else:
            if uint256(sub_89a5f084[arg1 << 192].field_1024) < s + uint256(sub_89a5f084[arg1 << 192].field_512) + ((s * uint8(sub_89a5f084[arg1 << 192].field_0)) + (uint256(sub_89a5f084[arg1 << 192].field_512) * uint8(sub_89a5f084[arg1 << 192].field_0)) / 100):
                revert with 'NH{q', 17
            if arg2 > uint256(sub_89a5f084[arg1 << 192].field_1024) - s - uint256(sub_89a5f084[arg1 << 192].field_512) - ((s * uint8(sub_89a5f084[arg1 << 192].field_0)) + (uint256(sub_89a5f084[arg1 << 192].field_512) * uint8(sub_89a5f084[arg1 << 192].field_0)) / 100):
                revert with 0, 'Insufficient balance'
    if uint256(sub_89a5f084[arg1 << 192].field_1024) < arg2:
        revert with 'NH{q', 17
    uint256(sub_89a5f084[arg1 << 192].field_1024) -= arg2
    call address(sub_89a5f084[arg1 << 192].field_1296) with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferBNB: TRANSFER_FAILED'
    stor8 = 1
}

function sub_9721389e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == uint64(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 152 len 8]
            mem[32] = 2
            _93 = sha3(mem[(32 * idx) + 152 len 8], 2)
            _94 = mem[64]
            mem[64] = mem[64] + 320
            mem[_94] = uint8(sub_89a5f084[mem[(32 * idx) + 152 len 8]].field_0)
            mem[_94 + 32] = uint16(stor[_93].field_8)
            mem[_94 + 64] = uint64(stor[_93].field_24)
            mem[_94 + 96] = stor1[_93]
            mem[_94 + 128] = uint256(sub_89a5f084[_93].field_0)
            mem[_94 + 160] = uint256(sub_f3a4d071[_93].field_0)
            mem[_94 + 192] = uint256(stor4[_93].field_0)
            mem[_94 + 224] = bool(uint8(stor5[_93].field_0))
            mem[_94 + 256] = bool(uint8(stor5[_93].field_8))
            mem[_94 + 288] = address(stor5[_93].field_16)
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _94
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _91 = mem[64]
        mem[mem[64]] = 32
        _96 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _96:
            _130 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            mem[t + 32] = mem[_130 + 62 len 2]
            mem[t + 64] = mem[_130 + 88 len 8]
            mem[t + 96] = mem[_130 + 96]
            mem[t + 128] = mem[_130 + 128]
            mem[t + 160] = mem[_130 + 160]
            mem[t + 192] = mem[_130 + 192]
            mem[t + 224] = bool(mem[_130 + 224])
            mem[t + 256] = bool(mem[_130 + 256])
            mem[t + 288] = mem[_130 + 300 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 320
            continue 
        return memory
          from mem[64]
           len _91 + (320 * _96) + -mem[64] + 64
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
    mem[var34001] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var34001
    idx = var34002
    while idx - 1:
        mem[64] = mem[64] + 320
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
        mem[s + 32] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _162 = mem[96]
    idx = 0
    while idx < _162:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 152 len 8]
        mem[32] = 2
        _166 = sha3(mem[(32 * idx) + 152 len 8], 2)
        _167 = mem[64]
        mem[64] = mem[64] + 320
        mem[_167] = uint8(sub_89a5f084[mem[(32 * idx) + 152 len 8]].field_0)
        mem[_167 + 32] = uint16(stor[_166].field_8)
        mem[_167 + 64] = uint64(stor[_166].field_24)
        mem[_167 + 96] = stor1[_166]
        mem[_167 + 128] = uint256(sub_89a5f084[_166].field_0)
        mem[_167 + 160] = uint256(sub_f3a4d071[_166].field_0)
        mem[_167 + 192] = uint256(stor4[_166].field_0)
        mem[_167 + 224] = bool(uint8(stor5[_166].field_0))
        mem[_167 + 256] = bool(uint8(stor5[_166].field_8))
        mem[_167 + 288] = address(stor5[_166].field_16)
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _167
        if idx == -1:
            revert with 'NH{q', 17
        _162 = mem[96]
        idx = idx + 1
        continue 
    _164 = mem[64]
    mem[mem[64]] = 32
    _169 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _169:
        _182 = mem[s]
        mem[t] = mem[mem[s] + 31 len 1]
        mem[t + 32] = mem[_182 + 62 len 2]
        mem[t + 64] = mem[_182 + 88 len 8]
        mem[t + 96] = mem[_182 + 96]
        mem[t + 128] = mem[_182 + 128]
        mem[t + 160] = mem[_182 + 160]
        mem[t + 192] = mem[_182 + 192]
        mem[t + 224] = bool(mem[_182 + 224])
        mem[t + 256] = bool(mem[_182 + 256])
        mem[t + 288] = mem[_182 + 300 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 320
        continue 
    return memory
      from mem[64]
       len _164 + (320 * _169) + -mem[64] + 64
}

function sub_e5b5a871(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307() or floor32(('cd', 36).length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = floor32(('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == uint64(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99 > test266151307() or floor32(('cd', 68).length) + 99 < 98:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100 > test266151307() or floor32(('cd', 100).length) + 100 < 99:
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        require cd[idx] == cd[idx]
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 101 > test266151307() or floor32(('cd', 132).length) + 101 < 100:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + floor32(('cd', 132).length) + 101
    mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = cd[132] + 36
    s = floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 132
    while idx < cd[132] + (32 * ('cd', 132).length) + 36:
        require cd[idx] == bool(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[164] == cd[164]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    t = 0
    u = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        _181 = sha3(mem[(32 * idx) + 128], 3)
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98]:
            revert with 'NH{q', 50
        if uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_256) != mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + 130]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            u = sha3(mem[(32 * idx) + 128], 3)
            continue 
        if uint8(sub_f3a4d071[mem[(32 * idx) + 128]].field_1032):
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            u = sha3(mem[(32 * idx) + 128], 3)
            continue 
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100]:
            revert with 'NH{q', 50
        uint8(sub_f3a4d071[mem[(32 * idx) + 128]].field_1024) = uint8(bool(mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 132]))
        Mask(248, 0, sub_f3a4d071[mem[(32 * idx) + 128]].field_1032) = 1
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 99]:
            revert with 'NH{q', 50
        uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_1280) = mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + 131]
        if idx >= mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 100]:
            revert with 'NH{q', 50
        if bool(mem[(32 * idx) + floor32(('cd', 4).length) + floor32(('cd', 36).length) + floor32(('cd', 68).length) + floor32(('cd', 100).length) + 132]) != 1:
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = t
            u = sha3(mem[(32 * idx) + 128], 3)
            continue 
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        _192 = sha3(mem[(32 * idx) + floor32(('cd', 4).length) + 153 len 8], 2)
        if uint8(sub_89a5f084[mem[(32 * idx) + floor32(('cd', 4).length) + 153 len 8]].field_0) and uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_512) > -1 / uint8(sub_89a5f084[mem[(32 * idx) + floor32(('cd', 4).length) + 153 len 8]].field_0):
            revert with 'NH{q', 17
        if uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_512) > -(uint8(sub_89a5f084[mem[(32 * idx) + floor32(('cd', 4).length) + 153 len 8]].field_0) * uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_512) / 100) - 1:
            revert with 'NH{q', 17
        if uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_512) + (uint8(sub_89a5f084[mem[(32 * idx) + floor32(('cd', 4).length) + 153 len 8]].field_0) * uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_512) / 100) > -cd[164] - 1:
            revert with 'NH{q', 17
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + floor32(('cd', 4).length) + 153 len 8]
        mem[32] = 2
        if uint256(sub_89a5f084[mem[(32 * idx) + floor32(('cd', 4).length) + 153 len 8]].field_1024) < uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_512) + (uint8(sub_89a5f084[mem[(32 * idx) + floor32(('cd', 4).length) + 153 len 8]].field_0) * uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_512) / 100) + cd[164]:
            revert with 'NH{q', 17
        uint256(sub_89a5f084[mem[(32 * idx) + floor32(('cd', 4).length) + 153 len 8]].field_1024) = uint256(sub_89a5f084[mem[(32 * idx) + floor32(('cd', 4).length) + 153 len 8]].field_1024) - uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_512) - (uint8(sub_89a5f084[mem[(32 * idx) + floor32(('cd', 4).length) + 153 len 8]].field_0) * uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_512) / 100) - cd[164]
        call address(sub_f3a4d071[mem[(32 * idx) + 128]].field_1536) with:
           value uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_512) + (uint8(sub_89a5f084[mem[(32 * idx) + floor32(('cd', 4).length) + 153 len 8]].field_0) * uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_512) / 100) wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'TransferBNB: TRANSFER_FAILED'
            if s == -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + 1
            t = uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_512) + (uint8(sub_89a5f084[mem[(32 * idx) + floor32(('cd', 4).length) + 153 len 8]].field_0) * uint256(sub_f3a4d071[mem[(32 * idx) + 128]].field_512) / 100)
            u = sha3(mem[(32 * idx) + 128], 3)
            continue 
        _198 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_198] = return_data.size
        mem[_198 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferBNB: TRANSFER_FAILED'
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        t = uint256(sub_89a5f084[_181].field_0) + (uint8(stor[_192].field_0) * uint256(sub_89a5f084[_181].field_0) / 100)
        u = _181
        continue 
    if stor7 > -s - 1:
        revert with 'NH{q', 17
    stor7 += s
}

function sub_f460ee07(?) {
    mem[0] = msg.sender
    mem[32] = 4
    mem[96] = uint256(stor4[address(msg.sender)].field_0)
    if not uint256(stor4[address(msg.sender)].field_0):
        if uint256(stor4[address(msg.sender)].field_0) > test266151307():
            revert with 'NH{q', 65
        mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128] = uint256(stor4[address(msg.sender)].field_0)
        mem[64] = (64 * uint256(stor4[address(msg.sender)].field_0)) + 160
        if not uint256(stor4[address(msg.sender)].field_0):
            idx = 0
            while idx < uint256(stor4[address(msg.sender)].field_0):
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 152 len 8]
                mem[32] = 2
                _135 = sha3(mem[(32 * idx) + 152 len 8], 2)
                _136 = mem[64]
                mem[64] = mem[64] + 320
                mem[_136] = uint8(sub_89a5f084[mem[(32 * idx) + 152 len 8]].field_0)
                mem[_136 + 32] = uint16(stor[_135].field_8)
                mem[_136 + 64] = uint64(stor[_135].field_24)
                mem[_136 + 96] = stor1[_135]
                mem[_136 + 128] = uint256(sub_89a5f084[_135].field_0)
                mem[_136 + 160] = uint256(sub_f3a4d071[_135].field_0)
                mem[_136 + 192] = uint256(stor4[_135].field_0)
                mem[_136 + 224] = bool(uint8(stor5[_135].field_0))
                mem[_136 + 256] = bool(uint8(stor5[_135].field_8))
                mem[_136 + 288] = address(stor5[_135].field_16)
                if idx >= mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * uint256(stor4[address(msg.sender)].field_0)) + 160] = _136
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                s = stor6
                t = 0
                u = 0
                while s > stor7:
                    mem[0] = s
                    mem[32] = 3
                    if uint64(sub_f3a4d071[s].field_8) != mem[(32 * idx) + 152 len 8]:
                        if not s:
                            revert with 'NH{q', 17
                        s = s - 1
                        t = t
                        u = u
                        continue 
                    if uint8(u) == 255:
                        revert with 'NH{q', 17
                    mem[0] = s
                    mem[32] = 3
                    if t > -uint256(sub_f3a4d071[s].field_512) - 1:
                        revert with 'NH{q', 17
                    if not s:
                        revert with 'NH{q', 17
                    s = s - 1
                    t = t + uint256(sub_f3a4d071[s].field_512)
                    u = uint8(u) + 1
                    continue 
                if idx >= mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]:
                    revert with 'NH{q', 50
                mem[_136 + 32] = uint8(u)
                if idx >= mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]:
                    revert with 'NH{q', 50
                mem[_136 + 160] = t
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _133 = mem[64]
            mem[mem[64]] = 32
            _142 = mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]
            mem[mem[64] + 32] = mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]
            idx = 0
            s = (32 * uint256(stor4[address(msg.sender)].field_0)) + 160
            t = mem[64] + 64
            while idx < _142:
                _256 = mem[s]
                mem[t] = mem[mem[s] + 31 len 1]
                mem[t + 32] = mem[_256 + 62 len 2]
                mem[t + 64] = mem[_256 + 88 len 8]
                mem[t + 96] = mem[_256 + 96]
                mem[t + 128] = mem[_256 + 128]
                mem[t + 160] = mem[_256 + 160]
                mem[t + 192] = mem[_256 + 192]
                mem[t + 224] = bool(mem[_256 + 224])
                mem[t + 256] = bool(mem[_256 + 256])
                mem[t + 288] = mem[_256 + 300 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 320
                continue 
            return memory
              from mem[64]
               len _133 + (320 * _142) + -mem[64] + 64
        mem[64] = (64 * uint256(stor4[address(msg.sender)].field_0)) + 480
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 160] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 192] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 224] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 256] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 288] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 320] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 352] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 384] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 416] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 448] = 0
        mem[var10001] = (64 * uint256(stor4[address(msg.sender)].field_0)) + 160
        s = var10001
        idx = var10002
        while idx - 1:
            mem[64] = mem[64] + 320
            mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 160] = 0
            mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 192] = 0
            mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 224] = 0
            mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 256] = 0
            mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 288] = 0
            mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 320] = 0
            mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 352] = 0
            mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 384] = 0
            mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 416] = 0
            mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 448] = 0
            mem[s + 32] = (64 * uint256(stor4[address(msg.sender)].field_0)) + 160
            s = s + 32
            idx = idx - 1
            continue 
        _364 = mem[96]
        idx = 0
        while idx < _364:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 152 len 8]
            mem[32] = 2
            _371 = sha3(mem[(32 * idx) + 152 len 8], 2)
            _372 = mem[64]
            mem[64] = mem[64] + 320
            mem[_372] = uint8(sub_89a5f084[mem[(32 * idx) + 152 len 8]].field_0)
            mem[_372 + 32] = uint16(stor[_371].field_8)
            mem[_372 + 64] = uint64(stor[_371].field_24)
            mem[_372 + 96] = stor1[_371]
            mem[_372 + 128] = uint256(sub_89a5f084[_371].field_0)
            mem[_372 + 160] = uint256(sub_f3a4d071[_371].field_0)
            mem[_372 + 192] = uint256(stor4[_371].field_0)
            mem[_372 + 224] = bool(uint8(stor5[_371].field_0))
            mem[_372 + 256] = bool(uint8(stor5[_371].field_8))
            mem[_372 + 288] = address(stor5[_371].field_16)
            if idx >= mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * uint256(stor4[address(msg.sender)].field_0)) + 160] = _372
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            s = stor6
            t = 0
            u = 0
            while s > stor7:
                mem[0] = s
                mem[32] = 3
                if uint64(sub_f3a4d071[s].field_8) != mem[(32 * idx) + 152 len 8]:
                    if not s:
                        revert with 'NH{q', 17
                    s = s - 1
                    t = t
                    u = u
                    continue 
                if uint8(u) == 255:
                    revert with 'NH{q', 17
                mem[0] = s
                mem[32] = 3
                if t > -uint256(sub_f3a4d071[s].field_512) - 1:
                    revert with 'NH{q', 17
                if not s:
                    revert with 'NH{q', 17
                s = s - 1
                t = t + uint256(sub_f3a4d071[s].field_512)
                u = uint8(u) + 1
                continue 
            if idx >= mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]:
                revert with 'NH{q', 50
            mem[_372 + 32] = uint8(u)
            if idx >= mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]:
                revert with 'NH{q', 50
            mem[_372 + 160] = t
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _369 = mem[64]
        mem[mem[64]] = 32
        _383 = mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]
        mem[mem[64] + 32] = mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]
        idx = 0
        s = (32 * uint256(stor4[address(msg.sender)].field_0)) + 160
        t = mem[64] + 64
        while idx < _383:
            _444 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            mem[t + 32] = mem[_444 + 62 len 2]
            mem[t + 64] = mem[_444 + 88 len 8]
            mem[t + 96] = mem[_444 + 96]
            mem[t + 128] = mem[_444 + 128]
            mem[t + 160] = mem[_444 + 160]
            mem[t + 192] = mem[_444 + 192]
            mem[t + 224] = bool(mem[_444 + 224])
            mem[t + 256] = bool(mem[_444 + 256])
            mem[t + 288] = mem[_444 + 300 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 320
            continue 
        return memory
          from mem[64]
           len _369 + (320 * _383) + -mem[64] + 64
    mem[0] = sha3(address(msg.sender), 4)
    mem[128] = uint64(stor4[address(msg.sender)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(stor4[address(msg.sender)].field_0)) + 96 > idx:
        mem[idx + 32] = uint64(stor4[address(msg.sender)].field_8 * (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s))
        idx = idx + 32
        s = (8 * -(s + 15 / 32) + 1) + s - (s + 15 / 32 * s)
        continue 
    if uint256(stor4[address(msg.sender)].field_0) > test266151307():
        revert with 'NH{q', 65
    mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128] = uint256(stor4[address(msg.sender)].field_0)
    mem[64] = (64 * uint256(stor4[address(msg.sender)].field_0)) + 160
    if not uint256(stor4[address(msg.sender)].field_0):
        idx = 0
        while idx < uint256(stor4[address(msg.sender)].field_0):
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 152 len 8]
            mem[32] = 2
            _263 = sha3(mem[(32 * idx) + 152 len 8], 2)
            _264 = mem[64]
            mem[64] = mem[64] + 320
            mem[_264] = uint8(sub_89a5f084[mem[(32 * idx) + 152 len 8]].field_0)
            mem[_264 + 32] = uint16(stor[_263].field_8)
            mem[_264 + 64] = uint64(stor[_263].field_24)
            mem[_264 + 96] = stor1[_263]
            mem[_264 + 128] = uint256(sub_89a5f084[_263].field_0)
            mem[_264 + 160] = uint256(sub_f3a4d071[_263].field_0)
            mem[_264 + 192] = uint256(stor4[_263].field_0)
            mem[_264 + 224] = bool(uint8(stor5[_263].field_0))
            mem[_264 + 256] = bool(uint8(stor5[_263].field_8))
            mem[_264 + 288] = address(stor5[_263].field_16)
            if idx >= mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * uint256(stor4[address(msg.sender)].field_0)) + 160] = _264
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            s = stor6
            t = 0
            u = 0
            while s > stor7:
                mem[0] = s
                mem[32] = 3
                if uint64(sub_f3a4d071[s].field_8) != mem[(32 * idx) + 152 len 8]:
                    if not s:
                        revert with 'NH{q', 17
                    s = s - 1
                    t = t
                    u = u
                    continue 
                if uint8(u) == 255:
                    revert with 'NH{q', 17
                mem[0] = s
                mem[32] = 3
                if t > -uint256(sub_f3a4d071[s].field_512) - 1:
                    revert with 'NH{q', 17
                if not s:
                    revert with 'NH{q', 17
                s = s - 1
                t = t + uint256(sub_f3a4d071[s].field_512)
                u = uint8(u) + 1
                continue 
            if idx >= mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]:
                revert with 'NH{q', 50
            mem[_264 + 32] = uint8(u)
            if idx >= mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]:
                revert with 'NH{q', 50
            mem[_264 + 160] = t
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _261 = mem[64]
        mem[mem[64]] = 32
        _275 = mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]
        mem[mem[64] + 32] = mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]
        idx = 0
        s = (32 * uint256(stor4[address(msg.sender)].field_0)) + 160
        t = mem[64] + 64
        while idx < _275:
            _367 = mem[s]
            mem[t] = mem[mem[s] + 31 len 1]
            mem[t + 32] = mem[_367 + 62 len 2]
            mem[t + 64] = mem[_367 + 88 len 8]
            mem[t + 96] = mem[_367 + 96]
            mem[t + 128] = mem[_367 + 128]
            mem[t + 160] = mem[_367 + 160]
            mem[t + 192] = mem[_367 + 192]
            mem[t + 224] = bool(mem[_367 + 224])
            mem[t + 256] = bool(mem[_367 + 256])
            mem[t + 288] = mem[_367 + 300 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 320
            continue 
        return memory
          from mem[64]
           len _261 + (320 * _275) + -mem[64] + 64
    mem[64] = (64 * uint256(stor4[address(msg.sender)].field_0)) + 480
    mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 160] = 0
    mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 192] = 0
    mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 224] = 0
    mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 256] = 0
    mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 288] = 0
    mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 320] = 0
    mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 352] = 0
    mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 384] = 0
    mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 416] = 0
    mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 448] = 0
    mem[var14001] = (64 * uint256(stor4[address(msg.sender)].field_0)) + 160
    s = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 320
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 160] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 192] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 224] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 256] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 288] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 320] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 352] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 384] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 416] = 0
        mem[(64 * uint256(stor4[address(msg.sender)].field_0)) + 448] = 0
        mem[s + 32] = (64 * uint256(stor4[address(msg.sender)].field_0)) + 160
        s = s + 32
        idx = idx - 1
        continue 
    _443 = mem[96]
    idx = 0
    while idx < _443:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 152 len 8]
        mem[32] = 2
        _450 = sha3(mem[(32 * idx) + 152 len 8], 2)
        _451 = mem[64]
        mem[64] = mem[64] + 320
        mem[_451] = uint8(sub_89a5f084[mem[(32 * idx) + 152 len 8]].field_0)
        mem[_451 + 32] = uint16(stor[_450].field_8)
        mem[_451 + 64] = uint64(stor[_450].field_24)
        mem[_451 + 96] = stor1[_450]
        mem[_451 + 128] = uint256(sub_89a5f084[_450].field_0)
        mem[_451 + 160] = uint256(sub_f3a4d071[_450].field_0)
        mem[_451 + 192] = uint256(stor4[_450].field_0)
        mem[_451 + 224] = bool(uint8(stor5[_450].field_0))
        mem[_451 + 256] = bool(uint8(stor5[_450].field_8))
        mem[_451 + 288] = address(stor5[_450].field_16)
        if idx >= mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * uint256(stor4[address(msg.sender)].field_0)) + 160] = _451
        if idx >= mem[96]:
            revert with 'NH{q', 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        s = stor6
        t = 0
        u = 0
        while s > stor7:
            mem[0] = s
            mem[32] = 3
            if uint64(sub_f3a4d071[s].field_8) != mem[(32 * idx) + 152 len 8]:
                if not s:
                    revert with 'NH{q', 17
                _443 = mem[96]
                s = s - 1
                t = t
                u = u
                continue 
            if uint8(u) == 255:
                revert with 'NH{q', 17
            mem[0] = s
            mem[32] = 3
            if t > -uint256(sub_f3a4d071[s].field_512) - 1:
                revert with 'NH{q', 17
            if not s:
                revert with 'NH{q', 17
            _443 = mem[96]
            s = s - 1
            t = t + uint256(sub_f3a4d071[s].field_512)
            u = uint8(u) + 1
            continue 
        if idx >= mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]:
            revert with 'NH{q', 50
        mem[_451 + 32] = uint8(u)
        if idx >= mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]:
            revert with 'NH{q', 50
        mem[_451 + 160] = t
        if idx == -1:
            revert with 'NH{q', 17
        _443 = mem[96]
        idx = idx + 1
        continue 
    _448 = mem[64]
    mem[mem[64]] = 32
    _460 = mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]
    mem[mem[64] + 32] = mem[(32 * uint256(stor4[address(msg.sender)].field_0)) + 128]
    idx = 0
    s = (32 * uint256(stor4[address(msg.sender)].field_0)) + 160
    t = mem[64] + 64
    while idx < _460:
        _491 = mem[s]
        mem[t] = mem[mem[s] + 31 len 1]
        mem[t + 32] = mem[_491 + 62 len 2]
        mem[t + 64] = mem[_491 + 88 len 8]
        mem[t + 96] = mem[_491 + 96]
        mem[t + 128] = mem[_491 + 128]
        mem[t + 160] = mem[_491 + 160]
        mem[t + 192] = mem[_491 + 192]
        mem[t + 224] = bool(mem[_491 + 224])
        mem[t + 256] = bool(mem[_491 + 256])
        mem[t + 288] = mem[_491 + 300 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 320
        continue 
    return memory
      from mem[64]
       len _448 + (320 * _460) + -mem[64] + 64
}

function sub_799935e2(?) {
    require calldata.size - 4 >= 128
    require arg1 == uint64(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    idx = stor6
    s = 0
    while idx > 0:
        mem[0] = idx
        mem[32] = 3
        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 3
        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = s + 1
        continue 
    if s >= arg3:
        if arg4 > arg3:
            if arg3 > test266151307():
                revert with 'NH{q', 65
            mem[96] = arg3
            if not arg3:
                if arg3 > test266151307():
                    revert with 'NH{q', 65
                mem[(32 * arg3) + 128] = arg3
                mem[64] = (64 * arg3) + 160
                if not arg3:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > arg3:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _1590 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_1590] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_1590 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_1590 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_1590 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_1590 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_1590 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_1590 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_1590 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_1590 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * arg3) + 160] = _1590
                        if arg3 != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _1769 = mem[64]
                        mem[mem[64]] = 96
                        _1793 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _1793:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _1793) + 128
                        _2454 = mem[(32 * arg3) + 128]
                        mem[_1769 + (32 * _1793) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _1769 + (32 * _1793) + 160
                        while idx < _2454:
                            _3186 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_3186 + 56 len 8]
                            mem[t + 64] = mem[_3186 + 64]
                            mem[t + 96] = mem[_3186 + 96]
                            mem[t + 128] = mem[_3186 + 128]
                            mem[t + 160] = bool(mem[_3186 + 160])
                            mem[t + 192] = bool(mem[_3186 + 192])
                            mem[t + 224] = mem[_3186 + 224]
                            mem[t + 256] = mem[_3186 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_1769 + 64] = 0
                        return memory
                          from mem[64]
                           len _1769 + (32 * _1793) + (288 * _2454) + -mem[64] + 160
                    if arg3 < arg3:
                        revert with 'NH{q', 17
                    _1649 = mem[64]
                    mem[mem[64]] = 96
                    _1673 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_1649 + 32] = (32 * _1673) + 128
                    _2453 = mem[(32 * arg3) + 128]
                    mem[_1649 + (32 * _1673) + 128] = mem[(32 * arg3) + 128]
                    idx = 0
                    s = (32 * arg3) + 160
                    t = _1649 + (32 * _1673) + 160
                    while idx < _2453:
                        _3185 = mem[s]
                        if mem[mem[s]] >= 2:
                            revert with 'NH{q', 33
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_3185 + 56 len 8]
                        mem[t + 64] = mem[_3185 + 64]
                        mem[t + 96] = mem[_3185 + 96]
                        mem[t + 128] = mem[_3185 + 128]
                        mem[t + 160] = bool(mem[_3185 + 160])
                        mem[t + 192] = bool(mem[_3185 + 192])
                        mem[t + 224] = mem[_3185 + 224]
                        mem[t + 256] = mem[_3185 + 268 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 288
                        continue 
                    mem[_1649 + 64] = 0
                    return memory
                      from mem[64]
                       len _1649 + (32 * _1673) + (288 * _2453) + -mem[64] + 160
                mem[64] = (64 * arg3) + 448
                mem[var58002] = 0
                mem[var58002 + 32] = 0
                mem[var58002 + 64] = 0
                mem[var58002 + 96] = 0
                mem[var58002 + 128] = 0
                mem[var58002 + 160] = 0
                mem[var58002 + 192] = 0
                mem[var58002 + 224] = 0
                mem[var58002 + 256] = 0
                mem[var60002] = var60001
                if not var60003 - 1:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > arg3:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _4818 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_4818] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_4818 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_4818 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_4818 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_4818 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_4818 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_4818 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_4818 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_4818 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * arg3) + 160] = _4818
                        if arg3 != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _4997 = mem[64]
                        mem[mem[64]] = 96
                        _5021 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _5021:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4997 + 32] = (32 * _5021) + 128
                        _5683 = mem[(32 * arg3) + 128]
                        mem[_4997 + (32 * _5021) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _4997 + (32 * _5021) + 160
                        while idx < _5683:
                            _6414 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6414 + 56 len 8]
                            mem[t + 64] = mem[_6414 + 64]
                            mem[t + 96] = mem[_6414 + 96]
                            mem[t + 128] = mem[_6414 + 128]
                            mem[t + 160] = bool(mem[_6414 + 160])
                            mem[t + 192] = bool(mem[_6414 + 192])
                            mem[t + 224] = mem[_6414 + 224]
                            mem[t + 256] = mem[_6414 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_4997 + 64] = 0
                        return memory
                          from mem[64]
                           len _4997 + (32 * _5021) + (288 * _5683) + -mem[64] + 160
                    if arg3 < arg3:
                        revert with 'NH{q', 17
                    _4877 = mem[64]
                    mem[mem[64]] = 96
                    _4903 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_4877 + 32] = (32 * _4903) + 128
                    _5682 = mem[(32 * arg3) + 128]
                    mem[_4877 + (32 * _4903) + 128] = mem[(32 * arg3) + 128]
                    idx = 0
                    s = (32 * arg3) + 160
                    t = _4877 + (32 * _4903) + 160
                    while idx < _5682:
                        _6413 = mem[s]
                        if mem[mem[s]] >= 2:
                            revert with 'NH{q', 33
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_6413 + 56 len 8]
                        mem[t + 64] = mem[_6413 + 64]
                        mem[t + 96] = mem[_6413 + 96]
                        mem[t + 128] = mem[_6413 + 128]
                        mem[t + 160] = bool(mem[_6413 + 160])
                        mem[t + 192] = bool(mem[_6413 + 192])
                        mem[t + 224] = mem[_6413 + 224]
                        mem[t + 256] = mem[_6413 + 268 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 288
                        continue 
                    mem[_4877 + 64] = 0
                    return memory
                      from mem[64]
                       len _4877 + (32 * _4903) + (288 * _5682) + -mem[64] + 160
                mem[64] = (64 * arg3) + 736
                mem[var66002] = 0
                mem[var66002 + 32] = 0
                mem[var66002 + 64] = 0
                mem[var66002 + 96] = 0
                mem[var66002 + 128] = 0
                mem[var66002 + 160] = 0
                mem[var66002 + 192] = 0
                mem[var66002 + 224] = 0
                mem[var66002 + 256] = 0
                mem[var68002] = var68001
                if not var68003 - 1:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > arg3:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _8046 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_8046] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_8046 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_8046 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_8046 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_8046 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_8046 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_8046 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_8046 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_8046 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * arg3) + 160] = _8046
                        if arg3 != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _8225 = mem[64]
                        mem[mem[64]] = 96
                        _8249 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _8249:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_8225 + 32] = (32 * _8249) + 128
                        _8911 = mem[(32 * arg3) + 128]
                        mem[_8225 + (32 * _8249) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _8225 + (32 * _8249) + 160
                        while idx < _8911:
                            _9642 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_9642 + 56 len 8]
                            mem[t + 64] = mem[_9642 + 64]
                            mem[t + 96] = mem[_9642 + 96]
                            mem[t + 128] = mem[_9642 + 128]
                            mem[t + 160] = bool(mem[_9642 + 160])
                            mem[t + 192] = bool(mem[_9642 + 192])
                            mem[t + 224] = mem[_9642 + 224]
                            mem[t + 256] = mem[_9642 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_8225 + 64] = 0
                        return memory
                          from mem[64]
                           len _8225 + (32 * _8249) + (288 * _8911) + -mem[64] + 160
                    if arg3 < arg3:
                        revert with 'NH{q', 17
                    _8105 = mem[64]
                    mem[mem[64]] = 96
                    _8131 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * _8131) + 128
                    _8910 = mem[(32 * arg3) + 128]
                    mem[_8105 + (32 * _8131) + 128] = mem[(32 * arg3) + 128]
                    idx = 0
                    s = (32 * arg3) + 160
                    t = _8105 + (32 * _8131) + 160
                    while idx < _8910:
                        _9641 = mem[s]
                        if mem[mem[s]] >= 2:
                            revert with 'NH{q', 33
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_9641 + 56 len 8]
                        mem[t + 64] = mem[_9641 + 64]
                        mem[t + 96] = mem[_9641 + 96]
                        mem[t + 128] = mem[_9641 + 128]
                        mem[t + 160] = bool(mem[_9641 + 160])
                        mem[t + 192] = bool(mem[_9641 + 192])
                        mem[t + 224] = mem[_9641 + 224]
                        mem[t + 256] = mem[_9641 + 268 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 288
                        continue 
                    mem[_8105 + 64] = 0
                    return memory
                      from mem[64]
                       len _8105 + (32 * _8131) + (288 * _8910) + -mem[64] + 160
                mem[64] = (64 * arg3) + 1024
                mem[var74002] = 0
                mem[var74002 + 32] = 0
                mem[var74002 + 64] = 0
                mem[var74002 + 96] = 0
                mem[var74002 + 128] = 0
                mem[var74002 + 160] = 0
                mem[var74002 + 192] = 0
                mem[var74002 + 224] = 0
                mem[var74002 + 256] = 0
                mem[var76002] = var76001
                if not var76003 - 1:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > arg3:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _11274 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_11274] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_11274 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_11274 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_11274 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_11274 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_11274 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_11274 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_11274 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_11274 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * arg3) + 160] = _11274
                        if arg3 != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _11453 = mem[64]
                        mem[mem[64]] = 96
                        _11477 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _11477:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _11477) + 128
                        _12139 = mem[(32 * arg3) + 128]
                        mem[_11453 + (32 * _11477) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _11453 + (32 * _11477) + 160
                        while idx < _12139:
                            _12870 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_12870 + 56 len 8]
                            mem[t + 64] = mem[_12870 + 64]
                            mem[t + 96] = mem[_12870 + 96]
                            mem[t + 128] = mem[_12870 + 128]
                            mem[t + 160] = bool(mem[_12870 + 160])
                            mem[t + 192] = bool(mem[_12870 + 192])
                            mem[t + 224] = mem[_12870 + 224]
                            mem[t + 256] = mem[_12870 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_11453 + 64] = 0
                        return memory
                          from mem[64]
                           len _11453 + (32 * _11477) + (288 * _12139) + -mem[64] + 160
                    if arg3 < arg3:
                        revert with 'NH{q', 17
                    _11333 = mem[64]
                    mem[mem[64]] = 96
                    _11359 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_11333 + 32] = (32 * _11359) + 128
                    _12138 = mem[(32 * arg3) + 128]
                    mem[_11333 + (32 * _11359) + 128] = mem[(32 * arg3) + 128]
                    idx = 0
                    s = (32 * arg3) + 160
                    t = _11333 + (32 * _11359) + 160
                    while idx < _12138:
                        _12869 = mem[s]
                        if mem[mem[s]] >= 2:
                            revert with 'NH{q', 33
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_12869 + 56 len 8]
                        mem[t + 64] = mem[_12869 + 64]
                        mem[t + 96] = mem[_12869 + 96]
                        mem[t + 128] = mem[_12869 + 128]
                        mem[t + 160] = bool(mem[_12869 + 160])
                        mem[t + 192] = bool(mem[_12869 + 192])
                        mem[t + 224] = mem[_12869 + 224]
                        mem[t + 256] = mem[_12869 + 268 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 288
                        continue 
                    mem[_11333 + 64] = 0
                    return memory
                      from mem[64]
                       len _11333 + (32 * _11359) + (288 * _12138) + -mem[64] + 160
                mem[64] = (64 * arg3) + 1312
                mem[var82002] = 0
                mem[var82002 + 32] = 0
                mem[var82002 + 64] = 0
                mem[var82002 + 96] = 0
                mem[var82002 + 128] = 0
                mem[var82002 + 160] = 0
                mem[var82002 + 192] = 0
                mem[var82002 + 224] = 0
                mem[var82002 + 256] = 0
                mem[var84002] = var84001
                if var84003 - 1:
                    # nil
                else:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > arg3:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _14502 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_14502] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_14502 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_14502 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_14502 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_14502 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_14502 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_14502 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_14502 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_14502 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * arg3) + 160] = _14502
                        if arg3 != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 96
                        _14705 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _14705:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        # nil
                    if arg3 < arg3:
                        revert with 'NH{q', 17
                    # nil
            else:
                mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
                if arg3 > test266151307():
                    revert with 'NH{q', 65
                mem[(32 * arg3) + 128] = arg3
                mem[64] = (64 * arg3) + 160
                if not arg3:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > arg3:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _1592 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_1592] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_1592 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_1592 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_1592 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_1592 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_1592 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_1592 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_1592 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_1592 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * arg3) + 160] = _1592
                        if arg3 != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _1770 = mem[64]
                        mem[mem[64]] = 96
                        _1794 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _1794:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _1794) + 128
                        _2457 = mem[(32 * arg3) + 128]
                        mem[_1770 + (32 * _1794) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _1770 + (32 * _1794) + 160
                        while idx < _2457:
                            _3188 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_3188 + 56 len 8]
                            mem[t + 64] = mem[_3188 + 64]
                            mem[t + 96] = mem[_3188 + 96]
                            mem[t + 128] = mem[_3188 + 128]
                            mem[t + 160] = bool(mem[_3188 + 160])
                            mem[t + 192] = bool(mem[_3188 + 192])
                            mem[t + 224] = mem[_3188 + 224]
                            mem[t + 256] = mem[_3188 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_1770 + 64] = 0
                        return memory
                          from mem[64]
                           len _1770 + (32 * _1794) + (288 * _2457) + -mem[64] + 160
                    if arg3 < arg3:
                        revert with 'NH{q', 17
                    _1650 = mem[64]
                    mem[mem[64]] = 96
                    _1676 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * _1676) + 128
                    _2456 = mem[(32 * arg3) + 128]
                    mem[_1650 + (32 * _1676) + 128] = mem[(32 * arg3) + 128]
                    idx = 0
                    s = (32 * arg3) + 160
                    t = _1650 + (32 * _1676) + 160
                    while idx < _2456:
                        _3187 = mem[s]
                        if mem[mem[s]] >= 2:
                            revert with 'NH{q', 33
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_3187 + 56 len 8]
                        mem[t + 64] = mem[_3187 + 64]
                        mem[t + 96] = mem[_3187 + 96]
                        mem[t + 128] = mem[_3187 + 128]
                        mem[t + 160] = bool(mem[_3187 + 160])
                        mem[t + 192] = bool(mem[_3187 + 192])
                        mem[t + 224] = mem[_3187 + 224]
                        mem[t + 256] = mem[_3187 + 268 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 288
                        continue 
                    mem[_1650 + 64] = 0
                    return memory
                      from mem[64]
                       len _1650 + (32 * _1676) + (288 * _2456) + -mem[64] + 160
                mem[64] = (64 * arg3) + 448
                mem[var59002] = 0
                mem[var59002 + 32] = 0
                mem[var59002 + 64] = 0
                mem[var59002 + 96] = 0
                mem[var59002 + 128] = 0
                mem[var59002 + 160] = 0
                mem[var59002 + 192] = 0
                mem[var59002 + 224] = 0
                mem[var59002 + 256] = 0
                mem[var61002] = var61001
                if not var61003 - 1:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > arg3:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _4820 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_4820] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_4820 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_4820 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_4820 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_4820 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_4820 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_4820 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_4820 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_4820 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * arg3) + 160] = _4820
                        if arg3 != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _4998 = mem[64]
                        mem[mem[64]] = 96
                        _5022 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _5022:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _5022) + 128
                        _5686 = mem[(32 * arg3) + 128]
                        mem[_4998 + (32 * _5022) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _4998 + (32 * _5022) + 160
                        while idx < _5686:
                            _6416 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6416 + 56 len 8]
                            mem[t + 64] = mem[_6416 + 64]
                            mem[t + 96] = mem[_6416 + 96]
                            mem[t + 128] = mem[_6416 + 128]
                            mem[t + 160] = bool(mem[_6416 + 160])
                            mem[t + 192] = bool(mem[_6416 + 192])
                            mem[t + 224] = mem[_6416 + 224]
                            mem[t + 256] = mem[_6416 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_4998 + 64] = 0
                        return memory
                          from mem[64]
                           len _4998 + (32 * _5022) + (288 * _5686) + -mem[64] + 160
                    if arg3 < arg3:
                        revert with 'NH{q', 17
                    _4878 = mem[64]
                    mem[mem[64]] = 96
                    _4906 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_4878 + 32] = (32 * _4906) + 128
                    _5685 = mem[(32 * arg3) + 128]
                    mem[_4878 + (32 * _4906) + 128] = mem[(32 * arg3) + 128]
                    idx = 0
                    s = (32 * arg3) + 160
                    t = _4878 + (32 * _4906) + 160
                    while idx < _5685:
                        _6415 = mem[s]
                        if mem[mem[s]] >= 2:
                            revert with 'NH{q', 33
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_6415 + 56 len 8]
                        mem[t + 64] = mem[_6415 + 64]
                        mem[t + 96] = mem[_6415 + 96]
                        mem[t + 128] = mem[_6415 + 128]
                        mem[t + 160] = bool(mem[_6415 + 160])
                        mem[t + 192] = bool(mem[_6415 + 192])
                        mem[t + 224] = mem[_6415 + 224]
                        mem[t + 256] = mem[_6415 + 268 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 288
                        continue 
                    mem[_4878 + 64] = 0
                    return memory
                      from mem[64]
                       len _4878 + (32 * _4906) + (288 * _5685) + -mem[64] + 160
                mem[64] = (64 * arg3) + 736
                mem[var67002] = 0
                mem[var67002 + 32] = 0
                mem[var67002 + 64] = 0
                mem[var67002 + 96] = 0
                mem[var67002 + 128] = 0
                mem[var67002 + 160] = 0
                mem[var67002 + 192] = 0
                mem[var67002 + 224] = 0
                mem[var67002 + 256] = 0
                mem[var69002] = var69001
                if not var69003 - 1:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > arg3:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _8048 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_8048] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_8048 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_8048 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_8048 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_8048 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_8048 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_8048 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_8048 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_8048 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * arg3) + 160] = _8048
                        if arg3 != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _8226 = mem[64]
                        mem[mem[64]] = 96
                        _8250 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _8250:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _8250) + 128
                        _8914 = mem[(32 * arg3) + 128]
                        mem[_8226 + (32 * _8250) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _8226 + (32 * _8250) + 160
                        while idx < _8914:
                            _9644 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_9644 + 56 len 8]
                            mem[t + 64] = mem[_9644 + 64]
                            mem[t + 96] = mem[_9644 + 96]
                            mem[t + 128] = mem[_9644 + 128]
                            mem[t + 160] = bool(mem[_9644 + 160])
                            mem[t + 192] = bool(mem[_9644 + 192])
                            mem[t + 224] = mem[_9644 + 224]
                            mem[t + 256] = mem[_9644 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_8226 + 64] = 0
                        return memory
                          from mem[64]
                           len _8226 + (32 * _8250) + (288 * _8914) + -mem[64] + 160
                    if arg3 < arg3:
                        revert with 'NH{q', 17
                    _8106 = mem[64]
                    mem[mem[64]] = 96
                    _8134 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_8106 + 32] = (32 * _8134) + 128
                    _8913 = mem[(32 * arg3) + 128]
                    mem[_8106 + (32 * _8134) + 128] = mem[(32 * arg3) + 128]
                    idx = 0
                    s = (32 * arg3) + 160
                    t = _8106 + (32 * _8134) + 160
                    while idx < _8913:
                        _9643 = mem[s]
                        if mem[mem[s]] >= 2:
                            revert with 'NH{q', 33
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_9643 + 56 len 8]
                        mem[t + 64] = mem[_9643 + 64]
                        mem[t + 96] = mem[_9643 + 96]
                        mem[t + 128] = mem[_9643 + 128]
                        mem[t + 160] = bool(mem[_9643 + 160])
                        mem[t + 192] = bool(mem[_9643 + 192])
                        mem[t + 224] = mem[_9643 + 224]
                        mem[t + 256] = mem[_9643 + 268 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 288
                        continue 
                    mem[_8106 + 64] = 0
                    return memory
                      from mem[64]
                       len _8106 + (32 * _8134) + (288 * _8913) + -mem[64] + 160
                mem[64] = (64 * arg3) + 1024
                mem[var75002] = 0
                mem[var75002 + 32] = 0
                mem[var75002 + 64] = 0
                mem[var75002 + 96] = 0
                mem[var75002 + 128] = 0
                mem[var75002 + 160] = 0
                mem[var75002 + 192] = 0
                mem[var75002 + 224] = 0
                mem[var75002 + 256] = 0
                mem[var77002] = var77001
                if not var77003 - 1:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > arg3:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _11276 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_11276] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_11276 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_11276 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_11276 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_11276 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_11276 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_11276 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_11276 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_11276 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * arg3) + 160] = _11276
                        if arg3 != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _11454 = mem[64]
                        mem[mem[64]] = 96
                        _11478 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _11478:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_11454 + 32] = (32 * _11478) + 128
                        _12142 = mem[(32 * arg3) + 128]
                        mem[_11454 + (32 * _11478) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _11454 + (32 * _11478) + 160
                        while idx < _12142:
                            _12872 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_12872 + 56 len 8]
                            mem[t + 64] = mem[_12872 + 64]
                            mem[t + 96] = mem[_12872 + 96]
                            mem[t + 128] = mem[_12872 + 128]
                            mem[t + 160] = bool(mem[_12872 + 160])
                            mem[t + 192] = bool(mem[_12872 + 192])
                            mem[t + 224] = mem[_12872 + 224]
                            mem[t + 256] = mem[_12872 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_11454 + 64] = 0
                        return memory
                          from mem[64]
                           len _11454 + (32 * _11478) + (288 * _12142) + -mem[64] + 160
                    if arg3 < arg3:
                        revert with 'NH{q', 17
                    _11334 = mem[64]
                    mem[mem[64]] = 96
                    _11362 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * _11362) + 128
                    _12141 = mem[(32 * arg3) + 128]
                    mem[_11334 + (32 * _11362) + 128] = mem[(32 * arg3) + 128]
                    idx = 0
                    s = (32 * arg3) + 160
                    t = _11334 + (32 * _11362) + 160
                    while idx < _12141:
                        _12871 = mem[s]
                        if mem[mem[s]] >= 2:
                            revert with 'NH{q', 33
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_12871 + 56 len 8]
                        mem[t + 64] = mem[_12871 + 64]
                        mem[t + 96] = mem[_12871 + 96]
                        mem[t + 128] = mem[_12871 + 128]
                        mem[t + 160] = bool(mem[_12871 + 160])
                        mem[t + 192] = bool(mem[_12871 + 192])
                        mem[t + 224] = mem[_12871 + 224]
                        mem[t + 256] = mem[_12871 + 268 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 288
                        continue 
                    mem[_11334 + 64] = 0
                    return memory
                      from mem[64]
                       len _11334 + (32 * _11362) + (288 * _12141) + -mem[64] + 160
                mem[64] = (64 * arg3) + 1312
                mem[var83002] = 0
                mem[var83002 + 32] = 0
                mem[var83002 + 64] = 0
                mem[var83002 + 96] = 0
                mem[var83002 + 128] = 0
                mem[var83002 + 160] = 0
                mem[var83002 + 192] = 0
                mem[var83002 + 224] = 0
                mem[var83002 + 256] = 0
                mem[var85002] = var85001
                if var85003 - 1:
                    # nil
                else:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > arg3:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _14504 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_14504] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_14504 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_14504 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_14504 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_14504 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_14504 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_14504 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_14504 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_14504 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * arg3) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * arg3) + 160] = _14504
                        if arg3 != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 96
                        _14706 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _14706:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        # nil
                    if arg3 < arg3:
                        revert with 'NH{q', 17
                    # nil
        else:
            if arg3 < arg4:
                revert with 'NH{q', 17
            if arg3 - arg4 >= 0:
                if arg4 > test266151307():
                    revert with 'NH{q', 65
                mem[96] = arg4
                if not arg4:
                    if arg4 > test266151307():
                        revert with 'NH{q', 65
                    mem[(32 * arg4) + 128] = arg4
                    mem[64] = (64 * arg4) + 160
                    if not arg4:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _1594 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_1594] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_1594 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_1594 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_1594 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_1594 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_1594 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_1594 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_1594 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_1594 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _1594
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg4:
                                revert with 'NH{q', 17
                            _1771 = mem[64]
                            mem[mem[64]] = 96
                            _1795 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _1795:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1771 + 32] = (32 * _1795) + 128
                            _2460 = mem[(32 * arg4) + 128]
                            mem[_1771 + (32 * _1795) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            s = (32 * arg4) + 160
                            t = _1771 + (32 * _1795) + 160
                            while idx < _2460:
                                _3190 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_3190 + 56 len 8]
                                mem[t + 64] = mem[_3190 + 64]
                                mem[t + 96] = mem[_3190 + 96]
                                mem[t + 128] = mem[_3190 + 128]
                                mem[t + 160] = bool(mem[_3190 + 160])
                                mem[t + 192] = bool(mem[_3190 + 192])
                                mem[t + 224] = mem[_3190 + 224]
                                mem[t + 256] = mem[_3190 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_1771 + 64] = arg3 - arg4
                            return memory
                              from mem[64]
                               len _1771 + (32 * _1795) + (288 * _2460) + -mem[64] + 160
                        if arg3 < arg4:
                            revert with 'NH{q', 17
                        _1651 = mem[64]
                        mem[mem[64]] = 96
                        _1679 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _1679) + 128
                        _2459 = mem[(32 * arg4) + 128]
                        mem[_1651 + (32 * _1679) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        s = (32 * arg4) + 160
                        t = _1651 + (32 * _1679) + 160
                        while idx < _2459:
                            _3189 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_3189 + 56 len 8]
                            mem[t + 64] = mem[_3189 + 64]
                            mem[t + 96] = mem[_3189 + 96]
                            mem[t + 128] = mem[_3189 + 128]
                            mem[t + 160] = bool(mem[_3189 + 160])
                            mem[t + 192] = bool(mem[_3189 + 192])
                            mem[t + 224] = mem[_3189 + 224]
                            mem[t + 256] = mem[_3189 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_1651 + 64] = arg3 - arg4
                        return memory
                          from mem[64]
                           len _1651 + (32 * _1679) + (288 * _2459) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 448
                    mem[var65002] = 0
                    mem[var65002 + 32] = 0
                    mem[var65002 + 64] = 0
                    mem[var65002 + 96] = 0
                    mem[var65002 + 128] = 0
                    mem[var65002 + 160] = 0
                    mem[var65002 + 192] = 0
                    mem[var65002 + 224] = 0
                    mem[var65002 + 256] = 0
                    mem[var67002] = var67001
                    if not var67003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _4822 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_4822] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_4822 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_4822 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_4822 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_4822 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_4822 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_4822 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_4822 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_4822 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _4822
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg4:
                                revert with 'NH{q', 17
                            _4999 = mem[64]
                            mem[mem[64]] = 96
                            _5023 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _5023:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_4999 + 32] = (32 * _5023) + 128
                            _5689 = mem[(32 * arg4) + 128]
                            mem[_4999 + (32 * _5023) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            s = (32 * arg4) + 160
                            t = _4999 + (32 * _5023) + 160
                            while idx < _5689:
                                _6418 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_6418 + 56 len 8]
                                mem[t + 64] = mem[_6418 + 64]
                                mem[t + 96] = mem[_6418 + 96]
                                mem[t + 128] = mem[_6418 + 128]
                                mem[t + 160] = bool(mem[_6418 + 160])
                                mem[t + 192] = bool(mem[_6418 + 192])
                                mem[t + 224] = mem[_6418 + 224]
                                mem[t + 256] = mem[_6418 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_4999 + 64] = arg3 - arg4
                            return memory
                              from mem[64]
                               len _4999 + (32 * _5023) + (288 * _5689) + -mem[64] + 160
                        if arg3 < arg4:
                            revert with 'NH{q', 17
                        _4879 = mem[64]
                        mem[mem[64]] = 96
                        _4909 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _4909) + 128
                        _5688 = mem[(32 * arg4) + 128]
                        mem[_4879 + (32 * _4909) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        s = (32 * arg4) + 160
                        t = _4879 + (32 * _4909) + 160
                        while idx < _5688:
                            _6417 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6417 + 56 len 8]
                            mem[t + 64] = mem[_6417 + 64]
                            mem[t + 96] = mem[_6417 + 96]
                            mem[t + 128] = mem[_6417 + 128]
                            mem[t + 160] = bool(mem[_6417 + 160])
                            mem[t + 192] = bool(mem[_6417 + 192])
                            mem[t + 224] = mem[_6417 + 224]
                            mem[t + 256] = mem[_6417 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_4879 + 64] = arg3 - arg4
                        return memory
                          from mem[64]
                           len _4879 + (32 * _4909) + (288 * _5688) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 736
                    mem[var73002] = 0
                    mem[var73002 + 32] = 0
                    mem[var73002 + 64] = 0
                    mem[var73002 + 96] = 0
                    mem[var73002 + 128] = 0
                    mem[var73002 + 160] = 0
                    mem[var73002 + 192] = 0
                    mem[var73002 + 224] = 0
                    mem[var73002 + 256] = 0
                    mem[var75002] = var75001
                    if not var75003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _8050 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_8050] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_8050 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_8050 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_8050 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_8050 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_8050 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_8050 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_8050 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_8050 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _8050
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg4:
                                revert with 'NH{q', 17
                            _8227 = mem[64]
                            mem[mem[64]] = 96
                            _8251 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _8251:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _8251) + 128
                            _8917 = mem[(32 * arg4) + 128]
                            mem[_8227 + (32 * _8251) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            s = (32 * arg4) + 160
                            t = _8227 + (32 * _8251) + 160
                            while idx < _8917:
                                _9646 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_9646 + 56 len 8]
                                mem[t + 64] = mem[_9646 + 64]
                                mem[t + 96] = mem[_9646 + 96]
                                mem[t + 128] = mem[_9646 + 128]
                                mem[t + 160] = bool(mem[_9646 + 160])
                                mem[t + 192] = bool(mem[_9646 + 192])
                                mem[t + 224] = mem[_9646 + 224]
                                mem[t + 256] = mem[_9646 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_8227 + 64] = arg3 - arg4
                            return memory
                              from mem[64]
                               len _8227 + (32 * _8251) + (288 * _8917) + -mem[64] + 160
                        if arg3 < arg4:
                            revert with 'NH{q', 17
                        _8107 = mem[64]
                        mem[mem[64]] = 96
                        _8137 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _8137) + 128
                        _8916 = mem[(32 * arg4) + 128]
                        mem[_8107 + (32 * _8137) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        s = (32 * arg4) + 160
                        t = _8107 + (32 * _8137) + 160
                        while idx < _8916:
                            _9645 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_9645 + 56 len 8]
                            mem[t + 64] = mem[_9645 + 64]
                            mem[t + 96] = mem[_9645 + 96]
                            mem[t + 128] = mem[_9645 + 128]
                            mem[t + 160] = bool(mem[_9645 + 160])
                            mem[t + 192] = bool(mem[_9645 + 192])
                            mem[t + 224] = mem[_9645 + 224]
                            mem[t + 256] = mem[_9645 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_8107 + 64] = arg3 - arg4
                        return memory
                          from mem[64]
                           len _8107 + (32 * _8137) + (288 * _8916) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 1024
                    mem[var81002] = 0
                    mem[var81002 + 32] = 0
                    mem[var81002 + 64] = 0
                    mem[var81002 + 96] = 0
                    mem[var81002 + 128] = 0
                    mem[var81002 + 160] = 0
                    mem[var81002 + 192] = 0
                    mem[var81002 + 224] = 0
                    mem[var81002 + 256] = 0
                    mem[var83002] = var83001
                    if not var83003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _11278 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_11278] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_11278 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_11278 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_11278 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_11278 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_11278 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_11278 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_11278 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_11278 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _11278
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg4:
                                revert with 'NH{q', 17
                            _11455 = mem[64]
                            mem[mem[64]] = 96
                            _11479 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _11479:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _11479) + 128
                            _12145 = mem[(32 * arg4) + 128]
                            mem[_11455 + (32 * _11479) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            s = (32 * arg4) + 160
                            t = _11455 + (32 * _11479) + 160
                            while idx < _12145:
                                _12874 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_12874 + 56 len 8]
                                mem[t + 64] = mem[_12874 + 64]
                                mem[t + 96] = mem[_12874 + 96]
                                mem[t + 128] = mem[_12874 + 128]
                                mem[t + 160] = bool(mem[_12874 + 160])
                                mem[t + 192] = bool(mem[_12874 + 192])
                                mem[t + 224] = mem[_12874 + 224]
                                mem[t + 256] = mem[_12874 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_11455 + 64] = arg3 - arg4
                            return memory
                              from mem[64]
                               len _11455 + (32 * _11479) + (288 * _12145) + -mem[64] + 160
                        if arg3 < arg4:
                            revert with 'NH{q', 17
                        _11335 = mem[64]
                        mem[mem[64]] = 96
                        _11365 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _11365) + 128
                        _12144 = mem[(32 * arg4) + 128]
                        mem[_11335 + (32 * _11365) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        s = (32 * arg4) + 160
                        t = _11335 + (32 * _11365) + 160
                        while idx < _12144:
                            _12873 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_12873 + 56 len 8]
                            mem[t + 64] = mem[_12873 + 64]
                            mem[t + 96] = mem[_12873 + 96]
                            mem[t + 128] = mem[_12873 + 128]
                            mem[t + 160] = bool(mem[_12873 + 160])
                            mem[t + 192] = bool(mem[_12873 + 192])
                            mem[t + 224] = mem[_12873 + 224]
                            mem[t + 256] = mem[_12873 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_11335 + 64] = arg3 - arg4
                        return memory
                          from mem[64]
                           len _11335 + (32 * _11365) + (288 * _12144) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 1312
                    mem[var89002] = 0
                    mem[var89002 + 32] = 0
                    mem[var89002 + 64] = 0
                    mem[var89002 + 96] = 0
                    mem[var89002 + 128] = 0
                    mem[var89002 + 160] = 0
                    mem[var89002 + 192] = 0
                    mem[var89002 + 224] = 0
                    mem[var89002 + 256] = 0
                    mem[var91002] = var91001
                    if var91003 - 1:
                        # nil
                    else:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _14506 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_14506] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_14506 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_14506 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_14506 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_14506 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_14506 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_14506 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_14506 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_14506 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _14506
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg4:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 96
                            _14707 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _14707:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            # nil
                        if arg3 < arg4:
                            revert with 'NH{q', 17
                        # nil
                else:
                    mem[128 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
                    if arg4 > test266151307():
                        revert with 'NH{q', 65
                    mem[(32 * arg4) + 128] = arg4
                    mem[64] = (64 * arg4) + 160
                    if not arg4:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _1596 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_1596] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_1596 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_1596 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_1596 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_1596 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_1596 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_1596 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_1596 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_1596 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _1596
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg4:
                                revert with 'NH{q', 17
                            _1772 = mem[64]
                            mem[mem[64]] = 96
                            _1796 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _1796:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _1796) + 128
                            _2463 = mem[(32 * arg4) + 128]
                            mem[_1772 + (32 * _1796) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            s = (32 * arg4) + 160
                            t = _1772 + (32 * _1796) + 160
                            while idx < _2463:
                                _3192 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_3192 + 56 len 8]
                                mem[t + 64] = mem[_3192 + 64]
                                mem[t + 96] = mem[_3192 + 96]
                                mem[t + 128] = mem[_3192 + 128]
                                mem[t + 160] = bool(mem[_3192 + 160])
                                mem[t + 192] = bool(mem[_3192 + 192])
                                mem[t + 224] = mem[_3192 + 224]
                                mem[t + 256] = mem[_3192 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_1772 + 64] = arg3 - arg4
                            return memory
                              from mem[64]
                               len _1772 + (32 * _1796) + (288 * _2463) + -mem[64] + 160
                        if arg3 < arg4:
                            revert with 'NH{q', 17
                        _1652 = mem[64]
                        mem[mem[64]] = 96
                        _1682 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _1682) + 128
                        _2462 = mem[(32 * arg4) + 128]
                        mem[_1652 + (32 * _1682) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        s = (32 * arg4) + 160
                        t = _1652 + (32 * _1682) + 160
                        while idx < _2462:
                            _3191 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_3191 + 56 len 8]
                            mem[t + 64] = mem[_3191 + 64]
                            mem[t + 96] = mem[_3191 + 96]
                            mem[t + 128] = mem[_3191 + 128]
                            mem[t + 160] = bool(mem[_3191 + 160])
                            mem[t + 192] = bool(mem[_3191 + 192])
                            mem[t + 224] = mem[_3191 + 224]
                            mem[t + 256] = mem[_3191 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_1652 + 64] = arg3 - arg4
                        return memory
                          from mem[64]
                           len _1652 + (32 * _1682) + (288 * _2462) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 448
                    mem[var66002] = 0
                    mem[var66002 + 32] = 0
                    mem[var66002 + 64] = 0
                    mem[var66002 + 96] = 0
                    mem[var66002 + 128] = 0
                    mem[var66002 + 160] = 0
                    mem[var66002 + 192] = 0
                    mem[var66002 + 224] = 0
                    mem[var66002 + 256] = 0
                    mem[var68002] = var68001
                    if not var68003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _4824 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_4824] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_4824 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_4824 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_4824 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_4824 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_4824 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_4824 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_4824 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_4824 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _4824
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg4:
                                revert with 'NH{q', 17
                            _5000 = mem[64]
                            mem[mem[64]] = 96
                            _5024 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _5024:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _5024) + 128
                            _5692 = mem[(32 * arg4) + 128]
                            mem[_5000 + (32 * _5024) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            s = (32 * arg4) + 160
                            t = _5000 + (32 * _5024) + 160
                            while idx < _5692:
                                _6420 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_6420 + 56 len 8]
                                mem[t + 64] = mem[_6420 + 64]
                                mem[t + 96] = mem[_6420 + 96]
                                mem[t + 128] = mem[_6420 + 128]
                                mem[t + 160] = bool(mem[_6420 + 160])
                                mem[t + 192] = bool(mem[_6420 + 192])
                                mem[t + 224] = mem[_6420 + 224]
                                mem[t + 256] = mem[_6420 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_5000 + 64] = arg3 - arg4
                            return memory
                              from mem[64]
                               len _5000 + (32 * _5024) + (288 * _5692) + -mem[64] + 160
                        if arg3 < arg4:
                            revert with 'NH{q', 17
                        _4880 = mem[64]
                        mem[mem[64]] = 96
                        _4912 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _4912) + 128
                        _5691 = mem[(32 * arg4) + 128]
                        mem[_4880 + (32 * _4912) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        s = (32 * arg4) + 160
                        t = _4880 + (32 * _4912) + 160
                        while idx < _5691:
                            _6419 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6419 + 56 len 8]
                            mem[t + 64] = mem[_6419 + 64]
                            mem[t + 96] = mem[_6419 + 96]
                            mem[t + 128] = mem[_6419 + 128]
                            mem[t + 160] = bool(mem[_6419 + 160])
                            mem[t + 192] = bool(mem[_6419 + 192])
                            mem[t + 224] = mem[_6419 + 224]
                            mem[t + 256] = mem[_6419 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_4880 + 64] = arg3 - arg4
                        return memory
                          from mem[64]
                           len _4880 + (32 * _4912) + (288 * _5691) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 736
                    mem[var74002] = 0
                    mem[var74002 + 32] = 0
                    mem[var74002 + 64] = 0
                    mem[var74002 + 96] = 0
                    mem[var74002 + 128] = 0
                    mem[var74002 + 160] = 0
                    mem[var74002 + 192] = 0
                    mem[var74002 + 224] = 0
                    mem[var74002 + 256] = 0
                    mem[var76002] = var76001
                    if not var76003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _8052 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_8052] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_8052 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_8052 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_8052 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_8052 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_8052 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_8052 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_8052 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_8052 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _8052
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg4:
                                revert with 'NH{q', 17
                            _8228 = mem[64]
                            mem[mem[64]] = 96
                            _8252 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _8252:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _8252) + 128
                            _8920 = mem[(32 * arg4) + 128]
                            mem[_8228 + (32 * _8252) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            s = (32 * arg4) + 160
                            t = _8228 + (32 * _8252) + 160
                            while idx < _8920:
                                _9648 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_9648 + 56 len 8]
                                mem[t + 64] = mem[_9648 + 64]
                                mem[t + 96] = mem[_9648 + 96]
                                mem[t + 128] = mem[_9648 + 128]
                                mem[t + 160] = bool(mem[_9648 + 160])
                                mem[t + 192] = bool(mem[_9648 + 192])
                                mem[t + 224] = mem[_9648 + 224]
                                mem[t + 256] = mem[_9648 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_8228 + 64] = arg3 - arg4
                            return memory
                              from mem[64]
                               len _8228 + (32 * _8252) + (288 * _8920) + -mem[64] + 160
                        if arg3 < arg4:
                            revert with 'NH{q', 17
                        _8108 = mem[64]
                        mem[mem[64]] = 96
                        _8140 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[_8108 + 32] = (32 * _8140) + 128
                        _8919 = mem[(32 * arg4) + 128]
                        mem[_8108 + (32 * _8140) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        s = (32 * arg4) + 160
                        t = _8108 + (32 * _8140) + 160
                        while idx < _8919:
                            _9647 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_9647 + 56 len 8]
                            mem[t + 64] = mem[_9647 + 64]
                            mem[t + 96] = mem[_9647 + 96]
                            mem[t + 128] = mem[_9647 + 128]
                            mem[t + 160] = bool(mem[_9647 + 160])
                            mem[t + 192] = bool(mem[_9647 + 192])
                            mem[t + 224] = mem[_9647 + 224]
                            mem[t + 256] = mem[_9647 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_8108 + 64] = arg3 - arg4
                        return memory
                          from mem[64]
                           len _8108 + (32 * _8140) + (288 * _8919) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 1024
                    mem[var82002] = 0
                    mem[var82002 + 32] = 0
                    mem[var82002 + 64] = 0
                    mem[var82002 + 96] = 0
                    mem[var82002 + 128] = 0
                    mem[var82002 + 160] = 0
                    mem[var82002 + 192] = 0
                    mem[var82002 + 224] = 0
                    mem[var82002 + 256] = 0
                    mem[var84002] = var84001
                    if not var84003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _11280 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_11280] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_11280 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_11280 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_11280 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_11280 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_11280 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_11280 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_11280 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_11280 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _11280
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg4:
                                revert with 'NH{q', 17
                            _11456 = mem[64]
                            mem[mem[64]] = 96
                            _11480 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _11480:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _11480) + 128
                            _12148 = mem[(32 * arg4) + 128]
                            mem[_11456 + (32 * _11480) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            s = (32 * arg4) + 160
                            t = _11456 + (32 * _11480) + 160
                            while idx < _12148:
                                _12876 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_12876 + 56 len 8]
                                mem[t + 64] = mem[_12876 + 64]
                                mem[t + 96] = mem[_12876 + 96]
                                mem[t + 128] = mem[_12876 + 128]
                                mem[t + 160] = bool(mem[_12876 + 160])
                                mem[t + 192] = bool(mem[_12876 + 192])
                                mem[t + 224] = mem[_12876 + 224]
                                mem[t + 256] = mem[_12876 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_11456 + 64] = arg3 - arg4
                            return memory
                              from mem[64]
                               len _11456 + (32 * _11480) + (288 * _12148) + -mem[64] + 160
                        if arg3 < arg4:
                            revert with 'NH{q', 17
                        _11336 = mem[64]
                        mem[mem[64]] = 96
                        _11368 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[_11336 + 32] = (32 * _11368) + 128
                        _12147 = mem[(32 * arg4) + 128]
                        mem[_11336 + (32 * _11368) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        s = (32 * arg4) + 160
                        t = _11336 + (32 * _11368) + 160
                        while idx < _12147:
                            _12875 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_12875 + 56 len 8]
                            mem[t + 64] = mem[_12875 + 64]
                            mem[t + 96] = mem[_12875 + 96]
                            mem[t + 128] = mem[_12875 + 128]
                            mem[t + 160] = bool(mem[_12875 + 160])
                            mem[t + 192] = bool(mem[_12875 + 192])
                            mem[t + 224] = mem[_12875 + 224]
                            mem[t + 256] = mem[_12875 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_11336 + 64] = arg3 - arg4
                        return memory
                          from mem[64]
                           len _11336 + (32 * _11368) + (288 * _12147) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 1312
                    mem[var90002] = 0
                    mem[var90002 + 32] = 0
                    mem[var90002 + 64] = 0
                    mem[var90002 + 96] = 0
                    mem[var90002 + 128] = 0
                    mem[var90002 + 160] = 0
                    mem[var90002 + 192] = 0
                    mem[var90002 + 224] = 0
                    mem[var90002 + 256] = 0
                    mem[var92002] = var92001
                    if var92003 - 1:
                        # nil
                    else:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _14508 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_14508] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_14508 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_14508 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_14508 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_14508 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_14508 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_14508 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_14508 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_14508 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _14508
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg4:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 96
                            _14708 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _14708:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            # nil
                        if arg3 < arg4:
                            revert with 'NH{q', 17
                        # nil
            else:
                if arg3 > test266151307():
                    revert with 'NH{q', 65
                mem[96] = arg3
                if not arg3:
                    if arg3 > test266151307():
                        revert with 'NH{q', 65
                    mem[(32 * arg3) + 128] = arg3
                    mem[64] = (64 * arg3) + 160
                    if not arg3:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _1598 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_1598] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_1598 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_1598 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_1598 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_1598 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_1598 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_1598 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_1598 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_1598 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg3) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg3) + 160] = _1598
                            if arg3 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg3:
                                revert with 'NH{q', 17
                            _1773 = mem[64]
                            mem[mem[64]] = 96
                            _1797 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _1797:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _1797) + 128
                            _2466 = mem[(32 * arg3) + 128]
                            mem[_1773 + (32 * _1797) + 128] = mem[(32 * arg3) + 128]
                            idx = 0
                            s = (32 * arg3) + 160
                            t = _1773 + (32 * _1797) + 160
                            while idx < _2466:
                                _3194 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_3194 + 56 len 8]
                                mem[t + 64] = mem[_3194 + 64]
                                mem[t + 96] = mem[_3194 + 96]
                                mem[t + 128] = mem[_3194 + 128]
                                mem[t + 160] = bool(mem[_3194 + 160])
                                mem[t + 192] = bool(mem[_3194 + 192])
                                mem[t + 224] = mem[_3194 + 224]
                                mem[t + 256] = mem[_3194 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_1773 + 64] = 0
                            return memory
                              from mem[64]
                               len _1773 + (32 * _1797) + (288 * _2466) + -mem[64] + 160
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _1653 = mem[64]
                        mem[mem[64]] = 96
                        _1685 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _1685) + 128
                        _2465 = mem[(32 * arg3) + 128]
                        mem[_1653 + (32 * _1685) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _1653 + (32 * _1685) + 160
                        while idx < _2465:
                            _3193 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_3193 + 56 len 8]
                            mem[t + 64] = mem[_3193 + 64]
                            mem[t + 96] = mem[_3193 + 96]
                            mem[t + 128] = mem[_3193 + 128]
                            mem[t + 160] = bool(mem[_3193 + 160])
                            mem[t + 192] = bool(mem[_3193 + 192])
                            mem[t + 224] = mem[_3193 + 224]
                            mem[t + 256] = mem[_3193 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_1653 + 64] = 0
                        return memory
                          from mem[64]
                           len _1653 + (32 * _1685) + (288 * _2465) + -mem[64] + 160
                    mem[64] = (64 * arg3) + 448
                    mem[var66002] = 0
                    mem[var66002 + 32] = 0
                    mem[var66002 + 64] = 0
                    mem[var66002 + 96] = 0
                    mem[var66002 + 128] = 0
                    mem[var66002 + 160] = 0
                    mem[var66002 + 192] = 0
                    mem[var66002 + 224] = 0
                    mem[var66002 + 256] = 0
                    mem[var68002] = var68001
                    if not var68003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _4826 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_4826] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_4826 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_4826 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_4826 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_4826 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_4826 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_4826 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_4826 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_4826 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg3) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg3) + 160] = _4826
                            if arg3 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg3:
                                revert with 'NH{q', 17
                            _5001 = mem[64]
                            mem[mem[64]] = 96
                            _5025 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _5025:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_5001 + 32] = (32 * _5025) + 128
                            _5695 = mem[(32 * arg3) + 128]
                            mem[_5001 + (32 * _5025) + 128] = mem[(32 * arg3) + 128]
                            idx = 0
                            s = (32 * arg3) + 160
                            t = _5001 + (32 * _5025) + 160
                            while idx < _5695:
                                _6422 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_6422 + 56 len 8]
                                mem[t + 64] = mem[_6422 + 64]
                                mem[t + 96] = mem[_6422 + 96]
                                mem[t + 128] = mem[_6422 + 128]
                                mem[t + 160] = bool(mem[_6422 + 160])
                                mem[t + 192] = bool(mem[_6422 + 192])
                                mem[t + 224] = mem[_6422 + 224]
                                mem[t + 256] = mem[_6422 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_5001 + 64] = 0
                            return memory
                              from mem[64]
                               len _5001 + (32 * _5025) + (288 * _5695) + -mem[64] + 160
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _4881 = mem[64]
                        mem[mem[64]] = 96
                        _4915 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _4915) + 128
                        _5694 = mem[(32 * arg3) + 128]
                        mem[_4881 + (32 * _4915) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _4881 + (32 * _4915) + 160
                        while idx < _5694:
                            _6421 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6421 + 56 len 8]
                            mem[t + 64] = mem[_6421 + 64]
                            mem[t + 96] = mem[_6421 + 96]
                            mem[t + 128] = mem[_6421 + 128]
                            mem[t + 160] = bool(mem[_6421 + 160])
                            mem[t + 192] = bool(mem[_6421 + 192])
                            mem[t + 224] = mem[_6421 + 224]
                            mem[t + 256] = mem[_6421 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_4881 + 64] = 0
                        return memory
                          from mem[64]
                           len _4881 + (32 * _4915) + (288 * _5694) + -mem[64] + 160
                    mem[64] = (64 * arg3) + 736
                    mem[var74002] = 0
                    mem[var74002 + 32] = 0
                    mem[var74002 + 64] = 0
                    mem[var74002 + 96] = 0
                    mem[var74002 + 128] = 0
                    mem[var74002 + 160] = 0
                    mem[var74002 + 192] = 0
                    mem[var74002 + 224] = 0
                    mem[var74002 + 256] = 0
                    mem[var76002] = var76001
                    if not var76003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _8054 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_8054] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_8054 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_8054 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_8054 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_8054 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_8054 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_8054 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_8054 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_8054 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg3) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg3) + 160] = _8054
                            if arg3 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg3:
                                revert with 'NH{q', 17
                            _8229 = mem[64]
                            mem[mem[64]] = 96
                            _8253 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _8253:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _8253) + 128
                            _8923 = mem[(32 * arg3) + 128]
                            mem[_8229 + (32 * _8253) + 128] = mem[(32 * arg3) + 128]
                            idx = 0
                            s = (32 * arg3) + 160
                            t = _8229 + (32 * _8253) + 160
                            while idx < _8923:
                                _9650 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_9650 + 56 len 8]
                                mem[t + 64] = mem[_9650 + 64]
                                mem[t + 96] = mem[_9650 + 96]
                                mem[t + 128] = mem[_9650 + 128]
                                mem[t + 160] = bool(mem[_9650 + 160])
                                mem[t + 192] = bool(mem[_9650 + 192])
                                mem[t + 224] = mem[_9650 + 224]
                                mem[t + 256] = mem[_9650 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_8229 + 64] = 0
                            return memory
                              from mem[64]
                               len _8229 + (32 * _8253) + (288 * _8923) + -mem[64] + 160
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _8109 = mem[64]
                        mem[mem[64]] = 96
                        _8143 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _8143) + 128
                        _8922 = mem[(32 * arg3) + 128]
                        mem[_8109 + (32 * _8143) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _8109 + (32 * _8143) + 160
                        while idx < _8922:
                            _9649 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_9649 + 56 len 8]
                            mem[t + 64] = mem[_9649 + 64]
                            mem[t + 96] = mem[_9649 + 96]
                            mem[t + 128] = mem[_9649 + 128]
                            mem[t + 160] = bool(mem[_9649 + 160])
                            mem[t + 192] = bool(mem[_9649 + 192])
                            mem[t + 224] = mem[_9649 + 224]
                            mem[t + 256] = mem[_9649 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_8109 + 64] = 0
                        return memory
                          from mem[64]
                           len _8109 + (32 * _8143) + (288 * _8922) + -mem[64] + 160
                    mem[64] = (64 * arg3) + 1024
                    mem[var82002] = 0
                    mem[var82002 + 32] = 0
                    mem[var82002 + 64] = 0
                    mem[var82002 + 96] = 0
                    mem[var82002 + 128] = 0
                    mem[var82002 + 160] = 0
                    mem[var82002 + 192] = 0
                    mem[var82002 + 224] = 0
                    mem[var82002 + 256] = 0
                    mem[var84002] = var84001
                    if not var84003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _11282 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_11282] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_11282 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_11282 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_11282 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_11282 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_11282 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_11282 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_11282 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_11282 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg3) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg3) + 160] = _11282
                            if arg3 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg3:
                                revert with 'NH{q', 17
                            _11457 = mem[64]
                            mem[mem[64]] = 96
                            _11481 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _11481:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _11481) + 128
                            _12151 = mem[(32 * arg3) + 128]
                            mem[_11457 + (32 * _11481) + 128] = mem[(32 * arg3) + 128]
                            idx = 0
                            s = (32 * arg3) + 160
                            t = _11457 + (32 * _11481) + 160
                            while idx < _12151:
                                _12878 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_12878 + 56 len 8]
                                mem[t + 64] = mem[_12878 + 64]
                                mem[t + 96] = mem[_12878 + 96]
                                mem[t + 128] = mem[_12878 + 128]
                                mem[t + 160] = bool(mem[_12878 + 160])
                                mem[t + 192] = bool(mem[_12878 + 192])
                                mem[t + 224] = mem[_12878 + 224]
                                mem[t + 256] = mem[_12878 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_11457 + 64] = 0
                            return memory
                              from mem[64]
                               len _11457 + (32 * _11481) + (288 * _12151) + -mem[64] + 160
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _11337 = mem[64]
                        mem[mem[64]] = 96
                        _11371 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _11371) + 128
                        _12150 = mem[(32 * arg3) + 128]
                        mem[_11337 + (32 * _11371) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _11337 + (32 * _11371) + 160
                        while idx < _12150:
                            _12877 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_12877 + 56 len 8]
                            mem[t + 64] = mem[_12877 + 64]
                            mem[t + 96] = mem[_12877 + 96]
                            mem[t + 128] = mem[_12877 + 128]
                            mem[t + 160] = bool(mem[_12877 + 160])
                            mem[t + 192] = bool(mem[_12877 + 192])
                            mem[t + 224] = mem[_12877 + 224]
                            mem[t + 256] = mem[_12877 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_11337 + 64] = 0
                        return memory
                          from mem[64]
                           len _11337 + (32 * _11371) + (288 * _12150) + -mem[64] + 160
                    mem[64] = (64 * arg3) + 1312
                    mem[var90002] = 0
                    mem[var90002 + 32] = 0
                    mem[var90002 + 64] = 0
                    mem[var90002 + 96] = 0
                    mem[var90002 + 128] = 0
                    mem[var90002 + 160] = 0
                    mem[var90002 + 192] = 0
                    mem[var90002 + 224] = 0
                    mem[var90002 + 256] = 0
                    mem[var92002] = var92001
                    if var92003 - 1:
                        # nil
                    else:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _14510 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_14510] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_14510 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_14510 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_14510 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_14510 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_14510 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_14510 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_14510 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_14510 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg3) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg3) + 160] = _14510
                            if arg3 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg3:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 96
                            _14709 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _14709:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            # nil
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        # nil
                else:
                    mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
                    if arg3 > test266151307():
                        revert with 'NH{q', 65
                    mem[(32 * arg3) + 128] = arg3
                    mem[64] = (64 * arg3) + 160
                    if not arg3:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _1600 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_1600] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_1600 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_1600 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_1600 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_1600 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_1600 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_1600 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_1600 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_1600 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg3) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg3) + 160] = _1600
                            if arg3 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg3:
                                revert with 'NH{q', 17
                            _1774 = mem[64]
                            mem[mem[64]] = 96
                            _1798 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _1798:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_1774 + 32] = (32 * _1798) + 128
                            _2469 = mem[(32 * arg3) + 128]
                            mem[_1774 + (32 * _1798) + 128] = mem[(32 * arg3) + 128]
                            idx = 0
                            s = (32 * arg3) + 160
                            t = _1774 + (32 * _1798) + 160
                            while idx < _2469:
                                _3196 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_3196 + 56 len 8]
                                mem[t + 64] = mem[_3196 + 64]
                                mem[t + 96] = mem[_3196 + 96]
                                mem[t + 128] = mem[_3196 + 128]
                                mem[t + 160] = bool(mem[_3196 + 160])
                                mem[t + 192] = bool(mem[_3196 + 192])
                                mem[t + 224] = mem[_3196 + 224]
                                mem[t + 256] = mem[_3196 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_1774 + 64] = 0
                            return memory
                              from mem[64]
                               len _1774 + (32 * _1798) + (288 * _2469) + -mem[64] + 160
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _1654 = mem[64]
                        mem[mem[64]] = 96
                        _1688 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _1688) + 128
                        _2468 = mem[(32 * arg3) + 128]
                        mem[_1654 + (32 * _1688) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _1654 + (32 * _1688) + 160
                        while idx < _2468:
                            _3195 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_3195 + 56 len 8]
                            mem[t + 64] = mem[_3195 + 64]
                            mem[t + 96] = mem[_3195 + 96]
                            mem[t + 128] = mem[_3195 + 128]
                            mem[t + 160] = bool(mem[_3195 + 160])
                            mem[t + 192] = bool(mem[_3195 + 192])
                            mem[t + 224] = mem[_3195 + 224]
                            mem[t + 256] = mem[_3195 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_1654 + 64] = 0
                        return memory
                          from mem[64]
                           len _1654 + (32 * _1688) + (288 * _2468) + -mem[64] + 160
                    mem[64] = (64 * arg3) + 448
                    mem[var67002] = 0
                    mem[var67002 + 32] = 0
                    mem[var67002 + 64] = 0
                    mem[var67002 + 96] = 0
                    mem[var67002 + 128] = 0
                    mem[var67002 + 160] = 0
                    mem[var67002 + 192] = 0
                    mem[var67002 + 224] = 0
                    mem[var67002 + 256] = 0
                    mem[var69002] = var69001
                    if not var69003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _4828 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_4828] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_4828 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_4828 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_4828 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_4828 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_4828 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_4828 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_4828 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_4828 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg3) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg3) + 160] = _4828
                            if arg3 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg3:
                                revert with 'NH{q', 17
                            _5002 = mem[64]
                            mem[mem[64]] = 96
                            _5026 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _5026:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _5026) + 128
                            _5698 = mem[(32 * arg3) + 128]
                            mem[_5002 + (32 * _5026) + 128] = mem[(32 * arg3) + 128]
                            idx = 0
                            s = (32 * arg3) + 160
                            t = _5002 + (32 * _5026) + 160
                            while idx < _5698:
                                _6424 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_6424 + 56 len 8]
                                mem[t + 64] = mem[_6424 + 64]
                                mem[t + 96] = mem[_6424 + 96]
                                mem[t + 128] = mem[_6424 + 128]
                                mem[t + 160] = bool(mem[_6424 + 160])
                                mem[t + 192] = bool(mem[_6424 + 192])
                                mem[t + 224] = mem[_6424 + 224]
                                mem[t + 256] = mem[_6424 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_5002 + 64] = 0
                            return memory
                              from mem[64]
                               len _5002 + (32 * _5026) + (288 * _5698) + -mem[64] + 160
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _4882 = mem[64]
                        mem[mem[64]] = 96
                        _4918 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[_4882 + 32] = (32 * _4918) + 128
                        _5697 = mem[(32 * arg3) + 128]
                        mem[_4882 + (32 * _4918) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _4882 + (32 * _4918) + 160
                        while idx < _5697:
                            _6423 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_6423 + 56 len 8]
                            mem[t + 64] = mem[_6423 + 64]
                            mem[t + 96] = mem[_6423 + 96]
                            mem[t + 128] = mem[_6423 + 128]
                            mem[t + 160] = bool(mem[_6423 + 160])
                            mem[t + 192] = bool(mem[_6423 + 192])
                            mem[t + 224] = mem[_6423 + 224]
                            mem[t + 256] = mem[_6423 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_4882 + 64] = 0
                        return memory
                          from mem[64]
                           len _4882 + (32 * _4918) + (288 * _5697) + -mem[64] + 160
                    mem[64] = (64 * arg3) + 736
                    mem[var75002] = 0
                    mem[var75002 + 32] = 0
                    mem[var75002 + 64] = 0
                    mem[var75002 + 96] = 0
                    mem[var75002 + 128] = 0
                    mem[var75002 + 160] = 0
                    mem[var75002 + 192] = 0
                    mem[var75002 + 224] = 0
                    mem[var75002 + 256] = 0
                    mem[var77002] = var77001
                    if not var77003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _8056 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_8056] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_8056 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_8056 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_8056 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_8056 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_8056 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_8056 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_8056 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_8056 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg3) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg3) + 160] = _8056
                            if arg3 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg3:
                                revert with 'NH{q', 17
                            _8230 = mem[64]
                            mem[mem[64]] = 96
                            _8254 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _8254:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_8230 + 32] = (32 * _8254) + 128
                            _8926 = mem[(32 * arg3) + 128]
                            mem[_8230 + (32 * _8254) + 128] = mem[(32 * arg3) + 128]
                            idx = 0
                            s = (32 * arg3) + 160
                            t = _8230 + (32 * _8254) + 160
                            while idx < _8926:
                                _9652 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_9652 + 56 len 8]
                                mem[t + 64] = mem[_9652 + 64]
                                mem[t + 96] = mem[_9652 + 96]
                                mem[t + 128] = mem[_9652 + 128]
                                mem[t + 160] = bool(mem[_9652 + 160])
                                mem[t + 192] = bool(mem[_9652 + 192])
                                mem[t + 224] = mem[_9652 + 224]
                                mem[t + 256] = mem[_9652 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_8230 + 64] = 0
                            return memory
                              from mem[64]
                               len _8230 + (32 * _8254) + (288 * _8926) + -mem[64] + 160
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _8110 = mem[64]
                        mem[mem[64]] = 96
                        _8146 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _8146) + 128
                        _8925 = mem[(32 * arg3) + 128]
                        mem[_8110 + (32 * _8146) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _8110 + (32 * _8146) + 160
                        while idx < _8925:
                            _9651 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_9651 + 56 len 8]
                            mem[t + 64] = mem[_9651 + 64]
                            mem[t + 96] = mem[_9651 + 96]
                            mem[t + 128] = mem[_9651 + 128]
                            mem[t + 160] = bool(mem[_9651 + 160])
                            mem[t + 192] = bool(mem[_9651 + 192])
                            mem[t + 224] = mem[_9651 + 224]
                            mem[t + 256] = mem[_9651 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_8110 + 64] = 0
                        return memory
                          from mem[64]
                           len _8110 + (32 * _8146) + (288 * _8925) + -mem[64] + 160
                    mem[64] = (64 * arg3) + 1024
                    mem[var83002] = 0
                    mem[var83002 + 32] = 0
                    mem[var83002 + 64] = 0
                    mem[var83002 + 96] = 0
                    mem[var83002 + 128] = 0
                    mem[var83002 + 160] = 0
                    mem[var83002 + 192] = 0
                    mem[var83002 + 224] = 0
                    mem[var83002 + 256] = 0
                    mem[var85002] = var85001
                    if not var85003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _11284 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_11284] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_11284 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_11284 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_11284 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_11284 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_11284 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_11284 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_11284 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_11284 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg3) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg3) + 160] = _11284
                            if arg3 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg3:
                                revert with 'NH{q', 17
                            _11458 = mem[64]
                            mem[mem[64]] = 96
                            _11482 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _11482:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_11458 + 32] = (32 * _11482) + 128
                            _12154 = mem[(32 * arg3) + 128]
                            mem[_11458 + (32 * _11482) + 128] = mem[(32 * arg3) + 128]
                            idx = 0
                            s = (32 * arg3) + 160
                            t = _11458 + (32 * _11482) + 160
                            while idx < _12154:
                                _12880 = mem[s]
                                if mem[mem[s]] >= 2:
                                    revert with 'NH{q', 33
                                mem[t] = mem[mem[s]]
                                mem[t + 32] = mem[_12880 + 56 len 8]
                                mem[t + 64] = mem[_12880 + 64]
                                mem[t + 96] = mem[_12880 + 96]
                                mem[t + 128] = mem[_12880 + 128]
                                mem[t + 160] = bool(mem[_12880 + 160])
                                mem[t + 192] = bool(mem[_12880 + 192])
                                mem[t + 224] = mem[_12880 + 224]
                                mem[t + 256] = mem[_12880 + 268 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 288
                                continue 
                            mem[_11458 + 64] = 0
                            return memory
                              from mem[64]
                               len _11458 + (32 * _11482) + (288 * _12154) + -mem[64] + 160
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        _11338 = mem[64]
                        mem[mem[64]] = 96
                        _11374 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _11374) + 128
                        _12153 = mem[(32 * arg3) + 128]
                        mem[_11338 + (32 * _11374) + 128] = mem[(32 * arg3) + 128]
                        idx = 0
                        s = (32 * arg3) + 160
                        t = _11338 + (32 * _11374) + 160
                        while idx < _12153:
                            _12879 = mem[s]
                            if mem[mem[s]] >= 2:
                                revert with 'NH{q', 33
                            mem[t] = mem[mem[s]]
                            mem[t + 32] = mem[_12879 + 56 len 8]
                            mem[t + 64] = mem[_12879 + 64]
                            mem[t + 96] = mem[_12879 + 96]
                            mem[t + 128] = mem[_12879 + 128]
                            mem[t + 160] = bool(mem[_12879 + 160])
                            mem[t + 192] = bool(mem[_12879 + 192])
                            mem[t + 224] = mem[_12879 + 224]
                            mem[t + 256] = mem[_12879 + 268 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 288
                            continue 
                        mem[_11338 + 64] = 0
                        return memory
                          from mem[64]
                           len _11338 + (32 * _11374) + (288 * _12153) + -mem[64] + 160
                    mem[64] = (64 * arg3) + 1312
                    mem[var91002] = 0
                    mem[var91002 + 32] = 0
                    mem[var91002 + 64] = 0
                    mem[var91002 + 96] = 0
                    mem[var91002 + 128] = 0
                    mem[var91002 + 160] = 0
                    mem[var91002 + 192] = 0
                    mem[var91002 + 224] = 0
                    mem[var91002 + 256] = 0
                    mem[var93002] = var93001
                    if var93003 - 1:
                        # nil
                    else:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > arg3:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _14512 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_14512] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_14512 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_14512 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_14512 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_14512 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_14512 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_14512 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_14512 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_14512 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg3) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg3) + 160] = _14512
                            if arg3 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if arg3 < arg3:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 96
                            _14710 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _14710:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            # nil
                        if arg3 < arg3:
                            revert with 'NH{q', 17
                        # nil
    else:
        if arg4 > s:
            if s > test266151307():
                revert with 'NH{q', 65
            mem[96] = s
            if not s:
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[(32 * s) + 128] = s
                mem[64] = (64 * s) + 160
                if not s:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > s:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _1602 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_1602] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_1602 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_1602 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_1602 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_1602 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_1602 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_1602 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_1602 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_1602 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * s) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 160] = _1602
                        if s != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if s < s:
                            revert with 'NH{q', 17
                        _1775 = mem[64]
                        mem[mem[64]] = 96
                        _1799 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 128
                        while idx < _1799:
                            mem[u] = mem[t]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_1775 + 32] = (32 * _1799) + 128
                        _2472 = mem[(32 * s) + 128]
                        mem[_1775 + (32 * _1799) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _1775 + (32 * _1799) + 160
                        while idx < _2472:
                            _3198 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_3198 + 56 len 8]
                            mem[u + 64] = mem[_3198 + 64]
                            mem[u + 96] = mem[_3198 + 96]
                            mem[u + 128] = mem[_3198 + 128]
                            mem[u + 160] = bool(mem[_3198 + 160])
                            mem[u + 192] = bool(mem[_3198 + 192])
                            mem[u + 224] = mem[_3198 + 224]
                            mem[u + 256] = mem[_3198 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_1775 + 64] = 0
                        return memory
                          from mem[64]
                           len _1775 + (32 * _1799) + (288 * _2472) + -mem[64] + 160
                    if s < s:
                        revert with 'NH{q', 17
                    _1655 = mem[64]
                    mem[mem[64]] = 96
                    _1691 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_1655 + 32] = (32 * _1691) + 128
                    _2471 = mem[(32 * s) + 128]
                    mem[_1655 + (32 * _1691) + 128] = mem[(32 * s) + 128]
                    idx = 0
                    t = (32 * s) + 160
                    u = _1655 + (32 * _1691) + 160
                    while idx < _2471:
                        _3197 = mem[t]
                        if mem[mem[t]] >= 2:
                            revert with 'NH{q', 33
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_3197 + 56 len 8]
                        mem[u + 64] = mem[_3197 + 64]
                        mem[u + 96] = mem[_3197 + 96]
                        mem[u + 128] = mem[_3197 + 128]
                        mem[u + 160] = bool(mem[_3197 + 160])
                        mem[u + 192] = bool(mem[_3197 + 192])
                        mem[u + 224] = mem[_3197 + 224]
                        mem[u + 256] = mem[_3197 + 268 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_1655 + 64] = 0
                    return memory
                      from mem[64]
                       len _1655 + (32 * _1691) + (288 * _2471) + -mem[64] + 160
                mem[64] = (64 * s) + 448
                mem[var59002] = 0
                mem[var59002 + 32] = 0
                mem[var59002 + 64] = 0
                mem[var59002 + 96] = 0
                mem[var59002 + 128] = 0
                mem[var59002 + 160] = 0
                mem[var59002 + 192] = 0
                mem[var59002 + 224] = 0
                mem[var59002 + 256] = 0
                mem[var61002] = var61001
                if not var61003 - 1:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > s:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _4830 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_4830] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_4830 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_4830 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_4830 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_4830 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_4830 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_4830 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_4830 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_4830 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * s) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 160] = _4830
                        if s != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if s < s:
                            revert with 'NH{q', 17
                        _5003 = mem[64]
                        mem[mem[64]] = 96
                        _5027 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 128
                        while idx < _5027:
                            mem[u] = mem[t]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _5027) + 128
                        _5701 = mem[(32 * s) + 128]
                        mem[_5003 + (32 * _5027) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _5003 + (32 * _5027) + 160
                        while idx < _5701:
                            _6426 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_6426 + 56 len 8]
                            mem[u + 64] = mem[_6426 + 64]
                            mem[u + 96] = mem[_6426 + 96]
                            mem[u + 128] = mem[_6426 + 128]
                            mem[u + 160] = bool(mem[_6426 + 160])
                            mem[u + 192] = bool(mem[_6426 + 192])
                            mem[u + 224] = mem[_6426 + 224]
                            mem[u + 256] = mem[_6426 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_5003 + 64] = 0
                        return memory
                          from mem[64]
                           len _5003 + (32 * _5027) + (288 * _5701) + -mem[64] + 160
                    if s < s:
                        revert with 'NH{q', 17
                    _4883 = mem[64]
                    mem[mem[64]] = 96
                    _4921 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * _4921) + 128
                    _5700 = mem[(32 * s) + 128]
                    mem[_4883 + (32 * _4921) + 128] = mem[(32 * s) + 128]
                    idx = 0
                    t = (32 * s) + 160
                    u = _4883 + (32 * _4921) + 160
                    while idx < _5700:
                        _6425 = mem[t]
                        if mem[mem[t]] >= 2:
                            revert with 'NH{q', 33
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_6425 + 56 len 8]
                        mem[u + 64] = mem[_6425 + 64]
                        mem[u + 96] = mem[_6425 + 96]
                        mem[u + 128] = mem[_6425 + 128]
                        mem[u + 160] = bool(mem[_6425 + 160])
                        mem[u + 192] = bool(mem[_6425 + 192])
                        mem[u + 224] = mem[_6425 + 224]
                        mem[u + 256] = mem[_6425 + 268 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_4883 + 64] = 0
                    return memory
                      from mem[64]
                       len _4883 + (32 * _4921) + (288 * _5700) + -mem[64] + 160
                mem[64] = (64 * s) + 736
                mem[var67002] = 0
                mem[var67002 + 32] = 0
                mem[var67002 + 64] = 0
                mem[var67002 + 96] = 0
                mem[var67002 + 128] = 0
                mem[var67002 + 160] = 0
                mem[var67002 + 192] = 0
                mem[var67002 + 224] = 0
                mem[var67002 + 256] = 0
                mem[var69002] = var69001
                if not var69003 - 1:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > s:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _8058 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_8058] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_8058 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_8058 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_8058 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_8058 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_8058 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_8058 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_8058 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_8058 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * s) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 160] = _8058
                        if s != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if s < s:
                            revert with 'NH{q', 17
                        _8231 = mem[64]
                        mem[mem[64]] = 96
                        _8255 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 128
                        while idx < _8255:
                            mem[u] = mem[t]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _8255) + 128
                        _8929 = mem[(32 * s) + 128]
                        mem[_8231 + (32 * _8255) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _8231 + (32 * _8255) + 160
                        while idx < _8929:
                            _9654 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_9654 + 56 len 8]
                            mem[u + 64] = mem[_9654 + 64]
                            mem[u + 96] = mem[_9654 + 96]
                            mem[u + 128] = mem[_9654 + 128]
                            mem[u + 160] = bool(mem[_9654 + 160])
                            mem[u + 192] = bool(mem[_9654 + 192])
                            mem[u + 224] = mem[_9654 + 224]
                            mem[u + 256] = mem[_9654 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_8231 + 64] = 0
                        return memory
                          from mem[64]
                           len _8231 + (32 * _8255) + (288 * _8929) + -mem[64] + 160
                    if s < s:
                        revert with 'NH{q', 17
                    _8111 = mem[64]
                    mem[mem[64]] = 96
                    _8149 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_8111 + 32] = (32 * _8149) + 128
                    _8928 = mem[(32 * s) + 128]
                    mem[_8111 + (32 * _8149) + 128] = mem[(32 * s) + 128]
                    idx = 0
                    t = (32 * s) + 160
                    u = _8111 + (32 * _8149) + 160
                    while idx < _8928:
                        _9653 = mem[t]
                        if mem[mem[t]] >= 2:
                            revert with 'NH{q', 33
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_9653 + 56 len 8]
                        mem[u + 64] = mem[_9653 + 64]
                        mem[u + 96] = mem[_9653 + 96]
                        mem[u + 128] = mem[_9653 + 128]
                        mem[u + 160] = bool(mem[_9653 + 160])
                        mem[u + 192] = bool(mem[_9653 + 192])
                        mem[u + 224] = mem[_9653 + 224]
                        mem[u + 256] = mem[_9653 + 268 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_8111 + 64] = 0
                    return memory
                      from mem[64]
                       len _8111 + (32 * _8149) + (288 * _8928) + -mem[64] + 160
                mem[64] = (64 * s) + 1024
                mem[var75002] = 0
                mem[var75002 + 32] = 0
                mem[var75002 + 64] = 0
                mem[var75002 + 96] = 0
                mem[var75002 + 128] = 0
                mem[var75002 + 160] = 0
                mem[var75002 + 192] = 0
                mem[var75002 + 224] = 0
                mem[var75002 + 256] = 0
                mem[var77002] = var77001
                if not var77003 - 1:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > s:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _11286 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_11286] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_11286 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_11286 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_11286 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_11286 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_11286 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_11286 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_11286 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_11286 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * s) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 160] = _11286
                        if s != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if s < s:
                            revert with 'NH{q', 17
                        _11459 = mem[64]
                        mem[mem[64]] = 96
                        _11483 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 128
                        while idx < _11483:
                            mem[u] = mem[t]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_11459 + 32] = (32 * _11483) + 128
                        _12157 = mem[(32 * s) + 128]
                        mem[_11459 + (32 * _11483) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _11459 + (32 * _11483) + 160
                        while idx < _12157:
                            _12882 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_12882 + 56 len 8]
                            mem[u + 64] = mem[_12882 + 64]
                            mem[u + 96] = mem[_12882 + 96]
                            mem[u + 128] = mem[_12882 + 128]
                            mem[u + 160] = bool(mem[_12882 + 160])
                            mem[u + 192] = bool(mem[_12882 + 192])
                            mem[u + 224] = mem[_12882 + 224]
                            mem[u + 256] = mem[_12882 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_11459 + 64] = 0
                        return memory
                          from mem[64]
                           len _11459 + (32 * _11483) + (288 * _12157) + -mem[64] + 160
                    if s < s:
                        revert with 'NH{q', 17
                    _11339 = mem[64]
                    mem[mem[64]] = 96
                    _11377 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * _11377) + 128
                    _12156 = mem[(32 * s) + 128]
                    mem[_11339 + (32 * _11377) + 128] = mem[(32 * s) + 128]
                    idx = 0
                    t = (32 * s) + 160
                    u = _11339 + (32 * _11377) + 160
                    while idx < _12156:
                        _12881 = mem[t]
                        if mem[mem[t]] >= 2:
                            revert with 'NH{q', 33
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_12881 + 56 len 8]
                        mem[u + 64] = mem[_12881 + 64]
                        mem[u + 96] = mem[_12881 + 96]
                        mem[u + 128] = mem[_12881 + 128]
                        mem[u + 160] = bool(mem[_12881 + 160])
                        mem[u + 192] = bool(mem[_12881 + 192])
                        mem[u + 224] = mem[_12881 + 224]
                        mem[u + 256] = mem[_12881 + 268 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_11339 + 64] = 0
                    return memory
                      from mem[64]
                       len _11339 + (32 * _11377) + (288 * _12156) + -mem[64] + 160
                mem[64] = (64 * s) + 1312
                mem[var83002] = 0
                mem[var83002 + 32] = 0
                mem[var83002 + 64] = 0
                mem[var83002 + 96] = 0
                mem[var83002 + 128] = 0
                mem[var83002 + 160] = 0
                mem[var83002 + 192] = 0
                mem[var83002 + 224] = 0
                mem[var83002 + 256] = 0
                mem[var85002] = var85001
                if var85003 - 1:
                    # nil
                else:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > s:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _14514 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_14514] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_14514 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_14514 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_14514 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_14514 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_14514 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_14514 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_14514 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_14514 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * s) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 160] = _14514
                        if s != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if s < s:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 96
                        _14711 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _14711:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        # nil
                    if s < s:
                        revert with 'NH{q', 17
                    # nil
            else:
                mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[(32 * s) + 128] = s
                mem[64] = (64 * s) + 160
                if not s:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > s:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _1604 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_1604] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_1604 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_1604 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_1604 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_1604 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_1604 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_1604 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_1604 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_1604 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * s) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 160] = _1604
                        if s != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if s < s:
                            revert with 'NH{q', 17
                        _1776 = mem[64]
                        mem[mem[64]] = 96
                        _1800 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 128
                        while idx < _1800:
                            mem[u] = mem[t]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _1800) + 128
                        _2475 = mem[(32 * s) + 128]
                        mem[_1776 + (32 * _1800) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _1776 + (32 * _1800) + 160
                        while idx < _2475:
                            _3200 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_3200 + 56 len 8]
                            mem[u + 64] = mem[_3200 + 64]
                            mem[u + 96] = mem[_3200 + 96]
                            mem[u + 128] = mem[_3200 + 128]
                            mem[u + 160] = bool(mem[_3200 + 160])
                            mem[u + 192] = bool(mem[_3200 + 192])
                            mem[u + 224] = mem[_3200 + 224]
                            mem[u + 256] = mem[_3200 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_1776 + 64] = 0
                        return memory
                          from mem[64]
                           len _1776 + (32 * _1800) + (288 * _2475) + -mem[64] + 160
                    if s < s:
                        revert with 'NH{q', 17
                    _1656 = mem[64]
                    mem[mem[64]] = 96
                    _1694 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_1656 + 32] = (32 * _1694) + 128
                    _2474 = mem[(32 * s) + 128]
                    mem[_1656 + (32 * _1694) + 128] = mem[(32 * s) + 128]
                    idx = 0
                    t = (32 * s) + 160
                    u = _1656 + (32 * _1694) + 160
                    while idx < _2474:
                        _3199 = mem[t]
                        if mem[mem[t]] >= 2:
                            revert with 'NH{q', 33
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_3199 + 56 len 8]
                        mem[u + 64] = mem[_3199 + 64]
                        mem[u + 96] = mem[_3199 + 96]
                        mem[u + 128] = mem[_3199 + 128]
                        mem[u + 160] = bool(mem[_3199 + 160])
                        mem[u + 192] = bool(mem[_3199 + 192])
                        mem[u + 224] = mem[_3199 + 224]
                        mem[u + 256] = mem[_3199 + 268 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_1656 + 64] = 0
                    return memory
                      from mem[64]
                       len _1656 + (32 * _1694) + (288 * _2474) + -mem[64] + 160
                mem[64] = (64 * s) + 448
                mem[var60002] = 0
                mem[var60002 + 32] = 0
                mem[var60002 + 64] = 0
                mem[var60002 + 96] = 0
                mem[var60002 + 128] = 0
                mem[var60002 + 160] = 0
                mem[var60002 + 192] = 0
                mem[var60002 + 224] = 0
                mem[var60002 + 256] = 0
                mem[var62002] = var62001
                if not var62003 - 1:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > s:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _4832 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_4832] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_4832 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_4832 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_4832 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_4832 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_4832 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_4832 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_4832 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_4832 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * s) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 160] = _4832
                        if s != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if s < s:
                            revert with 'NH{q', 17
                        _5004 = mem[64]
                        mem[mem[64]] = 96
                        _5028 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 128
                        while idx < _5028:
                            mem[u] = mem[t]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _5028) + 128
                        _5704 = mem[(32 * s) + 128]
                        mem[_5004 + (32 * _5028) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _5004 + (32 * _5028) + 160
                        while idx < _5704:
                            _6428 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_6428 + 56 len 8]
                            mem[u + 64] = mem[_6428 + 64]
                            mem[u + 96] = mem[_6428 + 96]
                            mem[u + 128] = mem[_6428 + 128]
                            mem[u + 160] = bool(mem[_6428 + 160])
                            mem[u + 192] = bool(mem[_6428 + 192])
                            mem[u + 224] = mem[_6428 + 224]
                            mem[u + 256] = mem[_6428 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_5004 + 64] = 0
                        return memory
                          from mem[64]
                           len _5004 + (32 * _5028) + (288 * _5704) + -mem[64] + 160
                    if s < s:
                        revert with 'NH{q', 17
                    _4884 = mem[64]
                    mem[mem[64]] = 96
                    _4924 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * _4924) + 128
                    _5703 = mem[(32 * s) + 128]
                    mem[_4884 + (32 * _4924) + 128] = mem[(32 * s) + 128]
                    idx = 0
                    t = (32 * s) + 160
                    u = _4884 + (32 * _4924) + 160
                    while idx < _5703:
                        _6427 = mem[t]
                        if mem[mem[t]] >= 2:
                            revert with 'NH{q', 33
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_6427 + 56 len 8]
                        mem[u + 64] = mem[_6427 + 64]
                        mem[u + 96] = mem[_6427 + 96]
                        mem[u + 128] = mem[_6427 + 128]
                        mem[u + 160] = bool(mem[_6427 + 160])
                        mem[u + 192] = bool(mem[_6427 + 192])
                        mem[u + 224] = mem[_6427 + 224]
                        mem[u + 256] = mem[_6427 + 268 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_4884 + 64] = 0
                    return memory
                      from mem[64]
                       len _4884 + (32 * _4924) + (288 * _5703) + -mem[64] + 160
                mem[64] = (64 * s) + 736
                mem[var68002] = 0
                mem[var68002 + 32] = 0
                mem[var68002 + 64] = 0
                mem[var68002 + 96] = 0
                mem[var68002 + 128] = 0
                mem[var68002 + 160] = 0
                mem[var68002 + 192] = 0
                mem[var68002 + 224] = 0
                mem[var68002 + 256] = 0
                mem[var70002] = var70001
                if not var70003 - 1:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > s:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _8060 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_8060] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_8060 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_8060 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_8060 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_8060 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_8060 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_8060 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_8060 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_8060 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * s) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 160] = _8060
                        if s != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if s < s:
                            revert with 'NH{q', 17
                        _8232 = mem[64]
                        mem[mem[64]] = 96
                        _8256 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 128
                        while idx < _8256:
                            mem[u] = mem[t]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[mem[64] + 32] = (32 * _8256) + 128
                        _8932 = mem[(32 * s) + 128]
                        mem[_8232 + (32 * _8256) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _8232 + (32 * _8256) + 160
                        while idx < _8932:
                            _9656 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_9656 + 56 len 8]
                            mem[u + 64] = mem[_9656 + 64]
                            mem[u + 96] = mem[_9656 + 96]
                            mem[u + 128] = mem[_9656 + 128]
                            mem[u + 160] = bool(mem[_9656 + 160])
                            mem[u + 192] = bool(mem[_9656 + 192])
                            mem[u + 224] = mem[_9656 + 224]
                            mem[u + 256] = mem[_9656 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_8232 + 64] = 0
                        return memory
                          from mem[64]
                           len _8232 + (32 * _8256) + (288 * _8932) + -mem[64] + 160
                    if s < s:
                        revert with 'NH{q', 17
                    _8112 = mem[64]
                    mem[mem[64]] = 96
                    _8152 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[mem[64] + 32] = (32 * _8152) + 128
                    _8931 = mem[(32 * s) + 128]
                    mem[_8112 + (32 * _8152) + 128] = mem[(32 * s) + 128]
                    idx = 0
                    t = (32 * s) + 160
                    u = _8112 + (32 * _8152) + 160
                    while idx < _8931:
                        _9655 = mem[t]
                        if mem[mem[t]] >= 2:
                            revert with 'NH{q', 33
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_9655 + 56 len 8]
                        mem[u + 64] = mem[_9655 + 64]
                        mem[u + 96] = mem[_9655 + 96]
                        mem[u + 128] = mem[_9655 + 128]
                        mem[u + 160] = bool(mem[_9655 + 160])
                        mem[u + 192] = bool(mem[_9655 + 192])
                        mem[u + 224] = mem[_9655 + 224]
                        mem[u + 256] = mem[_9655 + 268 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_8112 + 64] = 0
                    return memory
                      from mem[64]
                       len _8112 + (32 * _8152) + (288 * _8931) + -mem[64] + 160
                mem[64] = (64 * s) + 1024
                mem[var76002] = 0
                mem[var76002 + 32] = 0
                mem[var76002 + 64] = 0
                mem[var76002 + 96] = 0
                mem[var76002 + 128] = 0
                mem[var76002 + 160] = 0
                mem[var76002 + 192] = 0
                mem[var76002 + 224] = 0
                mem[var76002 + 256] = 0
                mem[var78002] = var78001
                if not var78003 - 1:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > s:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _11288 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_11288] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_11288 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_11288 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_11288 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_11288 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_11288 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_11288 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_11288 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_11288 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * s) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 160] = _11288
                        if s != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if s < s:
                            revert with 'NH{q', 17
                        _11460 = mem[64]
                        mem[mem[64]] = 96
                        _11484 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        t = 128
                        u = mem[64] + 128
                        while idx < _11484:
                            mem[u] = mem[t]
                            idx = idx + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        mem[_11460 + 32] = (32 * _11484) + 128
                        _12160 = mem[(32 * s) + 128]
                        mem[_11460 + (32 * _11484) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _11460 + (32 * _11484) + 160
                        while idx < _12160:
                            _12884 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_12884 + 56 len 8]
                            mem[u + 64] = mem[_12884 + 64]
                            mem[u + 96] = mem[_12884 + 96]
                            mem[u + 128] = mem[_12884 + 128]
                            mem[u + 160] = bool(mem[_12884 + 160])
                            mem[u + 192] = bool(mem[_12884 + 192])
                            mem[u + 224] = mem[_12884 + 224]
                            mem[u + 256] = mem[_12884 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_11460 + 64] = 0
                        return memory
                          from mem[64]
                           len _11460 + (32 * _11484) + (288 * _12160) + -mem[64] + 160
                    if s < s:
                        revert with 'NH{q', 17
                    _11340 = mem[64]
                    mem[mem[64]] = 96
                    _11380 = mem[96]
                    mem[mem[64] + 96] = mem[96]
                    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                    mem[_11340 + 32] = (32 * _11380) + 128
                    _12159 = mem[(32 * s) + 128]
                    mem[_11340 + (32 * _11380) + 128] = mem[(32 * s) + 128]
                    idx = 0
                    t = (32 * s) + 160
                    u = _11340 + (32 * _11380) + 160
                    while idx < _12159:
                        _12883 = mem[t]
                        if mem[mem[t]] >= 2:
                            revert with 'NH{q', 33
                        mem[u] = mem[mem[t]]
                        mem[u + 32] = mem[_12883 + 56 len 8]
                        mem[u + 64] = mem[_12883 + 64]
                        mem[u + 96] = mem[_12883 + 96]
                        mem[u + 128] = mem[_12883 + 128]
                        mem[u + 160] = bool(mem[_12883 + 160])
                        mem[u + 192] = bool(mem[_12883 + 192])
                        mem[u + 224] = mem[_12883 + 224]
                        mem[u + 256] = mem[_12883 + 268 len 20]
                        idx = idx + 1
                        t = t + 32
                        u = u + 288
                        continue 
                    mem[_11340 + 64] = 0
                    return memory
                      from mem[64]
                       len _11340 + (32 * _11380) + (288 * _12159) + -mem[64] + 160
                mem[64] = (64 * s) + 1312
                mem[var84002] = 0
                mem[var84002 + 32] = 0
                mem[var84002 + 64] = 0
                mem[var84002 + 96] = 0
                mem[var84002 + 128] = 0
                mem[var84002 + 160] = 0
                mem[var84002 + 192] = 0
                mem[var84002 + 224] = 0
                mem[var84002 + 256] = 0
                mem[var86002] = var86001
                if var86003 - 1:
                    # nil
                else:
                    idx = stor6
                    t = s
                    while idx > 0:
                        mem[0] = idx
                        mem[32] = 3
                        if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        mem[0] = idx
                        mem[32] = 3
                        if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if t > s:
                            if not t:
                                revert with 'NH{q', 17
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t - 1
                            continue 
                        if 0 >= mem[96]:
                            revert with 'NH{q', 50
                        mem[128] = idx
                        mem[0] = idx
                        mem[32] = 3
                        _14516 = mem[64]
                        mem[64] = mem[64] + 288
                        if uint8(sub_f3a4d071[idx].field_0) > 1:
                            revert with 'NH{q', 33
                        mem[_14516] = uint8(sub_f3a4d071[idx].field_0)
                        mem[_14516 + 32] = uint64(sub_f3a4d071[idx].field_8)
                        mem[_14516 + 64] = uint256(sub_f3a4d071[idx].field_256)
                        mem[_14516 + 96] = uint256(sub_f3a4d071[idx].field_512)
                        mem[_14516 + 128] = uint256(sub_f3a4d071[idx].field_768)
                        mem[_14516 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                        mem[_14516 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                        mem[_14516 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                        mem[_14516 + 256] = address(sub_f3a4d071[idx].field_1536)
                        if 0 >= mem[(32 * s) + 128]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 160] = _14516
                        if s != 1:
                            if not idx:
                                revert with 'NH{q', 17
                            idx = idx - 1
                            t = t
                            continue 
                        if s < s:
                            revert with 'NH{q', 17
                        mem[mem[64]] = 96
                        _14712 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 128
                        while idx < _14712:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        # nil
                    if s < s:
                        revert with 'NH{q', 17
                    # nil
        else:
            if s < arg4:
                revert with 'NH{q', 17
            if s - arg4 >= 0:
                if arg4 > test266151307():
                    revert with 'NH{q', 65
                mem[96] = arg4
                if not arg4:
                    if arg4 > test266151307():
                        revert with 'NH{q', 65
                    mem[(32 * arg4) + 128] = arg4
                    mem[64] = (64 * arg4) + 160
                    if not arg4:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _1606 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_1606] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_1606 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_1606 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_1606 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_1606 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_1606 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_1606 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_1606 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_1606 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _1606
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < arg4:
                                revert with 'NH{q', 17
                            _1777 = mem[64]
                            mem[mem[64]] = 96
                            _1801 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _1801:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _1801) + 128
                            _2478 = mem[(32 * arg4) + 128]
                            mem[_1777 + (32 * _1801) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            t = (32 * arg4) + 160
                            u = _1777 + (32 * _1801) + 160
                            while idx < _2478:
                                _3202 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_3202 + 56 len 8]
                                mem[u + 64] = mem[_3202 + 64]
                                mem[u + 96] = mem[_3202 + 96]
                                mem[u + 128] = mem[_3202 + 128]
                                mem[u + 160] = bool(mem[_3202 + 160])
                                mem[u + 192] = bool(mem[_3202 + 192])
                                mem[u + 224] = mem[_3202 + 224]
                                mem[u + 256] = mem[_3202 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_1777 + 64] = s - arg4
                            return memory
                              from mem[64]
                               len _1777 + (32 * _1801) + (288 * _2478) + -mem[64] + 160
                        if s < arg4:
                            revert with 'NH{q', 17
                        _1657 = mem[64]
                        mem[mem[64]] = 96
                        _1697 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _1697) + 128
                        _2477 = mem[(32 * arg4) + 128]
                        mem[_1657 + (32 * _1697) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        t = (32 * arg4) + 160
                        u = _1657 + (32 * _1697) + 160
                        while idx < _2477:
                            _3201 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_3201 + 56 len 8]
                            mem[u + 64] = mem[_3201 + 64]
                            mem[u + 96] = mem[_3201 + 96]
                            mem[u + 128] = mem[_3201 + 128]
                            mem[u + 160] = bool(mem[_3201 + 160])
                            mem[u + 192] = bool(mem[_3201 + 192])
                            mem[u + 224] = mem[_3201 + 224]
                            mem[u + 256] = mem[_3201 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_1657 + 64] = s - arg4
                        return memory
                          from mem[64]
                           len _1657 + (32 * _1697) + (288 * _2477) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 448
                    mem[var66002] = 0
                    mem[var66002 + 32] = 0
                    mem[var66002 + 64] = 0
                    mem[var66002 + 96] = 0
                    mem[var66002 + 128] = 0
                    mem[var66002 + 160] = 0
                    mem[var66002 + 192] = 0
                    mem[var66002 + 224] = 0
                    mem[var66002 + 256] = 0
                    mem[var68002] = var68001
                    if not var68003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _4834 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_4834] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_4834 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_4834 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_4834 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_4834 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_4834 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_4834 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_4834 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_4834 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _4834
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < arg4:
                                revert with 'NH{q', 17
                            _5005 = mem[64]
                            mem[mem[64]] = 96
                            _5029 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _5029:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _5029) + 128
                            _5707 = mem[(32 * arg4) + 128]
                            mem[_5005 + (32 * _5029) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            t = (32 * arg4) + 160
                            u = _5005 + (32 * _5029) + 160
                            while idx < _5707:
                                _6430 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_6430 + 56 len 8]
                                mem[u + 64] = mem[_6430 + 64]
                                mem[u + 96] = mem[_6430 + 96]
                                mem[u + 128] = mem[_6430 + 128]
                                mem[u + 160] = bool(mem[_6430 + 160])
                                mem[u + 192] = bool(mem[_6430 + 192])
                                mem[u + 224] = mem[_6430 + 224]
                                mem[u + 256] = mem[_6430 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_5005 + 64] = s - arg4
                            return memory
                              from mem[64]
                               len _5005 + (32 * _5029) + (288 * _5707) + -mem[64] + 160
                        if s < arg4:
                            revert with 'NH{q', 17
                        _4885 = mem[64]
                        mem[mem[64]] = 96
                        _4927 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[_4885 + 32] = (32 * _4927) + 128
                        _5706 = mem[(32 * arg4) + 128]
                        mem[_4885 + (32 * _4927) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        t = (32 * arg4) + 160
                        u = _4885 + (32 * _4927) + 160
                        while idx < _5706:
                            _6429 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_6429 + 56 len 8]
                            mem[u + 64] = mem[_6429 + 64]
                            mem[u + 96] = mem[_6429 + 96]
                            mem[u + 128] = mem[_6429 + 128]
                            mem[u + 160] = bool(mem[_6429 + 160])
                            mem[u + 192] = bool(mem[_6429 + 192])
                            mem[u + 224] = mem[_6429 + 224]
                            mem[u + 256] = mem[_6429 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_4885 + 64] = s - arg4
                        return memory
                          from mem[64]
                           len _4885 + (32 * _4927) + (288 * _5706) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 736
                    mem[var74002] = 0
                    mem[var74002 + 32] = 0
                    mem[var74002 + 64] = 0
                    mem[var74002 + 96] = 0
                    mem[var74002 + 128] = 0
                    mem[var74002 + 160] = 0
                    mem[var74002 + 192] = 0
                    mem[var74002 + 224] = 0
                    mem[var74002 + 256] = 0
                    mem[var76002] = var76001
                    if not var76003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _8062 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_8062] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_8062 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_8062 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_8062 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_8062 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_8062 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_8062 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_8062 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_8062 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _8062
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < arg4:
                                revert with 'NH{q', 17
                            _8233 = mem[64]
                            mem[mem[64]] = 96
                            _8257 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _8257:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_8233 + 32] = (32 * _8257) + 128
                            _8935 = mem[(32 * arg4) + 128]
                            mem[_8233 + (32 * _8257) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            t = (32 * arg4) + 160
                            u = _8233 + (32 * _8257) + 160
                            while idx < _8935:
                                _9658 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_9658 + 56 len 8]
                                mem[u + 64] = mem[_9658 + 64]
                                mem[u + 96] = mem[_9658 + 96]
                                mem[u + 128] = mem[_9658 + 128]
                                mem[u + 160] = bool(mem[_9658 + 160])
                                mem[u + 192] = bool(mem[_9658 + 192])
                                mem[u + 224] = mem[_9658 + 224]
                                mem[u + 256] = mem[_9658 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_8233 + 64] = s - arg4
                            return memory
                              from mem[64]
                               len _8233 + (32 * _8257) + (288 * _8935) + -mem[64] + 160
                        if s < arg4:
                            revert with 'NH{q', 17
                        _8113 = mem[64]
                        mem[mem[64]] = 96
                        _8155 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[_8113 + 32] = (32 * _8155) + 128
                        _8934 = mem[(32 * arg4) + 128]
                        mem[_8113 + (32 * _8155) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        t = (32 * arg4) + 160
                        u = _8113 + (32 * _8155) + 160
                        while idx < _8934:
                            _9657 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_9657 + 56 len 8]
                            mem[u + 64] = mem[_9657 + 64]
                            mem[u + 96] = mem[_9657 + 96]
                            mem[u + 128] = mem[_9657 + 128]
                            mem[u + 160] = bool(mem[_9657 + 160])
                            mem[u + 192] = bool(mem[_9657 + 192])
                            mem[u + 224] = mem[_9657 + 224]
                            mem[u + 256] = mem[_9657 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_8113 + 64] = s - arg4
                        return memory
                          from mem[64]
                           len _8113 + (32 * _8155) + (288 * _8934) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 1024
                    mem[var82002] = 0
                    mem[var82002 + 32] = 0
                    mem[var82002 + 64] = 0
                    mem[var82002 + 96] = 0
                    mem[var82002 + 128] = 0
                    mem[var82002 + 160] = 0
                    mem[var82002 + 192] = 0
                    mem[var82002 + 224] = 0
                    mem[var82002 + 256] = 0
                    mem[var84002] = var84001
                    if not var84003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _11290 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_11290] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_11290 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_11290 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_11290 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_11290 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_11290 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_11290 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_11290 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_11290 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _11290
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < arg4:
                                revert with 'NH{q', 17
                            _11461 = mem[64]
                            mem[mem[64]] = 96
                            _11485 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _11485:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_11461 + 32] = (32 * _11485) + 128
                            _12163 = mem[(32 * arg4) + 128]
                            mem[_11461 + (32 * _11485) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            t = (32 * arg4) + 160
                            u = _11461 + (32 * _11485) + 160
                            while idx < _12163:
                                _12886 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_12886 + 56 len 8]
                                mem[u + 64] = mem[_12886 + 64]
                                mem[u + 96] = mem[_12886 + 96]
                                mem[u + 128] = mem[_12886 + 128]
                                mem[u + 160] = bool(mem[_12886 + 160])
                                mem[u + 192] = bool(mem[_12886 + 192])
                                mem[u + 224] = mem[_12886 + 224]
                                mem[u + 256] = mem[_12886 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_11461 + 64] = s - arg4
                            return memory
                              from mem[64]
                               len _11461 + (32 * _11485) + (288 * _12163) + -mem[64] + 160
                        if s < arg4:
                            revert with 'NH{q', 17
                        _11341 = mem[64]
                        mem[mem[64]] = 96
                        _11383 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _11383) + 128
                        _12162 = mem[(32 * arg4) + 128]
                        mem[_11341 + (32 * _11383) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        t = (32 * arg4) + 160
                        u = _11341 + (32 * _11383) + 160
                        while idx < _12162:
                            _12885 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_12885 + 56 len 8]
                            mem[u + 64] = mem[_12885 + 64]
                            mem[u + 96] = mem[_12885 + 96]
                            mem[u + 128] = mem[_12885 + 128]
                            mem[u + 160] = bool(mem[_12885 + 160])
                            mem[u + 192] = bool(mem[_12885 + 192])
                            mem[u + 224] = mem[_12885 + 224]
                            mem[u + 256] = mem[_12885 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_11341 + 64] = s - arg4
                        return memory
                          from mem[64]
                           len _11341 + (32 * _11383) + (288 * _12162) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 1312
                    mem[var90002] = 0
                    mem[var90002 + 32] = 0
                    mem[var90002 + 64] = 0
                    mem[var90002 + 96] = 0
                    mem[var90002 + 128] = 0
                    mem[var90002 + 160] = 0
                    mem[var90002 + 192] = 0
                    mem[var90002 + 224] = 0
                    mem[var90002 + 256] = 0
                    mem[var92002] = var92001
                    if var92003 - 1:
                        # nil
                    else:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _14518 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_14518] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_14518 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_14518 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_14518 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_14518 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_14518 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_14518 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_14518 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_14518 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _14518
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < arg4:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 96
                            _14713 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _14713:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            # nil
                        if s < arg4:
                            revert with 'NH{q', 17
                        # nil
                else:
                    mem[128 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
                    if arg4 > test266151307():
                        revert with 'NH{q', 65
                    mem[(32 * arg4) + 128] = arg4
                    mem[64] = (64 * arg4) + 160
                    if not arg4:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _1608 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_1608] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_1608 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_1608 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_1608 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_1608 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_1608 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_1608 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_1608 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_1608 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _1608
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < arg4:
                                revert with 'NH{q', 17
                            _1778 = mem[64]
                            mem[mem[64]] = 96
                            _1802 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _1802:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _1802) + 128
                            _2481 = mem[(32 * arg4) + 128]
                            mem[_1778 + (32 * _1802) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            t = (32 * arg4) + 160
                            u = _1778 + (32 * _1802) + 160
                            while idx < _2481:
                                _3204 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_3204 + 56 len 8]
                                mem[u + 64] = mem[_3204 + 64]
                                mem[u + 96] = mem[_3204 + 96]
                                mem[u + 128] = mem[_3204 + 128]
                                mem[u + 160] = bool(mem[_3204 + 160])
                                mem[u + 192] = bool(mem[_3204 + 192])
                                mem[u + 224] = mem[_3204 + 224]
                                mem[u + 256] = mem[_3204 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_1778 + 64] = s - arg4
                            return memory
                              from mem[64]
                               len _1778 + (32 * _1802) + (288 * _2481) + -mem[64] + 160
                        if s < arg4:
                            revert with 'NH{q', 17
                        _1658 = mem[64]
                        mem[mem[64]] = 96
                        _1700 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[_1658 + 32] = (32 * _1700) + 128
                        _2480 = mem[(32 * arg4) + 128]
                        mem[_1658 + (32 * _1700) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        t = (32 * arg4) + 160
                        u = _1658 + (32 * _1700) + 160
                        while idx < _2480:
                            _3203 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_3203 + 56 len 8]
                            mem[u + 64] = mem[_3203 + 64]
                            mem[u + 96] = mem[_3203 + 96]
                            mem[u + 128] = mem[_3203 + 128]
                            mem[u + 160] = bool(mem[_3203 + 160])
                            mem[u + 192] = bool(mem[_3203 + 192])
                            mem[u + 224] = mem[_3203 + 224]
                            mem[u + 256] = mem[_3203 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_1658 + 64] = s - arg4
                        return memory
                          from mem[64]
                           len _1658 + (32 * _1700) + (288 * _2480) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 448
                    mem[var67002] = 0
                    mem[var67002 + 32] = 0
                    mem[var67002 + 64] = 0
                    mem[var67002 + 96] = 0
                    mem[var67002 + 128] = 0
                    mem[var67002 + 160] = 0
                    mem[var67002 + 192] = 0
                    mem[var67002 + 224] = 0
                    mem[var67002 + 256] = 0
                    mem[var69002] = var69001
                    if not var69003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _4836 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_4836] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_4836 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_4836 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_4836 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_4836 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_4836 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_4836 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_4836 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_4836 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _4836
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < arg4:
                                revert with 'NH{q', 17
                            _5006 = mem[64]
                            mem[mem[64]] = 96
                            _5030 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _5030:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _5030) + 128
                            _5710 = mem[(32 * arg4) + 128]
                            mem[_5006 + (32 * _5030) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            t = (32 * arg4) + 160
                            u = _5006 + (32 * _5030) + 160
                            while idx < _5710:
                                _6432 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_6432 + 56 len 8]
                                mem[u + 64] = mem[_6432 + 64]
                                mem[u + 96] = mem[_6432 + 96]
                                mem[u + 128] = mem[_6432 + 128]
                                mem[u + 160] = bool(mem[_6432 + 160])
                                mem[u + 192] = bool(mem[_6432 + 192])
                                mem[u + 224] = mem[_6432 + 224]
                                mem[u + 256] = mem[_6432 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_5006 + 64] = s - arg4
                            return memory
                              from mem[64]
                               len _5006 + (32 * _5030) + (288 * _5710) + -mem[64] + 160
                        if s < arg4:
                            revert with 'NH{q', 17
                        _4886 = mem[64]
                        mem[mem[64]] = 96
                        _4930 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _4930) + 128
                        _5709 = mem[(32 * arg4) + 128]
                        mem[_4886 + (32 * _4930) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        t = (32 * arg4) + 160
                        u = _4886 + (32 * _4930) + 160
                        while idx < _5709:
                            _6431 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_6431 + 56 len 8]
                            mem[u + 64] = mem[_6431 + 64]
                            mem[u + 96] = mem[_6431 + 96]
                            mem[u + 128] = mem[_6431 + 128]
                            mem[u + 160] = bool(mem[_6431 + 160])
                            mem[u + 192] = bool(mem[_6431 + 192])
                            mem[u + 224] = mem[_6431 + 224]
                            mem[u + 256] = mem[_6431 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_4886 + 64] = s - arg4
                        return memory
                          from mem[64]
                           len _4886 + (32 * _4930) + (288 * _5709) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 736
                    mem[var75002] = 0
                    mem[var75002 + 32] = 0
                    mem[var75002 + 64] = 0
                    mem[var75002 + 96] = 0
                    mem[var75002 + 128] = 0
                    mem[var75002 + 160] = 0
                    mem[var75002 + 192] = 0
                    mem[var75002 + 224] = 0
                    mem[var75002 + 256] = 0
                    mem[var77002] = var77001
                    if not var77003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _8064 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_8064] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_8064 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_8064 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_8064 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_8064 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_8064 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_8064 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_8064 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_8064 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _8064
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < arg4:
                                revert with 'NH{q', 17
                            _8234 = mem[64]
                            mem[mem[64]] = 96
                            _8258 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _8258:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _8258) + 128
                            _8938 = mem[(32 * arg4) + 128]
                            mem[_8234 + (32 * _8258) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            t = (32 * arg4) + 160
                            u = _8234 + (32 * _8258) + 160
                            while idx < _8938:
                                _9660 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_9660 + 56 len 8]
                                mem[u + 64] = mem[_9660 + 64]
                                mem[u + 96] = mem[_9660 + 96]
                                mem[u + 128] = mem[_9660 + 128]
                                mem[u + 160] = bool(mem[_9660 + 160])
                                mem[u + 192] = bool(mem[_9660 + 192])
                                mem[u + 224] = mem[_9660 + 224]
                                mem[u + 256] = mem[_9660 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_8234 + 64] = s - arg4
                            return memory
                              from mem[64]
                               len _8234 + (32 * _8258) + (288 * _8938) + -mem[64] + 160
                        if s < arg4:
                            revert with 'NH{q', 17
                        _8114 = mem[64]
                        mem[mem[64]] = 96
                        _8158 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _8158) + 128
                        _8937 = mem[(32 * arg4) + 128]
                        mem[_8114 + (32 * _8158) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        t = (32 * arg4) + 160
                        u = _8114 + (32 * _8158) + 160
                        while idx < _8937:
                            _9659 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_9659 + 56 len 8]
                            mem[u + 64] = mem[_9659 + 64]
                            mem[u + 96] = mem[_9659 + 96]
                            mem[u + 128] = mem[_9659 + 128]
                            mem[u + 160] = bool(mem[_9659 + 160])
                            mem[u + 192] = bool(mem[_9659 + 192])
                            mem[u + 224] = mem[_9659 + 224]
                            mem[u + 256] = mem[_9659 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_8114 + 64] = s - arg4
                        return memory
                          from mem[64]
                           len _8114 + (32 * _8158) + (288 * _8937) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 1024
                    mem[var83002] = 0
                    mem[var83002 + 32] = 0
                    mem[var83002 + 64] = 0
                    mem[var83002 + 96] = 0
                    mem[var83002 + 128] = 0
                    mem[var83002 + 160] = 0
                    mem[var83002 + 192] = 0
                    mem[var83002 + 224] = 0
                    mem[var83002 + 256] = 0
                    mem[var85002] = var85001
                    if not var85003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _11292 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_11292] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_11292 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_11292 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_11292 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_11292 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_11292 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_11292 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_11292 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_11292 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _11292
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < arg4:
                                revert with 'NH{q', 17
                            _11462 = mem[64]
                            mem[mem[64]] = 96
                            _11486 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _11486:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _11486) + 128
                            _12166 = mem[(32 * arg4) + 128]
                            mem[_11462 + (32 * _11486) + 128] = mem[(32 * arg4) + 128]
                            idx = 0
                            t = (32 * arg4) + 160
                            u = _11462 + (32 * _11486) + 160
                            while idx < _12166:
                                _12888 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_12888 + 56 len 8]
                                mem[u + 64] = mem[_12888 + 64]
                                mem[u + 96] = mem[_12888 + 96]
                                mem[u + 128] = mem[_12888 + 128]
                                mem[u + 160] = bool(mem[_12888 + 160])
                                mem[u + 192] = bool(mem[_12888 + 192])
                                mem[u + 224] = mem[_12888 + 224]
                                mem[u + 256] = mem[_12888 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_11462 + 64] = s - arg4
                            return memory
                              from mem[64]
                               len _11462 + (32 * _11486) + (288 * _12166) + -mem[64] + 160
                        if s < arg4:
                            revert with 'NH{q', 17
                        _11342 = mem[64]
                        mem[mem[64]] = 96
                        _11386 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _11386) + 128
                        _12165 = mem[(32 * arg4) + 128]
                        mem[_11342 + (32 * _11386) + 128] = mem[(32 * arg4) + 128]
                        idx = 0
                        t = (32 * arg4) + 160
                        u = _11342 + (32 * _11386) + 160
                        while idx < _12165:
                            _12887 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_12887 + 56 len 8]
                            mem[u + 64] = mem[_12887 + 64]
                            mem[u + 96] = mem[_12887 + 96]
                            mem[u + 128] = mem[_12887 + 128]
                            mem[u + 160] = bool(mem[_12887 + 160])
                            mem[u + 192] = bool(mem[_12887 + 192])
                            mem[u + 224] = mem[_12887 + 224]
                            mem[u + 256] = mem[_12887 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_11342 + 64] = s - arg4
                        return memory
                          from mem[64]
                           len _11342 + (32 * _11386) + (288 * _12165) + -mem[64] + 160
                    mem[64] = (64 * arg4) + 1312
                    mem[var91002] = 0
                    mem[var91002 + 32] = 0
                    mem[var91002 + 64] = 0
                    mem[var91002 + 96] = 0
                    mem[var91002 + 128] = 0
                    mem[var91002 + 160] = 0
                    mem[var91002 + 192] = 0
                    mem[var91002 + 224] = 0
                    mem[var91002 + 256] = 0
                    mem[var93002] = var93001
                    if var93003 - 1:
                        # nil
                    else:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _14520 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_14520] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_14520 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_14520 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_14520 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_14520 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_14520 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_14520 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_14520 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_14520 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * arg4) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * arg4) + 160] = _14520
                            if arg4 != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < arg4:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 96
                            _14714 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _14714:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            # nil
                        if s < arg4:
                            revert with 'NH{q', 17
                        # nil
            else:
                if s > test266151307():
                    revert with 'NH{q', 65
                mem[96] = s
                if not s:
                    if s > test266151307():
                        revert with 'NH{q', 65
                    mem[(32 * s) + 128] = s
                    mem[64] = (64 * s) + 160
                    if not s:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _1610 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_1610] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_1610 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_1610 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_1610 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_1610 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_1610 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_1610 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_1610 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_1610 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * s) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 160] = _1610
                            if s != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < s:
                                revert with 'NH{q', 17
                            _1779 = mem[64]
                            mem[mem[64]] = 96
                            _1803 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _1803:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _1803) + 128
                            _2484 = mem[(32 * s) + 128]
                            mem[_1779 + (32 * _1803) + 128] = mem[(32 * s) + 128]
                            idx = 0
                            t = (32 * s) + 160
                            u = _1779 + (32 * _1803) + 160
                            while idx < _2484:
                                _3206 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_3206 + 56 len 8]
                                mem[u + 64] = mem[_3206 + 64]
                                mem[u + 96] = mem[_3206 + 96]
                                mem[u + 128] = mem[_3206 + 128]
                                mem[u + 160] = bool(mem[_3206 + 160])
                                mem[u + 192] = bool(mem[_3206 + 192])
                                mem[u + 224] = mem[_3206 + 224]
                                mem[u + 256] = mem[_3206 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_1779 + 64] = 0
                            return memory
                              from mem[64]
                               len _1779 + (32 * _1803) + (288 * _2484) + -mem[64] + 160
                        if s < s:
                            revert with 'NH{q', 17
                        _1659 = mem[64]
                        mem[mem[64]] = 96
                        _1703 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _1703) + 128
                        _2483 = mem[(32 * s) + 128]
                        mem[_1659 + (32 * _1703) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _1659 + (32 * _1703) + 160
                        while idx < _2483:
                            _3205 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_3205 + 56 len 8]
                            mem[u + 64] = mem[_3205 + 64]
                            mem[u + 96] = mem[_3205 + 96]
                            mem[u + 128] = mem[_3205 + 128]
                            mem[u + 160] = bool(mem[_3205 + 160])
                            mem[u + 192] = bool(mem[_3205 + 192])
                            mem[u + 224] = mem[_3205 + 224]
                            mem[u + 256] = mem[_3205 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_1659 + 64] = 0
                        return memory
                          from mem[64]
                           len _1659 + (32 * _1703) + (288 * _2483) + -mem[64] + 160
                    mem[64] = (64 * s) + 448
                    mem[var67002] = 0
                    mem[var67002 + 32] = 0
                    mem[var67002 + 64] = 0
                    mem[var67002 + 96] = 0
                    mem[var67002 + 128] = 0
                    mem[var67002 + 160] = 0
                    mem[var67002 + 192] = 0
                    mem[var67002 + 224] = 0
                    mem[var67002 + 256] = 0
                    mem[var69002] = var69001
                    if not var69003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _4838 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_4838] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_4838 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_4838 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_4838 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_4838 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_4838 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_4838 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_4838 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_4838 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * s) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 160] = _4838
                            if s != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < s:
                                revert with 'NH{q', 17
                            _5007 = mem[64]
                            mem[mem[64]] = 96
                            _5031 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _5031:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _5031) + 128
                            _5713 = mem[(32 * s) + 128]
                            mem[_5007 + (32 * _5031) + 128] = mem[(32 * s) + 128]
                            idx = 0
                            t = (32 * s) + 160
                            u = _5007 + (32 * _5031) + 160
                            while idx < _5713:
                                _6434 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_6434 + 56 len 8]
                                mem[u + 64] = mem[_6434 + 64]
                                mem[u + 96] = mem[_6434 + 96]
                                mem[u + 128] = mem[_6434 + 128]
                                mem[u + 160] = bool(mem[_6434 + 160])
                                mem[u + 192] = bool(mem[_6434 + 192])
                                mem[u + 224] = mem[_6434 + 224]
                                mem[u + 256] = mem[_6434 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_5007 + 64] = 0
                            return memory
                              from mem[64]
                               len _5007 + (32 * _5031) + (288 * _5713) + -mem[64] + 160
                        if s < s:
                            revert with 'NH{q', 17
                        _4887 = mem[64]
                        mem[mem[64]] = 96
                        _4933 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[_4887 + 32] = (32 * _4933) + 128
                        _5712 = mem[(32 * s) + 128]
                        mem[_4887 + (32 * _4933) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _4887 + (32 * _4933) + 160
                        while idx < _5712:
                            _6433 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_6433 + 56 len 8]
                            mem[u + 64] = mem[_6433 + 64]
                            mem[u + 96] = mem[_6433 + 96]
                            mem[u + 128] = mem[_6433 + 128]
                            mem[u + 160] = bool(mem[_6433 + 160])
                            mem[u + 192] = bool(mem[_6433 + 192])
                            mem[u + 224] = mem[_6433 + 224]
                            mem[u + 256] = mem[_6433 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_4887 + 64] = 0
                        return memory
                          from mem[64]
                           len _4887 + (32 * _4933) + (288 * _5712) + -mem[64] + 160
                    mem[64] = (64 * s) + 736
                    mem[var75002] = 0
                    mem[var75002 + 32] = 0
                    mem[var75002 + 64] = 0
                    mem[var75002 + 96] = 0
                    mem[var75002 + 128] = 0
                    mem[var75002 + 160] = 0
                    mem[var75002 + 192] = 0
                    mem[var75002 + 224] = 0
                    mem[var75002 + 256] = 0
                    mem[var77002] = var77001
                    if not var77003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _8066 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_8066] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_8066 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_8066 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_8066 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_8066 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_8066 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_8066 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_8066 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_8066 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * s) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 160] = _8066
                            if s != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < s:
                                revert with 'NH{q', 17
                            _8235 = mem[64]
                            mem[mem[64]] = 96
                            _8259 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _8259:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _8259) + 128
                            _8941 = mem[(32 * s) + 128]
                            mem[_8235 + (32 * _8259) + 128] = mem[(32 * s) + 128]
                            idx = 0
                            t = (32 * s) + 160
                            u = _8235 + (32 * _8259) + 160
                            while idx < _8941:
                                _9662 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_9662 + 56 len 8]
                                mem[u + 64] = mem[_9662 + 64]
                                mem[u + 96] = mem[_9662 + 96]
                                mem[u + 128] = mem[_9662 + 128]
                                mem[u + 160] = bool(mem[_9662 + 160])
                                mem[u + 192] = bool(mem[_9662 + 192])
                                mem[u + 224] = mem[_9662 + 224]
                                mem[u + 256] = mem[_9662 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_8235 + 64] = 0
                            return memory
                              from mem[64]
                               len _8235 + (32 * _8259) + (288 * _8941) + -mem[64] + 160
                        if s < s:
                            revert with 'NH{q', 17
                        _8115 = mem[64]
                        mem[mem[64]] = 96
                        _8161 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[_8115 + 32] = (32 * _8161) + 128
                        _8940 = mem[(32 * s) + 128]
                        mem[_8115 + (32 * _8161) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _8115 + (32 * _8161) + 160
                        while idx < _8940:
                            _9661 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_9661 + 56 len 8]
                            mem[u + 64] = mem[_9661 + 64]
                            mem[u + 96] = mem[_9661 + 96]
                            mem[u + 128] = mem[_9661 + 128]
                            mem[u + 160] = bool(mem[_9661 + 160])
                            mem[u + 192] = bool(mem[_9661 + 192])
                            mem[u + 224] = mem[_9661 + 224]
                            mem[u + 256] = mem[_9661 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_8115 + 64] = 0
                        return memory
                          from mem[64]
                           len _8115 + (32 * _8161) + (288 * _8940) + -mem[64] + 160
                    mem[64] = (64 * s) + 1024
                    mem[var83002] = 0
                    mem[var83002 + 32] = 0
                    mem[var83002 + 64] = 0
                    mem[var83002 + 96] = 0
                    mem[var83002 + 128] = 0
                    mem[var83002 + 160] = 0
                    mem[var83002 + 192] = 0
                    mem[var83002 + 224] = 0
                    mem[var83002 + 256] = 0
                    mem[var85002] = var85001
                    if not var85003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _11294 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_11294] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_11294 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_11294 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_11294 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_11294 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_11294 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_11294 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_11294 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_11294 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * s) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 160] = _11294
                            if s != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < s:
                                revert with 'NH{q', 17
                            _11463 = mem[64]
                            mem[mem[64]] = 96
                            _11487 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _11487:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _11487) + 128
                            _12169 = mem[(32 * s) + 128]
                            mem[_11463 + (32 * _11487) + 128] = mem[(32 * s) + 128]
                            idx = 0
                            t = (32 * s) + 160
                            u = _11463 + (32 * _11487) + 160
                            while idx < _12169:
                                _12890 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_12890 + 56 len 8]
                                mem[u + 64] = mem[_12890 + 64]
                                mem[u + 96] = mem[_12890 + 96]
                                mem[u + 128] = mem[_12890 + 128]
                                mem[u + 160] = bool(mem[_12890 + 160])
                                mem[u + 192] = bool(mem[_12890 + 192])
                                mem[u + 224] = mem[_12890 + 224]
                                mem[u + 256] = mem[_12890 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_11463 + 64] = 0
                            return memory
                              from mem[64]
                               len _11463 + (32 * _11487) + (288 * _12169) + -mem[64] + 160
                        if s < s:
                            revert with 'NH{q', 17
                        _11343 = mem[64]
                        mem[mem[64]] = 96
                        _11389 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[_11343 + 32] = (32 * _11389) + 128
                        _12168 = mem[(32 * s) + 128]
                        mem[_11343 + (32 * _11389) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _11343 + (32 * _11389) + 160
                        while idx < _12168:
                            _12889 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_12889 + 56 len 8]
                            mem[u + 64] = mem[_12889 + 64]
                            mem[u + 96] = mem[_12889 + 96]
                            mem[u + 128] = mem[_12889 + 128]
                            mem[u + 160] = bool(mem[_12889 + 160])
                            mem[u + 192] = bool(mem[_12889 + 192])
                            mem[u + 224] = mem[_12889 + 224]
                            mem[u + 256] = mem[_12889 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_11343 + 64] = 0
                        return memory
                          from mem[64]
                           len _11343 + (32 * _11389) + (288 * _12168) + -mem[64] + 160
                    mem[64] = (64 * s) + 1312
                    mem[var91002] = 0
                    mem[var91002 + 32] = 0
                    mem[var91002 + 64] = 0
                    mem[var91002 + 96] = 0
                    mem[var91002 + 128] = 0
                    mem[var91002 + 160] = 0
                    mem[var91002 + 192] = 0
                    mem[var91002 + 224] = 0
                    mem[var91002 + 256] = 0
                    mem[var93002] = var93001
                    if var93003 - 1:
                        # nil
                    else:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _14522 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_14522] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_14522 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_14522 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_14522 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_14522 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_14522 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_14522 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_14522 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_14522 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * s) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 160] = _14522
                            if s != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < s:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 96
                            _14715 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _14715:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            # nil
                        if s < s:
                            revert with 'NH{q', 17
                        # nil
                else:
                    mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
                    if s > test266151307():
                        revert with 'NH{q', 65
                    mem[(32 * s) + 128] = s
                    mem[64] = (64 * s) + 160
                    if not s:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _1612 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_1612] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_1612 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_1612 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_1612 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_1612 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_1612 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_1612 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_1612 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_1612 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * s) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 160] = _1612
                            if s != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < s:
                                revert with 'NH{q', 17
                            _1780 = mem[64]
                            mem[mem[64]] = 96
                            _1804 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _1804:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _1804) + 128
                            _2487 = mem[(32 * s) + 128]
                            mem[_1780 + (32 * _1804) + 128] = mem[(32 * s) + 128]
                            idx = 0
                            t = (32 * s) + 160
                            u = _1780 + (32 * _1804) + 160
                            while idx < _2487:
                                _3208 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_3208 + 56 len 8]
                                mem[u + 64] = mem[_3208 + 64]
                                mem[u + 96] = mem[_3208 + 96]
                                mem[u + 128] = mem[_3208 + 128]
                                mem[u + 160] = bool(mem[_3208 + 160])
                                mem[u + 192] = bool(mem[_3208 + 192])
                                mem[u + 224] = mem[_3208 + 224]
                                mem[u + 256] = mem[_3208 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_1780 + 64] = 0
                            return memory
                              from mem[64]
                               len _1780 + (32 * _1804) + (288 * _2487) + -mem[64] + 160
                        if s < s:
                            revert with 'NH{q', 17
                        _1660 = mem[64]
                        mem[mem[64]] = 96
                        _1706 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _1706) + 128
                        _2486 = mem[(32 * s) + 128]
                        mem[_1660 + (32 * _1706) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _1660 + (32 * _1706) + 160
                        while idx < _2486:
                            _3207 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_3207 + 56 len 8]
                            mem[u + 64] = mem[_3207 + 64]
                            mem[u + 96] = mem[_3207 + 96]
                            mem[u + 128] = mem[_3207 + 128]
                            mem[u + 160] = bool(mem[_3207 + 160])
                            mem[u + 192] = bool(mem[_3207 + 192])
                            mem[u + 224] = mem[_3207 + 224]
                            mem[u + 256] = mem[_3207 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_1660 + 64] = 0
                        return memory
                          from mem[64]
                           len _1660 + (32 * _1706) + (288 * _2486) + -mem[64] + 160
                    mem[64] = (64 * s) + 448
                    mem[var68002] = 0
                    mem[var68002 + 32] = 0
                    mem[var68002 + 64] = 0
                    mem[var68002 + 96] = 0
                    mem[var68002 + 128] = 0
                    mem[var68002 + 160] = 0
                    mem[var68002 + 192] = 0
                    mem[var68002 + 224] = 0
                    mem[var68002 + 256] = 0
                    mem[var70002] = var70001
                    if not var70003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _4840 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_4840] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_4840 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_4840 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_4840 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_4840 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_4840 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_4840 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_4840 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_4840 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * s) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 160] = _4840
                            if s != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < s:
                                revert with 'NH{q', 17
                            _5008 = mem[64]
                            mem[mem[64]] = 96
                            _5032 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _5032:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _5032) + 128
                            _5716 = mem[(32 * s) + 128]
                            mem[_5008 + (32 * _5032) + 128] = mem[(32 * s) + 128]
                            idx = 0
                            t = (32 * s) + 160
                            u = _5008 + (32 * _5032) + 160
                            while idx < _5716:
                                _6436 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_6436 + 56 len 8]
                                mem[u + 64] = mem[_6436 + 64]
                                mem[u + 96] = mem[_6436 + 96]
                                mem[u + 128] = mem[_6436 + 128]
                                mem[u + 160] = bool(mem[_6436 + 160])
                                mem[u + 192] = bool(mem[_6436 + 192])
                                mem[u + 224] = mem[_6436 + 224]
                                mem[u + 256] = mem[_6436 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_5008 + 64] = 0
                            return memory
                              from mem[64]
                               len _5008 + (32 * _5032) + (288 * _5716) + -mem[64] + 160
                        if s < s:
                            revert with 'NH{q', 17
                        _4888 = mem[64]
                        mem[mem[64]] = 96
                        _4936 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _4936) + 128
                        _5715 = mem[(32 * s) + 128]
                        mem[_4888 + (32 * _4936) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _4888 + (32 * _4936) + 160
                        while idx < _5715:
                            _6435 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_6435 + 56 len 8]
                            mem[u + 64] = mem[_6435 + 64]
                            mem[u + 96] = mem[_6435 + 96]
                            mem[u + 128] = mem[_6435 + 128]
                            mem[u + 160] = bool(mem[_6435 + 160])
                            mem[u + 192] = bool(mem[_6435 + 192])
                            mem[u + 224] = mem[_6435 + 224]
                            mem[u + 256] = mem[_6435 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_4888 + 64] = 0
                        return memory
                          from mem[64]
                           len _4888 + (32 * _4936) + (288 * _5715) + -mem[64] + 160
                    mem[64] = (64 * s) + 736
                    mem[var76002] = 0
                    mem[var76002 + 32] = 0
                    mem[var76002 + 64] = 0
                    mem[var76002 + 96] = 0
                    mem[var76002 + 128] = 0
                    mem[var76002 + 160] = 0
                    mem[var76002 + 192] = 0
                    mem[var76002 + 224] = 0
                    mem[var76002 + 256] = 0
                    mem[var78002] = var78001
                    if not var78003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _8068 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_8068] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_8068 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_8068 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_8068 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_8068 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_8068 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_8068 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_8068 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_8068 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * s) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 160] = _8068
                            if s != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < s:
                                revert with 'NH{q', 17
                            _8236 = mem[64]
                            mem[mem[64]] = 96
                            _8260 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _8260:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[mem[64] + 32] = (32 * _8260) + 128
                            _8944 = mem[(32 * s) + 128]
                            mem[_8236 + (32 * _8260) + 128] = mem[(32 * s) + 128]
                            idx = 0
                            t = (32 * s) + 160
                            u = _8236 + (32 * _8260) + 160
                            while idx < _8944:
                                _9664 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_9664 + 56 len 8]
                                mem[u + 64] = mem[_9664 + 64]
                                mem[u + 96] = mem[_9664 + 96]
                                mem[u + 128] = mem[_9664 + 128]
                                mem[u + 160] = bool(mem[_9664 + 160])
                                mem[u + 192] = bool(mem[_9664 + 192])
                                mem[u + 224] = mem[_9664 + 224]
                                mem[u + 256] = mem[_9664 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_8236 + 64] = 0
                            return memory
                              from mem[64]
                               len _8236 + (32 * _8260) + (288 * _8944) + -mem[64] + 160
                        if s < s:
                            revert with 'NH{q', 17
                        _8116 = mem[64]
                        mem[mem[64]] = 96
                        _8164 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[mem[64] + 32] = (32 * _8164) + 128
                        _8943 = mem[(32 * s) + 128]
                        mem[_8116 + (32 * _8164) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _8116 + (32 * _8164) + 160
                        while idx < _8943:
                            _9663 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_9663 + 56 len 8]
                            mem[u + 64] = mem[_9663 + 64]
                            mem[u + 96] = mem[_9663 + 96]
                            mem[u + 128] = mem[_9663 + 128]
                            mem[u + 160] = bool(mem[_9663 + 160])
                            mem[u + 192] = bool(mem[_9663 + 192])
                            mem[u + 224] = mem[_9663 + 224]
                            mem[u + 256] = mem[_9663 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_8116 + 64] = 0
                        return memory
                          from mem[64]
                           len _8116 + (32 * _8164) + (288 * _8943) + -mem[64] + 160
                    mem[64] = (64 * s) + 1024
                    mem[var84002] = 0
                    mem[var84002 + 32] = 0
                    mem[var84002 + 64] = 0
                    mem[var84002 + 96] = 0
                    mem[var84002 + 128] = 0
                    mem[var84002 + 160] = 0
                    mem[var84002 + 192] = 0
                    mem[var84002 + 224] = 0
                    mem[var84002 + 256] = 0
                    mem[var86002] = var86001
                    if not var86003 - 1:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _11296 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_11296] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_11296 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_11296 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_11296 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_11296 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_11296 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_11296 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_11296 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_11296 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * s) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 160] = _11296
                            if s != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < s:
                                revert with 'NH{q', 17
                            _11464 = mem[64]
                            mem[mem[64]] = 96
                            _11488 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            t = 128
                            u = mem[64] + 128
                            while idx < _11488:
                                mem[u] = mem[t]
                                idx = idx + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_11464 + 32] = (32 * _11488) + 128
                            _12172 = mem[(32 * s) + 128]
                            mem[_11464 + (32 * _11488) + 128] = mem[(32 * s) + 128]
                            idx = 0
                            t = (32 * s) + 160
                            u = _11464 + (32 * _11488) + 160
                            while idx < _12172:
                                _12892 = mem[t]
                                if mem[mem[t]] >= 2:
                                    revert with 'NH{q', 33
                                mem[u] = mem[mem[t]]
                                mem[u + 32] = mem[_12892 + 56 len 8]
                                mem[u + 64] = mem[_12892 + 64]
                                mem[u + 96] = mem[_12892 + 96]
                                mem[u + 128] = mem[_12892 + 128]
                                mem[u + 160] = bool(mem[_12892 + 160])
                                mem[u + 192] = bool(mem[_12892 + 192])
                                mem[u + 224] = mem[_12892 + 224]
                                mem[u + 256] = mem[_12892 + 268 len 20]
                                idx = idx + 1
                                t = t + 32
                                u = u + 288
                                continue 
                            mem[_11464 + 64] = 0
                            return memory
                              from mem[64]
                               len _11464 + (32 * _11488) + (288 * _12172) + -mem[64] + 160
                        if s < s:
                            revert with 'NH{q', 17
                        _11344 = mem[64]
                        mem[mem[64]] = 96
                        _11392 = mem[96]
                        mem[mem[64] + 96] = mem[96]
                        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                        mem[_11344 + 32] = (32 * _11392) + 128
                        _12171 = mem[(32 * s) + 128]
                        mem[_11344 + (32 * _11392) + 128] = mem[(32 * s) + 128]
                        idx = 0
                        t = (32 * s) + 160
                        u = _11344 + (32 * _11392) + 160
                        while idx < _12171:
                            _12891 = mem[t]
                            if mem[mem[t]] >= 2:
                                revert with 'NH{q', 33
                            mem[u] = mem[mem[t]]
                            mem[u + 32] = mem[_12891 + 56 len 8]
                            mem[u + 64] = mem[_12891 + 64]
                            mem[u + 96] = mem[_12891 + 96]
                            mem[u + 128] = mem[_12891 + 128]
                            mem[u + 160] = bool(mem[_12891 + 160])
                            mem[u + 192] = bool(mem[_12891 + 192])
                            mem[u + 224] = mem[_12891 + 224]
                            mem[u + 256] = mem[_12891 + 268 len 20]
                            idx = idx + 1
                            t = t + 32
                            u = u + 288
                            continue 
                        mem[_11344 + 64] = 0
                        return memory
                          from mem[64]
                           len _11344 + (32 * _11392) + (288 * _12171) + -mem[64] + 160
                    mem[64] = (64 * s) + 1312
                    mem[var92002] = 0
                    mem[var92002 + 32] = 0
                    mem[var92002 + 64] = 0
                    mem[var92002 + 96] = 0
                    mem[var92002 + 128] = 0
                    mem[var92002 + 160] = 0
                    mem[var92002 + 192] = 0
                    mem[var92002 + 224] = 0
                    mem[var92002 + 256] = 0
                    mem[var94002] = var94001
                    if var94003 - 1:
                        # nil
                    else:
                        idx = stor6
                        t = s
                        while idx > 0:
                            mem[0] = idx
                            mem[32] = 3
                            if uint64(sub_f3a4d071[idx].field_8) != uint64(arg1):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            mem[0] = idx
                            mem[32] = 3
                            if address(sub_f3a4d071[idx].field_1536) != address(arg2):
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if t > s:
                                if not t:
                                    revert with 'NH{q', 17
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t - 1
                                continue 
                            if 0 >= mem[96]:
                                revert with 'NH{q', 50
                            mem[128] = idx
                            mem[0] = idx
                            mem[32] = 3
                            _14524 = mem[64]
                            mem[64] = mem[64] + 288
                            if uint8(sub_f3a4d071[idx].field_0) > 1:
                                revert with 'NH{q', 33
                            mem[_14524] = uint8(sub_f3a4d071[idx].field_0)
                            mem[_14524 + 32] = uint64(sub_f3a4d071[idx].field_8)
                            mem[_14524 + 64] = uint256(sub_f3a4d071[idx].field_256)
                            mem[_14524 + 96] = uint256(sub_f3a4d071[idx].field_512)
                            mem[_14524 + 128] = uint256(sub_f3a4d071[idx].field_768)
                            mem[_14524 + 160] = bool(uint8(sub_f3a4d071[idx].field_1024))
                            mem[_14524 + 192] = bool(uint8(sub_f3a4d071[idx].field_1032))
                            mem[_14524 + 224] = uint256(sub_f3a4d071[idx].field_1280)
                            mem[_14524 + 256] = address(sub_f3a4d071[idx].field_1536)
                            if 0 >= mem[(32 * s) + 128]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 160] = _14524
                            if s != 1:
                                if not idx:
                                    revert with 'NH{q', 17
                                idx = idx - 1
                                t = t
                                continue 
                            if s < s:
                                revert with 'NH{q', 17
                            mem[mem[64]] = 96
                            _14716 = mem[96]
                            mem[mem[64] + 96] = mem[96]
                            idx = 0
                            s = 128
                            t = mem[64] + 128
                            while idx < _14716:
                                mem[t] = mem[s]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            # nil
                        if s < s:
                            revert with 'NH{q', 17
                        # nil
}



}
