contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
address sub_b1977219Address;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address bonusTokenAddress;
uint256 sub_82965bfb;
array of struct totalDeposits;
mapping of struct sub_96ea17da;
array of struct stor12;
mapping of uint8 stor13;
array of struct stor14;
array of struct userDeposits;
mapping of uint256 stor16;
array of address sub_520dbf64;
mapping of uint8 stor18;
mapping of uint256 stor19;
array of address sub_06739096;
mapping of uint8 stor21;
mapping of uint256 stor22;
array of address sub_f95a7cfd;
mapping of uint8 stor24;
mapping of uint8 stor25;

function sub_06739096(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_06739096.length
    return sub_06739096[arg1]
}

function userDeposits(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < userDeposits[arg1].field_0
    if userDeposits[arg1][arg2].field_1800 >= 4:
        revert with 'NH{q', 33
    if userDeposits[arg1][arg2].field_1808 >= 5:
        revert with 'NH{q', 33
    return userDeposits[arg1][arg2].field_0, 
           userDeposits[arg1][arg2].field_256,
           userDeposits[arg1][arg2].field_512,
           userDeposits[arg1][arg2].field_768,
           userDeposits[arg1][arg2].field_1024,
           userDeposits[arg1][arg2].field_1280,
           userDeposits[arg1][arg2].field_1536,
           bool(userDeposits[arg1][arg2].field_1792),
           userDeposits[arg1][arg2].field_1792,
           userDeposits[arg1][arg2].field_1808
}

function getBonusToken() payable {
    return bonusTokenAddress
}

function totalDeposits(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < totalDeposits.length
    if totalDeposits[arg1].field_1800 >= 4:
        revert with 'NH{q', 33
    if totalDeposits[arg1].field_1808 >= 5:
        revert with 'NH{q', 33
    return totalDeposits[arg1].field_0, 
           totalDeposits[arg1].field_256,
           totalDeposits[arg1].field_512,
           totalDeposits[arg1].field_768,
           totalDeposits[arg1].field_1024,
           totalDeposits[arg1].field_1280,
           totalDeposits[arg1].field_1536,
           bool(totalDeposits[arg1].field_1792),
           totalDeposits[arg1].field_1792,
           totalDeposits[arg1].field_1808
}

function sub_520dbf64(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_520dbf64.length
    return sub_520dbf64[arg1]
}

function sub_82965bfb(?) payable {
    return sub_82965bfb
}

function getOwner() payable {
    return owner
}

function sub_94d8eff1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_96ea17da[arg1].field_1800 >= 4:
        revert with 'NH{q', 33
    if sub_96ea17da[arg1].field_1808 >= 5:
        revert with 'NH{q', 33
    return sub_96ea17da[arg1].field_0, 
           sub_96ea17da[arg1].field_256,
           sub_96ea17da[arg1].field_512,
           sub_96ea17da[arg1].field_768,
           sub_96ea17da[arg1].field_1024,
           sub_96ea17da[arg1].field_1280,
           sub_96ea17da[arg1].field_1536,
           bool(sub_96ea17da[arg1].field_1792),
           sub_96ea17da[arg1].field_1792,
           sub_96ea17da[arg1].field_1808
}

function sub_96ea17da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_96ea17da[arg1].field_1800 > 3:
        revert with 'NH{q', 33
    if sub_96ea17da[arg1].field_1808 > 4:
        revert with 'NH{q', 33
    if sub_96ea17da[arg1].field_1800 >= 4:
        revert with 'NH{q', 33
    if sub_96ea17da[arg1].field_1808 >= 5:
        revert with 'NH{q', 33
    return sub_96ea17da[arg1].field_0, 
           sub_96ea17da[arg1].field_256,
           sub_96ea17da[arg1].field_512,
           sub_96ea17da[arg1].field_768,
           sub_96ea17da[arg1].field_1024,
           sub_96ea17da[arg1].field_1280,
           sub_96ea17da[arg1].field_1536,
           bool(sub_96ea17da[arg1].field_1792),
           sub_96ea17da[arg1].field_1792,
           sub_96ea17da[arg1].field_1808
}

function sub_b1977219(?) payable {
    return sub_b1977219Address
}

function isUserJoined(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[address(arg1)])
}

function sub_f95a7cfd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_f95a7cfd.length
    return sub_f95a7cfd[arg1]
}

function _fallback() payable {
    revert
}

function sub_1356cd6f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor3 = address(arg1)
}

function denyAccess(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor25[address(msg.sender)]) != 1:
        revert with 0, 'platform not allowed'
    stor25[address(arg1)] = 0
}

function changeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
}

function allowAccess(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor25[address(msg.sender)]) != 1:
        revert with 0, 'platform not allowed'
    stor25[address(arg1)] = 1
}

function sub_02a570a4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Caller is not priceLooper'
    sub_82965bfb = arg1
}

function sub_8db4109a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor25[address(msg.sender)]) != 1:
        revert with 0, 'platform not allowed'
    if not stor13[address(arg1)]:
        stor13[address(arg1)] = 1
        stor14.length++
        stor14[stor14.length].field_0 = address(arg1)
}

function sub_65effeec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 4
    if arg1 > 3:
        revert with 'NH{q', 33
    if not arg1:
        return stor4
    if arg1 > 3:
        revert with 'NH{q', 33
    if arg1 == 1:
        return stor5
    if arg1 > 3:
        revert with 'NH{q', 33
    if arg1 != 2:
        return stor7
    return stor6
}

function sub_7c6569f2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < 4
    if arg2 > 3:
        revert with 'NH{q', 33
    if not arg2:
        return stor16[address(arg1)]
    if arg2 > 3:
        revert with 'NH{q', 33
    if arg2 == 1:
        return stor19[address(arg1)]
    if arg2 > 3:
        revert with 'NH{q', 33
    if arg2 != 2:
        return 0
    return stor22[address(arg1)]
}

function sub_cc2417ee(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 < 4
    if bool(stor25[address(msg.sender)]) != 1:
        revert with 0, 'platform not allowed'
    if arg3 > 3:
        revert with 'NH{q', 33
    if not arg3:
        stor16[address(arg1)] = arg2
    if arg3 > 3:
        revert with 'NH{q', 33
    if arg3 == 1:
        stor19[address(arg1)] = arg2
    if arg3 > 3:
        revert with 'NH{q', 33
    if arg3 == 2:
        stor22[address(arg1)] = arg2
}

function sub_2568b68d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor25[address(msg.sender)]) != 1:
        revert with 0, 'platform not allowed'
    sub_96ea17da[arg1].field_1792 = 1
    idx = 0
    while idx < userDeposits[stor11[arg1].field_256].field_0:
        if idx >= userDeposits[stor11[arg1].field_256].field_0:
            revert with 'NH{q', 50
        if userDeposits[stor11[arg1].field_256][idx].field_0 == sub_96ea17da[arg1].field_0:
            if idx >= userDeposits[stor11[arg1].field_256].field_0:
                revert with 'NH{q', 50
            userDeposits[stor11[arg1].field_256][idx].field_1792 = 1
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = sub_96ea17da[arg1].field_256
        mem[32] = 15
        idx = idx + 1
        continue 
}

function sub_9bc5fd1e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < 4
    if bool(stor25[address(msg.sender)]) != 1:
        revert with 0, 'platform not allowed'
    if arg2 > 3:
        revert with 'NH{q', 33
    if not arg2:
        if not stor18[address(arg1)]:
            stor18[address(arg1)] = 1
            sub_520dbf64.length++
            sub_520dbf64[sub_520dbf64.length] = address(arg1)
    if arg2 > 3:
        revert with 'NH{q', 33
    if arg2 == 1:
        if not stor21[address(arg1)]:
            stor21[address(arg1)] = 1
            sub_06739096.length++
            sub_06739096[sub_06739096.length] = address(arg1)
    if arg2 > 3:
        revert with 'NH{q', 33
    if arg2 == 2:
        if not stor24[address(arg1)]:
            stor24[address(arg1)] = 1
            sub_f95a7cfd.length++
            sub_f95a7cfd[sub_f95a7cfd.length] = address(arg1)
}

function sub_b99ac5a7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if bool(stor25[address(msg.sender)]) != 1:
        revert with 0, 'platform not allowed'
    if sub_96ea17da[arg1].field_1536 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_96ea17da[arg1].field_1536 += arg2
    idx = 0
    while idx < userDeposits[stor11[arg1].field_256].field_0:
        if idx >= userDeposits[stor11[arg1].field_256].field_0:
            revert with 'NH{q', 50
        if userDeposits[stor11[arg1].field_256][idx].field_0 == sub_96ea17da[arg1].field_0:
            if idx >= userDeposits[stor11[arg1].field_256].field_0:
                revert with 'NH{q', 50
            userDeposits[stor11[arg1].field_256][idx].field_1536 = sub_96ea17da[arg1].field_1536
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = sub_96ea17da[arg1].field_256
        mem[32] = 15
        idx = idx + 1
        continue 
}

function getUserAddresses() payable {
    mem[64] = (32 * stor14.length) + 128
    mem[96] = stor14.length
    if not stor14.length:
        mem[(32 * stor14.length) + 128] = 32
        mem[(32 * stor14.length) + 160] = stor14.length
        idx = 0
        s = 128
        t = (32 * stor14.length) + 192
        while idx < stor14.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor14.length) + 128
           len (96 * stor14.length) + 64
    mem[128] = address(stor14.field_0)
    idx = 128
    s = 0
    while (32 * stor14.length) + 96 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor14.length) + 128] = 32
    mem[(32 * stor14.length) + 160] = stor14.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stor14.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor14.length) + -mem[64] + 192
}

function getTotalDeposits() payable {
    mem[64] = (32 * totalDeposits.length) + 128
    mem[96] = totalDeposits.length
    s = 128
    idx = 0
    while idx < totalDeposits.length:
        mem[0] = 10
        _19 = mem[64]
        mem[64] = mem[64] + 320
        mem[_19] = totalDeposits[idx].field_0
        mem[_19 + 32] = totalDeposits[idx].field_256
        mem[_19 + 64] = totalDeposits[idx].field_512
        mem[_19 + 96] = totalDeposits[idx].field_768
        mem[_19 + 128] = totalDeposits[idx].field_1024
        mem[_19 + 160] = totalDeposits[idx].field_1280
        mem[_19 + 192] = totalDeposits[idx].field_1536
        mem[_19 + 224] = bool(totalDeposits[idx].field_1792)
        if totalDeposits[idx].field_1800 > 3:
            revert with 'NH{q', 33
        mem[_19 + 256] = totalDeposits[idx].field_1800
        if totalDeposits[idx].field_1808 > 4:
            revert with 'NH{q', 33
        mem[_19 + 288] = totalDeposits[idx].field_1808
        mem[s] = _19
        s = s + 32
        idx = idx + 1
        continue 
    _20 = mem[64]
    mem[mem[64]] = 32
    _21 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _21:
        _34 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_34 + 44 len 20]
        mem[t + 64] = mem[_34 + 64]
        mem[t + 96] = mem[_34 + 96]
        mem[t + 128] = mem[_34 + 128]
        mem[t + 160] = mem[_34 + 160]
        mem[t + 192] = mem[_34 + 192]
        mem[t + 224] = bool(mem[_34 + 224])
        if mem[_34 + 256] >= 4:
            revert with 'NH{q', 33
        mem[t + 256] = mem[_34 + 256]
        if mem[_34 + 288] >= 5:
            revert with 'NH{q', 33
        mem[t + 288] = mem[_34 + 288]
        idx = idx + 1
        s = s + 32
        t = t + 320
        continue 
    return memory
      from mem[64]
       len _20 + (320 * _21) + -mem[64] + 64
}

function getUserDeposits(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 15
    mem[64] = (32 * userDeposits[address(arg1)].field_0) + 128
    mem[96] = userDeposits[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < userDeposits[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 15)
        _20 = mem[64]
        mem[64] = mem[64] + 320
        mem[_20] = userDeposits[address(arg1)][idx].field_0
        mem[_20 + 32] = userDeposits[address(arg1)][idx].field_256
        mem[_20 + 64] = userDeposits[address(arg1)][idx].field_512
        mem[_20 + 96] = userDeposits[address(arg1)][idx].field_768
        mem[_20 + 128] = userDeposits[address(arg1)][idx].field_1024
        mem[_20 + 160] = userDeposits[address(arg1)][idx].field_1280
        mem[_20 + 192] = userDeposits[address(arg1)][idx].field_1536
        mem[_20 + 224] = bool(userDeposits[address(arg1)][idx].field_1792)
        if userDeposits[address(arg1)][idx].field_1800 > 3:
            revert with 'NH{q', 33
        mem[_20 + 256] = userDeposits[address(arg1)][idx].field_1800
        if userDeposits[address(arg1)][idx].field_1808 > 4:
            revert with 'NH{q', 33
        mem[_20 + 288] = userDeposits[address(arg1)][idx].field_1808
        mem[s] = _20
        s = s + 32
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64]] = 32
    _22 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _22:
        _35 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_35 + 44 len 20]
        mem[t + 64] = mem[_35 + 64]
        mem[t + 96] = mem[_35 + 96]
        mem[t + 128] = mem[_35 + 128]
        mem[t + 160] = mem[_35 + 160]
        mem[t + 192] = mem[_35 + 192]
        mem[t + 224] = bool(mem[_35 + 224])
        if mem[_35 + 256] >= 4:
            revert with 'NH{q', 33
        mem[t + 256] = mem[_35 + 256]
        if mem[_35 + 288] >= 5:
            revert with 'NH{q', 33
        mem[t + 288] = mem[_35 + 288]
        idx = idx + 1
        s = s + 32
        t = t + 320
        continue 
    return memory
      from mem[64]
       len _21 + (320 * _22) + -mem[64] + 64
}

function sub_2401807e(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    require ('cd', 4).length == ('cd', 4).length
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == ('cd', 4)[1]
    require ('cd', 4)[2] == ('cd', 4)[2]
    require ('cd', 4)[3] <= test266151307()
    require cd[4] + ('cd', 4)[3] + 35 < calldata.size
    if cd[(cd[4] + ('cd', 4)[3] + 4)] > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)])) + 321 > test266151307() or ceil32(ceil32(cd[(cd[4] + ('cd', 4)[3] + 4)])) + 321 < 320:
        revert with 'NH{q', 65
    require cd[4] + ('cd', 4)[3] + cd[(cd[4] + ('cd', 4)[3] + 4)] + 36 <= calldata.size
    require ('cd', 4)[4] < 4
    require ('cd', 4)[5] == ('cd', 4)[5]
    if bool(stor25[address(msg.sender)]) != 1:
        revert with 0, 'platform not allowed'
    stor12.length++
    stor12[stor12.length].field_0 = ('cd', 4).length
    stor12[stor12.length].field_256 = address(('cd', 4)[0])
    stor12[stor12.length].field_512 = ('cd', 4)[1]
    stor12[stor12.length].field_768 = ('cd', 4)[2]
    if stor12[stor12.length].field_1024:
        if stor12[stor12.length].field_1024 == stor12[stor12.length].field_1025 < 32:
            revert with 'NH{q', 34
        if cd[(cd[4] + ('cd', 4)[3] + 4)]:
            stor[sha3((7 * stor12.length) + ('name', 'stor12', 12) + 4)][].field_0 = Array(len=cd[(cd[4] + ('cd', 4)[3] + 4)], data=call.data[cd[4] + ('cd', 4)[3] + 36 len cd[(cd[4] + ('cd', 4)[3] + 4)]])
        else:
            stor12[stor12.length].field_1024 = 0
            idx = 0
            while stor12[stor12.length].field_1025 + 31 / 32 > idx:
                stor[idx + sha3((7 * stor12.length) + ('name', 'stor12', 12) + 4)].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor12[stor12.length].field_1024 == stor12[stor12.length].field_1025 < 32:
            revert with 'NH{q', 34
        if cd[(cd[4] + ('cd', 4)[3] + 4)]:
            stor[sha3((7 * stor12.length) + ('name', 'stor12', 12) + 4)][].field_0 = Array(len=cd[(cd[4] + ('cd', 4)[3] + 4)], data=call.data[cd[4] + ('cd', 4)[3] + 36 len cd[(cd[4] + ('cd', 4)[3] + 4)]])
        else:
            stor12[stor12.length].field_1024 = 0
            idx = 0
            while stor12[stor12.length].field_1025 + 31 / 32 > idx:
                stor[idx + sha3((7 * stor12.length) + ('name', 'stor12', 12) + 4)].field_0 = 0
                idx = idx + 1
                continue 
    if ('cd', 4)[4] > 3:
        revert with 'NH{q', 33
    stor12[stor12.length].field_1280 = ('cd', 4)[4] or Mask(248, 8, stor12[stor12.length].field_1280)
    stor12[stor12.length].field_1536 = ('cd', 4)[5]
}

function allOperations(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stor12.length
    if stor12[arg1].field_1024:
        if stor12[arg1].field_1024 == stor12[arg1].field_1025 < 32:
            revert with 'NH{q', 34
        if stor12[arg1].field_1024:
            if stor12[arg1].field_1024 == stor12[arg1].field_1025 < 32:
                revert with 'NH{q', 34
            if stor12[arg1].field_1025:
                if 31 >= stor12[arg1].field_1025:
                    mem[128] = 256 * stor12[arg1].field_1032
                else:
                    mem[128] = stor[sha3((7 * arg1) + ('name', 'stor12', 12) + 4)].field_0
                    idx = 128
                    s = 0
                    while stor12[arg1].field_1025 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor12', 12) + 4)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor12[arg1].field_1024 == stor12[arg1].field_1025 < 32:
                revert with 'NH{q', 34
            if stor12[arg1].field_1025:
                if 31 >= stor12[arg1].field_1025:
                    mem[128] = 256 * stor12[arg1].field_1032
                else:
                    mem[128] = stor[sha3((7 * arg1) + ('name', 'stor12', 12) + 4)].field_0
                    idx = 128
                    s = 0
                    while stor12[arg1].field_1025 + 96 > idx:
                        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor12', 12) + 4)].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor12[arg1].field_1280 >= 4:
            revert with 'NH{q', 33
        return stor12[arg1].field_0, 
               stor12[arg1].field_256,
               stor12[arg1].field_512,
               stor12[arg1].field_768,
               Array(len=2 * Mask(256, -1, stor12[arg1].field_1025), data=mem[128 len ceil32(stor12[arg1].field_1025)]),
               stor12[arg1].field_1280,
               stor12[arg1].field_1536
    if stor12[arg1].field_1024 == stor12[arg1].field_1025 < 32:
        revert with 'NH{q', 34
    if stor12[arg1].field_1024:
        if stor12[arg1].field_1024 == stor12[arg1].field_1025 < 32:
            revert with 'NH{q', 34
        if stor12[arg1].field_1025:
            if 31 >= stor12[arg1].field_1025:
                mem[128] = 256 * stor12[arg1].field_1032
            else:
                mem[128] = stor[sha3((7 * arg1) + ('name', 'stor12', 12) + 4)].field_0
                idx = 128
                s = 0
                while stor12[arg1].field_1025 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor12', 12) + 4)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor12[arg1].field_1024 == stor12[arg1].field_1025 < 32:
            revert with 'NH{q', 34
        if stor12[arg1].field_1025:
            if 31 >= stor12[arg1].field_1025:
                mem[128] = 256 * stor12[arg1].field_1032
            else:
                mem[128] = stor[sha3((7 * arg1) + ('name', 'stor12', 12) + 4)].field_0
                idx = 128
                s = 0
                while stor12[arg1].field_1025 + 96 > idx:
                    mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'stor12', 12) + 4)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor12[arg1].field_1280 >= 4:
        revert with 'NH{q', 33
    return stor12[arg1].field_0, 
           stor12[arg1].field_256,
           stor12[arg1].field_512,
           stor12[arg1].field_768,
           Array(len=stor12[arg1].field_1024, data=mem[128 len ceil32(stor12[arg1].field_1025)]),
           stor12[arg1].field_1280,
           stor12[arg1].field_1536
}

function sub_164d18e4(?) payable {
    require calldata.size - 4 >= 320
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == bool(arg8)
    require arg9 < 4
    require arg10 < 5
    if bool(stor25[address(msg.sender)]) != 1:
        revert with 0, 'platform not allowed'
    totalDeposits.length++
    totalDeposits[totalDeposits.length].field_0 = arg1
    totalDeposits[totalDeposits.length].field_256 = address(arg2)
    totalDeposits[totalDeposits.length].field_512 = arg3
    totalDeposits[totalDeposits.length].field_768 = arg4
    totalDeposits[totalDeposits.length].field_1024 = arg5
    totalDeposits[totalDeposits.length].field_1280 = arg6
    totalDeposits[totalDeposits.length].field_1536 = arg7
    totalDeposits[totalDeposits.length].field_1792 = uint8(bool(arg8))
    if arg9 > 3:
        revert with 'NH{q', 33
    totalDeposits[totalDeposits.length].field_1800 = Mask(248, 0, arg9)
    if arg10 > 4:
        revert with 'NH{q', 33
    totalDeposits[totalDeposits.length].field_1808 = Mask(240, 0, arg10)
    if totalDeposits.length <= 0:
        revert with 0, 'totalDeposits length equal 0'
    if totalDeposits.length < 1:
        revert with 'NH{q', 17
    if totalDeposits.length - 1 >= totalDeposits.length:
        revert with 'NH{q', 50
    if address(arg2) != totalDeposits[totalDeposits.length - 1].field_256:
        revert with 0, 'user deposit addr error'
    if sub_96ea17da[stor10[stor10.length - 1].field_0].field_0:
        revert with 0, 'deposit id has been declared'
    sub_96ea17da[stor10[stor10.length - 1].field_0].field_0 = totalDeposits[totalDeposits.length - 1].field_0
    sub_96ea17da[stor10[stor10.length - 1].field_0].field_256 = totalDeposits[totalDeposits.length - 1].field_256
    sub_96ea17da[stor10[stor10.length - 1].field_0].field_512 = totalDeposits[totalDeposits.length - 1].field_512
    sub_96ea17da[stor10[stor10.length - 1].field_0].field_768 = totalDeposits[totalDeposits.length - 1].field_768
    sub_96ea17da[stor10[stor10.length - 1].field_0].field_1024 = totalDeposits[totalDeposits.length - 1].field_1024
    sub_96ea17da[stor10[stor10.length - 1].field_0].field_1280 = totalDeposits[totalDeposits.length - 1].field_1280
    sub_96ea17da[stor10[stor10.length - 1].field_0].field_1536 = totalDeposits[totalDeposits.length - 1].field_1536
    sub_96ea17da[stor10[stor10.length - 1].field_0].field_1792 = uint8(bool(totalDeposits[totalDeposits.length - 1].field_1792))
    if totalDeposits[totalDeposits.length - 1].field_1800 > 3:
        revert with 'NH{q', 33
    sub_96ea17da[stor10[stor10.length - 1].field_0].field_1800 = totalDeposits[totalDeposits.length - 1].field_1800
    if totalDeposits[totalDeposits.length - 1].field_1808 > 4:
        revert with 'NH{q', 33
    sub_96ea17da[stor10[stor10.length - 1].field_0].field_1808 = totalDeposits[totalDeposits.length - 1].field_1808
    if address(arg2) != sub_96ea17da[stor10[stor10.length - 1].field_0].field_256:
        revert with 0, 'user deposit addr error'
    userDeposits[address(arg2)].field_0++
    userDeposits[address(arg2)][userDeposits[address(arg2)].field_0].field_0 = sub_96ea17da[stor10[stor10.length - 1].field_0].field_0
    userDeposits[address(arg2)][userDeposits[address(arg2)].field_0].field_256 = sub_96ea17da[stor10[stor10.length - 1].field_0].field_256
    userDeposits[address(arg2)][userDeposits[address(arg2)].field_0].field_512 = sub_96ea17da[stor10[stor10.length - 1].field_0].field_512
    userDeposits[address(arg2)][userDeposits[address(arg2)].field_0].field_768 = sub_96ea17da[stor10[stor10.length - 1].field_0].field_768
    userDeposits[address(arg2)][userDeposits[address(arg2)].field_0].field_1024 = sub_96ea17da[stor10[stor10.length - 1].field_0].field_1024
    userDeposits[address(arg2)][userDeposits[address(arg2)].field_0].field_1280 = sub_96ea17da[stor10[stor10.length - 1].field_0].field_1280
    userDeposits[address(arg2)][userDeposits[address(arg2)].field_0].field_1536 = sub_96ea17da[stor10[stor10.length - 1].field_0].field_1536
    userDeposits[address(arg2)][userDeposits[address(arg2)].field_0].field_1792 = uint8(bool(sub_96ea17da[stor10[stor10.length - 1].field_0].field_1792))
    if sub_96ea17da[stor10[stor10.length - 1].field_0].field_1800 > 3:
        revert with 'NH{q', 33
    userDeposits[address(arg2)][userDeposits[address(arg2)].field_0].field_1800 = sub_96ea17da[stor10[stor10.length - 1].field_0].field_1800
    if sub_96ea17da[stor10[stor10.length - 1].field_0].field_1808 > 4:
        revert with 'NH{q', 33
    userDeposits[address(arg2)][userDeposits[address(arg2)].field_0].field_1808 = sub_96ea17da[stor10[stor10.length - 1].field_0].field_1808
}

function getAllOperations() payable {
    mem[64] = (32 * stor12.length) + 128
    mem[96] = stor12.length
    s = 128
    idx = 0
    while idx < stor12.length:
        mem[0] = 12
        _26 = mem[64]
        mem[64] = mem[64] + 224
        mem[_26] = stor12[idx].field_0
        mem[_26 + 32] = stor12[idx].field_256
        mem[_26 + 64] = stor12[idx].field_512
        mem[_26 + 96] = stor12[idx].field_768
        if stor12[idx].field_1024:
            if stor12[idx].field_1024 == stor12[idx].field_1025 < 32:
                revert with 'NH{q', 34
            _29 = mem[64]
            mem[64] = mem[64] + ceil32(stor12[idx].field_1025) + 32
            mem[_29] = stor12[idx].field_1025
            if stor12[idx].field_1024:
                if stor12[idx].field_1024 == stor12[idx].field_1025 < 32:
                    revert with 'NH{q', 34
                if stor12[idx].field_1025:
                    if 31 >= stor12[idx].field_1025:
                        mem[_29 + 32] = 256 * stor12[idx].field_1032
                    else:
                        mem[0] = (7 * idx) + sha3(12) + 4
                        mem[_29 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 4)].field_0
                        t = _29 + 32
                        u = sha3(mem[0])
                        while _29 + stor12[idx].field_1025 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
            else:
                if stor12[idx].field_1024 == stor12[idx].field_1025 < 32:
                    revert with 'NH{q', 34
                if stor12[idx].field_1025:
                    if 31 >= stor12[idx].field_1025:
                        mem[_29 + 32] = 256 * stor12[idx].field_1032
                    else:
                        mem[0] = (7 * idx) + sha3(12) + 4
                        mem[_29 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 4)].field_0
                        t = _29 + 32
                        u = sha3(mem[0])
                        while _29 + stor12[idx].field_1025 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
            mem[_26 + 128] = _29
        else:
            if stor12[idx].field_1024 == stor12[idx].field_1025 < 32:
                revert with 'NH{q', 34
            _30 = mem[64]
            mem[64] = mem[64] + ceil32(stor12[idx].field_1025) + 32
            mem[_30] = stor12[idx].field_1025
            if stor12[idx].field_1024:
                if stor12[idx].field_1024 == stor12[idx].field_1025 < 32:
                    revert with 'NH{q', 34
                if stor12[idx].field_1025:
                    if 31 >= stor12[idx].field_1025:
                        mem[_30 + 32] = 256 * stor12[idx].field_1032
                    else:
                        mem[0] = (7 * idx) + sha3(12) + 4
                        mem[_30 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 4)].field_0
                        t = _30 + 32
                        u = sha3(mem[0])
                        while _30 + stor12[idx].field_1025 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
            else:
                if stor12[idx].field_1024 == stor12[idx].field_1025 < 32:
                    revert with 'NH{q', 34
                if stor12[idx].field_1025:
                    if 31 >= stor12[idx].field_1025:
                        mem[_30 + 32] = 256 * stor12[idx].field_1032
                    else:
                        mem[0] = (7 * idx) + sha3(12) + 4
                        mem[_30 + 32] = stor[sha3((7 * idx) + ('name', 'stor12', 12) + 4)].field_0
                        t = _30 + 32
                        u = sha3(mem[0])
                        while _30 + stor12[idx].field_1025 > t:
                            mem[t + 32] = stor1[u]
                            t = t + 32
                            u = u + 1
                            continue 
            mem[_26 + 128] = _30
        if stor12[idx].field_1280 > 3:
            revert with 'NH{q', 33
        mem[_26 + 160] = stor12[idx].field_1280
        mem[_26 + 192] = stor12[idx].field_1536
        mem[s] = _26
        s = s + 32
        idx = idx + 1
        continue 
    _27 = mem[64]
    mem[mem[64]] = 32
    _28 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + (32 * mem[96]) + 64
    u = mem[64] + 64
    while idx < _28:
        mem[u] = t + -_27 - 64
        _48 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_48 + 44 len 20]
        mem[t + 64] = mem[_48 + 64]
        mem[t + 96] = mem[_48 + 96]
        _54 = mem[_48 + 128]
        mem[t + 128] = 224
        _55 = mem[_54]
        mem[t + 224] = mem[_54]
        v = 0
        while v < _55:
            mem[t + v + 256] = mem[_54 + v + 32]
            v = v + 32
            continue 
        if ceil32(_55) > _55:
            mem[t + _55 + 256] = 0
        if mem[_48 + 160] >= 4:
            revert with 'NH{q', 33
        mem[t + 160] = mem[_48 + 160]
        mem[t + 192] = mem[_48 + 192]
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_55) + 256
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
