contract main {




// =====================  Runtime code  =====================


#
#  - sub_6dc6720b(?)
#
const tokenCreationCode = Array(len=6935, data=code.data[3886 len 6935], mem[7063 len 9] >> 55040, Mask(184, -55296, mem[7063 len 9]) << 55296)


address owner;
address sub_f3ad65f4Address;
array of address sub_b380b152;
mapping of address stor3;
mapping of address stor99;

function owner() payable {
    return owner
}

function sub_b380b152(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b380b152.length
    return sub_b380b152[arg1]
}

function sub_f3ad65f4(?) payable {
    return sub_f3ad65f4Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[10821 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function symbolToAddress(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = stor3[arg1[all]]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_a716fe29(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len 6935] = code.data[3886 len 6935]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 6935
    mem[64] = floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)
    mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 32] = 64
    mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 96] = arg1.length
    mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 128 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 64] = arg1.length + 96
        mem[arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 128] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        _91 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 128
            mem[64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 160
            _175 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
            mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 192 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
            mem[mem[64] + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 32] = 256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1 and mem[mem[64] + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 32] or mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 192] and !(256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1)
            mem[_91 + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _175 + 192 len floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)])] = mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 32 len floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)])]
            mem[_91 + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _175 + floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)]) + -(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32) + 224 len mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32] = mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)]) + -(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32) + 64 len mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32]
            _309 = mem[64]
            mem[64] = mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _91 + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _175 + 192
            mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _91 + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _175 + 192] = 32
            mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _91 + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _175 + 224] = mem[_309]
            _325 = mem[_309]
            mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _91 + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _175 + 256 len ceil32(mem[_309])] = mem[_309 + 32 len ceil32(mem[_309])]
            if not _325 % 32:
                return 32, mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _91 + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _175 + 224 len _325 + 32], 
            mem[floor32(_325) + mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _91 + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _175 + 256] = mem[floor32(_325) + mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _91 + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _175 + -(_325 % 32) + 288 len _325 % 32]
            return memory
              from mem[64]
               len floor32(_325) + mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _91 + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _175 + -mem[64] + 288
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 160] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 160
        mem[64] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 192
        _183 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
        mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 224 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
        mem[mem[64] + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 32] = 256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1 and mem[mem[64] + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 32] or mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 192] and !(256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1)
        mem[floor32(_91) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _183 + 224 len floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)])] = mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 32 len floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)])]
        mem[floor32(_91) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _183 + floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)]) + -(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32) + 256 len mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32] = mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)]) + -(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32) + 64 len mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32]
        _313 = mem[64]
        mem[64] = mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_91) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _183 + 224
        mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_91) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _183 + 224] = 32
        mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_91) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _183 + 256] = mem[_313]
        _328 = mem[_313]
        mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_91) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _183 + 288 len ceil32(mem[_313])] = mem[_313 + 32 len ceil32(mem[_313])]
        if not _328 % 32:
            return 32, mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_91) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _183 + 256 len _328 + 32], 
        mem[floor32(_328) + mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_91) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _183 + 288] = mem[floor32(_328) + mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_91) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _183 + -(_328 % 32) + 320 len _328 % 32]
        return memory
          from mem[64]
           len floor32(_328) + mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_91) + arg1.length + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _183 + -mem[64] + 320
    mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 128] = mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 64] = floor32(arg1.length) + 128
    mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 160] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    _94 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 192 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
        mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 160
        mem[64] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 192
        _179 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
        mem[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 224 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
        mem[mem[64] + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 32] = 256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1 and mem[mem[64] + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 32] or mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 192] and !(256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1)
        mem[_94 + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _179 + 224 len floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)])] = mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 32 len floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)])]
        mem[_94 + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _179 + floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)]) + -(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32) + 256 len mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32] = mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)]) + -(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32) + 64 len mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32]
        _317 = mem[64]
        mem[64] = mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _94 + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _179 + 224
        mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _94 + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _179 + 224] = 32
        mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _94 + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _179 + 256] = mem[_317]
        _331 = mem[_317]
        mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _94 + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _179 + 288 len ceil32(mem[_317])] = mem[_317 + 32 len ceil32(mem[_317])]
        if not _331 % 32:
            return 32, mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _94 + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _179 + 256 len _331 + 32], 
        mem[floor32(_331) + mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _94 + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _179 + 288] = mem[floor32(_331) + mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _94 + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _179 + -(_331 % 32) + 320 len _331 % 32]
        return memory
          from mem[64]
           len floor32(_331) + mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + _94 + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _179 + -mem[64] + 320
    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 192] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 224 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
    mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 192
    mem[64] = floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 224
    _186 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]
    mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 256 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)])]
    mem[mem[64] + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 32] = 256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1 and mem[mem[64] + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 32] or mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]) + 192] and !(256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1)
    mem[floor32(_94) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _186 + 256 len floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)])] = mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + 32 len floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)])]
    mem[floor32(_94) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _186 + floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)]) + -(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32) + 288 len mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32] = mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + floor32(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)]) + -(mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32) + 64 len mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] % 32]
    _321 = mem[64]
    mem[64] = mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_94) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _186 + 256
    mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_94) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _186 + 256] = 32
    mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_94) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _186 + 288] = mem[_321]
    _334 = mem[_321]
    mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_94) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _186 + 320 len ceil32(mem[_321])] = mem[_321 + 32 len ceil32(mem[_321])]
    if not _334 % 32:
        return 32, mem[mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_94) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _186 + 288 len _334 + 32], 
    mem[floor32(_334) + mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_94) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _186 + 320] = mem[floor32(_334) + mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_94) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _186 + -(_334 % 32) + 352 len _334 % 32]
    return memory
      from mem[64]
       len floor32(_334) + mem[floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158)] + floor32(_94) + floor32(arg1.length) + floor32(ceil32(arg1.length) + ceil32(arg2.length) + 7158) + _186 + -mem[64] + 352
}

function sub_1c065d63(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 160] = 3
    if stor[mem[ceil32(arg1.length) + arg2.length + 192 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)]:
        revert with 0, 32, 39, code.data[10859 len 39], mem[ceil32(arg1.length) + ceil32(arg2.length) + 267 len 25]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 6935] = code.data[3886 len 6935]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 7095] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 7159] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 7191 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 7127] = arg1.length + 96
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 7191] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 7223 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            create2 contract with 0 wei
                            salt: 0x163946f3d8dbe7c4d8bff74db32579a5320966c6725116d57dbd4f62a172e779
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 7063]
            if not create2.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x943b24b200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = sub_f3ad65f4Address
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg3
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address rg1, uint8 rg2) with:
                 gas gas_remaining wei
                args sub_f3ad65f4Address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
            mem[ceil32(arg1.length) + ceil32(arg2.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160] = 3
            stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])] = address(create2.new_address)
            sub_b380b152.length++
            mem[0] = 2
            sub_b380b152[sub_b380b152.length] = address(create2.new_address)
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
            _504 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
            emit 0xa056e101: 0, uint128(create2.new_address) << 96, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]), _504
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 7223] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 7255 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            create2 contract with 0 wei
                            salt: 0x163946f3d8dbe7c4d8bff74db32579a5320966c6725116d57dbd4f62a172e779
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 7095]
            if not create2.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x943b24b200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = sub_f3ad65f4Address
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg3
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address rg1, uint8 rg2) with:
                 gas gas_remaining wei
                args sub_f3ad65f4Address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
            mem[ceil32(arg1.length) + ceil32(arg2.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160] = 3
            stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])] = address(create2.new_address)
            sub_b380b152.length++
            mem[0] = 2
            sub_b380b152[sub_b380b152.length] = address(create2.new_address)
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
            _510 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
            emit 0xa056e101: 0, uint128(create2.new_address) << 96, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]), _510
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 7191] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 7223 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 7127] = floor32(arg1.length) + 128
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 7223] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 7255 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            create2 contract with 0 wei
                            salt: 0x163946f3d8dbe7c4d8bff74db32579a5320966c6725116d57dbd4f62a172e779
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 7095]
            if not create2.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x943b24b200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = sub_f3ad65f4Address
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg3
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address rg1, uint8 rg2) with:
                 gas gas_remaining wei
                args sub_f3ad65f4Address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
            mem[ceil32(arg1.length) + ceil32(arg2.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160] = 3
            stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])] = address(create2.new_address)
            sub_b380b152.length++
            mem[0] = 2
            sub_b380b152[sub_b380b152.length] = address(create2.new_address)
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
            _516 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
            emit 0xa056e101: 0, uint128(create2.new_address) << 96, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]), _516
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 7255] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 7287 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            create2 contract with 0 wei
                            salt: 0x163946f3d8dbe7c4d8bff74db32579a5320966c6725116d57dbd4f62a172e779
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 7127]
            if not create2.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x943b24b200000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = sub_f3ad65f4Address
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg3
            require ext_code.size(address(create2.new_address))
            call address(create2.new_address).initialize(address rg1, uint8 rg2) with:
                 gas gas_remaining wei
                args sub_f3ad65f4Address, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
            mem[ceil32(arg1.length) + ceil32(arg2.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 160] = 3
            stor[sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 32])] = address(create2.new_address)
            sub_b380b152.length++
            mem[0] = 2
            sub_b380b152[sub_b380b152.length] = address(create2.new_address)
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
            _522 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 and !(256^(-(arg1.length % 32) + 32) - 1)
            emit 0xa056e101: 0, uint128(create2.new_address) << 96, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]), _522
}



}
