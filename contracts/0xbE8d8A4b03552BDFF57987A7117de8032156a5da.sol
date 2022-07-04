contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address sub_e1fff237Address;
address sub_74a55289Address;
mapping of uint256 sub_781e48ef;
uint256 sub_e0894253;
uint256 sub_c61c284a;
mapping of struct stor7;
array of address members;
array of uint256 sub_27b612d1;
array of uint256 retrieveRoomId;
uint256 ownerFee;
array of uint256 sub_eb1470b0;
mapping of uint256 sub_274f46f0;
mapping of struct stor14;
array of struct stor15;
address sub_699f37e6Address;
array of uint8 stor63806209331542711802848847270949280092855778197726125910674179583545433573379;

function retrieveRoomId() payable {
    if retrieveRoomId[msg.sender] < 1:
        revert with 0, 17
    if retrieveRoomId[msg.sender] - 1 >= retrieveRoomId[msg.sender]:
        revert with 0, 50
    return retrieveRoomId[msg.sender][retrieveRoomId[msg.sender]]
}

function members(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(members[arg1])
    return address(members[arg1][arg2])
}

function sub_274f46f0(?) payable {
    require calldata.size - 4 >= 32
    return sub_274f46f0[arg1]
}

function sub_27b612d1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_27b612d1[arg1]
    return sub_27b612d1[arg1][arg2]
}

function sub_699f37e6(?) payable {
    return sub_699f37e6Address
}

function sub_74a55289(?) payable {
    return sub_74a55289Address
}

function sub_781e48ef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_781e48ef[arg1]
}

function owner() payable {
    return owner
}

function tokenAddress() payable {
    return tokenAddress
}

function sub_a55119c4(?) payable {
    return sub_781e48ef[msg.sender]
}

function sub_c61c284a(?) payable {
    return sub_c61c284a
}

function ownerFee() payable {
    return ownerFee
}

function sub_e0894253(?) payable {
    return sub_e0894253
}

function sub_e1fff237(?) payable {
    return sub_e1fff237Address
}

function sub_eb1470b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_eb1470b0.length
    return sub_eb1470b0[arg1]
}

function sub_fca69bca(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < retrieveRoomId[arg1]
    return retrieveRoomId[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_cacde784(?) payable {
    return sub_e0894253, sub_c61c284a
}

function sub_0d7e4692(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_c61c284a = arg1
}

function sub_f810c282(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_e0894253 = arg1
}

function sub_8bac4e26(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg1 >= stor15.length:
        revert with 0, 50
    stor15[arg1].field_0 = arg2
}

function sub_9bc168c1(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor15.length++
    stor15[stor15.length].field_0 = arg1
    stor8D11[stor15.length] = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_60af894c(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    require msg.sender == owner
    if arg1 >= stor15.length:
        revert with 0, 50
    stor15[arg1].field_256 = uint8(bool(arg2))
}

function sub_5e6eac3c(?) payable {
    mem[64] = (32 * stor15.length) + 128
    mem[96] = stor15.length
    s = 128
    idx = 0
    while idx < stor15.length:
        mem[0] = 15
        _11 = mem[64]
        mem[64] = mem[64] + 64
        mem[_11] = stor15[idx].field_0
        mem[_11 + 32] = bool(stor15[idx].field_256)
        mem[s] = _11
        s = s + 32
        idx = idx + 1
        continue 
    _12 = mem[64]
    mem[mem[64]] = 32
    _13 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _13:
        _18 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = bool(mem[_18 + 32])
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _12 + (64 * _13) + -mem[64] + 64
}

function joinRoom(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require sub_781e48ef[msg.sender] >= stor7[arg1].field_0
    if stor7[arg1].field_512:
        revert with 0, 'Room is not opened.'
    if 1 == stor7[arg1][6][msg.sender].field_0:
        revert with 0, 'Already a member'
    if stor7[arg1].field_0 > sub_781e48ef[msg.sender]:
        revert with 0, 1
    if sub_781e48ef[msg.sender] < stor7[arg1].field_0:
        revert with 0, 17
    sub_781e48ef[msg.sender] -= stor7[arg1].field_0
    if sub_781e48ef[stor3] > !stor7[arg1].field_0:
        revert with 0, 17
    if sub_781e48ef[stor3] + stor7[arg1].field_0 < sub_781e48ef[stor3]:
        revert with 0, 1
    sub_781e48ef[stor3] += stor7[arg1].field_0
    if stor7[arg1].field_256 > -2:
        revert with 0, 17
    stor7[arg1].field_256++
    stor7[arg1][6][msg.sender].field_0 = 1
    sub_27b612d1[msg.sender]++
    sub_27b612d1[msg.sender][sub_27b612d1[msg.sender]] = arg1
}

function createRoom(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= sub_781e48ef[msg.sender]
    if arg1 > sub_781e48ef[msg.sender]:
        revert with 0, 1
    if sub_781e48ef[msg.sender] < arg1:
        revert with 0, 17
    sub_781e48ef[msg.sender] -= arg1
    if sub_781e48ef[stor3] > !arg1:
        revert with 0, 17
    if sub_781e48ef[stor3] + arg1 < sub_781e48ef[stor3]:
        revert with 0, 1
    sub_781e48ef[stor3] += arg1
    sub_eb1470b0.length++
    sub_eb1470b0[sub_eb1470b0.length] = sub_eb1470b0.length
    stor7[stor12.length].field_0 = arg1
    stor7[stor12.length].field_256 = 1
    stor7[stor12.length].field_512 = 0
    stor7[stor12.length].field_1280 = msg.sender or Mask(96, 160, stor7[stor12.length].field_1280)
    stor7[stor12.length][6][msg.sender].field_0 = 1
    sub_27b612d1[msg.sender]++
    sub_27b612d1[msg.sender][sub_27b612d1[msg.sender]] = sub_eb1470b0.length
    retrieveRoomId[msg.sender]++
    retrieveRoomId[msg.sender][retrieveRoomId[msg.sender]] = sub_eb1470b0.length
}

function sub_c4a6c6bd(?) payable {
    require calldata.size - 4 >= 32
    if arg1 and 10^18 > -1 / arg1:
        revert with 0, 17
    if arg1:
        if not arg1:
            revert with 0, 18
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0, 1
    require ext_code.size(sub_699f37e6Address)
    call sub_699f37e6Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    if arg1 and sub_e0894253 > -1 / arg1:
        revert with 0, 17
    if arg1:
        if not arg1:
            revert with 0, 18
        if arg1 * sub_e0894253 / arg1 != sub_e0894253:
            revert with 0, 1
    if sub_781e48ef[msg.sender] > !(arg1 * sub_e0894253 / 1000):
        revert with 0, 17
    sub_781e48ef[msg.sender] += arg1 * sub_e0894253 / 1000
}

function sub_fb737403(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor15.length:
        revert with 0, 'No such weapon'
    if not stor15[arg1].field_256:
        revert with 0, 'Not usable weapon'
    if arg1 >= stor15.length:
        revert with 0, 50
    if stor15[arg1].field_0 > sub_781e48ef[msg.sender]:
        revert with 0, 'No enough point'
    idx = 0
    while idx < stor14[msg.sender].field_768:
        if idx >= stor14[msg.sender].field_768:
            revert with 0, 50
        if stor14[msg.sender][idx + 3].field_0 == arg1:
            revert with 0, 'Already Purchased'
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 14
        idx = idx + 1
        continue 
    if stor15[arg1].field_0 > sub_781e48ef[msg.sender]:
        revert with 0, 1
    if sub_781e48ef[msg.sender] < stor15[arg1].field_0:
        revert with 0, 17
    sub_781e48ef[msg.sender] -= stor15[arg1].field_0
    stor14[msg.sender].field_768++
    stor[('array', 3, ('map', 'msg.sender', ('name', 'stor14', 14))) + stor14[msg.sender].field_768].field_0 = arg1
}

function sub_333a18a0(?) payable {
    idx = 0
    s = 0
    while idx < sub_27b612d1[msg.sender]:
        if idx >= sub_27b612d1[msg.sender]:
            revert with 0, 50
        if stor7[stor9[msg.sender][idx]][6][msg.sender].field_0 != 1:
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 9
            idx = idx + 1
            s = s
            continue 
        if idx >= sub_27b612d1[msg.sender]:
            revert with 0, 50
        if s > !stor7[stor9[msg.sender][idx]].field_0:
            revert with 0, 17
        if idx >= sub_27b612d1[msg.sender]:
            revert with 0, 50
        stor7[stor9[msg.sender][idx]][6][msg.sender].field_0 = 3
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 9
        idx = idx + 1
        s = s + stor7[stor9[msg.sender][idx]].field_0
        continue 
    if s > sub_781e48ef[stor3]:
        revert with 0, 1
    if sub_781e48ef[stor3] < s:
        revert with 0, 17
    sub_781e48ef[stor3] -= s
    if sub_781e48ef[msg.sender] > !s:
        revert with 0, 17
    if sub_781e48ef[msg.sender] + s < sub_781e48ef[msg.sender]:
        revert with 0, 1
    sub_781e48ef[msg.sender] += s
}

function sub_2f79e07a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= sub_781e48ef[msg.sender]
    if arg1 and 1000 > -1 / arg1:
        revert with 0, 17
    if arg1:
        if not arg1:
            revert with 0, 18
        if 1000 * arg1 / arg1 != 1000:
            revert with 0, 1
    if not sub_c61c284a:
        revert with 0, 18
    if 1000 * arg1 / sub_c61c284a and 10^18 > -1 / 1000 * arg1 / sub_c61c284a:
        revert with 0, 17
    if 1000 * arg1 / sub_c61c284a:
        if not 1000 * arg1 / sub_c61c284a:
            revert with 0, 18
        if 10^18 * 1000 * arg1 / sub_c61c284a / 1000 * arg1 / sub_c61c284a != 10^18:
            revert with 0, 1
    require ext_code.size(sub_699f37e6Address)
    call sub_699f37e6Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * 1000 * arg1 / sub_c61c284a
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    if arg1 > sub_781e48ef[msg.sender]:
        revert with 0, 1
    if sub_781e48ef[msg.sender] < arg1:
        revert with 0, 17
    sub_781e48ef[msg.sender] -= arg1
}

function sub_e88ac0b1(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if stor7[cd[4]].field_512:
        revert with 0, 'Room is not opened.'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(cd[4], 7) + 6
        require 1 == stor7[cd[4]][6][mem[(32 * idx) + 140 len 20]].field_0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(cd[4], 7) + 6
        stor7[cd[4]][6][mem[(32 * idx) + 140 len 20]].field_0 = 2
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor7[cd[4]].field_512 = 1
    if stor7[cd[4]].field_0 and ('cd', 36).length > -1 / stor7[cd[4]].field_0:
        revert with 0, 17
    if stor7[cd[4]].field_0:
        if not stor7[cd[4]].field_0:
            revert with 0, 18
        if stor7[cd[4]].field_0 * ('cd', 36).length / stor7[cd[4]].field_0 != ('cd', 36).length:
            revert with 0, 1
    sub_274f46f0[cd[4]] = stor7[cd[4]].field_0 * ('cd', 36).length
}

function sub_ba328b75(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= stor15.length:
        revert with 0, 'No such weapon'
    if not stor15[arg1].field_256:
        revert with 0, 'Not usable weapon'
    if arg1 >= stor15.length:
        revert with 0, 50
    if stor15[arg1].field_0 and sub_c61c284a > -1 / stor15[arg1].field_0:
        revert with 0, 17
    if stor15[arg1].field_0:
        if not stor15[arg1].field_0:
            revert with 0, 18
        if stor15[arg1].field_0 * sub_c61c284a / stor15[arg1].field_0 != sub_c61c284a:
            revert with 0, 1
    idx = 0
    while idx < stor14[msg.sender].field_768:
        if idx >= stor14[msg.sender].field_768:
            revert with 0, 50
        if stor14[msg.sender][idx + 3].field_0 == arg1:
            revert with 0, 'Already Purchased'
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 14
        idx = idx + 1
        continue 
    if stor15[arg1].field_0 * sub_c61c284a / 1000 and 10^18 > -1 / stor15[arg1].field_0 * sub_c61c284a / 1000:
        revert with 0, 17
    if stor15[arg1].field_0 * sub_c61c284a / 1000:
        if not stor15[arg1].field_0 * sub_c61c284a / 1000:
            revert with 0, 18
        if 10^18 * stor15[arg1].field_0 * sub_c61c284a / 1000 / stor15[arg1].field_0 * sub_c61c284a / 1000 != 10^18:
            revert with 0, 1
    require ext_code.size(sub_699f37e6Address)
    call sub_699f37e6Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 10^18 * stor15[arg1].field_0 * sub_c61c284a / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    stor14[msg.sender].field_768++
    stor[('array', 3, ('map', 'msg.sender', ('name', 'stor14', 14))) + stor14[msg.sender].field_768].field_0 = arg1
}

function finishRoom(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require msg.sender == owner
    if stor7[arg1].field_512 != 1:
        revert with 0, 'Room not closed'
    if sub_274f46f0[arg1] and ownerFee > -1 / sub_274f46f0[arg1]:
        revert with 0, 17
    if sub_274f46f0[arg1]:
        if not sub_274f46f0[arg1]:
            revert with 0, 18
        if sub_274f46f0[arg1] * ownerFee / sub_274f46f0[arg1] != ownerFee:
            revert with 0, 1
    if not sub_274f46f0[arg1] * ownerFee / 1000:
        if sub_781e48ef[stor2] > !(sub_274f46f0[arg1] * ownerFee / 1000):
            revert with 0, 17
        if sub_781e48ef[stor2] + (sub_274f46f0[arg1] * ownerFee / 1000) < sub_781e48ef[stor2]:
            revert with 0, 1
        sub_781e48ef[stor2] += sub_274f46f0[arg1] * ownerFee / 1000
        if sub_781e48ef[arg2] > !sub_274f46f0[arg1]:
            revert with 0, 17
        if sub_781e48ef[arg2] + sub_274f46f0[arg1] < sub_781e48ef[arg2]:
            revert with 0, 1
        sub_781e48ef[address(arg2)] = sub_781e48ef[arg2] + sub_274f46f0[arg1]
    else:
        if sub_274f46f0[arg1] * ownerFee / 1000 > sub_274f46f0[arg1]:
            revert with 0, 1
        if sub_274f46f0[arg1] < sub_274f46f0[arg1] * ownerFee / 1000:
            revert with 0, 17
        if sub_781e48ef[stor2] > !(sub_274f46f0[arg1] * ownerFee / 1000):
            revert with 0, 17
        if sub_781e48ef[stor2] + (sub_274f46f0[arg1] * ownerFee / 1000) < sub_781e48ef[stor2]:
            revert with 0, 1
        sub_781e48ef[stor2] += sub_274f46f0[arg1] * ownerFee / 1000
        if sub_781e48ef[arg2] > !(sub_274f46f0[arg1] - (sub_274f46f0[arg1] * ownerFee / 1000)):
            revert with 0, 17
        if sub_781e48ef[arg2] + sub_274f46f0[arg1] - (sub_274f46f0[arg1] * ownerFee / 1000) < sub_781e48ef[arg2]:
            revert with 0, 1
        sub_781e48ef[address(arg2)] = sub_781e48ef[arg2] + sub_274f46f0[arg1] - (sub_274f46f0[arg1] * ownerFee / 1000)
    stor7[arg1].field_1024 = msg.sender or Mask(96, 160, stor7[arg1].field_1024)
    stor7[arg1].field_512 = 2
    sub_274f46f0[arg1] = 0
}

function playerInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor14[arg1].field_0:
        if stor14[arg1].field_0 == uint255(stor14[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor14[arg1].field_0:
            if stor14[arg1].field_0 == uint255(stor14[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor14[arg1].field_0):
                if 31 >= uint255(stor14[arg1].field_0) * 0.5:
                    mem[128] = 256 * stor14[arg1].field_8
                else:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor14[arg1].field_0) * 0.5) + 96 > idx:
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
        return Array(len=2 * Mask(256, -1, stor14[arg1].field_0), data=mem[128 len ceil32(uint255(stor14[arg1].field_0) * 0.5)]), 
               stor14[arg1].field_256,
               stor14[arg1].field_512
    if stor14[arg1].field_0 == stor14[arg1].field_1 < 32:
        revert with 0, 34
    if stor14[arg1].field_0:
        if stor14[arg1].field_0 == uint255(stor14[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor14[arg1].field_0):
            if 31 >= uint255(stor14[arg1].field_0) * 0.5:
                mem[128] = 256 * stor14[arg1].field_8
            else:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor14[arg1].field_0) * 0.5) + 96 > idx:
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
           stor14[arg1].field_512
}

function rooms(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor7[arg1].field_768:
        if stor7[arg1].field_768 == uint255(stor7[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if stor7[arg1].field_768:
            if stor7[arg1].field_768 == uint255(stor7[arg1].field_768) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7[arg1].field_768):
                if 31 >= uint255(stor7[arg1].field_768) * 0.5:
                    mem[128] = 256 * stor7[arg1].field_776
                else:
                    mem[128] = stor7[arg1][3].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor7[arg1].field_768) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor7[arg1].field_768 == stor7[arg1].field_769 < 32:
                revert with 0, 34
            if stor7[arg1].field_769:
                if 31 >= stor7[arg1].field_769:
                    mem[128] = 256 * stor7[arg1].field_776
                else:
                    mem[128] = stor7[arg1][3].field_0
                    idx = 128
                    s = 0
                    while stor7[arg1].field_769 + 96 > idx:
                        mem[idx + 32] = stor7[arg1][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor7[arg1].field_0, 
               stor7[arg1].field_256,
               stor7[arg1].field_512,
               Array(len=2 * Mask(256, -1, stor7[arg1].field_768), data=mem[128 len ceil32(uint255(stor7[arg1].field_768) * 0.5)]),
               stor7[arg1].field_1024,
               stor7[arg1].field_1280
    if stor7[arg1].field_768 == stor7[arg1].field_769 < 32:
        revert with 0, 34
    if stor7[arg1].field_768:
        if stor7[arg1].field_768 == uint255(stor7[arg1].field_768) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7[arg1].field_768):
            if 31 >= uint255(stor7[arg1].field_768) * 0.5:
                mem[128] = 256 * stor7[arg1].field_776
            else:
                mem[128] = stor7[arg1][3].field_0
                idx = 128
                s = 0
                while (uint255(stor7[arg1].field_768) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor7[arg1].field_768 == stor7[arg1].field_769 < 32:
            revert with 0, 34
        if stor7[arg1].field_769:
            if 31 >= stor7[arg1].field_769:
                mem[128] = 256 * stor7[arg1].field_776
            else:
                mem[128] = stor7[arg1][3].field_0
                idx = 128
                s = 0
                while stor7[arg1].field_769 + 96 > idx:
                    mem[idx + 32] = stor7[arg1][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor7[arg1].field_0, 
           stor7[arg1].field_256,
           stor7[arg1].field_512,
           Array(len=stor7[arg1].field_768, data=mem[128 len ceil32(stor7[arg1].field_769)]),
           stor7[arg1].field_1024,
           stor7[arg1].field_1280
}

function sub_9453c57d(?) payable {
    if stor14[msg.sender].field_0:
        if stor14[msg.sender].field_0 == uint255(stor14[msg.sender].field_0) * 0.5 < 32:
            revert with 0, 34
        if stor14[msg.sender].field_0:
            if stor14[msg.sender].field_0 == uint255(stor14[msg.sender].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor14[msg.sender].field_0):
                if stor14[msg.sender].field_768:
                    mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416] = stor14[msg.sender][3].field_0
                    idx = ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416
                    s = 0
                    while ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + (32 * stor14[msg.sender].field_768) + 384 > idx:
                        mem[idx + 32] = stor14[msg.sender][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor14[msg.sender].field_0) * 0.5) > uint255(stor14[msg.sender].field_0) * 0.5:
                    mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + (32 * stor14[msg.sender].field_768) + (uint255(stor14[msg.sender].field_0) * 0.5) + 608] = 0
                mem[(2 * ceil32(uint255(stor14[msg.sender].field_0) * 0.5)) + (32 * stor14[msg.sender].field_768) + 608] = stor14[msg.sender].field_768
                mem[(2 * ceil32(uint255(stor14[msg.sender].field_0) * 0.5)) + (32 * stor14[msg.sender].field_768) + 640 len 32 * stor14[msg.sender].field_768] = mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416 len 32 * stor14[msg.sender].field_768]
                return 32, 128, 
                       stor14[msg.sender].field_256,
                       stor14[msg.sender].field_512,
                       ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 160,
                       2 * Mask(256, -1, stor14[msg.sender].field_0),
                       mem[384 len ceil32(uint255(stor14[msg.sender].field_0) * 0.5)],
                       stor14[msg.sender].field_768,
                       mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416 len 32 * stor14[msg.sender].field_768]
            if 31 >= uint255(stor14[msg.sender].field_0) * 0.5:
                mem[384] = 256 * stor14[msg.sender].field_8
                if stor14[msg.sender].field_768:
                    mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416] = stor14[msg.sender][3].field_0
                    idx = ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416
                    s = 0
                    while ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + (32 * stor14[msg.sender].field_768) + 384 > idx:
                        mem[idx + 32] = stor14[msg.sender][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor14[msg.sender].field_0) * 0.5) > uint255(stor14[msg.sender].field_0) * 0.5:
                    mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + (32 * stor14[msg.sender].field_768) + (uint255(stor14[msg.sender].field_0) * 0.5) + 608] = 0
                mem[(2 * ceil32(uint255(stor14[msg.sender].field_0) * 0.5)) + (32 * stor14[msg.sender].field_768) + 608] = stor14[msg.sender].field_768
                mem[(2 * ceil32(uint255(stor14[msg.sender].field_0) * 0.5)) + (32 * stor14[msg.sender].field_768) + 640 len 32 * stor14[msg.sender].field_768] = mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416 len 32 * stor14[msg.sender].field_768]
                return 32, 128, 
                       stor14[msg.sender].field_256,
                       stor14[msg.sender].field_512,
                       ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 160,
                       2 * Mask(256, -1, stor14[msg.sender].field_0),
                       mem[384 len ceil32(uint255(stor14[msg.sender].field_0) * 0.5)],
                       stor14[msg.sender].field_768,
                       mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416 len 32 * stor14[msg.sender].field_768]
            mem[384] = stor14[msg.sender].field_0
            idx = 384
            s = 0
            while (uint255(stor14[msg.sender].field_0) * 0.5) + 352 > idx:
                mem[idx + 32] = stor14[msg.sender][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        else:
            if stor14[msg.sender].field_0 == stor14[msg.sender].field_1 < 32:
                revert with 0, 34
            if not stor14[msg.sender].field_1:
                if stor14[msg.sender].field_768:
                    mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416] = stor14[msg.sender][3].field_0
                    idx = ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416
                    s = 0
                    while ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + (32 * stor14[msg.sender].field_768) + 384 > idx:
                        mem[idx + 32] = stor14[msg.sender][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor14[msg.sender].field_0) * 0.5) > uint255(stor14[msg.sender].field_0) * 0.5:
                    mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + (32 * stor14[msg.sender].field_768) + (uint255(stor14[msg.sender].field_0) * 0.5) + 608] = 0
                mem[(2 * ceil32(uint255(stor14[msg.sender].field_0) * 0.5)) + (32 * stor14[msg.sender].field_768) + 608] = stor14[msg.sender].field_768
                mem[(2 * ceil32(uint255(stor14[msg.sender].field_0) * 0.5)) + (32 * stor14[msg.sender].field_768) + 640 len 32 * stor14[msg.sender].field_768] = mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416 len 32 * stor14[msg.sender].field_768]
                return 32, 128, 
                       stor14[msg.sender].field_256,
                       stor14[msg.sender].field_512,
                       ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 160,
                       2 * Mask(256, -1, stor14[msg.sender].field_0),
                       mem[384 len ceil32(uint255(stor14[msg.sender].field_0) * 0.5)],
                       stor14[msg.sender].field_768,
                       mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416 len 32 * stor14[msg.sender].field_768]
            if 31 >= stor14[msg.sender].field_1:
                mem[384] = 256 * stor14[msg.sender].field_8
                if stor14[msg.sender].field_768:
                    mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416] = stor14[msg.sender][3].field_0
                    idx = ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416
                    s = 0
                    while ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + (32 * stor14[msg.sender].field_768) + 384 > idx:
                        mem[idx + 32] = stor14[msg.sender][s + 3].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor14[msg.sender].field_0) * 0.5) > uint255(stor14[msg.sender].field_0) * 0.5:
                    mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + (32 * stor14[msg.sender].field_768) + (uint255(stor14[msg.sender].field_0) * 0.5) + 608] = 0
                mem[(2 * ceil32(uint255(stor14[msg.sender].field_0) * 0.5)) + (32 * stor14[msg.sender].field_768) + 608] = stor14[msg.sender].field_768
                mem[(2 * ceil32(uint255(stor14[msg.sender].field_0) * 0.5)) + (32 * stor14[msg.sender].field_768) + 640 len 32 * stor14[msg.sender].field_768] = mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416 len 32 * stor14[msg.sender].field_768]
                return 32, 128, 
                       stor14[msg.sender].field_256,
                       stor14[msg.sender].field_512,
                       ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 160,
                       2 * Mask(256, -1, stor14[msg.sender].field_0),
                       mem[384 len ceil32(uint255(stor14[msg.sender].field_0) * 0.5)],
                       stor14[msg.sender].field_768,
                       mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416 len 32 * stor14[msg.sender].field_768]
            mem[384] = stor14[msg.sender].field_0
            idx = 384
            s = 0
            while stor14[msg.sender].field_1 + 352 > idx:
                mem[idx + 32] = stor14[msg.sender][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if not stor14[msg.sender].field_768:
            if ceil32(uint255(stor14[msg.sender].field_0) * 0.5) > uint255(stor14[msg.sender].field_0) * 0.5:
                mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + (32 * stor14[msg.sender].field_768) + (uint255(stor14[msg.sender].field_0) * 0.5) + 608] = 0
            mem[(2 * ceil32(uint255(stor14[msg.sender].field_0) * 0.5)) + (32 * stor14[msg.sender].field_768) + 608] = stor14[msg.sender].field_768
            mem[(2 * ceil32(uint255(stor14[msg.sender].field_0) * 0.5)) + (32 * stor14[msg.sender].field_768) + 640 len 32 * stor14[msg.sender].field_768] = mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416 len 32 * stor14[msg.sender].field_768]
            return 32, 128, 
                   stor14[msg.sender].field_256,
                   stor14[msg.sender].field_512,
                   ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 160,
                   2 * Mask(256, -1, stor14[msg.sender].field_0),
                   mem[384 len ceil32(uint255(stor14[msg.sender].field_0) * 0.5)],
                   stor14[msg.sender].field_768,
                   mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416 len 32 * stor14[msg.sender].field_768]
        mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416] = stor14[msg.sender][3].field_0
        idx = ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416
        s = 0
        while ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + (32 * stor14[msg.sender].field_768) + 384 > idx:
            mem[idx + 32] = stor14[msg.sender][s + 3].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if ceil32(uint255(stor14[msg.sender].field_0) * 0.5) <= uint255(stor14[msg.sender].field_0) * 0.5:
            mem[(2 * ceil32(uint255(stor14[msg.sender].field_0) * 0.5)) + (32 * stor14[msg.sender].field_768) + 608] = stor14[msg.sender].field_768
            mem[(2 * ceil32(uint255(stor14[msg.sender].field_0) * 0.5)) + (32 * stor14[msg.sender].field_768) + 640 len 32 * stor14[msg.sender].field_768] = mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416 len 32 * stor14[msg.sender].field_768]
            return 32, 128, 
                   stor14[msg.sender].field_256,
                   stor14[msg.sender].field_512,
                   ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 160,
                   2 * Mask(256, -1, stor14[msg.sender].field_0),
                   mem[384 len ceil32(uint255(stor14[msg.sender].field_0) * 0.5)],
                   stor14[msg.sender].field_768,
                   mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416 len 32 * stor14[msg.sender].field_768]
        mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + (32 * stor14[msg.sender].field_768) + (uint255(stor14[msg.sender].field_0) * 0.5) + 608] = 0
        mem[(2 * ceil32(uint255(stor14[msg.sender].field_0) * 0.5)) + (32 * stor14[msg.sender].field_768) + 608] = stor14[msg.sender].field_768
        mem[(2 * ceil32(uint255(stor14[msg.sender].field_0) * 0.5)) + (32 * stor14[msg.sender].field_768) + 640 len 32 * stor14[msg.sender].field_768] = mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 416 len 32 * stor14[msg.sender].field_768]
        return 32, 128, 
               stor14[msg.sender].field_256,
               stor14[msg.sender].field_512,
               ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + 160,
               2 * Mask(256, -1, stor14[msg.sender].field_0),
               mem[384 len uint255(stor14[msg.sender].field_0) * 0.5],
               0,
               mem[ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + (32 * stor14[msg.sender].field_768) + (uint255(stor14[msg.sender].field_0) * 0.5) + 640 len ceil32(uint255(stor14[msg.sender].field_0) * 0.5) + (32 * stor14[msg.sender].field_768) - (uint255(stor14[msg.sender].field_0) * 0.5)]
    if stor14[msg.sender].field_0 == stor14[msg.sender].field_1 < 32:
        revert with 0, 34
    if stor14[msg.sender].field_0:
        if stor14[msg.sender].field_0 == uint255(stor14[msg.sender].field_0) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor14[msg.sender].field_0):
            if stor14[msg.sender].field_768:
                mem[ceil32(stor14[msg.sender].field_1) + 416] = stor14[msg.sender][3].field_0
                idx = ceil32(stor14[msg.sender].field_1) + 416
                s = 0
                while ceil32(stor14[msg.sender].field_1) + (32 * stor14[msg.sender].field_768) + 384 > idx:
                    mem[idx + 32] = stor14[msg.sender][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor14[msg.sender].field_1) > stor14[msg.sender].field_1:
                mem[ceil32(stor14[msg.sender].field_1) + (32 * stor14[msg.sender].field_768) + stor14[msg.sender].field_1 + 608] = 0
        else:
            if 31 >= uint255(stor14[msg.sender].field_0) * 0.5:
                mem[384] = 256 * stor14[msg.sender].field_8
            else:
                mem[384] = stor14[msg.sender].field_0
                idx = 384
                s = 0
                while (uint255(stor14[msg.sender].field_0) * 0.5) + 352 > idx:
                    mem[idx + 32] = stor14[msg.sender][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if stor14[msg.sender].field_768:
                mem[ceil32(stor14[msg.sender].field_1) + 416] = stor14[msg.sender][3].field_0
                idx = ceil32(stor14[msg.sender].field_1) + 416
                s = 0
                while ceil32(stor14[msg.sender].field_1) + (32 * stor14[msg.sender].field_768) + 384 > idx:
                    mem[idx + 32] = stor14[msg.sender][s + 3].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor14[msg.sender].field_1) > stor14[msg.sender].field_1:
                mem[ceil32(stor14[msg.sender].field_1) + (32 * stor14[msg.sender].field_768) + stor14[msg.sender].field_1 + 608] = 0
        mem[(2 * ceil32(stor14[msg.sender].field_1)) + (32 * stor14[msg.sender].field_768) + 608] = stor14[msg.sender].field_768
        mem[(2 * ceil32(stor14[msg.sender].field_1)) + (32 * stor14[msg.sender].field_768) + 640 len 32 * stor14[msg.sender].field_768] = mem[ceil32(stor14[msg.sender].field_1) + 416 len 32 * stor14[msg.sender].field_768]
        return 32, 128, 
               stor14[msg.sender].field_256,
               stor14[msg.sender].field_512,
               ceil32(stor14[msg.sender].field_1) + 160,
               stor14[msg.sender].field_0,
               mem[384 len ceil32(stor14[msg.sender].field_1)],
               stor14[msg.sender].field_768,
               mem[ceil32(stor14[msg.sender].field_1) + 416 len 32 * stor14[msg.sender].field_768]
    if stor14[msg.sender].field_0 == stor14[msg.sender].field_1 < 32:
        revert with 0, 34
    if not stor14[msg.sender].field_1:
        if stor14[msg.sender].field_768:
            mem[ceil32(stor14[msg.sender].field_1) + 416] = stor14[msg.sender][3].field_0
            idx = ceil32(stor14[msg.sender].field_1) + 416
            s = 0
            while ceil32(stor14[msg.sender].field_1) + (32 * stor14[msg.sender].field_768) + 384 > idx:
                mem[idx + 32] = stor14[msg.sender][s + 3].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if ceil32(stor14[msg.sender].field_1) > stor14[msg.sender].field_1:
            mem[ceil32(stor14[msg.sender].field_1) + (32 * stor14[msg.sender].field_768) + stor14[msg.sender].field_1 + 608] = 0
        mem[(2 * ceil32(stor14[msg.sender].field_1)) + (32 * stor14[msg.sender].field_768) + 608] = stor14[msg.sender].field_768
        mem[(2 * ceil32(stor14[msg.sender].field_1)) + (32 * stor14[msg.sender].field_768) + 640 len 32 * stor14[msg.sender].field_768] = mem[ceil32(stor14[msg.sender].field_1) + 416 len 32 * stor14[msg.sender].field_768]
        return 32, 128, 
               stor14[msg.sender].field_256,
               stor14[msg.sender].field_512,
               ceil32(stor14[msg.sender].field_1) + 160,
               stor14[msg.sender].field_0,
               mem[384 len ceil32(stor14[msg.sender].field_1)],
               stor14[msg.sender].field_768,
               mem[ceil32(stor14[msg.sender].field_1) + 416 len 32 * stor14[msg.sender].field_768]
    if 31 >= stor14[msg.sender].field_1:
        mem[384] = 256 * stor14[msg.sender].field_8
        if stor14[msg.sender].field_768:
            mem[ceil32(stor14[msg.sender].field_1) + 416] = stor14[msg.sender][3].field_0
            idx = ceil32(stor14[msg.sender].field_1) + 416
            s = 0
            while ceil32(stor14[msg.sender].field_1) + (32 * stor14[msg.sender].field_768) + 384 > idx:
                mem[idx + 32] = stor14[msg.sender][s + 3].field_256
                idx = idx + 32
                s = s + 1
                continue 
        if ceil32(stor14[msg.sender].field_1) > stor14[msg.sender].field_1:
            mem[ceil32(stor14[msg.sender].field_1) + (32 * stor14[msg.sender].field_768) + stor14[msg.sender].field_1 + 608] = 0
        mem[(2 * ceil32(stor14[msg.sender].field_1)) + (32 * stor14[msg.sender].field_768) + 608] = stor14[msg.sender].field_768
        mem[(2 * ceil32(stor14[msg.sender].field_1)) + (32 * stor14[msg.sender].field_768) + 640 len 32 * stor14[msg.sender].field_768] = mem[ceil32(stor14[msg.sender].field_1) + 416 len 32 * stor14[msg.sender].field_768]
        return 32, 128, 
               stor14[msg.sender].field_256,
               stor14[msg.sender].field_512,
               ceil32(stor14[msg.sender].field_1) + 160,
               stor14[msg.sender].field_0,
               mem[384 len ceil32(stor14[msg.sender].field_1)],
               stor14[msg.sender].field_768,
               mem[ceil32(stor14[msg.sender].field_1) + 416 len 32 * stor14[msg.sender].field_768]
    mem[384] = stor14[msg.sender].field_0
    idx = 384
    s = 0
    while stor14[msg.sender].field_1 + 352 > idx:
        mem[idx + 32] = stor14[msg.sender][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not stor14[msg.sender].field_768:
        if ceil32(stor14[msg.sender].field_1) > stor14[msg.sender].field_1:
            mem[ceil32(stor14[msg.sender].field_1) + (32 * stor14[msg.sender].field_768) + stor14[msg.sender].field_1 + 608] = 0
        mem[(2 * ceil32(stor14[msg.sender].field_1)) + (32 * stor14[msg.sender].field_768) + 608] = stor14[msg.sender].field_768
        mem[(2 * ceil32(stor14[msg.sender].field_1)) + (32 * stor14[msg.sender].field_768) + 640 len 32 * stor14[msg.sender].field_768] = mem[ceil32(stor14[msg.sender].field_1) + 416 len 32 * stor14[msg.sender].field_768]
        return 32, 128, 
               stor14[msg.sender].field_256,
               stor14[msg.sender].field_512,
               ceil32(stor14[msg.sender].field_1) + 160,
               stor14[msg.sender].field_0,
               mem[384 len ceil32(stor14[msg.sender].field_1)],
               stor14[msg.sender].field_768,
               mem[ceil32(stor14[msg.sender].field_1) + 416 len 32 * stor14[msg.sender].field_768]
    mem[ceil32(stor14[msg.sender].field_1) + 416] = stor14[msg.sender][3].field_0
    idx = ceil32(stor14[msg.sender].field_1) + 416
    s = 0
    while ceil32(stor14[msg.sender].field_1) + (32 * stor14[msg.sender].field_768) + 384 > idx:
        mem[idx + 32] = stor14[msg.sender][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor14[msg.sender].field_1) <= stor14[msg.sender].field_1:
        mem[(2 * ceil32(stor14[msg.sender].field_1)) + (32 * stor14[msg.sender].field_768) + 608] = stor14[msg.sender].field_768
        mem[(2 * ceil32(stor14[msg.sender].field_1)) + (32 * stor14[msg.sender].field_768) + 640 len 32 * stor14[msg.sender].field_768] = mem[ceil32(stor14[msg.sender].field_1) + 416 len 32 * stor14[msg.sender].field_768]
        return 32, 128, 
               stor14[msg.sender].field_256,
               stor14[msg.sender].field_512,
               ceil32(stor14[msg.sender].field_1) + 160,
               stor14[msg.sender].field_0,
               mem[384 len ceil32(stor14[msg.sender].field_1)],
               stor14[msg.sender].field_768,
               mem[ceil32(stor14[msg.sender].field_1) + 416 len 32 * stor14[msg.sender].field_768]
    mem[ceil32(stor14[msg.sender].field_1) + (32 * stor14[msg.sender].field_768) + stor14[msg.sender].field_1 + 608] = 0
    mem[(2 * ceil32(stor14[msg.sender].field_1)) + (32 * stor14[msg.sender].field_768) + 608] = stor14[msg.sender].field_768
    mem[(2 * ceil32(stor14[msg.sender].field_1)) + (32 * stor14[msg.sender].field_768) + 640 len 32 * stor14[msg.sender].field_768] = mem[ceil32(stor14[msg.sender].field_1) + 416 len 32 * stor14[msg.sender].field_768]
    return 32, 128, 
           stor14[msg.sender].field_256,
           stor14[msg.sender].field_512,
           ceil32(stor14[msg.sender].field_1) + 160,
           stor14[msg.sender].field_0,
           mem[384 len stor14[msg.sender].field_1],
           0,
           mem[ceil32(stor14[msg.sender].field_1) + (32 * stor14[msg.sender].field_768) + stor14[msg.sender].field_1 + 640 len ceil32(stor14[msg.sender].field_1) + (32 * stor14[msg.sender].field_768) - stor14[msg.sender].field_1]
}



}
