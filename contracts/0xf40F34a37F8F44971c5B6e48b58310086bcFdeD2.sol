contract main {




// =====================  Runtime code  =====================


#
#  - sub_342be884(?)
#
address owner;
mapping of uint8 sub_1dca7e30;
mapping of uint32 stor2;
mapping of uint8 stor3;
uint8 sub_e84f04f2;

function sub_1dca7e30(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == address(arg2)
    return sub_1dca7e30[arg1 << 248][address(arg2)]
}

function owner() payable {
    return owner
}

function sub_9c2a706e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return bool(stor3[arg1 << 248])
}

function sub_e84f04f2(?) payable {
    return sub_e84f04f2
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

function sub_26bc3ff8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[arg1 << 248] = 1
}

function sub_c83e7e5c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[arg1 << 248] = 0
}

function sub_fa5ef466(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e84f04f2 = uint8(arg1)
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

function removeFromWhitelist(uint8 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_1dca7e30[arg1 << 248][address(arg2)]:
        revert with 0, 'Not in whitelist'
    if stor2[arg1 << 248][stor1[arg1 << 248][address(arg2)]] < 1:
        revert with 'NH{q', 17
    stor2[arg1 << 248][stor1[arg1 << 248][address(arg2)]] = uint32(stor2[arg1 << 248][stor1[arg1 << 248][address(arg2)]] - 1)
    sub_1dca7e30[arg1 << 248][address(arg2)] = 0
}

function sub_acbec96a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(arg2):
        revert with 0, 'Invalid tier'
    if uint8(arg2) > sub_e84f04f2:
        revert with 0, 'Invalid tier'
    if stor3[arg1 << 248]:
        revert with 0, 'whitelist locked'
    if sub_1dca7e30[arg1 << 248][address(arg3)] != uint8(arg2):
        if sub_1dca7e30[arg1 << 248][address(arg3)]:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if not sub_1dca7e30[arg1 << 248][address(arg3)]:
                revert with 0, 'Not in whitelist'
            if stor2[arg1 << 248][stor1[arg1 << 248][address(arg3)]] < 1:
                revert with 'NH{q', 17
            stor2[arg1 << 248][stor1[arg1 << 248][address(arg3)]] = uint32(stor2[arg1 << 248][stor1[arg1 << 248][address(arg3)]] - 1)
            sub_1dca7e30[arg1 << 248][address(arg3)] = 0
        if stor2[arg1 << 248][arg2 << 248] > 4294967294:
            revert with 'NH{q', 17
        stor2[arg1 << 248][arg2 << 248] = uint32(stor2[arg1 << 248][arg2 << 248] + 1)
        sub_1dca7e30[arg1 << 248][address(arg3)] = uint8(arg2)
}

function sub_f96822ac(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 36).length
    mem[64] = floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129
    if ('cd', 36).length:
        mem[floor32(('cd', 36).length) + 129 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(cd[4] << 248, 1)
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = sub_1dca7e30[cd[4] << 248][mem[(32 * idx) + 140 len 20]]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129] = 32
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 161] = ('cd', 36).length
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = mem[64] + 64
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len floor32(('cd', 36).length) + (64 * ('cd', 36).length) + -mem[64] + 193
}

function sub_03496d44(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == uint8(cd[4])
    require cd[36] == uint8(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 68).length:
        if idx >= ('cd', 68).length:
            revert with 'NH{q', 50
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not uint8(cd[36]):
            revert with 0, 'Invalid tier'
        if uint8(cd[36]) > sub_e84f04f2:
            revert with 0, 'Invalid tier'
        if stor3[cd[4] << 248]:
            revert with 0, 'whitelist locked'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(cd[4] << 248, 1)
        if sub_1dca7e30[cd[4] << 248][address(mem[(32 * idx) + 128])] != uint8(cd[36]):
            if sub_1dca7e30[cd[4] << 248][address(mem[(32 * idx) + 128])]:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not sub_1dca7e30[cd[4] << 248][address(mem[(32 * idx) + 128])]:
                    revert with 0, 'Not in whitelist'
                if stor2[cd[4] << 248][stor1[cd[4] << 248][address(mem[(32 * idx) + 128])]] < 1:
                    revert with 'NH{q', 17
                stor2[cd[4] << 248][stor1[cd[4] << 248][address(mem[(32 * idx) + 128])]] = uint32(stor2[cd[4] << 248][stor1[cd[4] << 248][address(mem[(32 * idx) + 128])]] - 1)
                sub_1dca7e30[cd[4] << 248][address(mem[(32 * idx) + 128])] = 0
            if stor2[cd[4] << 248][cd[36] << 248] > 4294967294:
                revert with 'NH{q', 17
            stor2[cd[4] << 248][cd[36] << 248] = uint32(stor2[cd[4] << 248][cd[36] << 248] + 1)
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(cd[4] << 248, 1)
            sub_1dca7e30[cd[4] << 248][address(mem[(32 * idx) + 128])] = uint8(cd[36])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
