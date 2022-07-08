contract main {




// =====================  Runtime code  =====================


const VERSION = 15


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
address owner;
mapping of struct sub_fa11e27c;
mapping of struct sub_f5db18a9;
uint256 sub_7e397fd3;
address sub_45ea3b13Address;
uint256 stor105;
mapping of uint256 sub_220d1135;
mapping of uint256 sub_0865007b;
mapping of uint256 sub_bcf68ff7;
uint256 stor7FEB;
uint256 storC8CC;

function sub_0865007b(?) payable {
    require calldata.size - 4 >= 32
    return sub_0865007b[arg1]
}

function sub_220d1135(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_220d1135[arg1][arg2]
}

function sub_35226514(?) payable {
    require calldata.size - 4 >= 32
    return sub_fa11e27c[arg1].field_0, 
           sub_fa11e27c[arg1].field_256,
           sub_fa11e27c[arg1].field_512,
           sub_fa11e27c[arg1].field_768,
           sub_fa11e27c[arg1].field_1024,
           sub_fa11e27c[arg1].field_1280,
           sub_fa11e27c[arg1].field_2560,
           sub_fa11e27c[arg1].field_2816
}

function sub_38235578(?) payable {
    require calldata.size - 4 >= 64
    return sub_fa11e27c[arg1][9][arg2].field_0
}

function sub_45ea3b13(?) payable {
    return sub_45ea3b13Address
}

function sub_47b74b3a(?) payable {
    require calldata.size - 4 >= 32
    return Array(len=2, data=sub_fa11e27c[arg1][6][1][0].field_0, sub_fa11e27c[arg1][6][2][0].field_0)
}

function sub_7e397fd3(?) payable {
    return sub_7e397fd3
}

function owner() payable {
    return owner
}

function sub_bcf68ff7(?) payable {
    require calldata.size - 4 >= 32
    return sub_bcf68ff7[arg1]
}

function sub_f5db18a9(?) payable {
    require calldata.size - 4 >= 32
    return sub_f5db18a9[arg1].field_0, 
           sub_f5db18a9[arg1].field_256,
           sub_f5db18a9[arg1].field_512,
           sub_f5db18a9[arg1].field_768,
           sub_f5db18a9[arg1].field_1024,
           sub_f5db18a9[arg1].field_1280
}

function sub_fa11e27c(?) payable {
    require calldata.size - 4 >= 32
    if sub_fa11e27c[arg1][7][1].field_0 > !sub_fa11e27c[arg1][7][2].field_0:
        revert with 0, 17
    if sub_fa11e27c[arg1][7][1].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    if not sub_fa11e27c[arg1][7][1].field_0 + sub_fa11e27c[arg1][7][2].field_0:
        revert with 0, 18
    if sub_fa11e27c[arg1][7][2].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    if not sub_fa11e27c[arg1][7][1].field_0 + sub_fa11e27c[arg1][7][2].field_0:
        revert with 0, 18
    return Array(len=2, data=10^9 * sub_fa11e27c[arg1][7][1].field_0 / sub_fa11e27c[arg1][7][1].field_0 + sub_fa11e27c[arg1][7][2].field_0, 10^9 * sub_fa11e27c[arg1][7][2].field_0 / sub_fa11e27c[arg1][7][1].field_0 + sub_fa11e27c[arg1][7][2].field_0), 
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSignature(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor105 = arg1
}

function randomNumber(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.number < 1:
        revert with 0, 17
    return sha3(arg1, block.hash(block.number - 1), msg.sender)
}

function sub_35964cf0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_45ea3b13Address = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function totalPool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_fa11e27c[arg1][8][0].field_0 > !sub_fa11e27c[arg1][8][1].field_0:
        revert with 0, 17
    if sub_fa11e27c[arg1][8][0].field_0 + sub_fa11e27c[arg1][8][1].field_0 > !sub_fa11e27c[arg1][8][2].field_0:
        revert with 0, 17
    return (sub_fa11e27c[arg1][8][0].field_0 + sub_fa11e27c[arg1][8][1].field_0 + sub_fa11e27c[arg1][8][2].field_0)
}

function sub_b48bfb44(?) payable {
    require calldata.size - 4 >= 32
    mem[128 len 320] = call.data[calldata.size len 320]
    idx = 0
    while idx < 10:
        if arg1 > !idx:
            revert with 0, 17
        mem[0] = arg1 + idx
        mem[32] = 107
        if idx >= 10:
            revert with 0, 50
        mem[(32 * idx) + 128] = sub_0865007b[arg1 + idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=10, data=mem[128 len 320])
}

function sub_6fcc5628(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[128 len 320] = call.data[calldata.size len 320]
    idx = 0
    while idx < 10:
        if arg2 > !idx:
            revert with 0, 17
        mem[0] = arg2 + idx
        mem[32] = sha3(address(arg1), 106)
        if idx >= 10:
            revert with 0, 50
        mem[(32 * idx) + 128] = sub_220d1135[address(arg1)][arg2 + idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=10, data=mem[128 len 320])
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    sub_45ea3b13Address = arg1
}

function sub_a6da753a(?) payable {
    require calldata.size - 4 >= 64
    if sub_fa11e27c[arg1][6][arg2][0].field_0 > test266151307():
        revert with 0, 65
    if sub_fa11e27c[arg1][6][arg2][0].field_0:
        mem[128 len 32 * sub_fa11e27c[arg1][6][arg2][0].field_0] = call.data[calldata.size len 32 * sub_fa11e27c[arg1][6][arg2][0].field_0]
    idx = 0
    while idx < sub_fa11e27c[arg1][6][arg2][0].field_0:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(arg2, sha3(arg1, 101) + 6)
        if idx >= sub_fa11e27c[arg1][6][arg2][0].field_0:
            revert with 0, 50
        mem[(32 * idx) + 128] = sub_fa11e27c[arg1][6][arg2][idx + 1].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=sub_fa11e27c[arg1][6][arg2][0].field_0, data=mem[128 len 32 * sub_fa11e27c[arg1][6][arg2][0].field_0])
}

function sub_66afd595(?) payable {
    require calldata.size - 4 >= 96
    if block.timestamp < sub_fa11e27c[arg1].field_256:
        revert with 0, 'Not started'
    if block.timestamp > sub_fa11e27c[arg1].field_512:
        revert with 0, 'Already finished'
    if not sub_fa11e27c[arg1][6][arg2][0].field_0:
        revert with 0, 'No valid team'
    if arg3 < sub_fa11e27c[arg1].field_1280:
        revert with 0, 'No min token amount'
    require ext_code.size(sub_fa11e27c[arg1].field_1024)
    call sub_fa11e27c[arg1].field_1024.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_7e397fd3 == -1:
        revert with 0, 17
    sub_7e397fd3++
    sub_f5db18a9[stor103].field_0 = sub_7e397fd3
    sub_f5db18a9[stor103].field_256 = arg1
    sub_f5db18a9[stor103].field_512 = msg.sender
    sub_f5db18a9[stor103].field_768 = arg2
    sub_f5db18a9[stor103].field_1024 = arg3
    sub_f5db18a9[stor103].field_1280 = 0
    if sub_fa11e27c[arg1][8][arg2].field_0 > !arg3:
        revert with 0, 17
    sub_fa11e27c[arg1][8][arg2].field_0 += arg3
    if sub_fa11e27c[arg1][9][0].field_0 == -1:
        revert with 0, 17
    sub_fa11e27c[arg1][9][0].field_0++
    if sub_fa11e27c[arg1][9][arg2].field_0 == -1:
        revert with 0, 17
    sub_fa11e27c[arg1][9][arg2].field_0++
    if 2 > !(sub_fa11e27c[arg1][9][0].field_0 + 1):
        revert with 0, 17
    sub_fa11e27c[arg1][9][sub_fa11e27c[arg1][9][0].field_0 + 3].field_0 = sub_7e397fd3
    if sub_220d1135[address(msg.sender)][0] == -1:
        revert with 0, 17
    sub_220d1135[address(msg.sender)][0]++
    sub_220d1135[address(msg.sender)][sub_220d1135[address(msg.sender)][0] + 1] = sub_7e397fd3
    emit 0xcff17cd0: msg.sender, arg1, sub_7e397fd3
}

function sub_ec83a9d2(?) payable {
    require calldata.size - 4 >= 64
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 96
    mem[0] = 0
    mem[32] = sha3(arg2, sha3(arg1, 101) + 6)
    if sub_fa11e27c[arg1][6][arg2][0].field_0 > test266151307():
        revert with 0, 65
    mem[224] = sub_fa11e27c[arg1][6][arg2][0].field_0
    if sub_fa11e27c[arg1][6][arg2][0].field_0:
        mem[256 len 32 * sub_fa11e27c[arg1][6][arg2][0].field_0] = call.data[calldata.size len 32 * sub_fa11e27c[arg1][6][arg2][0].field_0]
    idx = 0
    while idx < sub_fa11e27c[arg1][6][arg2][0].field_0:
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(arg2, sha3(arg1, 101) + 6)
        if idx >= sub_fa11e27c[arg1][6][arg2][0].field_0:
            revert with 0, 50
        mem[(32 * idx) + 256] = sub_fa11e27c[arg1][6][arg2][idx + 1].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[64] = (32 * sub_fa11e27c[arg1][6][arg2][0].field_0) + 384
    mem[(32 * sub_fa11e27c[arg1][6][arg2][0].field_0) + 256] = arg2
    mem[(32 * sub_fa11e27c[arg1][6][arg2][0].field_0) + 288] = sub_fa11e27c[arg1][7][arg2].field_0
    mem[(32 * sub_fa11e27c[arg1][6][arg2][0].field_0) + 320] = sub_fa11e27c[arg1][8][arg2].field_0
    mem[(32 * sub_fa11e27c[arg1][6][arg2][0].field_0) + 352] = 224
    mem[(32 * sub_fa11e27c[arg1][6][arg2][0].field_0) + 384] = 32
    mem[(32 * sub_fa11e27c[arg1][6][arg2][0].field_0) + 416] = arg2
    mem[(32 * sub_fa11e27c[arg1][6][arg2][0].field_0) + 448] = sub_fa11e27c[arg1][7][arg2].field_0
    mem[(32 * sub_fa11e27c[arg1][6][arg2][0].field_0) + 480] = sub_fa11e27c[arg1][8][arg2].field_0
    mem[(32 * sub_fa11e27c[arg1][6][arg2][0].field_0) + 512] = 128
    mem[(32 * sub_fa11e27c[arg1][6][arg2][0].field_0) + 544] = sub_fa11e27c[arg1][6][arg2][0].field_0
    s = 0
    s = 256
    t = (32 * sub_fa11e27c[arg1][6][arg2][0].field_0) + 576
    while sub_fa11e27c[arg1][6][arg2][0].field_0 < sub_fa11e27c[arg1][6][arg2][0].field_0:
        mem[t] = mem[s]
        s = sub_fa11e27c[arg1][6][arg2][0].field_0 + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_0b81e4cd(?) payable {
    require calldata.size - 4 >= 32
    if sub_fa11e27c[arg1][8][0].field_0 > !sub_fa11e27c[arg1][8][1].field_0:
        revert with 0, 17
    if sub_fa11e27c[arg1][8][0].field_0 + sub_fa11e27c[arg1][8][1].field_0 > !sub_fa11e27c[arg1][8][2].field_0:
        revert with 0, 17
    if not sub_fa11e27c[arg1][8][0].field_0 + sub_fa11e27c[arg1][8][1].field_0 + sub_fa11e27c[arg1][8][2].field_0:
        return Array(len=2, data=call.data[calldata.size len 64])
    if not sub_fa11e27c[arg1][8][1].field_0:
        if 0 == sub_fa11e27c[arg1][8][2].field_0:
            return ''
        if sub_fa11e27c[arg1][8][0].field_0 + sub_fa11e27c[arg1][8][1].field_0 + sub_fa11e27c[arg1][8][2].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
            revert with 0, 17
        if not sub_fa11e27c[arg1][8][2].field_0:
            revert with 0, 18
        return '', 
               (10^9 * sub_fa11e27c[arg1][8][0].field_0) + (10^9 * sub_fa11e27c[arg1][8][1].field_0) + (10^9 * sub_fa11e27c[arg1][8][2].field_0) / sub_fa11e27c[arg1][8][2].field_0
    if sub_fa11e27c[arg1][8][0].field_0 + sub_fa11e27c[arg1][8][1].field_0 + sub_fa11e27c[arg1][8][2].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    if not sub_fa11e27c[arg1][8][1].field_0:
        revert with 0, 18
    if 0 == sub_fa11e27c[arg1][8][2].field_0:
        return 32, 2, 
               (10^9 * sub_fa11e27c[arg1][8][0].field_0) + (10^9 * sub_fa11e27c[arg1][8][1].field_0) + (10^9 * sub_fa11e27c[arg1][8][2].field_0) / sub_fa11e27c[arg1][8][1].field_0,
               0
    if sub_fa11e27c[arg1][8][0].field_0 + sub_fa11e27c[arg1][8][1].field_0 + sub_fa11e27c[arg1][8][2].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    if not sub_fa11e27c[arg1][8][2].field_0:
        revert with 0, 18
    return Array(len=2, data=(10^9 * sub_fa11e27c[arg1][8][0].field_0) + (10^9 * sub_fa11e27c[arg1][8][1].field_0) + (10^9 * sub_fa11e27c[arg1][8][2].field_0) / sub_fa11e27c[arg1][8][1].field_0, (10^9 * sub_fa11e27c[arg1][8][0].field_0) + (10^9 * sub_fa11e27c[arg1][8][1].field_0) + (10^9 * sub_fa11e27c[arg1][8][2].field_0) / sub_fa11e27c[arg1][8][2].field_0), 
}

function sub_45484b07(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= sub_fa11e27c[arg1].field_512:
        revert with 0, 'Battle is not yet finished'
    if sub_fa11e27c[arg1].field_2816:
        revert with 0, 'Result is already set'
    if sub_fa11e27c[arg1][7][1].field_0 > !sub_fa11e27c[arg1][7][2].field_0:
        revert with 0, 17
    if block.number < 1:
        revert with 0, 17
    if not sub_fa11e27c[arg1][7][1].field_0 + sub_fa11e27c[arg1][7][2].field_0:
        revert with 0, 18
    idx = 1
    s = 0
    while idx <= 2:
        mem[0] = idx
        mem[32] = sha3(arg1, 101) + 7
        if s > !sub_fa11e27c[arg1][7][idx].field_0:
            revert with 0, 17
        if sha3(stor105, block.hash(block.number - 1), msg.sender) % sub_fa11e27c[arg1][7][1].field_0 + sub_fa11e27c[arg1][7][2].field_0 >= s + sub_fa11e27c[arg1][7][idx].field_0:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + sub_fa11e27c[arg1][7][idx].field_0
            continue 
        sub_fa11e27c[arg1].field_2560 = sha3(stor105, block.hash(block.number - 1), msg.sender)
        sub_fa11e27c[arg1].field_2816 = idx
        emit 0xfe4600f5: sha3(stor105, block.hash(block.number - 1), msg.sender) % sub_fa11e27c[arg1][7][1].field_0 + sub_fa11e27c[arg1][7][2].field_0, sha3(stor105, block.hash(block.number - 1), msg.sender), arg1, idx
        if 3 < idx:
            revert with 0, 17
        s = 0
        while s < sub_fa11e27c[arg1][6][idx][0].field_0:
            if 1 > !s:
                revert with 0, 17
            emit 0x3dc1f2f9: sub_fa11e27c[arg1][6][idx][s + 1].field_0, arg1
            if s == -1:
                revert with 0, 17
            mem[0] = 0
            mem[32] = sha3(idx, sha3(arg1, 101) + 6)
            s = s + 1
            continue 
        s = 0
        while s < sub_fa11e27c[arg1][6][-idx + 3][0].field_0:
            if 1 > !s:
                revert with 0, 17
            emit 0x798948dc: sub_fa11e27c[arg1][6][-idx + 3][s + 1].field_0, arg1
            if s == -1:
                revert with 0, 17
            mem[0] = 0
            mem[32] = sha3(-idx + 3, sha3(arg1, 101) + 6)
            s = s + 1
            continue 
        if stor7FEB == -1:
            revert with 0, 17
        stor7FEB++
        sub_bcf68ff7[stor7FEB + 1] = arg1
    sub_fa11e27c[arg1].field_2560 = sha3(stor105, block.hash(block.number - 1), msg.sender)
    sub_fa11e27c[arg1].field_2816 = 0
    emit 0xfe4600f5: sha3(stor105, block.hash(block.number - 1), msg.sender) % sub_fa11e27c[arg1][7][1].field_0 + sub_fa11e27c[arg1][7][2].field_0, sha3(stor105, block.hash(block.number - 1), msg.sender), arg1, 0
    idx = 0
    while idx < sub_fa11e27c[arg1][6][0][0].field_0:
        if 1 > !idx:
            revert with 0, 17
        emit 0x3dc1f2f9: sub_fa11e27c[arg1][6][0][idx + 1].field_0, arg1
        if idx == -1:
            revert with 0, 17
        mem[0] = 0
        mem[32] = sha3(0, sha3(arg1, 101) + 6)
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_fa11e27c[arg1][6][3][0].field_0:
        if 1 > !idx:
            revert with 0, 17
        emit 0x798948dc: sub_fa11e27c[arg1][6][3][idx + 1].field_0, arg1
        if idx == -1:
            revert with 0, 17
        mem[0] = 0
        mem[32] = sha3(3, sha3(arg1, 101) + 6)
        idx = idx + 1
        continue 
    if stor7FEB == -1:
        revert with 0, 17
    stor7FEB++
    sub_bcf68ff7[stor7FEB + 1] = arg1
}

function sub_2532f1e8(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    idx = 0
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _90 = sha3(mem[(32 * idx) + 128], 102)
        if sub_f5db18a9[mem[(32 * idx) + 128]].field_512 != msg.sender:
            revert with 0, 'Not owner'
        mem[0] = sub_f5db18a9[mem[(32 * idx) + 128]].field_256
        mem[32] = 101
        if sub_f5db18a9[mem[(32 * idx) + 128]].field_768 == sub_fa11e27c[stor102[mem[(32 * idx) + 128]].field_256].field_2816:
            mem[32] = sha3(sub_f5db18a9[mem[(32 * idx) + 128]].field_256, 101) + 8
            mem[0] = 0
            if sub_fa11e27c[stor102[mem[(32 * idx) + 128]].field_256][8][0].field_0 > !sub_fa11e27c[stor102[mem[(32 * idx) + 128]].field_256][8][1].field_0:
                revert with 0, 17
            if sub_fa11e27c[stor102[mem[(32 * idx) + 128]].field_256][8][0].field_0 + sub_fa11e27c[stor102[mem[(32 * idx) + 128]].field_256][8][1].field_0 > !sub_fa11e27c[stor102[mem[(32 * idx) + 128]].field_256][8][2].field_0:
                revert with 0, 17
            _100 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_100 + 32 len 64] = call.data[calldata.size len 64]
            if sub_fa11e27c[stor1[_90]][8][0].field_0 + sub_fa11e27c[stor1[_90]][8][1].field_0 + sub_fa11e27c[stor1[_90]][8][2].field_0:
                mem[0] = 1
                mem[32] = sha3(stor1[_90], 101) + 8
                if not sub_fa11e27c[stor1[_90]][8][1].field_0:
                    if 0 >= mem[_100]:
                        revert with 0, 50
                    mem[_100 + 32] = 0
                else:
                    mem[0] = 1
                    mem[32] = sha3(stor1[_90], 101) + 8
                    if sub_fa11e27c[stor1[_90]][8][0].field_0 + sub_fa11e27c[stor1[_90]][8][1].field_0 + sub_fa11e27c[stor1[_90]][8][2].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                        revert with 0, 17
                    if not sub_fa11e27c[stor1[_90]][8][1].field_0:
                        revert with 0, 18
                    if 0 >= mem[_100]:
                        revert with 0, 50
                    mem[_100 + 32] = (10^9 * sub_fa11e27c[stor1[_90]][8][0].field_0) + (10^9 * sub_fa11e27c[stor1[_90]][8][1].field_0) + (10^9 * sub_fa11e27c[stor1[_90]][8][2].field_0) / sub_fa11e27c[stor1[_90]][8][1].field_0
                mem[0] = 2
                mem[32] = sha3(stor1[_90], 101) + 8
                if 0 == sub_fa11e27c[stor1[_90]][8][2].field_0:
                    if 1 >= mem[_100]:
                        revert with 0, 50
                    mem[_100 + 64] = 0
                else:
                    mem[0] = 2
                    mem[32] = sha3(stor1[_90], 101) + 8
                    if sub_fa11e27c[stor1[_90]][8][0].field_0 + sub_fa11e27c[stor1[_90]][8][1].field_0 + sub_fa11e27c[stor1[_90]][8][2].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                        revert with 0, 17
                    if not sub_fa11e27c[stor1[_90]][8][2].field_0:
                        revert with 0, 18
                    if 1 >= mem[_100]:
                        revert with 0, 50
                    mem[_100 + 64] = (10^9 * sub_fa11e27c[stor1[_90]][8][0].field_0) + (10^9 * sub_fa11e27c[stor1[_90]][8][1].field_0) + (10^9 * sub_fa11e27c[stor1[_90]][8][2].field_0) / sub_fa11e27c[stor1[_90]][8][2].field_0
            if stor3[_90] < 1:
                revert with 0, 17
            if stor3[_90] - 1 >= mem[_100]:
                revert with 0, 50
            if stor4[_90] and mem[(32 * stor3[_90] - 1) + _100 + 32] > -1 / stor4[_90]:
                revert with 0, 17
            if 0 > !(stor4[_90] * mem[(32 * stor3[_90] - 1) + _100 + 32] / 10^9):
                revert with 0, 17
            mem[0] = stor1[_90]
            mem[32] = 101
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function sub_3d695c52(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    idx = 0
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _142 = sha3(mem[(32 * idx) + 128], 102)
        if sub_f5db18a9[mem[(32 * idx) + 128]].field_512 != msg.sender:
            revert with 0, 'Not owner'
        if sub_f5db18a9[mem[(32 * idx) + 128]].field_768 != sub_fa11e27c[stor102[mem[(32 * idx) + 128]].field_256].field_2816:
            revert with 0, 'Not claimable'
        if sub_f5db18a9[mem[(32 * idx) + 128]].field_1280:
            revert with 0, 'Already claimed'
        mem[32] = sha3(sub_f5db18a9[mem[(32 * idx) + 128]].field_256, 101) + 8
        mem[0] = 0
        if sub_fa11e27c[stor102[mem[(32 * idx) + 128]].field_256][8][0].field_0 > !sub_fa11e27c[stor102[mem[(32 * idx) + 128]].field_256][8][1].field_0:
            revert with 0, 17
        if sub_fa11e27c[stor102[mem[(32 * idx) + 128]].field_256][8][0].field_0 + sub_fa11e27c[stor102[mem[(32 * idx) + 128]].field_256][8][1].field_0 > !sub_fa11e27c[stor102[mem[(32 * idx) + 128]].field_256][8][2].field_0:
            revert with 0, 17
        _158 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_158 + 32 len 64] = call.data[calldata.size len 64]
        if sub_fa11e27c[stor1[_142]][8][0].field_0 + sub_fa11e27c[stor1[_142]][8][1].field_0 + sub_fa11e27c[stor1[_142]][8][2].field_0:
            mem[0] = 1
            mem[32] = sha3(stor1[_142], 101) + 8
            if not sub_fa11e27c[stor1[_142]][8][1].field_0:
                if 0 >= mem[_158]:
                    revert with 0, 50
                mem[_158 + 32] = 0
            else:
                mem[0] = 1
                mem[32] = sha3(stor1[_142], 101) + 8
                if sub_fa11e27c[stor1[_142]][8][0].field_0 + sub_fa11e27c[stor1[_142]][8][1].field_0 + sub_fa11e27c[stor1[_142]][8][2].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                if not sub_fa11e27c[stor1[_142]][8][1].field_0:
                    revert with 0, 18
                if 0 >= mem[_158]:
                    revert with 0, 50
                mem[_158 + 32] = (10^9 * sub_fa11e27c[stor1[_142]][8][0].field_0) + (10^9 * sub_fa11e27c[stor1[_142]][8][1].field_0) + (10^9 * sub_fa11e27c[stor1[_142]][8][2].field_0) / sub_fa11e27c[stor1[_142]][8][1].field_0
            mem[0] = 2
            mem[32] = sha3(stor1[_142], 101) + 8
            if 0 == sub_fa11e27c[stor1[_142]][8][2].field_0:
                if 1 >= mem[_158]:
                    revert with 0, 50
                mem[_158 + 64] = 0
            else:
                mem[0] = 2
                mem[32] = sha3(stor1[_142], 101) + 8
                if sub_fa11e27c[stor1[_142]][8][0].field_0 + sub_fa11e27c[stor1[_142]][8][1].field_0 + sub_fa11e27c[stor1[_142]][8][2].field_0 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
                    revert with 0, 17
                if not sub_fa11e27c[stor1[_142]][8][2].field_0:
                    revert with 0, 18
                if 1 >= mem[_158]:
                    revert with 0, 50
                mem[_158 + 64] = (10^9 * sub_fa11e27c[stor1[_142]][8][0].field_0) + (10^9 * sub_fa11e27c[stor1[_142]][8][1].field_0) + (10^9 * sub_fa11e27c[stor1[_142]][8][2].field_0) / sub_fa11e27c[stor1[_142]][8][2].field_0
        if stor3[_142] < 1:
            revert with 0, 17
        if stor3[_142] - 1 >= mem[_158]:
            revert with 0, 50
        if stor4[_142] and mem[(32 * stor3[_142] - 1) + _158 + 32] > -1 / stor4[_142]:
            revert with 0, 17
        stor5[_142] = stor4[_142] * mem[(32 * stor3[_142] - 1) + _158 + 32] / 10^9
        mem[0] = stor1[_142]
        mem[32] = 101
        mem[_158 + 100] = msg.sender
        mem[_158 + 132] = stor4[_142] * mem[(32 * stor3[_142] - 1) + _158 + 32] / 10^9
        require ext_code.size(sub_fa11e27c[stor1[_142]].field_1024)
        call sub_fa11e27c[stor1[_142]].field_1024.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, stor4[_142] * mem[(32 * stor3[_142] - 1) + _158 + 32] / 10^9
        mem[_158 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _158 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    emit Claimed(address arg1, uint256[] arg2):
                 32,
                 mem[mem[64] + 32 len (32 * mem[96]) + 32],
                 msg.sender,
}

function sub_823687be(?) payable {
    require calldata.size - 4 >= 288
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 97 > test266151307() or ceil32(32 * ('cd', 132).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 132).length
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    s = cd[132] + 36
    idx = 0
    t = 128
    while idx < ('cd', 132).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98 > test266151307() or ceil32(32 * ('cd', 164).length) + 98 < 97:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 132).length) + ceil32(32 * ('cd', 164).length) + 98
    mem[ceil32(32 * ('cd', 132).length) + 97] = ('cd', 164).length
    require calldata.size >= cd[164] + (32 * ('cd', 164).length) + 36
    s = cd[164] + 36
    idx = 0
    t = ceil32(32 * ('cd', 132).length) + 129
    while idx < ('cd', 164).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[196] == address(cd[196])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not sub_fa11e27c[cd[4]].field_0
    sub_fa11e27c[cd[4]].field_0 = cd[4]
    sub_fa11e27c[cd[4]].field_256 = cd[36]
    sub_fa11e27c[cd[4]].field_512 = cd[68]
    sub_fa11e27c[cd[4]].field_768 = cd[100]
    sub_fa11e27c[cd[4]].field_1024 = address(cd[196])
    sub_fa11e27c[cd[4]].field_1280 = cd[228]
    mem[0] = 0
    mem[32] = sha3(1, sha3(cd[4], 101) + 6)
    sub_fa11e27c[cd[4]][6][1][0].field_0 = ('cd', 132).length
    idx = 0
    s = 0
    while idx < ('cd', 132).length:
        if idx >= mem[96]:
            revert with 0, 50
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(1, sha3(cd[4], 101) + 6)
        sub_fa11e27c[cd[4]][6][1][idx + 1].field_0 = mem[(32 * idx) + 128]
        if idx >= mem[96]:
            revert with 0, 50
        _188 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_45ea3b13Address)
        staticcall sub_45ea3b13Address.0xf265d2f9 with:
                gas gas_remaining wei
               args _188
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _204 = mem[_201]
        if s > !mem[_201]:
            revert with 0, 17
        if idx >= mem[96]:
            revert with 0, 50
        _210 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(sub_45ea3b13Address)
        staticcall sub_45ea3b13Address.0xf265d2f9 with:
                gas gas_remaining wei
               args _210
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _217 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_217] > 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + _204
        continue 
    sub_fa11e27c[cd[4]][7][1].field_0 = s * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length
    mem[0] = 0
    mem[32] = sha3(2, sha3(cd[4], 101) + 6)
    sub_fa11e27c[cd[4]][6][2][0].field_0 = mem[ceil32(32 * ('cd', 132).length) + 97]
    _221 = mem[ceil32(32 * ('cd', 132).length) + 97]
    idx = 0
    s = 0
    while idx < _221:
        if idx >= mem[ceil32(32 * ('cd', 132).length) + 97]:
            revert with 0, 50
        if 1 > !idx:
            revert with 0, 17
        mem[0] = idx + 1
        mem[32] = sha3(2, sha3(cd[4], 101) + 6)
        sub_fa11e27c[cd[4]][6][2][idx + 1].field_0 = mem[(32 * idx) + ceil32(32 * ('cd', 132).length) + 129]
        if idx >= mem[ceil32(32 * ('cd', 132).length) + 97]:
            revert with 0, 50
        _233 = mem[(32 * idx) + ceil32(32 * ('cd', 132).length) + 129]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(32 * ('cd', 132).length) + 129]
        require ext_code.size(sub_45ea3b13Address)
        staticcall sub_45ea3b13Address.0xf265d2f9 with:
                gas gas_remaining wei
               args _233
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _238 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _240 = mem[_238]
        if s > !mem[_238]:
            revert with 0, 17
        if idx >= mem[ceil32(32 * ('cd', 132).length) + 97]:
            revert with 0, 50
        _244 = mem[(32 * idx) + ceil32(32 * ('cd', 132).length) + 129]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(32 * ('cd', 132).length) + 129]
        require ext_code.size(sub_45ea3b13Address)
        staticcall sub_45ea3b13Address.0xf265d2f9 with:
                gas gas_remaining wei
               args _244
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _247 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_247] > 0
        if idx == -1:
            revert with 0, 17
        _221 = mem[ceil32(32 * ('cd', 132).length) + 97]
        idx = idx + 1
        s = s + _240
        continue 
    sub_fa11e27c[cd[4]][7][2].field_0 = s * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221 * _221
    if storC8CC == -1:
        revert with 0, 17
    storC8CC++
    mem[0] = storC8CC + 1
    mem[32] = 107
    sub_0865007b[storC8CC + 1] = cd[4]
    if cd[260]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = cd[260]
        require ext_code.size(sub_fa11e27c[cd[4]].field_1024)
        call sub_fa11e27c[cd[4]].field_1024.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, cd[260]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _235 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_235] == bool(mem[_235])
        sub_fa11e27c[cd[4]][8][0].field_0 = cd[260]
    emit 0xa0474fb6: cd[4]
}



}
