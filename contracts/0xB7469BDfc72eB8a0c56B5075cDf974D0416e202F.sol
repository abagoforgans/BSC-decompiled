contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
mapping of uint256 stor2;
mapping of address refererOf;
array of struct stor4;

function refererOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return refererOf[arg1]
}

function owner() payable {
    return owner
}

function isSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[address(arg1)])
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

function addSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2[address(arg1)]:
        stor1.length++
        stor1[stor1.length].field_0 = arg1
        stor1[stor1.length].field_160 = 0
        stor2[address(arg1)] = stor1.length
    emit 0xe6fd8c35: 1, arg1
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

function sub_8c2c54fa(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor2[address(msg.sender)]:
        revert with 0, 'REF: NOT_SETTER'
    if refererOf[address(arg1)]:
        revert with 0, 'REF: ALREADY_SET'
    refererOf[address(arg1)] = address(arg2)
    if not stor4[address(arg2)][1][address(arg1)].field_0:
        stor4[address(arg2)].field_0++
        stor4[address(arg2)][stor4[address(arg2)].field_0].field_0 = address(arg1)
        stor4[address(arg2)][stor4[address(arg2)].field_0].field_160 = 0
        stor4[address(arg2)][1][address(arg1)].field_0 = stor4[address(arg2)].field_0
    emit RefererSet(address(arg1), address(arg2));
}

function removeSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2[address(arg1)]:
        if stor2[address(arg1)] < 1:
            revert with 0, 17
        if stor1.length < 1:
            revert with 0, 17
        if stor1.length - 1 != stor2[address(arg1)] - 1:
            if stor1.length - 1 >= stor1.length:
                revert with 0, 50
            if stor2[address(arg1)] - 1 >= stor1.length:
                revert with 0, 50
            stor1[stor2[address(arg1)]].field_0 = stor1[stor1.length].field_0
            stor2[stor1[stor1.length].field_0] = stor2[address(arg1)]
        if not stor1.length:
            revert with 0, 49
        stor1[stor1.length].field_0 = 0
        stor1.length--
        stor2[address(arg1)] = 0
    emit 0xe6fd8c35: 0, arg1
}

function sub_bee7e3d9(?) payable {
    mem[64] = (32 * stor1.length) + 128
    mem[96] = stor1.length
    if not stor1.length:
        mem[(32 * stor1.length) + 128] = 32
        mem[(32 * stor1.length) + 160] = stor1.length
        idx = 0
        s = (32 * stor1.length) + 192
        t = 128
        while idx < stor1.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor1.length) + 128
           len (96 * stor1.length) + 64
    mem[128] = uint256(stor1.field_0)
    idx = 128
    s = 0
    while (32 * stor1.length) + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1.length) + 128] = 32
    mem[(32 * stor1.length) + 160] = stor1.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor1.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1.length) + -mem[64] + 192
}

function referralsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * stor4[address(arg1)].field_0) + 128
    mem[96] = stor4[address(arg1)].field_0
    if not stor4[address(arg1)].field_0:
        mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
        idx = 0
        s = (32 * stor4[address(arg1)].field_0) + 192
        t = 128
        while idx < stor4[address(arg1)].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor4[address(arg1)].field_0) + 128
           len (96 * stor4[address(arg1)].field_0) + 64
    mem[128] = stor4[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor4[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor4[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor4[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4[address(arg1)].field_0) + -mem[64] + 192
}



}
