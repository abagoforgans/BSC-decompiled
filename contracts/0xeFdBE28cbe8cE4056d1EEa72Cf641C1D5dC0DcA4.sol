contract main {




// =====================  Runtime code  =====================


const getContractBalance = eth.balance(this.address)


uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of struct stor4;
mapping of uint256 participantCount;
mapping of uint256 stor6;
array of struct sub_42e31756;
mapping of uint256 stor8;
mapping of address sub_82030563;
mapping of uint256 rewards;
mapping of uint256 stor11;
mapping of uint256 stor12;
mapping of uint256 stor13;
mapping of uint256 stor14;
mapping of uint256 stor15;
mapping of uint8 stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;
mapping of uint8 stor19;
address stor20;
uint256 stor21;
uint256 stor22;
uint256 sub_0a8e95ac;
uint8 stor24;
address stor24; offset 8
address stor25;
address stor26;

function sub_0a8e95ac(?) {
    return sub_0a8e95ac
}

function sub_42e31756(?) {
    require calldata.size - 4 >= 32
    return address(sub_42e31756[arg1].field_0)
}

function getRewards(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return Array(len=6, data=rewards[address(arg1)], stor11[address(arg1)], stor12[address(arg1)], stor13[address(arg1)], stor14[address(arg1)], stor15[address(arg1)]), 
}

function sub_82030563(?) {
    require calldata.size - 4 >= 32
    return sub_82030563[arg1]
}

function getParticipantCount(uint256 arg1) {
    require calldata.size - 4 >= 32
    return participantCount[arg1]
}

function sub_e99e87a4(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_ea8bacae(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not stor6[arg1][address(arg2)]:
        return 0
    return 1
}

function sub_44b1f498(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor20 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    stor26 = address(arg1)
}

function setNFTContract(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor20 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    address(stor24.field_8) = arg1
    stor25 = arg1
}

function sub_450bf87e(?) {
    require calldata.size - 4 >= 32
    if stor20 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    if arg1 <= 0:
        revert with 0, 'Reward count should at least 1.'
    stor22 = arg1
}

function sub_c41a1816(?) {
    require calldata.size - 4 >= 32
    if stor20 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    if arg1 <= 0:
        revert with 0, 'Reward count should at least 1.'
    stor21 = arg1
}

function sub_830cf6b1(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor20 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    stor19[address(arg1)] = uint8(bool(arg2))
}

function sub_05ed92d7(?) {
    require calldata.size - 4 >= 32
    if stor20 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only owner can access this function.'
    if arg1 > 0x480ebe7b9d58566c87ce9b80a5fb05082bd371c8651c7b299b30:
        revert with 0, 17
    sub_0a8e95ac = 10^15 * arg1
}

function sub_2bac3aa8(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if stor20 != msg.sender:
        if bool(stor19[msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not allowed to perform this action.'
    stor18[address(arg1)] = uint8(bool(arg2))
}

function sub_90eabd6a(?) {
    idx = 608
    s = 3
    while 736 > idx + 32:
        mem[idx + 32] = stor4[stor2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor4[stor2].field_0, 
           stor4[stor2].field_256,
           stor4[stor2].field_512,
           mem[640 len 96] >> 768,
           bool(uint8(stor4[stor2].field_1792)),
           bool(uint8(stor4[stor2].field_1800))
}

function getTournament(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = 608
    s = 3
    while 736 > idx + 32:
        mem[idx + 32] = stor4[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor4[arg1].field_0, 
           stor4[arg1].field_256,
           stor4[arg1].field_512,
           mem[640 len 96] >> 768,
           bool(uint8(stor4[arg1].field_1792)),
           bool(uint8(stor4[arg1].field_1800))
}

function sub_b88d2cc6(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor26 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only DogeChampionsConsumable contract can access this function.'
    if arg1 > stor15[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough Consumable rewards to decrease.'
    if stor15[address(arg2)] < arg1:
        revert with 0, 17
    stor15[address(arg2)] -= arg1
}

function sub_57568447(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if stor25 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only DogeChampionsNFT contract can access this function.'
    if not arg1:
        if not rewards[address(arg2)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There are already no uncommon rewards to decrease.'
        if rewards[address(arg2)] < 1:
            revert with 0, 17
        rewards[address(arg2)]--
    else:
        if 1 == arg1:
            if not stor11[address(arg2)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There are already no common rewards to decrease.'
            if stor11[address(arg2)] < 1:
                revert with 0, 17
            stor11[address(arg2)]--
        else:
            if 2 == arg1:
                if not stor12[address(arg2)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There are already no rare rewards to decrease.'
                if stor12[address(arg2)] < 1:
                    revert with 0, 17
                stor12[address(arg2)]--
            else:
                if 3 == arg1:
                    if not stor13[address(arg2)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There are already no epic rewards to decrease.'
                    if stor13[address(arg2)] < 1:
                        revert with 0, 17
                    stor13[address(arg2)]--
                else:
                    if 4 == arg1:
                        if not stor14[address(arg2)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        'There are already no legendary rewards to decrease.'
                        if stor14[address(arg2)] < 1:
                            revert with 0, 17
                        stor14[address(arg2)]--
}

function sub_42630083(?) {
    require calldata.size - 4 >= 256
    require 99 < calldata.size
    require 196 <= calldata.size
    idx = 0
    s = 68
    t = 96
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] == bool(cd[196])
    require cd[228] == bool(cd[228])
    if stor20 != msg.sender:
        if bool(stor19[msg.sender]) != 1:
            revert with 0, 'You are not allowed to perform this action.'
    if cd[196]:
        if cd[228]:
            revert with 0, 'Tournament can't be paid and consumable only at the same time.'
        if cd[196]:
            if uint8(stor24.field_0):
                revert with 0, 'Can't start another paid tournament while there is already live one.'
            uint8(stor24.field_0) = 1
    if cd[4] < block.timestamp - 0x8000000000000000000000000000000000000000000000000000000000000000 and block.timestamp >= 0:
        revert with 0, 17
    if block.timestamp < 0 and cd[4] > block.timestamp + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if cd[4] - block.timestamp < 3600:
        revert with 0, 'A new tournament can be set for after 1 hour minimum.'
    if cd[4] - block.timestamp >= 336 * 24 * 3600:
        revert with 0, 'A new tournament ca be set to 2 weeks later maximum.'
    if cd[4] < stor4[stor1.length].field_256 - 0x8000000000000000000000000000000000000000000000000000000000000000 and stor4[stor1.length].field_256 >= 0:
        revert with 0, 17
    if stor4[stor1.length].field_256 < 0 and cd[4] > stor4[stor1.length].field_256 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if cd[4] - stor4[stor1.length].field_256 < 3600:
        revert with 0, 'A new tournament can only be set after 1 hour passed from last set tournament.'
    stor1.length++
    mem[224] = stor1.length
    stor4[stor1.length].field_0 = stor1.length
    stor4[stor1.length].field_256 = cd[4]
    stor4[stor1.length].field_512 = cd[36]
    s = 3
    idx = 96
    while 224 > idx:
        stor4[stor1.length][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 7
    while 7 > idx:
        stor4[stor1.length][idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor4[stor1.length].field_1792) = uint8(bool(cd[196]))
    Mask(248, 0, stor4[stor1.length].field_1800) = Mask(248, 0, bool(cd[228]))
    Mask(240, 0, stor4[stor1.length].field_1808) = Mask(240, 16, bool(cd[196])) >> 16
    stor16[stor1.length] = uint8(bool(cd[196]))
    stor17[stor1.length] = uint8(bool(cd[228]))
    address(sub_42e31756[stor1.length].field_0) = 0
    stor8[stor1.length] = 0
    emit TournamentCreated(stor1.length);
}

function sub_722dceb1(?) {
    if stor20 != msg.sender:
        if bool(stor19[msg.sender]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not allowed to perform this action.'
    if stor4[stor2].field_256 < block.timestamp - 0x8000000000000000000000000000000000000000000000000000000000000000 and block.timestamp >= 0:
        revert with 0, 17
    if block.timestamp < 0 and stor4[stor2].field_256 > block.timestamp + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if stor4[stor2].field_256 - block.timestamp > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Current tournament should expire first.'
    sub_82030563[stor2] = address(sub_42e31756[stor2].field_0)
    stor8[stor2] = 0
    if stor16[stor2]:
        uint8(stor24.field_0) = 0
        if eth.balance(this.address) / 10 > 0x1c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71c71:
            revert with 0, 17
        call sub_82030563[stor2] with:
           value 9 * eth.balance(this.address) / 10 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call stor20 with:
           value eth.balance(this.address) / 10 wei
             gas 2300 * is_zero(value) wei
    if not stor16[stor2]:
        if stor17[stor2]:
            if stor21 > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                revert with 0, 17
            if stor15[stor9[stor2]] > !(6 * stor21):
                revert with 0, 17
            stor15[stor9[stor2]] += 6 * stor21
        else:
            if stor3 >= 9200:
                if stor21 > 0x2aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa:
                    revert with 0, 17
                if stor15[stor9[stor2]] > !(6 * stor21):
                    revert with 0, 17
                stor15[stor9[stor2]] += 6 * stor21
            else:
                if not stor4[stor2].field_512:
                    if 1 > !rewards[stor9[stor2]]:
                        revert with 0, 17
                    rewards[stor9[stor2]]++
                else:
                    if 1 == stor4[stor2].field_512:
                        if 1 > !stor11[stor9[stor2]]:
                            revert with 0, 17
                        stor11[stor9[stor2]]++
                    else:
                        if 2 == stor4[stor2].field_512:
                            if 1 > !stor12[stor9[stor2]]:
                                revert with 0, 17
                            stor12[stor9[stor2]]++
                        else:
                            if 3 == stor4[stor2].field_512:
                                if 1 > !stor13[stor9[stor2]]:
                                    revert with 0, 17
                                stor13[stor9[stor2]]++
                            else:
                                if 4 == stor4[stor2].field_512:
                                    if 1 > !stor14[stor9[stor2]]:
                                        revert with 0, 17
                                    stor14[stor9[stor2]]++
                if stor15[stor9[stor2]] > !stor21:
                    revert with 0, 17
                stor15[stor9[stor2]] += stor21
                stor3++
    stor2++
    emit 0x978e0ab1: stor2, sub_82030563[stor2], block.timestamp, stor4[stor2].field_512
}

function sub_692734fe(?) {
    if stor2 < 1:
        revert with 0, 17
    if stor1.length < stor2 - 1:
        revert with 0, 17
    if stor1.length + -stor2 + 1 > test266151307():
        revert with 0, 65
    mem[96] = stor1.length + -stor2 + 1
    mem[64] = (32 * stor1.length + -stor2 + 1) + 128
    if not stor1.length + -stor2 + 1:
        if 1 > !stor1.length:
            revert with 0, 17
        if var35002 >= stor1.length + 1:
            mem[(32 * stor1.length + -stor2 + 1) + 128] = 32
            mem[(32 * stor1.length + -stor2 + 1) + 160] = stor1.length + -stor2 + 1
            idx = 0
            s = 128
            t = (32 * stor1.length + -stor2 + 1) + 192
            while idx < stor1.length + -stor2 + 1:
                _182 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_182 + 32]
                mem[t + 64] = mem[_182 + 64]
                u = 0
                v = mem[_182 + 96]
                w = t + 96
                while u < 4:
                    mem[w] = mem[v]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                mem[t + 224] = bool(mem[_182 + 128])
                mem[t + 256] = bool(mem[_182 + 160])
                idx = idx + 1
                s = s + 32
                t = t + 288
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[0] = var37001
        mem[32] = 4
        mem[(32 * stor1.length + -stor2 + 1) + 128] = stor4[var37001].field_0
        mem[(32 * stor1.length + -stor2 + 1) + 160] = stor4[var37001].field_256
        mem[(32 * stor1.length + -stor2 + 1) + 192] = stor4[var37001].field_512
        mem[64] = (32 * stor1.length + -stor2 + 1) + 448
        mem[var39001] = stor[var39002]
        if var39003 > var39001 + 32:
            var39001 = var39001 + 32
            var39002 = var39002 + 1
            var39003 = var39003
            var39005 = var39005
            var39006 = var39006
            var39007 = var39007
            var39008 = var39008
            var39009 = var39009
            var39010 = var39010
            var39011 = var39011
            continue 
        mem[var39007] = var39006
        mem[var39007 + 32] = bool(uint8(sub_42e31756[var39008].field_0))
        mem[var39007 + 64] = bool(uint8(sub_42e31756[var39008].field_8))
        if var39011 >= stor1.length + -stor2 + 1:
            revert with 0, 50
        mem[(32 * var39011) + 128] = var39009
        if var39011 > -2:
            revert with 0, 17
        if var39010 == -1:
            revert with 0, 17
        if 1 > !stor1.length:
            revert with 0, 17
        if var39010 >= stor1.length:
            mem[(32 * stor1.length + -stor2 + 1) + 448] = 32
            mem[(32 * stor1.length + -stor2 + 1) + 480] = stor1.length + -stor2 + 1
            idx = 0
            s = 128
            t = (32 * stor1.length + -stor2 + 1) + 512
            while idx < stor1.length + -stor2 + 1:
                _246 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_246 + 32]
                mem[t + 64] = mem[_246 + 64]
                u = 0
                v = mem[_246 + 96]
                w = t + 96
                while u < 4:
                    mem[w] = mem[v]
                    u = u + 1
                    v = v + 32
                    w = w + 32
                    continue 
                mem[t + 224] = bool(mem[_246 + 128])
                mem[t + 256] = bool(mem[_246 + 160])
                idx = idx + 1
                s = s + 32
                t = t + 288
                continue 
            return memory
              from mem[64]
               len t - mem[64]
        mem[0] = var39010 + 1
        mem[32] = 4
        mem[(32 * stor1.length + -stor2 + 1) + 448] = stor4[var39010 + 1].field_0
        mem[(32 * stor1.length + -stor2 + 1) + 480] = stor4[var39010 + 1].field_256
        mem[(32 * stor1.length + -stor2 + 1) + 512] = stor4[var39010 + 1].field_512
        mem[64] = (32 * stor1.length + -stor2 + 1) + 768
        var39001 = (32 * stor1.length + -stor2 + 1) + 640
        var39002 = sha3(var39010 + 1, 4) + 3
        var39003 = (32 * stor1.length + -stor2 + 1) + 768
        var39005 = sha3(var39010 + 1, 4) + 3
        var39006 = (32 * stor1.length + -stor2 + 1) + 640
        var39007 = (32 * stor1.length + -stor2 + 1) + 544
        var39008 = sha3(var39010 + 1, 4)
        var39009 = (32 * stor1.length + -stor2 + 1) + 448
        var39010 = var39010 + 1
        var39011 = var39011 + 1
        continue 
    mem[(32 * stor1.length + -stor2 + 1) + 128] = 0
    mem[(32 * stor1.length + -stor2 + 1) + 160] = 0
    mem[(32 * stor1.length + -stor2 + 1) + 192] = 0
    mem[64] = (32 * stor1.length + -stor2 + 1) + 448
    mem[(32 * stor1.length + -stor2 + 1) + 320 len 128] = call.data[calldata.size len 128]
    mem[(32 * stor1.length + -stor2 + 1) + 224] = (32 * stor1.length + -stor2 + 1) + 320
    mem[(32 * stor1.length + -stor2 + 1) + 256] = 0
    mem[(32 * stor1.length + -stor2 + 1) + 288] = 0
    mem[var21002] = (32 * stor1.length + -stor2 + 1) + 128
    s = (32 * stor1.length + -stor2 + 1) + 224
    s = (32 * stor1.length + -stor2 + 1) + 128
    s = var21002
    idx = var21003
    while idx - 1:
        _93 = mem[64]
        mem[64] = mem[64] + 192
        mem[_93] = 0
        mem[_93 + 32] = 0
        mem[_93 + 64] = 0
        mem[64] = mem[64] + 128
        mem[(32 * stor1.length + -stor2 + 1) + 320 len 128] = call.data[calldata.size len 128]
        mem[_93 + 96] = (32 * stor1.length + -stor2 + 1) + 320
        mem[_93 + 128] = 0
        mem[_93 + 160] = 0
        mem[s + 32] = _93
        s = _93 + 96
        s = _93
        s = s + 32
        idx = idx - 1
        continue 
    if 1 > !stor1.length:
        revert with 0, 17
    if var45002 >= stor1.length + 1:
        mem[mem[64]] = 32
        _226 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _226:
            _270 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_270 + 32]
            mem[t + 64] = mem[_270 + 64]
            u = 0
            v = mem[_270 + 96]
            w = t + 96
            while u < 4:
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            mem[t + 224] = bool(mem[_270 + 128])
            mem[t + 256] = bool(mem[_270 + 160])
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[0] = var47001
    mem[32] = 4
    _244 = mem[64]
    mem[64] = mem[64] + 192
    mem[_244] = stor4[var47001].field_0
    mem[_244 + 32] = stor4[var47001].field_256
    mem[_244 + 64] = stor4[var47001].field_512
    mem[64] = mem[64] + 128
    mem[var49001] = stor[var49002]
    if var49003 > var49001 + 32:
        var49001 = var49001 + 32
        var49002 = var49002 + 1
        var49003 = var49003
        var49005 = var49005
        var49006 = var49006
        var49007 = var49007
        var49008 = var49008
        var49009 = var49009
        var49010 = var49010
        var49011 = var49011
        continue 
    mem[var49007] = var49006
    mem[var49007 + 32] = bool(uint8(sub_42e31756[var49008].field_0))
    mem[var49007 + 64] = bool(uint8(sub_42e31756[var49008].field_8))
    if var49011 >= mem[96]:
        revert with 0, 50
    mem[(32 * var49011) + 128] = var49009
    if var49011 > -2:
        revert with 0, 17
    if var49010 == -1:
        revert with 0, 17
    if 1 > !stor1.length:
        revert with 0, 17
    if var49010 >= stor1.length:
        mem[mem[64]] = 32
        _284 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _284:
            _298 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_298 + 32]
            mem[t + 64] = mem[_298 + 64]
            u = 0
            v = mem[_298 + 96]
            w = t + 96
            while u < 4:
                mem[w] = mem[v]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            mem[t + 224] = bool(mem[_298 + 128])
            mem[t + 256] = bool(mem[_298 + 160])
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[0] = var49010 + 1
    mem[32] = 4
    _281 = mem[64]
    mem[64] = mem[64] + 192
    mem[_281] = stor4[var49010 + 1].field_0
    mem[_281 + 32] = stor4[var49010 + 1].field_256
    mem[_281 + 64] = stor4[var49010 + 1].field_512
    _282 = mem[64]
    mem[64] = mem[64] + 128
    var49001 = _282
    var49002 = sha3(var49010 + 1, 4) + 3
    var49003 = _282 + 128
    var49005 = sha3(var49010 + 1, 4) + 3
    var49006 = _282
    var49007 = _281 + 96
    var49008 = sha3(var49010 + 1, 4)
    var49009 = _281
    var49010 = var49010 + 1
    var49011 = var49011 + 1
    continue 
}

function sub_6f84d8b5(?) {
    if stor2 >= 11:
        if stor2 < 10:
            revert with 0, 17
        mem[96] = 10
        mem[448] = 0
        mem[480] = 0
        mem[512] = 0
        mem[64] = 768
        mem[640 len 128] = call.data[calldata.size len 128]
        mem[544] = 640
        mem[576] = 0
        mem[608] = 0
        mem[var20002] = 448
        s = 544
        s = 448
        s = var20002
        idx = var20003
        while idx - 1:
            _235 = mem[64]
            mem[64] = mem[64] + 192
            mem[_235] = 0
            mem[_235 + 32] = 0
            mem[_235 + 64] = 0
            mem[64] = mem[64] + 128
            mem[640 len 128] = call.data[calldata.size len 128]
            mem[_235 + 96] = 640
            mem[_235 + 128] = 0
            mem[_235 + 160] = 0
            mem[s + 32] = _235
            s = _235 + 96
            s = _235
            s = s + 32
            idx = idx - 1
            continue 
        _239 = mem[64]
        mem[mem[64]] = 10
        mem[64] = mem[64] + 352
        mem[_239 + 32 len 320] = call.data[calldata.size len 320]
        idx = 0
        s = stor2 - 10
        while idx < 10:
            mem[0] = s
            mem[32] = 4
            _286 = mem[64]
            mem[64] = mem[64] + 192
            mem[_286] = stor4[s].field_0
            mem[_286 + 32] = stor4[s].field_256
            mem[_286 + 64] = stor4[s].field_512
            _287 = mem[64]
            mem[64] = mem[64] + 128
            mem[_287] = stor4[s].field_768
            t = _287
            u = sha3(s, 4) + 3
            while _287 + 128 > t + 32:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_286 + 96] = _287
            mem[_286 + 128] = bool(uint8(stor4[s].field_1792))
            mem[_286 + 160] = bool(uint8(stor4[s].field_1800))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _286
            mem[0] = s
            mem[32] = 9
            if idx >= mem[_239]:
                revert with 0, 50
            mem[(32 * idx) + _239 + 32] = sub_82030563[s]
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _298 = mem[64]
        mem[mem[64]] = 64
        _310 = mem[96]
        mem[mem[64] + 64] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 96
        while s < _310:
            _370 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_370 + 32]
            mem[u + 64] = mem[_370 + 64]
            idx = 0
            v = mem[_370 + 96]
            w = u + 96
            while idx < 4:
                mem[w] = mem[v]
                idx = idx + 1
                v = v + 32
                w = w + 32
                continue 
            mem[u + 224] = bool(mem[_370 + 128])
            mem[u + 256] = bool(mem[_370 + 160])
            s = s + 1
            t = t + 32
            u = u + 288
            continue 
        mem[_298 + 32] = u - _298
        _373 = mem[_239]
        mem[u] = mem[_239]
        s = 0
        t = u + 32
        v = _239 + 32
        while s < _373:
            mem[t] = mem[v + 12 len 20]
            s = s + 1
            t = t + 32
            v = v + 32
            continue 
        return memory
          from mem[64]
           len u + (32 * _373) + -mem[64] + 32
    if stor2 < 1:
        revert with 0, 17
    if stor2 - 1 > test266151307():
        revert with 0, 65
    mem[96] = stor2 - 1
    if not stor2 - 1:
        if stor2 - 1 > test266151307():
            revert with 0, 65
        mem[(32 * stor2 - 1) + 128] = stor2 - 1
        mem[64] = (64 * stor2 - 1) + 160
        if not stor2 - 1:
            idx = 0
            s = 1
            while idx < stor2 - 1:
                mem[0] = s
                mem[32] = 4
                _79 = mem[64]
                mem[64] = mem[64] + 192
                mem[_79] = stor4[s].field_0
                mem[_79 + 32] = stor4[s].field_256
                mem[_79 + 64] = stor4[s].field_512
                _80 = mem[64]
                mem[64] = mem[64] + 128
                mem[_80] = stor4[s].field_768
                t = _80
                u = sha3(s, 4) + 3
                while _80 + 128 > t + 32:
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                mem[_79 + 96] = _80
                mem[_79 + 128] = bool(uint8(stor4[s].field_1792))
                mem[_79 + 160] = bool(uint8(stor4[s].field_1800))
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _79
                mem[0] = s
                mem[32] = 9
                if idx >= mem[(32 * stor2 - 1) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor2 - 1) + 160] = sub_82030563[s]
                if s > -2:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + 1
                continue 
            _86 = mem[64]
            mem[mem[64]] = 64
            _91 = mem[96]
            mem[mem[64] + 64] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 96
            while s < _91:
                _223 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_223 + 32]
                mem[u + 64] = mem[_223 + 64]
                idx = 0
                v = mem[_223 + 96]
                w = u + 96
                while idx < 4:
                    mem[w] = mem[v]
                    idx = idx + 1
                    v = v + 32
                    w = w + 32
                    continue 
                mem[u + 224] = bool(mem[_223 + 128])
                mem[u + 256] = bool(mem[_223 + 160])
                s = s + 1
                t = t + 32
                u = u + 288
                continue 
            mem[_86 + 32] = u - _86
            _225 = mem[(32 * stor2 - 1) + 128]
            mem[u] = mem[(32 * stor2 - 1) + 128]
            s = 0
            t = u + 32
            v = (32 * stor2 - 1) + 160
            while s < _225:
                mem[t] = mem[v + 12 len 20]
                s = s + 1
                t = t + 32
                v = v + 32
                continue 
            return memory
              from mem[64]
               len u + (32 * _225) + -mem[64] + 32
        mem[(32 * stor2 - 1) + 160 len 32 * stor2 - 1] = call.data[calldata.size len 32 * stor2 - 1]
        idx = 0
        s = 1
        while idx < stor2 - 1:
            mem[0] = s
            mem[32] = 4
            _82 = mem[64]
            mem[64] = mem[64] + 192
            mem[_82] = stor4[s].field_0
            mem[_82 + 32] = stor4[s].field_256
            mem[_82 + 64] = stor4[s].field_512
            _83 = mem[64]
            mem[64] = mem[64] + 128
            mem[_83] = stor4[s].field_768
            t = _83
            u = sha3(s, 4) + 3
            while _83 + 128 > t + 32:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_82 + 96] = _83
            mem[_82 + 128] = bool(uint8(stor4[s].field_1792))
            mem[_82 + 160] = bool(uint8(stor4[s].field_1800))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _82
            mem[0] = s
            mem[32] = 9
            if idx >= mem[(32 * stor2 - 1) + 128]:
                revert with 0, 50
            mem[(32 * idx) + (32 * stor2 - 1) + 160] = sub_82030563[s]
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _87 = mem[64]
        mem[mem[64]] = 64
        _94 = mem[96]
        mem[mem[64] + 64] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 96
        while s < _94:
            _224 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_224 + 32]
            mem[u + 64] = mem[_224 + 64]
            idx = 0
            v = mem[_224 + 96]
            w = u + 96
            while idx < 4:
                mem[w] = mem[v]
                idx = idx + 1
                v = v + 32
                w = w + 32
                continue 
            mem[u + 224] = bool(mem[_224 + 128])
            mem[u + 256] = bool(mem[_224 + 160])
            s = s + 1
            t = t + 32
            u = u + 288
            continue 
        mem[_87 + 32] = u - _87
        _230 = mem[(32 * stor2 - 1) + 128]
        mem[u] = mem[(32 * stor2 - 1) + 128]
        s = 0
        t = u + 32
        v = (32 * stor2 - 1) + 160
        while s < _230:
            mem[t] = mem[v + 12 len 20]
            s = s + 1
            t = t + 32
            v = v + 32
            continue 
        return memory
          from mem[64]
           len u + (32 * _230) + -mem[64] + 32
    mem[(32 * stor2 - 1) + 128] = 0
    mem[(32 * stor2 - 1) + 160] = 0
    mem[(32 * stor2 - 1) + 192] = 0
    mem[64] = (32 * stor2 - 1) + 448
    mem[(32 * stor2 - 1) + 320 len 128] = call.data[calldata.size len 128]
    mem[(32 * stor2 - 1) + 224] = (32 * stor2 - 1) + 320
    mem[(32 * stor2 - 1) + 256] = 0
    mem[(32 * stor2 - 1) + 288] = 0
    mem[var20002] = (32 * stor2 - 1) + 128
    s = (32 * stor2 - 1) + 224
    s = (32 * stor2 - 1) + 128
    s = var20002
    idx = var20003
    while idx - 1:
        _238 = mem[64]
        mem[64] = mem[64] + 192
        mem[_238] = 0
        mem[_238 + 32] = 0
        mem[_238 + 64] = 0
        mem[64] = mem[64] + 128
        mem[(32 * stor2 - 1) + 320 len 128] = call.data[calldata.size len 128]
        mem[_238 + 96] = (32 * stor2 - 1) + 320
        mem[_238 + 128] = 0
        mem[_238 + 160] = 0
        mem[s + 32] = _238
        s = _238 + 96
        s = _238
        s = s + 32
        idx = idx - 1
        continue 
    if stor2 - 1 > test266151307():
        revert with 0, 65
    _244 = mem[64]
    mem[mem[64]] = stor2 - 1
    mem[64] = mem[64] + (32 * stor2 - 1) + 32
    if not stor2 - 1:
        idx = 0
        s = 1
        while idx < stor2 - 1:
            mem[0] = s
            mem[32] = 4
            _293 = mem[64]
            mem[64] = mem[64] + 192
            mem[_293] = stor4[s].field_0
            mem[_293 + 32] = stor4[s].field_256
            mem[_293 + 64] = stor4[s].field_512
            _294 = mem[64]
            mem[64] = mem[64] + 128
            mem[_294] = stor4[s].field_768
            t = _294
            u = sha3(s, 4) + 3
            while _294 + 128 > t + 32:
                mem[t + 32] = stor1[u]
                t = t + 32
                u = u + 1
                continue 
            mem[_293 + 96] = _294
            mem[_293 + 128] = bool(uint8(stor4[s].field_1792))
            mem[_293 + 160] = bool(uint8(stor4[s].field_1800))
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _293
            mem[0] = s
            mem[32] = 9
            if idx >= mem[_244]:
                revert with 0, 50
            mem[(32 * idx) + _244 + 32] = sub_82030563[s]
            if s > -2:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _305 = mem[64]
        mem[mem[64]] = 64
        _313 = mem[96]
        mem[mem[64] + 64] = mem[96]
        s = 0
        t = 128
        u = mem[64] + 96
        while s < _313:
            _371 = mem[t]
            mem[u] = mem[mem[t]]
            mem[u + 32] = mem[_371 + 32]
            mem[u + 64] = mem[_371 + 64]
            idx = 0
            v = mem[_371 + 96]
            w = u + 96
            while idx < 4:
                mem[w] = mem[v]
                idx = idx + 1
                v = v + 32
                w = w + 32
                continue 
            mem[u + 224] = bool(mem[_371 + 128])
            mem[u + 256] = bool(mem[_371 + 160])
            s = s + 1
            t = t + 32
            u = u + 288
            continue 
        mem[_305 + 32] = u - _305
        _378 = mem[_244]
        mem[u] = mem[_244]
        s = 0
        t = u + 32
        v = _244 + 32
        while s < _378:
            mem[t] = mem[v + 12 len 20]
            s = s + 1
            t = t + 32
            v = v + 32
            continue 
        return memory
          from mem[64]
           len u + (32 * _378) + -mem[64] + 32
    mem[_244 + 32 len 32 * stor2 - 1] = call.data[calldata.size len 32 * stor2 - 1]
    idx = 0
    s = 1
    while idx < stor2 - 1:
        mem[0] = s
        mem[32] = 4
        _296 = mem[64]
        mem[64] = mem[64] + 192
        mem[_296] = stor4[s].field_0
        mem[_296 + 32] = stor4[s].field_256
        mem[_296 + 64] = stor4[s].field_512
        _297 = mem[64]
        mem[64] = mem[64] + 128
        mem[_297] = stor4[s].field_768
        t = _297
        u = sha3(s, 4) + 3
        while _297 + 128 > t + 32:
            mem[t + 32] = stor1[u]
            t = t + 32
            u = u + 1
            continue 
        mem[_296 + 96] = _297
        mem[_296 + 128] = bool(uint8(stor4[s].field_1792))
        mem[_296 + 160] = bool(uint8(stor4[s].field_1800))
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _296
        mem[0] = s
        mem[32] = 9
        if idx >= mem[_244]:
            revert with 0, 50
        mem[(32 * idx) + _244 + 32] = sub_82030563[s]
        if s > -2:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    _306 = mem[64]
    mem[mem[64]] = 64
    _316 = mem[96]
    mem[mem[64] + 64] = mem[96]
    s = 0
    t = 128
    u = mem[64] + 96
    while s < _316:
        _372 = mem[t]
        mem[u] = mem[mem[t]]
        mem[u + 32] = mem[_372 + 32]
        mem[u + 64] = mem[_372 + 64]
        idx = 0
        v = mem[_372 + 96]
        w = u + 96
        while idx < 4:
            mem[w] = mem[v]
            idx = idx + 1
            v = v + 32
            w = w + 32
            continue 
        mem[u + 224] = bool(mem[_372 + 128])
        mem[u + 256] = bool(mem[_372 + 160])
        s = s + 1
        t = t + 32
        u = u + 288
        continue 
    mem[_306 + 32] = u - _306
    _383 = mem[_244]
    mem[u] = mem[_244]
    s = 0
    t = u + 32
    v = _244 + 32
    while s < _383:
        mem[t] = mem[v + 12 len 20]
        s = s + 1
        t = t + 32
        v = v + 32
        continue 
    return memory
      from mem[64]
       len u + (32 * _383) + -mem[64] + 32
}

function sub_1ba22eda(?) payable {
    require calldata.size - 4 >= 160
    require 67 < calldata.size
    require 164 <= calldata.size
    idx = 0
    s = 36
    t = 96
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if stor18[msg.sender]:
        revert with 0, 'You are black listed from tournaments. Contact to owner.'
    if cd[4] > stor1.length:
        revert with 0, 'There is no such tournament with given tournament ID.'
    if stor4[cd[4]].field_256 < block.timestamp - 0x8000000000000000000000000000000000000000000000000000000000000000 and block.timestamp >= 0:
        revert with 0, 17
    if block.timestamp < 0 and stor4[cd[4]].field_256 > block.timestamp + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if stor4[cd[4]].field_256 - block.timestamp <= 0:
        revert with 0, 'Can't register to tournament that is already over.'
    if stor6[cd[4]][msg.sender]:
        revert with 0, 'You already registered to this tournament.'
    mem[228] = msg.sender
    mem[260 len 128] = mem[96 len 128]
    require ext_code.size(address(stor24.field_8))
    staticcall address(stor24.field_8).0xa474cbc1 with:
            gas gas_remaining wei
           args msg.sender, mem[96 len 128]
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Can't enter tournament without an actual NFT, nor without owning given NFT.'
    require ext_code.size(address(stor24.field_8))
    staticcall address(stor24.field_8).0x12457aa6 with:
            gas gas_remaining wei
           args mem[96 len 128]
    mem[ceil32(return_data.size) + 224 len 256] = ext_call.return_data[0 len 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ceil32(return_data.size) + 255 < ceil32(return_data.size) + return_data.size + 224
    if not bool((2 * ceil32(return_data.size)) + 352 <= test266151307()):
        revert with 0, 65
    require 128 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 224 len 128] = ext_call.return_data[0 len 128]
    require ceil32(return_data.size) + 383 < ceil32(return_data.size) + return_data.size + 224
    if not bool((2 * ceil32(return_data.size)) + 480 <= test266151307()):
        revert with 0, 65
    require 256 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 352 len 128] = ext_call.return_data[128 len 128]
    idx = 0
    while idx < 4:
        mem[0] = cd[4]
        mem[32] = 4
        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 352] > stor4[cd[4]].field_512:
            revert with 0, 'Can't register to tournament with higher rarity NFTs.'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < 4:
        if mem[(32 * idx) + 96]:
            mem[0] = cd[4]
            mem[32] = 4
            if idx >= 4:
                revert with 0, 50
            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 224] >= 4:
                revert with 0, 50
            if stor4[cd[4]][mem[(32 * idx) + (2 * ceil32(return_data.size)) + 224]].field_768 != 1:
                revert with 0, 'Can't register to tournament with restricted element NFTs.'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not stor16[cd[4]]:
        if 1 > !participantCount[cd[4]]:
            revert with 0, 17
        mem[0] = cd[4]
        mem[32] = 5
        participantCount[cd[4]]++
        mem[(2 * ceil32(return_data.size)) + 484 len 128] = mem[96 len 128]
        require ext_code.size(address(stor24.field_8))
        staticcall address(stor24.field_8).0x68e480ff with:
                gas gas_remaining wei
               args mem[96 len 128]
        mem[(2 * ceil32(return_data.size)) + 480 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require (2 * ceil32(return_data.size)) + 511 < (2 * ceil32(return_data.size)) + return_data.size + 480
        if not bool((4 * ceil32(return_data.size)) + 608 <= test266151307()):
            revert with 0, 65
        require 128 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + 480 len 128] = ext_call.return_data[0 len 128]
        require ext_code.size(address(stor24.field_8))
        staticcall address(stor24.field_8).0xedfe1466 with:
                gas gas_remaining wei
               args mem[96 len 128]
        mem[(4 * ceil32(return_data.size)) + 608 len 512] = ext_call.return_data[0 len 512]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 512
        require (4 * ceil32(return_data.size)) + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
        if not bool((6 * ceil32(return_data.size)) + 736 <= test266151307()):
            revert with 0, 65
        require 128 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 608 len 128] = ext_call.return_data[0 len 128]
        require (4 * ceil32(return_data.size)) + 767 < (4 * ceil32(return_data.size)) + return_data.size + 608
        if not bool((6 * ceil32(return_data.size)) + 864 <= test266151307()):
            revert with 0, 65
        require 256 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 736 len 128] = ext_call.return_data[128 len 128]
        require (4 * ceil32(return_data.size)) + 895 < (4 * ceil32(return_data.size)) + return_data.size + 608
        if not bool((6 * ceil32(return_data.size)) + 992 <= test266151307()):
            revert with 0, 65
        require 384 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 864 len 128] = ext_call.return_data[256 len 128]
        require (4 * ceil32(return_data.size)) + 1023 < (4 * ceil32(return_data.size)) + return_data.size + 608
        if not bool((6 * ceil32(return_data.size)) + 1120 <= test266151307()):
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + 1120
        require 512 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 992 len 128] = ext_call.return_data[384 len 128]
        idx = 0
        while idx < 4:
            if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 992]:
                if idx >= 4:
                    revert with 0, 50
                if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 992] != 1:
                    if idx >= 4:
                        revert with 0, 50
                    if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 992] != 2:
                        if idx >= 4:
                            revert with 0, 50
                        if 3 == mem[(32 * idx) + (6 * ceil32(return_data.size)) + 992]:
                            s = 0
                            while s < 4:
                                if s >= 4:
                                    revert with 0, 50
                                if mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] > !(mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 20):
                                    revert with 0, 17
                                mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] + (mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 20)
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                        else:
                            if idx >= 4:
                                revert with 0, 50
                            if 4 == mem[(32 * idx) + (6 * ceil32(return_data.size)) + 992]:
                                s = 0
                                while s < 4:
                                    if s >= 4:
                                        revert with 0, 50
                                    if mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] > !(mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 10):
                                        revert with 0, 17
                                    mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] + (mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 10)
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                            else:
                                if idx >= 4:
                                    revert with 0, 50
                                if 5 == mem[(32 * idx) + (6 * ceil32(return_data.size)) + 992]:
                                    s = 0
                                    while s < 4:
                                        if idx >= 4:
                                            revert with 0, 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 224] == mem[(32 * s) + (2 * ceil32(return_data.size)) + 224]:
                                            if s >= 4:
                                                revert with 0, 50
                                            if s >= 4:
                                                revert with 0, 50
                                            if mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] > !(mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 10):
                                                revert with 0, 17
                                            mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] + (mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 10)
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                else:
                                    if idx >= 4:
                                        revert with 0, 50
                                    if 6 == mem[(32 * idx) + (6 * ceil32(return_data.size)) + 992]:
                                        s = 0
                                        while s < 4:
                                            if idx >= 4:
                                                revert with 0, 50
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 224] == mem[(32 * s) + (2 * ceil32(return_data.size)) + 224]:
                                                if s >= 4:
                                                    revert with 0, 50
                                                if s >= 4:
                                                    revert with 0, 50
                                                if mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] > !(mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 5):
                                                    revert with 0, 17
                                                mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] + (mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 5)
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < 4:
            if mem[(32 * idx) + 96]:
                t = 0
                s = 0
                while s < 3:
                    if idx > !s:
                        revert with 0, 17
                    if idx + s > !stor2:
                        revert with 0, 17
                    if idx + s + stor2 > !stor1.length:
                        revert with 0, 17
                    if block.timestamp and idx + s + stor2 + stor1.length > -1 / block.timestamp:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = (idx * block.timestamp) + (s * block.timestamp) + (stor2 * block.timestamp) + (stor1.length * block.timestamp)
                    _267 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if idx >= 4:
                        revert with 0, 50
                    if sha3(mem[_267 + 32 len mem[_267]]) % 100 >= 25:
                        if t > !mem[(32 * idx) + (4 * ceil32(return_data.size)) + 480]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        t = t + mem[(32 * idx) + (4 * ceil32(return_data.size)) + 480]
                        s = s + 1
                        continue 
                    if mem[(32 * idx) + (4 * ceil32(return_data.size)) + 480] and mem[(32 * idx) + (6 * ceil32(return_data.size)) + 864] > -1 / mem[(32 * idx) + (4 * ceil32(return_data.size)) + 480]:
                        revert with 0, 17
                    if t > !(mem[(32 * idx) + (4 * ceil32(return_data.size)) + 480] * mem[(32 * idx) + (6 * ceil32(return_data.size)) + 864]):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    t = t + (mem[(32 * idx) + (4 * ceil32(return_data.size)) + 480] * mem[(32 * idx) + (6 * ceil32(return_data.size)) + 864])
                    s = s + 1
                    continue 
                if idx >= 4:
                    revert with 0, 50
                if t > !mem[(32 * idx) + (6 * ceil32(return_data.size)) + 736]:
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if sub_0a8e95ac != msg.value:
            revert with 0, 'Please send the exact entrance amount.'
        if 1 > !participantCount[cd[4]]:
            revert with 0, 17
        mem[0] = cd[4]
        mem[32] = 5
        participantCount[cd[4]]++
        mem[(2 * ceil32(return_data.size)) + 484 len 128] = mem[96 len 128]
        require ext_code.size(address(stor24.field_8))
        staticcall address(stor24.field_8).0x68e480ff with:
                gas gas_remaining wei
               args mem[96 len 128]
        mem[(2 * ceil32(return_data.size)) + 480 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require (2 * ceil32(return_data.size)) + 511 < (2 * ceil32(return_data.size)) + return_data.size + 480
        if not bool((4 * ceil32(return_data.size)) + 608 <= test266151307()):
            revert with 0, 65
        require 128 <= return_data.size
        mem[(4 * ceil32(return_data.size)) + 480 len 128] = ext_call.return_data[0 len 128]
        require ext_code.size(address(stor24.field_8))
        staticcall address(stor24.field_8).0xedfe1466 with:
                gas gas_remaining wei
               args mem[96 len 128]
        mem[(4 * ceil32(return_data.size)) + 608 len 512] = ext_call.return_data[0 len 512]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 512
        require (4 * ceil32(return_data.size)) + 639 < (4 * ceil32(return_data.size)) + return_data.size + 608
        if not bool((6 * ceil32(return_data.size)) + 736 <= test266151307()):
            revert with 0, 65
        require 128 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 608 len 128] = ext_call.return_data[0 len 128]
        require (4 * ceil32(return_data.size)) + 767 < (4 * ceil32(return_data.size)) + return_data.size + 608
        if not bool((6 * ceil32(return_data.size)) + 864 <= test266151307()):
            revert with 0, 65
        require 256 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 736 len 128] = ext_call.return_data[128 len 128]
        require (4 * ceil32(return_data.size)) + 895 < (4 * ceil32(return_data.size)) + return_data.size + 608
        if not bool((6 * ceil32(return_data.size)) + 992 <= test266151307()):
            revert with 0, 65
        require 384 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 864 len 128] = ext_call.return_data[256 len 128]
        require (4 * ceil32(return_data.size)) + 1023 < (4 * ceil32(return_data.size)) + return_data.size + 608
        if not bool((6 * ceil32(return_data.size)) + 1120 <= test266151307()):
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + 1120
        require 512 <= return_data.size
        mem[(6 * ceil32(return_data.size)) + 992 len 128] = ext_call.return_data[384 len 128]
        idx = 0
        while idx < 4:
            if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 992]:
                if idx >= 4:
                    revert with 0, 50
                if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 992] != 1:
                    if idx >= 4:
                        revert with 0, 50
                    if mem[(32 * idx) + (6 * ceil32(return_data.size)) + 992] != 2:
                        if idx >= 4:
                            revert with 0, 50
                        if 3 == mem[(32 * idx) + (6 * ceil32(return_data.size)) + 992]:
                            s = 0
                            while s < 4:
                                if s >= 4:
                                    revert with 0, 50
                                if mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] > !(mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 20):
                                    revert with 0, 17
                                mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] + (mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 20)
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                continue 
                        else:
                            if idx >= 4:
                                revert with 0, 50
                            if 4 == mem[(32 * idx) + (6 * ceil32(return_data.size)) + 992]:
                                s = 0
                                while s < 4:
                                    if s >= 4:
                                        revert with 0, 50
                                    if mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] > !(mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 10):
                                        revert with 0, 17
                                    mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] + (mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 10)
                                    if s == -1:
                                        revert with 0, 17
                                    s = s + 1
                                    continue 
                            else:
                                if idx >= 4:
                                    revert with 0, 50
                                if 5 == mem[(32 * idx) + (6 * ceil32(return_data.size)) + 992]:
                                    s = 0
                                    while s < 4:
                                        if idx >= 4:
                                            revert with 0, 50
                                        if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 224] == mem[(32 * s) + (2 * ceil32(return_data.size)) + 224]:
                                            if s >= 4:
                                                revert with 0, 50
                                            if s >= 4:
                                                revert with 0, 50
                                            if mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] > !(mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 10):
                                                revert with 0, 17
                                            mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] + (mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 10)
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                else:
                                    if idx >= 4:
                                        revert with 0, 50
                                    if 6 == mem[(32 * idx) + (6 * ceil32(return_data.size)) + 992]:
                                        s = 0
                                        while s < 4:
                                            if idx >= 4:
                                                revert with 0, 50
                                            if mem[(32 * idx) + (2 * ceil32(return_data.size)) + 224] == mem[(32 * s) + (2 * ceil32(return_data.size)) + 224]:
                                                if s >= 4:
                                                    revert with 0, 50
                                                if s >= 4:
                                                    revert with 0, 50
                                                if mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] > !(mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 5):
                                                    revert with 0, 17
                                                mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] = mem[(32 * s) + (4 * ceil32(return_data.size)) + 480] + (mem[(32 * s) + (6 * ceil32(return_data.size)) + 608] / 5)
                                            if s == -1:
                                                revert with 0, 17
                                            s = s + 1
                                            continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < 4:
            if mem[(32 * idx) + 96]:
                t = 0
                s = 0
                while s < 3:
                    if idx > !s:
                        revert with 0, 17
                    if idx + s > !stor2:
                        revert with 0, 17
                    if idx + s + stor2 > !stor1.length:
                        revert with 0, 17
                    if block.timestamp and idx + s + stor2 + stor1.length > -1 / block.timestamp:
                        revert with 0, 17
                    mem[mem[64] + 32] = block.timestamp
                    mem[mem[64] + 64] = address(msg.sender)
                    mem[mem[64] + 84] = (idx * block.timestamp) + (s * block.timestamp) + (stor2 * block.timestamp) + (stor1.length * block.timestamp)
                    _271 = mem[64]
                    mem[mem[64]] = 84
                    mem[64] = mem[64] + 116
                    if idx >= 4:
                        revert with 0, 50
                    if sha3(mem[_271 + 32 len mem[_271]]) % 100 >= 25:
                        if t > !mem[(32 * idx) + (4 * ceil32(return_data.size)) + 480]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        t = t + mem[(32 * idx) + (4 * ceil32(return_data.size)) + 480]
                        s = s + 1
                        continue 
                    if mem[(32 * idx) + (4 * ceil32(return_data.size)) + 480] and mem[(32 * idx) + (6 * ceil32(return_data.size)) + 864] > -1 / mem[(32 * idx) + (4 * ceil32(return_data.size)) + 480]:
                        revert with 0, 17
                    if t > !(mem[(32 * idx) + (4 * ceil32(return_data.size)) + 480] * mem[(32 * idx) + (6 * ceil32(return_data.size)) + 864]):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    t = t + (mem[(32 * idx) + (4 * ceil32(return_data.size)) + 480] * mem[(32 * idx) + (6 * ceil32(return_data.size)) + 864])
                    s = s + 1
                    continue 
                if idx >= 4:
                    revert with 0, 50
                if t > !mem[(32 * idx) + (6 * ceil32(return_data.size)) + 736]:
                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if 0 > stor8[cd[4]]:
        address(sub_42e31756[cd[4]].field_0) = msg.sender
        stor8[cd[4]] = 0
    stor6[cd[4]][address(msg.sender)] = 0
    if stor15[address(msg.sender)] > !stor22:
        revert with 0, 17
    stor15[address(msg.sender)] += stor22
    stor0 = 1
}



}
