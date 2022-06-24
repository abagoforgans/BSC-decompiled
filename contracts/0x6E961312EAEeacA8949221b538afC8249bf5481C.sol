contract main {




// =====================  Runtime code  =====================


#
#  - handle(address arg1, address arg2)
#  - sub_fc985cf1(?)
#
address owner;
address sub_b38d6b8aAddress;
address sub_d13c8155Address;
address daoAddress;
uint256 sub_57cf369f;
address sub_6eaf8802Address;
uint256 sub_d022a8de;
uint256 sub_a02eefce;
uint256 sub_2413fcd3;
uint256 sub_1641e03c;
uint256 sub_8a60a793;
uint256 sub_55cc6e93;
uint256 sub_9200b1f2;
uint256 sub_a4d591c3;
uint256 sub_8763678e;
address devAddress;
mapping of uint8 stor16;
mapping of uint8 stor17;
address sub_94092c37Address;
mapping of uint8 stor19;

function sub_1641e03c(?) payable {
    return sub_1641e03c
}

function daoAddress() payable {
    return daoAddress
}

function sub_2413fcd3(?) payable {
    return sub_2413fcd3
}

function whiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor19[arg1])
}

function devAddress() payable {
    return devAddress
}

function blackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor16[arg1])
}

function sub_55cc6e93(?) payable {
    return sub_55cc6e93
}

function sub_57cf369f(?) payable {
    return sub_57cf369f
}

function sub_6ddd474d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor17[arg1])
}

function sub_6eaf8802(?) payable {
    return sub_6eaf8802Address
}

function sub_8763678e(?) payable {
    return sub_8763678e
}

function sub_8a60a793(?) payable {
    return sub_8a60a793
}

function owner() payable {
    return owner
}

function sub_9200b1f2(?) payable {
    return sub_9200b1f2
}

function sub_94092c37(?) payable {
    return sub_94092c37Address
}

function sub_a02eefce(?) payable {
    return sub_a02eefce
}

function sub_a4d591c3(?) payable {
    return sub_a4d591c3
}

function sub_b38d6b8a(?) payable {
    return sub_b38d6b8aAddress
}

function sub_d022a8de(?) payable {
    return sub_d022a8de
}

function sub_d13c8155(?) payable {
    return sub_d13c8155Address
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

function removeGameContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17[address(arg1)] = 0
}

function removeWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19[address(arg1)] = 0
    emit 0xd7137e80: arg1, msg.sender
}

function removeBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16[address(arg1)] = 0
    emit 0x7adf17f6: arg1, msg.sender
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1:
        devAddress = arg1
        stor19[address(arg1)] = 1
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

function addBlackList(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'invalid zero address'
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 16
        stor16[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg1.length) + 97] = 32
    mem[ceil32(32 * arg1.length) + 129] = arg1.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < arg1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x66b26e55: mem[mem[64] len ceil32(32 * arg1.length) + (32 * arg1.length) + -mem[64] + 161], msg.sender
}

function sub_4fa40467(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    require arg6 == bool(arg6)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg1):
        sub_b38d6b8aAddress = address(arg1)
    if address(arg2):
        sub_d13c8155Address = address(arg2)
    if address(arg3):
        daoAddress = address(arg3)
        if address(arg4):
            sub_94092c37Address = address(arg4)
            if address(arg5):
                sub_6eaf8802Address = address(arg5)
            else:
                if arg6:
                    sub_6eaf8802Address = address(arg5)
        else:
            if arg6:
                sub_94092c37Address = address(arg4)
            if address(arg5):
                sub_6eaf8802Address = address(arg5)
            else:
                if arg6:
                    sub_6eaf8802Address = address(arg5)
    else:
        if arg6:
            daoAddress = address(arg3)
        if address(arg4):
            sub_94092c37Address = address(arg4)
            if address(arg5):
                sub_6eaf8802Address = address(arg5)
            else:
                if arg6:
                    sub_6eaf8802Address = address(arg5)
        else:
            if arg6:
                sub_94092c37Address = address(arg4)
            if address(arg5):
                sub_6eaf8802Address = address(arg5)
            else:
                if arg6:
                    sub_6eaf8802Address = address(arg5)
}

function sub_24a174c5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner == msg.sender:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'invalid zero address'
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 17
            stor17[mem[(32 * idx) + 140 len 20]] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if owner == tx.origin:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'invalid zero address'
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 17
                stor17[mem[(32 * idx) + 140 len 20]] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function getFee(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not sub_b38d6b8aAddress:
        revert with 0, 'invalid message sender'
    if stor16[address(arg1)]:
        revert with 0, 'invalid address'
    if stor16[address(arg2)]:
        revert with 0, 'invalid address'
    if stor19[address(arg1)]:
        return 0
    if stor19[address(arg2)]:
        return 0
    if not stor17[address(arg2)]:
        if not stor17[address(arg1)]:
            if sub_94092c37Address != arg1:
                if sub_94092c37Address != arg2:
                    return 0
            else:
                if arg3 and sub_a4d591c3 > -1 / arg3:
                    revert with 0, 17
                if sub_94092c37Address != arg2:
                    return address(arg2), arg3 * sub_a4d591c3 / 1000, 0
        else:
            if arg3 and sub_9200b1f2 > -1 / arg3:
                revert with 0, 17
            if sub_94092c37Address != arg1:
                if sub_94092c37Address != arg2:
                    return address(arg2), arg3 * sub_9200b1f2 / 1000, 0
            else:
                if arg3 and sub_a4d591c3 > -1 / arg3:
                    revert with 0, 17
                if sub_94092c37Address != arg2:
                    return address(arg2), arg3 * sub_a4d591c3 / 1000, 0
        ('eq', ('stor', ('name', 'sub_94092c37Address', 18)), ('param', 'arg2'))
        if arg3 and sub_8763678e > -1 / arg3:
            revert with 0, 17
        return address(arg1), arg3 * sub_8763678e / 1000, 0
    if not stor17[address(arg1)]:
        if sub_94092c37Address != arg1:
            if sub_94092c37Address != arg2:
                return 0, 0, 1
        else:
            if arg3 and sub_a4d591c3 > -1 / arg3:
                revert with 0, 17
            if sub_94092c37Address != arg2:
                return address(arg2), arg3 * sub_a4d591c3 / 1000, 1
    else:
        if arg3 and sub_9200b1f2 > -1 / arg3:
            revert with 0, 17
        if sub_94092c37Address != arg1:
            if sub_94092c37Address != arg2:
                return address(arg2), arg3 * sub_9200b1f2 / 1000, 1
        else:
            if arg3 and sub_a4d591c3 > -1 / arg3:
                revert with 0, 17
            if sub_94092c37Address != arg2:
                return address(arg2), arg3 * sub_a4d591c3 / 1000, 1
    ('eq', ('stor', ('name', 'sub_94092c37Address', 18)), ('param', 'arg2'))
    if arg3 and sub_8763678e > -1 / arg3:
        revert with 0, 17
    return address(arg1), arg3 * sub_8763678e / 1000, 1
}

function addWhiteList(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner == msg.sender:
        idx = 0
        while idx < arg1.length:
            if idx >= arg1.length:
                revert with 0, 50
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'invalid zero address'
            if idx >= arg1.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 19
            stor19[mem[(32 * idx) + 140 len 20]] = 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg1.length) + 97] = 32
        mem[ceil32(32 * arg1.length) + 129] = arg1.length
        s = 0
        s = 128
        t = mem[64] + 64
        while arg1.length < arg1.length:
            mem[t] = mem[s + 12 len 20]
            s = arg1.length + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x5e7546b1: mem[mem[64] len t - mem[64]], msg.sender
    else:
        if owner != tx.origin:
            mem[ceil32(32 * arg1.length) + 97] = 32
            mem[ceil32(32 * arg1.length) + 129] = arg1.length
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < arg1.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit 0x5e7546b1: mem[mem[64] len ceil32(32 * arg1.length) + (32 * arg1.length) + -mem[64] + 161], msg.sender
        else:
            idx = 0
            while idx < arg1.length:
                if idx >= arg1.length:
                    revert with 0, 50
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'invalid zero address'
                if idx >= arg1.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 19
                stor19[mem[(32 * idx) + 140 len 20]] = 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg1.length) + 97] = 32
            mem[ceil32(32 * arg1.length) + 129] = arg1.length
            s = 0
            s = 128
            t = mem[64] + 64
            while arg1.length < arg1.length:
                mem[t] = mem[s + 12 len 20]
                s = arg1.length + 1
                s = s + 32
                t = t + 32
                continue 
            emit 0x5e7546b1: mem[mem[64] len t - mem[64]], msg.sender
}



}
