contract main {




// =====================  Runtime code  =====================


#
#  - sub_1102965c(?)
#  - sub_5d9cfa20(?)
#  - relayAndVerify(bytes arg1)
#  - sub_eb930522(?)
#
address owner;
mapping of uint256 sub_c5f556f0;
mapping of uint256 validatorPowers;
uint256 totalValidatorPower;
array of struct stor4;

function owner() payable {
    return owner
}

function sub_c5f556f0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_c5f556f0[arg1]
}

function validatorPowers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return validatorPowers[arg1]
}

function totalValidatorPower() payable {
    return totalValidatorPower
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_7c66ec80(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128] = stor4[arg1].field_0
    idx = 128
    s = 0
    while stor4[arg1].length + 96 > idx:
        mem[idx + 32] = stor4[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor4[arg1].length) + 160] = stor4[arg1][3].field_0
    idx = ceil32(stor4[arg1].length) + 160
    s = 0
    while ceil32(stor4[arg1].length) + stor4[arg1][3].length + 128 > idx:
        mem[idx + 32] = stor4[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor4[arg1].length) <= stor4[arg1].length:
        mem[(2 * ceil32(stor4[arg1].length)) + ceil32(stor4[arg1][3].length) + 416] = stor4[arg1][3].length
    else:
        mem[ceil32(stor4[arg1].length) + ceil32(stor4[arg1][3].length) + stor4[arg1].length + 416] = 0
        mem[(2 * ceil32(stor4[arg1].length)) + ceil32(stor4[arg1][3].length) + 416] = stor4[arg1][3].length
        mem[(2 * ceil32(stor4[arg1].length)) + ceil32(stor4[arg1][3].length) + 448 len ceil32(stor4[arg1][3].length)] = mem[ceil32(stor4[arg1].length) + 160 len ceil32(stor4[arg1][3].length)]
        if ceil32(stor4[arg1][3].length) > stor4[arg1][3].length:
            mem[(2 * ceil32(stor4[arg1].length)) + ceil32(stor4[arg1][3].length) + stor4[arg1][3].length + 448] = 0
    return Array(len=stor4[arg1].length, data=mem[128 len ceil32(stor4[arg1].length)], stor4[arg1][3].length, mem[ceil32(stor4[arg1].length) + 160 len ceil32(stor4[arg1][3].length)]), 
           uint64(stor4[arg1].field_256),
           uint64(stor4[arg1].field_256),
           uint64(stor4[arg1].field_256),
           uint64(stor4[arg1].field_256),
           uint8(stor4[arg1].field_512),
           ceil32(stor4[arg1].length) + 256
}

function sub_91a68723(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (64 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 64
        _23 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[s] == address(cd[s])
        mem[_23] = cd[s]
        require cd[(s + 32)] == cd[(s + 32)]
        mem[_23 + 32] = cd[(s + 32)]
        mem[t] = _23
        idx = idx + 1
        s = s + 64
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _44 = mem[96]
    s = 0
    while ('cd', 4).length < _44:
        _45 = mem[64]
        mem[64] = mem[64] + 64
        mem[_45] = 0
        mem[_45 + 32] = 0
        require ('cd', 4).length < mem[96]
        _47 = mem[(32 * ('cd', 4).length) + 128]
        mem[0] = mem[mem[(32 * ('cd', 4).length) + 128] + 12 len 20]
        mem[32] = 2
        _49 = sha3(mem[0], 2)
        _50 = mem[64]
        mem[64] = mem[64] + 64
        mem[_50] = 30
        mem[_50 + 32] = 'SafeMath: subtraction overflow'
        if stor[_49] > totalValidatorPower:
            _51 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_51 + idx + 68] = mem[_50 + idx + 32]
                _44 = mem[96]
                idx = idx + 32
                continue 
            mem[_51 + 98] = 0
            revert with memory
              from mem[64]
               len _51 + -mem[64] + 100
        totalValidatorPower -= stor[_49]
        _52 = mem[_47 + 32]
        mem[0] = mem[_47 + 12 len 20]
        mem[32] = 2
        validatorPowers[mem[0]] = _52
        if totalValidatorPower + mem[_47 + 32] < totalValidatorPower:
            revert with 0, 'SafeMath: addition overflow'
        totalValidatorPower += mem[_47 + 32]
        _44 = mem[96]
        s = ('cd', 4).length + 1
        continue 
}

function sub_d4a73c7c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 160
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4).length + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 288 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 288 >= 256
    require cd[4] + ('cd', 4).length + cd[(cd[4] + ('cd', 4).length + 4)] + 36 <= calldata.size
    mem[288 len cd[(cd[4] + ('cd', 4).length + 4)]] = call.data[cd[4] + ('cd', 4).length + 36 len cd[(cd[4] + ('cd', 4).length + 4)]]
    mem[cd[(cd[4] + ('cd', 4).length + 4)] + 288] = 0
    mem[96] = 256
    require ('cd', 4)[0] == uint64(('cd', 4)[0])
    mem[128] = ('cd', 4)[0]
    require ('cd', 4)[1] <= test266151307()
    require cd[4] + ('cd', 4)[1] + 35 < calldata.size
    require cd[(cd[4] + ('cd', 4)[1] + 4)] <= test266151307()
    require ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320 <= test266151307() and ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320 >= 288
    mem[64] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 288] = cd[(cd[4] + ('cd', 4)[1] + 4)]
    require cd[4] + ('cd', 4)[1] + cd[(cd[4] + ('cd', 4)[1] + 4)] + 36 <= calldata.size
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 320 len cd[(cd[4] + ('cd', 4)[1] + 4)]] = call.data[cd[4] + ('cd', 4)[1] + 36 len cd[(cd[4] + ('cd', 4)[1] + 4)]]
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 320] = 0
    require ('cd', 4)[2] == uint64(('cd', 4)[2])
    require ('cd', 4)[3] == uint64(('cd', 4)[3])
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352] = 32
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 384] = 160
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 544] = cd[(cd[4] + ('cd', 4).length + 4)]
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 576 len ceil32(cd[(cd[4] + ('cd', 4).length + 4)])] = call.data[cd[4] + ('cd', 4).length + 36 len cd[(cd[4] + ('cd', 4).length + 4)]], mem[cd[(cd[4] + ('cd', 4).length + 4)] + 288 len ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) - cd[(cd[4] + ('cd', 4).length + 4)]]
    if ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) > cd[(cd[4] + ('cd', 4).length + 4)]:
        mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 576] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 416] = uint64(('cd', 4)[0])
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 448] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 192
    mem[(2 * ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 576] = Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]
    mem[(2 * ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 608 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])])] = mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + 320 len ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])])]
    if ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]) <= Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]:
        mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 480] = uint64(('cd', 4)[2])
        mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 512] = uint64(('cd', 4)[3])
        mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]) + 256
        mem[(2 * ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]) + 608] = sha3(mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]])
        return memory
          from (2 * ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]) + 608
           len 32
    mem[(2 * ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])] + 608] = 0
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 480] = uint64(('cd', 4)[2])
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 512] = uint64(('cd', 4)[3])
    mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 320] = ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]) + 256
    mem[(2 * ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]) + 608] = sha3(mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + 352 len Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 32, 0, 0), mem[ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4)[1] + 4)] + 352 len -cd[(cd[4] + ('cd', 4)[1] + 4)] + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)])]])
    return Mask(8 * -ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])]) + Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])] + 32, 0, 0), 
           mem[(2 * ceil32(cd[(cd[4] + ('cd', 4).length + 4)])) + ceil32(cd[(cd[4] + ('cd', 4)[1] + 4)]) + Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])] + 640 len -Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])] + ceil32(Mask(8 * -ceil32(cd[(cd[4] + ('cd', 4).length + 4)]) + cd[(cd[4] + ('cd', 4).length + 4)] + 32, 0, 0), mem[cd[(cd[4] + ('cd', 4).length + 4)] + 320 len -cd[(cd[4] + ('cd', 4).length + 4)] + ceil32(cd[(cd[4] + ('cd', 4).length + 4)])])]
}

function sub_8f0d6f17(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    mem[96] = 96
    mem[128] = 0
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    mem[256] = 96
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 96
    mem[480] = 0xad37373200000000000000000000000000000000000000000000000000000000
    mem[484] = 32
    mem[516] = arg1.length
    mem[548 len arg1.length] = arg1[all]
    mem[arg1.length + 548] = 0
    require ext_code.size(this.address)
    call this.address.0xad373732 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[480 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    _6 = mem[480 len 4], 0
    require mem[480 len 4], 0 <= test266151307()
    require return_data.size - mem[480 len 4], 0 >= 160
    require bool(ceil32(return_data.size) + 640 <= test266151307())
    mem[64] = ceil32(return_data.size) + 640
    _8 = mem[mem[480 len 4], 0 + 480]
    require mem[mem[480 len 4], 0 + 480] <= test266151307()
    require mem[480 len 4], 0 + mem[mem[480 len 4], 0 + 480] + 511 < return_data.size + 480
    _9 = mem[mem[480 len 4], 0 + mem[mem[480 len 4], 0 + 480] + 480]
    require mem[mem[480 len 4], 0 + mem[mem[480 len 4], 0 + 480] + 480] <= test266151307()
    require ceil32(return_data.size) + ceil32(mem[mem[480 len 4], 0 + mem[mem[480 len 4], 0 + 480] + 480]) + 672 <= test266151307() and ceil32(mem[mem[480 len 4], 0 + mem[mem[480 len 4], 0 + 480] + 480]) + 192 >= 160
    mem[64] = ceil32(return_data.size) + ceil32(mem[mem[480 len 4], 0 + mem[mem[480 len 4], 0 + 480] + 480]) + 672
    mem[ceil32(return_data.size) + 640] = mem[mem[480 len 4], 0 + mem[mem[480 len 4], 0 + 480] + 480]
    require mem[480 len 4], 0 + _8 + _9 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 672 len ceil32(_9)] = mem[mem[480 len 4], 0 + _8 + 512 len ceil32(_9)]
    if ceil32(_9) <= _9:
        mem[ceil32(return_data.size) + 480] = ceil32(return_data.size) + 640
        require mem[_6 + 512] == mem[_6 + 536 len 8]
        mem[ceil32(return_data.size) + 512] = mem[_6 + 512]
        _363 = mem[_6 + 544]
        require mem[_6 + 544] <= test266151307()
        require _6 + mem[_6 + 544] + 511 < return_data.size + 480
        _365 = mem[_6 + mem[_6 + 544] + 480]
        require mem[_6 + mem[_6 + 544] + 480] <= test266151307()
        _367 = mem[64]
        require mem[64] + ceil32(mem[_6 + mem[_6 + 544] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6 + mem[_6 + 544] + 480]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 544] + 480]) + 32
        mem[_367] = mem[_6 + mem[_6 + 544] + 480]
        require _6 + _363 + _365 + 32 <= return_data.size
        mem[_367 + 32 len ceil32(_365)] = mem[_6 + _363 + 512 len ceil32(_365)]
        if ceil32(_365) <= _365:
            mem[ceil32(return_data.size) + 544] = _367
            require mem[_6 + 576] == mem[_6 + 600 len 8]
            mem[ceil32(return_data.size) + 576] = mem[_6 + 576]
            require mem[_6 + 608] == mem[_6 + 632 len 8]
            mem[ceil32(return_data.size) + 608] = mem[_6 + 608]
            require 32, Mask(224, 32, arg1.length) >> 32 <= test266151307()
            require return_data.size - 32, Mask(224, 32, arg1.length) >> 32 >= 224
            _3753 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            _3757 = mem[32, Mask(224, 32, arg1.length) >> 32 + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + 480] <= test266151307()
            require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 511 < return_data.size + 480
            _3761 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480] <= test266151307()
            _3765 = mem[64]
            require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 >= mem[64]
            mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32
            mem[_3765] = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]
            require 32, Mask(224, 32, arg1.length) >> 32 + _3757 + _3761 + 32 <= return_data.size
            mem[_3765 + 32 len ceil32(_3761)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _3757 + 512 len ceil32(_3761)]
            if ceil32(_3761) <= _3761:
                mem[_3753] = _3765
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3753 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3753 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3753 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3753 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3753 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7153 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7161 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7169 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7169] = _7161
                require 32, Mask(224, 32, arg1.length) >> 32 + _7153 + _7161 + 32 <= return_data.size
                mem[_7169 + 32 len ceil32(_7161)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7153 + 512 len ceil32(_7161)]
                if ceil32(_7161) <= _7161:
                    mem[_3753 + 192] = _7169
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10489 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10489)] = mem[ceil32(return_data.size) + 672 len ceil32(_10489)]
                    if ceil32(_10489) <= _10489:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10489) + 192
                        _13801 = mem[_367]
                        mem[mem[64] + ceil32(_10489) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10489) + 288 len ceil32(_13801)] = mem[_367 + 32 len ceil32(_13801)]
                        if ceil32(_13801) <= _13801:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17097 = mem[64]
                            mem[mem[64]] = ceil32(_10489) + ceil32(_13801) + 256
                            mem[64] = mem[64] + ceil32(_10489) + ceil32(_13801) + 288
                            _17099 = sha3(mem[_17097 + 32 len mem[_17097]])
                            mem[0] = sha3(mem[_17097 + 32 len mem[_17097]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17099
                            mem[32] = 4
                            _17483 = mem[_3765]
                            stor4[_17099][].field_0 = Array(len=_17483, data=mem[_3765 + 32 len _17483])
                            uint64(stor4[_17099].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17099].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17099].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17099].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17099].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17099][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
                        else:
                            mem[mem[64] + ceil32(_10489) + _13801 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17195 = mem[64]
                            mem[mem[64]] = ceil32(_10489) + ceil32(_13801) + 256
                            mem[64] = mem[64] + ceil32(_10489) + ceil32(_13801) + 288
                            _17197 = sha3(mem[_17195 + 32 len mem[_17195]])
                            mem[0] = sha3(mem[_17195 + 32 len mem[_17195]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17197
                            mem[32] = 4
                            _17676 = mem[_3765]
                            stor4[_17197][].field_0 = Array(len=_17676, data=mem[_3765 + 32 len _17676])
                            uint64(stor4[_17197].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17197].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17197].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17197].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17197].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17197][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
                    else:
                        mem[mem[64] + _10489 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10489) + 192
                        _13817 = mem[_367]
                        mem[mem[64] + ceil32(_10489) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10489) + 288 len ceil32(_13817)] = mem[_367 + 32 len ceil32(_13817)]
                        if ceil32(_13817) <= _13817:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17100 = mem[64]
                            mem[mem[64]] = ceil32(_10489) + ceil32(_13817) + 256
                            mem[64] = mem[64] + ceil32(_10489) + ceil32(_13817) + 288
                            _17102 = sha3(mem[_17100 + 32 len mem[_17100]])
                            mem[0] = sha3(mem[_17100 + 32 len mem[_17100]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17102
                            mem[32] = 4
                            _17489 = mem[_3765]
                            stor4[_17102][].field_0 = Array(len=_17489, data=mem[_3765 + 32 len _17489])
                            uint64(stor4[_17102].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17102].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17102].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17102].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17102].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17102][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
                        else:
                            mem[mem[64] + ceil32(_10489) + _13817 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17200 = mem[64]
                            mem[mem[64]] = ceil32(_10489) + ceil32(_13817) + 256
                            mem[64] = mem[64] + ceil32(_10489) + ceil32(_13817) + 288
                            _17202 = sha3(mem[_17200 + 32 len mem[_17200]])
                            mem[0] = sha3(mem[_17200 + 32 len mem[_17200]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17202
                            mem[32] = 4
                            _17681 = mem[_3765]
                            stor4[_17202][].field_0 = Array(len=_17681, data=mem[_3765 + 32 len _17681])
                            uint64(stor4[_17202].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17202].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17202].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17202].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17202].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17202][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
                else:
                    mem[_7169 + _7161 + 32] = 0
                    mem[_3753 + 192] = _7169
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10497 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10497)] = mem[ceil32(return_data.size) + 672 len ceil32(_10497)]
                    if ceil32(_10497) <= _10497:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10497) + 192
                        _13802 = mem[_367]
                        mem[mem[64] + ceil32(_10497) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10497) + 288 len ceil32(_13802)] = mem[_367 + 32 len ceil32(_13802)]
                        if ceil32(_13802) <= _13802:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17103 = mem[64]
                            mem[mem[64]] = ceil32(_10497) + ceil32(_13802) + 256
                            mem[64] = mem[64] + ceil32(_10497) + ceil32(_13802) + 288
                            _17105 = sha3(mem[_17103 + 32 len mem[_17103]])
                            mem[0] = sha3(mem[_17103 + 32 len mem[_17103]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17105
                            mem[32] = 4
                            _17495 = mem[_3765]
                            stor4[_17105][].field_0 = Array(len=_17495, data=mem[_3765 + 32 len _17495])
                            uint64(stor4[_17105].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17105].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17105].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17105].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17105].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17105][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
                        else:
                            mem[mem[64] + ceil32(_10497) + _13802 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17205 = mem[64]
                            mem[mem[64]] = ceil32(_10497) + ceil32(_13802) + 256
                            mem[64] = mem[64] + ceil32(_10497) + ceil32(_13802) + 288
                            _17207 = sha3(mem[_17205 + 32 len mem[_17205]])
                            mem[0] = sha3(mem[_17205 + 32 len mem[_17205]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17207
                            mem[32] = 4
                            _17686 = mem[_3765]
                            stor4[_17207][].field_0 = Array(len=_17686, data=mem[_3765 + 32 len _17686])
                            uint64(stor4[_17207].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17207].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17207].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17207].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17207].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17207][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
                    else:
                        mem[mem[64] + _10497 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10497) + 192
                        _13818 = mem[_367]
                        mem[mem[64] + ceil32(_10497) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10497) + 288 len ceil32(_13818)] = mem[_367 + 32 len ceil32(_13818)]
                        if ceil32(_13818) <= _13818:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17106 = mem[64]
                            mem[mem[64]] = ceil32(_10497) + ceil32(_13818) + 256
                            mem[64] = mem[64] + ceil32(_10497) + ceil32(_13818) + 288
                            _17108 = sha3(mem[_17106 + 32 len mem[_17106]])
                            mem[0] = sha3(mem[_17106 + 32 len mem[_17106]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17108
                            mem[32] = 4
                            _17501 = mem[_3765]
                            stor4[_17108][].field_0 = Array(len=_17501, data=mem[_3765 + 32 len _17501])
                            uint64(stor4[_17108].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17108].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17108].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17108].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17108].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17108][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
                        else:
                            mem[mem[64] + ceil32(_10497) + _13818 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17210 = mem[64]
                            mem[mem[64]] = ceil32(_10497) + ceil32(_13818) + 256
                            mem[64] = mem[64] + ceil32(_10497) + ceil32(_13818) + 288
                            _17212 = sha3(mem[_17210 + 32 len mem[_17210]])
                            mem[0] = sha3(mem[_17210 + 32 len mem[_17210]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17212
                            mem[32] = 4
                            _17691 = mem[_3765]
                            stor4[_17212][].field_0 = Array(len=_17691, data=mem[_3765 + 32 len _17691])
                            uint64(stor4[_17212].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17212].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17212].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17212].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17212].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17212][3][].field_0 = Array(len=_7161, data=mem[_7169 + 32 len _7161])
            else:
                mem[_3765 + _3761 + 32] = 0
                mem[_3753] = _3765
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3753 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3753 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3753 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3753 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3753 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7157 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7165 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7173 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7173] = _7165
                require 32, Mask(224, 32, arg1.length) >> 32 + _7157 + _7165 + 32 <= return_data.size
                mem[_7173 + 32 len ceil32(_7165)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7157 + 512 len ceil32(_7165)]
                if ceil32(_7165) <= _7165:
                    mem[_3753 + 192] = _7173
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10490 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10490)] = mem[ceil32(return_data.size) + 672 len ceil32(_10490)]
                    if ceil32(_10490) <= _10490:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10490) + 192
                        _13803 = mem[_367]
                        mem[mem[64] + ceil32(_10490) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10490) + 288 len ceil32(_13803)] = mem[_367 + 32 len ceil32(_13803)]
                        if ceil32(_13803) <= _13803:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17109 = mem[64]
                            mem[mem[64]] = ceil32(_10490) + ceil32(_13803) + 256
                            mem[64] = mem[64] + ceil32(_10490) + ceil32(_13803) + 288
                            _17111 = sha3(mem[_17109 + 32 len mem[_17109]])
                            mem[0] = sha3(mem[_17109 + 32 len mem[_17109]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17111
                            mem[32] = 4
                            _17507 = mem[_3765]
                            stor4[_17111][].field_0 = Array(len=_17507, data=mem[_3765 + 32 len _17507])
                            uint64(stor4[_17111].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17111].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17111].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17111].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17111].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17111][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
                        else:
                            mem[mem[64] + ceil32(_10490) + _13803 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17215 = mem[64]
                            mem[mem[64]] = ceil32(_10490) + ceil32(_13803) + 256
                            mem[64] = mem[64] + ceil32(_10490) + ceil32(_13803) + 288
                            _17217 = sha3(mem[_17215 + 32 len mem[_17215]])
                            mem[0] = sha3(mem[_17215 + 32 len mem[_17215]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17217
                            mem[32] = 4
                            _17696 = mem[_3765]
                            stor4[_17217][].field_0 = Array(len=_17696, data=mem[_3765 + 32 len _17696])
                            uint64(stor4[_17217].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17217].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17217].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17217].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17217].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17217][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
                    else:
                        mem[mem[64] + _10490 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10490) + 192
                        _13819 = mem[_367]
                        mem[mem[64] + ceil32(_10490) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10490) + 288 len ceil32(_13819)] = mem[_367 + 32 len ceil32(_13819)]
                        if ceil32(_13819) <= _13819:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17112 = mem[64]
                            mem[mem[64]] = ceil32(_10490) + ceil32(_13819) + 256
                            mem[64] = mem[64] + ceil32(_10490) + ceil32(_13819) + 288
                            _17114 = sha3(mem[_17112 + 32 len mem[_17112]])
                            mem[0] = sha3(mem[_17112 + 32 len mem[_17112]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17114
                            mem[32] = 4
                            _17513 = mem[_3765]
                            stor4[_17114][].field_0 = Array(len=_17513, data=mem[_3765 + 32 len _17513])
                            uint64(stor4[_17114].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17114].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17114].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17114].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17114].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17114][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
                        else:
                            mem[mem[64] + ceil32(_10490) + _13819 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17220 = mem[64]
                            mem[mem[64]] = ceil32(_10490) + ceil32(_13819) + 256
                            mem[64] = mem[64] + ceil32(_10490) + ceil32(_13819) + 288
                            _17222 = sha3(mem[_17220 + 32 len mem[_17220]])
                            mem[0] = sha3(mem[_17220 + 32 len mem[_17220]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17222
                            mem[32] = 4
                            _17701 = mem[_3765]
                            stor4[_17222][].field_0 = Array(len=_17701, data=mem[_3765 + 32 len _17701])
                            uint64(stor4[_17222].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17222].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17222].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17222].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17222].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17222][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
                else:
                    mem[_7173 + _7165 + 32] = 0
                    mem[_3753 + 192] = _7173
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10498 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10498)] = mem[ceil32(return_data.size) + 672 len ceil32(_10498)]
                    if ceil32(_10498) <= _10498:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10498) + 192
                        _13804 = mem[_367]
                        mem[mem[64] + ceil32(_10498) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10498) + 288 len ceil32(_13804)] = mem[_367 + 32 len ceil32(_13804)]
                        if ceil32(_13804) <= _13804:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17115 = mem[64]
                            mem[mem[64]] = ceil32(_10498) + ceil32(_13804) + 256
                            mem[64] = mem[64] + ceil32(_10498) + ceil32(_13804) + 288
                            _17117 = sha3(mem[_17115 + 32 len mem[_17115]])
                            mem[0] = sha3(mem[_17115 + 32 len mem[_17115]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17117
                            mem[32] = 4
                            _17519 = mem[_3765]
                            stor4[_17117][].field_0 = Array(len=_17519, data=mem[_3765 + 32 len _17519])
                            uint64(stor4[_17117].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17117].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17117].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17117].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17117].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17117][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
                        else:
                            mem[mem[64] + ceil32(_10498) + _13804 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17225 = mem[64]
                            mem[mem[64]] = ceil32(_10498) + ceil32(_13804) + 256
                            mem[64] = mem[64] + ceil32(_10498) + ceil32(_13804) + 288
                            _17227 = sha3(mem[_17225 + 32 len mem[_17225]])
                            mem[0] = sha3(mem[_17225 + 32 len mem[_17225]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17227
                            mem[32] = 4
                            _17706 = mem[_3765]
                            stor4[_17227][].field_0 = Array(len=_17706, data=mem[_3765 + 32 len _17706])
                            uint64(stor4[_17227].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17227].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17227].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17227].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17227].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17227][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
                    else:
                        mem[mem[64] + _10498 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10498) + 192
                        _13820 = mem[_367]
                        mem[mem[64] + ceil32(_10498) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10498) + 288 len ceil32(_13820)] = mem[_367 + 32 len ceil32(_13820)]
                        if ceil32(_13820) <= _13820:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17118 = mem[64]
                            mem[mem[64]] = ceil32(_10498) + ceil32(_13820) + 256
                            mem[64] = mem[64] + ceil32(_10498) + ceil32(_13820) + 288
                            _17120 = sha3(mem[_17118 + 32 len mem[_17118]])
                            mem[0] = sha3(mem[_17118 + 32 len mem[_17118]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17120
                            mem[32] = 4
                            _17525 = mem[_3765]
                            stor4[_17120][].field_0 = Array(len=_17525, data=mem[_3765 + 32 len _17525])
                            uint64(stor4[_17120].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17120].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17120].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17120].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17120].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17120][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
                        else:
                            mem[mem[64] + ceil32(_10498) + _13820 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17230 = mem[64]
                            mem[mem[64]] = ceil32(_10498) + ceil32(_13820) + 256
                            mem[64] = mem[64] + ceil32(_10498) + ceil32(_13820) + 288
                            _17232 = sha3(mem[_17230 + 32 len mem[_17230]])
                            mem[0] = sha3(mem[_17230 + 32 len mem[_17230]])
                            if mem[_3753 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3753 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17232
                            mem[32] = 4
                            _17711 = mem[_3765]
                            stor4[_17232][].field_0 = Array(len=_17711, data=mem[_3765 + 32 len _17711])
                            uint64(stor4[_17232].field_256) = mem[_3753 + 56 len 8]
                            uint64(stor4[_17232].field_320) = mem[_3753 + 88 len 8]
                            uint64(stor4[_17232].field_384) = mem[_3753 + 120 len 8]
                            uint64(stor4[_17232].field_448) = mem[_3753 + 152 len 8]
                            uint8(stor4[_17232].field_512) = mem[_3753 + 191 len 1]
                            stor4[_17232][3][].field_0 = Array(len=_7165, data=mem[_7173 + 32 len _7165])
        else:
            mem[_367 + _365 + 32] = 0
            mem[ceil32(return_data.size) + 544] = _367
            require mem[_6 + 576] == mem[_6 + 600 len 8]
            mem[ceil32(return_data.size) + 576] = mem[_6 + 576]
            require mem[_6 + 608] == mem[_6 + 632 len 8]
            mem[ceil32(return_data.size) + 608] = mem[_6 + 608]
            require 32, Mask(224, 32, arg1.length) >> 32 <= test266151307()
            require return_data.size - 32, Mask(224, 32, arg1.length) >> 32 >= 224
            _3755 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            _3759 = mem[32, Mask(224, 32, arg1.length) >> 32 + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + 480] <= test266151307()
            require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 511 < return_data.size + 480
            _3763 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480] <= test266151307()
            _3767 = mem[64]
            require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 >= mem[64]
            mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32
            mem[_3767] = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]
            require 32, Mask(224, 32, arg1.length) >> 32 + _3759 + _3763 + 32 <= return_data.size
            mem[_3767 + 32 len ceil32(_3763)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _3759 + 512 len ceil32(_3763)]
            if ceil32(_3763) <= _3763:
                mem[_3755] = _3767
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3755 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3755 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3755 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3755 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3755 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7154 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7162 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7170 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7170] = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require 32, Mask(224, 32, arg1.length) >> 32 + _7154 + _7162 + 32 <= return_data.size
                mem[_7170 + 32 len ceil32(_7162)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7154 + 512 len ceil32(_7162)]
                if ceil32(_7162) <= _7162:
                    mem[_3755 + 192] = _7170
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10491 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10491)] = mem[ceil32(return_data.size) + 672 len ceil32(_10491)]
                    if ceil32(_10491) <= _10491:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10491) + 192
                        _13805 = mem[_367]
                        mem[mem[64] + ceil32(_10491) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10491) + 288 len ceil32(_13805)] = mem[_367 + 32 len ceil32(_13805)]
                        if ceil32(_13805) <= _13805:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17121 = mem[64]
                            mem[mem[64]] = ceil32(_10491) + ceil32(_13805) + 256
                            mem[64] = mem[64] + ceil32(_10491) + ceil32(_13805) + 288
                            _17123 = sha3(mem[_17121 + 32 len mem[_17121]])
                            mem[0] = sha3(mem[_17121 + 32 len mem[_17121]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17123
                            mem[32] = 4
                            _17531 = mem[_3767]
                            mem[0] = sha3(_17123, 4)
                            stor4[_17123][].field_0 = Array(len=_17531, data=mem[_3767 + 32 len _17531])
                            uint64(stor4[_17123].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17123].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17123].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17123].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17123].field_512) = mem[_3755 + 191 len 1]
                            _22271 = mem[_7170]
                            stor4[_17123][3][].field_0 = Array(len=_22271, data=mem[_7170 + 32 len _22271])
                        else:
                            mem[mem[64] + ceil32(_10491) + _13805 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17235 = mem[64]
                            mem[mem[64]] = ceil32(_10491) + ceil32(_13805) + 256
                            mem[64] = mem[64] + ceil32(_10491) + ceil32(_13805) + 288
                            _17237 = sha3(mem[_17235 + 32 len mem[_17235]])
                            mem[0] = sha3(mem[_17235 + 32 len mem[_17235]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17237
                            mem[32] = 4
                            _17716 = mem[_3767]
                            mem[0] = sha3(_17237, 4)
                            stor4[_17237][].field_0 = Array(len=_17716, data=mem[_3767 + 32 len _17716])
                            uint64(stor4[_17237].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17237].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17237].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17237].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17237].field_512) = mem[_3755 + 191 len 1]
                            _22278 = mem[_7170]
                            stor4[_17237][3][].field_0 = Array(len=_22278, data=mem[_7170 + 32 len _22278])
                    else:
                        mem[mem[64] + _10491 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10491) + 192
                        _13821 = mem[_367]
                        mem[mem[64] + ceil32(_10491) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10491) + 288 len ceil32(_13821)] = mem[_367 + 32 len ceil32(_13821)]
                        if ceil32(_13821) <= _13821:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17124 = mem[64]
                            mem[mem[64]] = ceil32(_10491) + ceil32(_13821) + 256
                            mem[64] = mem[64] + ceil32(_10491) + ceil32(_13821) + 288
                            _17126 = sha3(mem[_17124 + 32 len mem[_17124]])
                            mem[0] = sha3(mem[_17124 + 32 len mem[_17124]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17126
                            mem[32] = 4
                            _17537 = mem[_3767]
                            mem[0] = sha3(_17126, 4)
                            stor4[_17126][].field_0 = Array(len=_17537, data=mem[_3767 + 32 len _17537])
                            uint64(stor4[_17126].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17126].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17126].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17126].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17126].field_512) = mem[_3755 + 191 len 1]
                            _22285 = mem[_7170]
                            stor4[_17126][3][].field_0 = Array(len=_22285, data=mem[_7170 + 32 len _22285])
                        else:
                            mem[mem[64] + ceil32(_10491) + _13821 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17240 = mem[64]
                            mem[mem[64]] = ceil32(_10491) + ceil32(_13821) + 256
                            mem[64] = mem[64] + ceil32(_10491) + ceil32(_13821) + 288
                            _17242 = sha3(mem[_17240 + 32 len mem[_17240]])
                            mem[0] = sha3(mem[_17240 + 32 len mem[_17240]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17242
                            mem[32] = 4
                            _17721 = mem[_3767]
                            mem[0] = sha3(_17242, 4)
                            stor4[_17242][].field_0 = Array(len=_17721, data=mem[_3767 + 32 len _17721])
                            uint64(stor4[_17242].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17242].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17242].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17242].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17242].field_512) = mem[_3755 + 191 len 1]
                            _22292 = mem[_7170]
                            stor4[_17242][3][].field_0 = Array(len=_22292, data=mem[_7170 + 32 len _22292])
                else:
                    mem[_7170 + _7162 + 32] = 0
                    mem[_3755 + 192] = _7170
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10499 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10499)] = mem[ceil32(return_data.size) + 672 len ceil32(_10499)]
                    if ceil32(_10499) <= _10499:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10499) + 192
                        _13806 = mem[_367]
                        mem[mem[64] + ceil32(_10499) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10499) + 288 len ceil32(_13806)] = mem[_367 + 32 len ceil32(_13806)]
                        if ceil32(_13806) <= _13806:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17127 = mem[64]
                            mem[mem[64]] = ceil32(_10499) + ceil32(_13806) + 256
                            mem[64] = mem[64] + ceil32(_10499) + ceil32(_13806) + 288
                            _17129 = sha3(mem[_17127 + 32 len mem[_17127]])
                            mem[0] = sha3(mem[_17127 + 32 len mem[_17127]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17129
                            mem[32] = 4
                            _17543 = mem[_3767]
                            mem[0] = sha3(_17129, 4)
                            stor4[_17129][].field_0 = Array(len=_17543, data=mem[_3767 + 32 len _17543])
                            uint64(stor4[_17129].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17129].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17129].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17129].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17129].field_512) = mem[_3755 + 191 len 1]
                            _22299 = mem[_7170]
                            stor4[_17129][3][].field_0 = Array(len=_22299, data=mem[_7170 + 32 len _22299])
                        else:
                            mem[mem[64] + ceil32(_10499) + _13806 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17245 = mem[64]
                            mem[mem[64]] = ceil32(_10499) + ceil32(_13806) + 256
                            mem[64] = mem[64] + ceil32(_10499) + ceil32(_13806) + 288
                            _17247 = sha3(mem[_17245 + 32 len mem[_17245]])
                            mem[0] = sha3(mem[_17245 + 32 len mem[_17245]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17247
                            mem[32] = 4
                            _17726 = mem[_3767]
                            mem[0] = sha3(_17247, 4)
                            stor4[_17247][].field_0 = Array(len=_17726, data=mem[_3767 + 32 len _17726])
                            uint64(stor4[_17247].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17247].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17247].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17247].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17247].field_512) = mem[_3755 + 191 len 1]
                            _22306 = mem[_7170]
                            stor4[_17247][3][].field_0 = Array(len=_22306, data=mem[_7170 + 32 len _22306])
                    else:
                        mem[mem[64] + _10499 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10499) + 192
                        _13822 = mem[_367]
                        mem[mem[64] + ceil32(_10499) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10499) + 288 len ceil32(_13822)] = mem[_367 + 32 len ceil32(_13822)]
                        if ceil32(_13822) <= _13822:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17130 = mem[64]
                            mem[mem[64]] = ceil32(_10499) + ceil32(_13822) + 256
                            mem[64] = mem[64] + ceil32(_10499) + ceil32(_13822) + 288
                            _17132 = sha3(mem[_17130 + 32 len mem[_17130]])
                            mem[0] = sha3(mem[_17130 + 32 len mem[_17130]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17132
                            mem[32] = 4
                            _17549 = mem[_3767]
                            mem[0] = sha3(_17132, 4)
                            stor4[_17132][].field_0 = Array(len=_17549, data=mem[_3767 + 32 len _17549])
                            uint64(stor4[_17132].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17132].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17132].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17132].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17132].field_512) = mem[_3755 + 191 len 1]
                            _22313 = mem[_7170]
                            stor4[_17132][3][].field_0 = Array(len=_22313, data=mem[_7170 + 32 len _22313])
                        else:
                            mem[mem[64] + ceil32(_10499) + _13822 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17250 = mem[64]
                            mem[mem[64]] = ceil32(_10499) + ceil32(_13822) + 256
                            mem[64] = mem[64] + ceil32(_10499) + ceil32(_13822) + 288
                            _17252 = sha3(mem[_17250 + 32 len mem[_17250]])
                            mem[0] = sha3(mem[_17250 + 32 len mem[_17250]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17252
                            mem[32] = 4
                            _17731 = mem[_3767]
                            mem[0] = sha3(_17252, 4)
                            stor4[_17252][].field_0 = Array(len=_17731, data=mem[_3767 + 32 len _17731])
                            uint64(stor4[_17252].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17252].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17252].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17252].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17252].field_512) = mem[_3755 + 191 len 1]
                            _22320 = mem[_7170]
                            stor4[_17252][3][].field_0 = Array(len=_22320, data=mem[_7170 + 32 len _22320])
            else:
                mem[_3767 + _3763 + 32] = 0
                mem[_3755] = _3767
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3755 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3755 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3755 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3755 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3755 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7158 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7166 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7174 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7174] = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require 32, Mask(224, 32, arg1.length) >> 32 + _7158 + _7166 + 32 <= return_data.size
                mem[_7174 + 32 len ceil32(_7166)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7158 + 512 len ceil32(_7166)]
                if ceil32(_7166) <= _7166:
                    mem[_3755 + 192] = _7174
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10492 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10492)] = mem[ceil32(return_data.size) + 672 len ceil32(_10492)]
                    if ceil32(_10492) <= _10492:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10492) + 192
                        _13807 = mem[_367]
                        mem[mem[64] + ceil32(_10492) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10492) + 288 len ceil32(_13807)] = mem[_367 + 32 len ceil32(_13807)]
                        if ceil32(_13807) <= _13807:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17133 = mem[64]
                            mem[mem[64]] = ceil32(_10492) + ceil32(_13807) + 256
                            mem[64] = mem[64] + ceil32(_10492) + ceil32(_13807) + 288
                            _17135 = sha3(mem[_17133 + 32 len mem[_17133]])
                            mem[0] = sha3(mem[_17133 + 32 len mem[_17133]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17135
                            mem[32] = 4
                            _17555 = mem[_3767]
                            mem[0] = sha3(_17135, 4)
                            stor4[_17135][].field_0 = Array(len=_17555, data=mem[_3767 + 32 len _17555])
                            uint64(stor4[_17135].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17135].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17135].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17135].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17135].field_512) = mem[_3755 + 191 len 1]
                            _22327 = mem[_7174]
                            stor4[_17135][3][].field_0 = Array(len=_22327, data=mem[_7174 + 32 len _22327])
                        else:
                            mem[mem[64] + ceil32(_10492) + _13807 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17255 = mem[64]
                            mem[mem[64]] = ceil32(_10492) + ceil32(_13807) + 256
                            mem[64] = mem[64] + ceil32(_10492) + ceil32(_13807) + 288
                            _17257 = sha3(mem[_17255 + 32 len mem[_17255]])
                            mem[0] = sha3(mem[_17255 + 32 len mem[_17255]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17257
                            mem[32] = 4
                            _17736 = mem[_3767]
                            mem[0] = sha3(_17257, 4)
                            stor4[_17257][].field_0 = Array(len=_17736, data=mem[_3767 + 32 len _17736])
                            uint64(stor4[_17257].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17257].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17257].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17257].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17257].field_512) = mem[_3755 + 191 len 1]
                            _22334 = mem[_7174]
                            stor4[_17257][3][].field_0 = Array(len=_22334, data=mem[_7174 + 32 len _22334])
                    else:
                        mem[mem[64] + _10492 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10492) + 192
                        _13823 = mem[_367]
                        mem[mem[64] + ceil32(_10492) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10492) + 288 len ceil32(_13823)] = mem[_367 + 32 len ceil32(_13823)]
                        if ceil32(_13823) <= _13823:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17136 = mem[64]
                            mem[mem[64]] = ceil32(_10492) + ceil32(_13823) + 256
                            mem[64] = mem[64] + ceil32(_10492) + ceil32(_13823) + 288
                            _17138 = sha3(mem[_17136 + 32 len mem[_17136]])
                            mem[0] = sha3(mem[_17136 + 32 len mem[_17136]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17138
                            mem[32] = 4
                            _17561 = mem[_3767]
                            mem[0] = sha3(_17138, 4)
                            stor4[_17138][].field_0 = Array(len=_17561, data=mem[_3767 + 32 len _17561])
                            uint64(stor4[_17138].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17138].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17138].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17138].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17138].field_512) = mem[_3755 + 191 len 1]
                            _22341 = mem[_7174]
                            stor4[_17138][3][].field_0 = Array(len=_22341, data=mem[_7174 + 32 len _22341])
                        else:
                            mem[mem[64] + ceil32(_10492) + _13823 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17260 = mem[64]
                            mem[mem[64]] = ceil32(_10492) + ceil32(_13823) + 256
                            mem[64] = mem[64] + ceil32(_10492) + ceil32(_13823) + 288
                            _17262 = sha3(mem[_17260 + 32 len mem[_17260]])
                            mem[0] = sha3(mem[_17260 + 32 len mem[_17260]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17262
                            mem[32] = 4
                            _17741 = mem[_3767]
                            mem[0] = sha3(_17262, 4)
                            stor4[_17262][].field_0 = Array(len=_17741, data=mem[_3767 + 32 len _17741])
                            uint64(stor4[_17262].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17262].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17262].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17262].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17262].field_512) = mem[_3755 + 191 len 1]
                            _22348 = mem[_7174]
                            stor4[_17262][3][].field_0 = Array(len=_22348, data=mem[_7174 + 32 len _22348])
                else:
                    mem[_7174 + _7166 + 32] = 0
                    mem[_3755 + 192] = _7174
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10500 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10500)] = mem[ceil32(return_data.size) + 672 len ceil32(_10500)]
                    if ceil32(_10500) <= _10500:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10500) + 192
                        _13808 = mem[_367]
                        mem[mem[64] + ceil32(_10500) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10500) + 288 len ceil32(_13808)] = mem[_367 + 32 len ceil32(_13808)]
                        if ceil32(_13808) <= _13808:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17139 = mem[64]
                            mem[mem[64]] = ceil32(_10500) + ceil32(_13808) + 256
                            mem[64] = mem[64] + ceil32(_10500) + ceil32(_13808) + 288
                            _17141 = sha3(mem[_17139 + 32 len mem[_17139]])
                            mem[0] = sha3(mem[_17139 + 32 len mem[_17139]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17141
                            mem[32] = 4
                            _17567 = mem[_3767]
                            mem[0] = sha3(_17141, 4)
                            stor4[_17141][].field_0 = Array(len=_17567, data=mem[_3767 + 32 len _17567])
                            uint64(stor4[_17141].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17141].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17141].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17141].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17141].field_512) = mem[_3755 + 191 len 1]
                            _22355 = mem[_7174]
                            stor4[_17141][3][].field_0 = Array(len=_22355, data=mem[_7174 + 32 len _22355])
                        else:
                            mem[mem[64] + ceil32(_10500) + _13808 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17265 = mem[64]
                            mem[mem[64]] = ceil32(_10500) + ceil32(_13808) + 256
                            mem[64] = mem[64] + ceil32(_10500) + ceil32(_13808) + 288
                            _17267 = sha3(mem[_17265 + 32 len mem[_17265]])
                            mem[0] = sha3(mem[_17265 + 32 len mem[_17265]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17267
                            mem[32] = 4
                            _17746 = mem[_3767]
                            mem[0] = sha3(_17267, 4)
                            stor4[_17267][].field_0 = Array(len=_17746, data=mem[_3767 + 32 len _17746])
                            uint64(stor4[_17267].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17267].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17267].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17267].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17267].field_512) = mem[_3755 + 191 len 1]
                            _22362 = mem[_7174]
                            stor4[_17267][3][].field_0 = Array(len=_22362, data=mem[_7174 + 32 len _22362])
                    else:
                        mem[mem[64] + _10500 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10500) + 192
                        _13824 = mem[_367]
                        mem[mem[64] + ceil32(_10500) + 256] = mem[_367]
                        mem[mem[64] + ceil32(_10500) + 288 len ceil32(_13824)] = mem[_367 + 32 len ceil32(_13824)]
                        if ceil32(_13824) <= _13824:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17142 = mem[64]
                            mem[mem[64]] = ceil32(_10500) + ceil32(_13824) + 256
                            mem[64] = mem[64] + ceil32(_10500) + ceil32(_13824) + 288
                            _17144 = sha3(mem[_17142 + 32 len mem[_17142]])
                            mem[0] = sha3(mem[_17142 + 32 len mem[_17142]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17144
                            mem[32] = 4
                            _17573 = mem[_3767]
                            mem[0] = sha3(_17144, 4)
                            stor4[_17144][].field_0 = Array(len=_17573, data=mem[_3767 + 32 len _17573])
                            uint64(stor4[_17144].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17144].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17144].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17144].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17144].field_512) = mem[_3755 + 191 len 1]
                            _22369 = mem[_7174]
                            stor4[_17144][3][].field_0 = Array(len=_22369, data=mem[_7174 + 32 len _22369])
                        else:
                            mem[mem[64] + ceil32(_10500) + _13824 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17270 = mem[64]
                            mem[mem[64]] = ceil32(_10500) + ceil32(_13824) + 256
                            mem[64] = mem[64] + ceil32(_10500) + ceil32(_13824) + 288
                            _17272 = sha3(mem[_17270 + 32 len mem[_17270]])
                            mem[0] = sha3(mem[_17270 + 32 len mem[_17270]])
                            if mem[_3755 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3755 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17272
                            mem[32] = 4
                            _17751 = mem[_3767]
                            mem[0] = sha3(_17272, 4)
                            stor4[_17272][].field_0 = Array(len=_17751, data=mem[_3767 + 32 len _17751])
                            uint64(stor4[_17272].field_256) = mem[_3755 + 56 len 8]
                            uint64(stor4[_17272].field_320) = mem[_3755 + 88 len 8]
                            uint64(stor4[_17272].field_384) = mem[_3755 + 120 len 8]
                            uint64(stor4[_17272].field_448) = mem[_3755 + 152 len 8]
                            uint8(stor4[_17272].field_512) = mem[_3755 + 191 len 1]
                            _22376 = mem[_7174]
                            stor4[_17272][3][].field_0 = Array(len=_22376, data=mem[_7174 + 32 len _22376])
    else:
        mem[ceil32(return_data.size) + _9 + 672] = 0
        mem[ceil32(return_data.size) + 480] = ceil32(return_data.size) + 640
        require mem[_6 + 512] == mem[_6 + 536 len 8]
        mem[ceil32(return_data.size) + 512] = mem[_6 + 512]
        _364 = mem[_6 + 544]
        require mem[_6 + 544] <= test266151307()
        require _6 + mem[_6 + 544] + 511 < return_data.size + 480
        _366 = mem[_6 + mem[_6 + 544] + 480]
        require mem[_6 + mem[_6 + 544] + 480] <= test266151307()
        _368 = mem[64]
        require mem[64] + ceil32(mem[_6 + mem[_6 + 544] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[_6 + mem[_6 + 544] + 480]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(mem[_6 + mem[_6 + 544] + 480]) + 32
        mem[_368] = mem[_6 + mem[_6 + 544] + 480]
        require _6 + _364 + _366 + 32 <= return_data.size
        mem[_368 + 32 len ceil32(_366)] = mem[_6 + _364 + 512 len ceil32(_366)]
        if ceil32(_366) <= _366:
            mem[ceil32(return_data.size) + 544] = _368
            require mem[_6 + 576] == mem[_6 + 600 len 8]
            mem[ceil32(return_data.size) + 576] = mem[_6 + 576]
            require mem[_6 + 608] == mem[_6 + 632 len 8]
            mem[ceil32(return_data.size) + 608] = mem[_6 + 608]
            require 32, Mask(224, 32, arg1.length) >> 32 <= test266151307()
            require return_data.size - 32, Mask(224, 32, arg1.length) >> 32 >= 224
            _3754 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            _3758 = mem[32, Mask(224, 32, arg1.length) >> 32 + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + 480] <= test266151307()
            require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 511 < return_data.size + 480
            _3762 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480] <= test266151307()
            _3766 = mem[64]
            require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 >= mem[64]
            mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32
            mem[_3766] = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]
            require 32, Mask(224, 32, arg1.length) >> 32 + _3758 + _3762 + 32 <= return_data.size
            mem[_3766 + 32 len ceil32(_3762)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _3758 + 512 len ceil32(_3762)]
            if ceil32(_3762) <= _3762:
                mem[_3754] = _3766
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3754 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3754 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3754 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3754 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3754 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7155 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7163 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7171 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7171] = _7163
                require 32, Mask(224, 32, arg1.length) >> 32 + _7155 + _7163 + 32 <= return_data.size
                mem[_7171 + 32 len ceil32(_7163)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7155 + 512 len ceil32(_7163)]
                if ceil32(_7163) <= _7163:
                    mem[_3754 + 192] = _7171
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10493 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10493)] = mem[ceil32(return_data.size) + 672 len ceil32(_10493)]
                    if ceil32(_10493) <= _10493:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10493) + 192
                        _13809 = mem[_368]
                        mem[mem[64] + ceil32(_10493) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10493) + 288 len ceil32(_13809)] = mem[_368 + 32 len ceil32(_13809)]
                        if ceil32(_13809) <= _13809:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17145 = mem[64]
                            mem[mem[64]] = ceil32(_10493) + ceil32(_13809) + 256
                            mem[64] = mem[64] + ceil32(_10493) + ceil32(_13809) + 288
                            _17147 = sha3(mem[_17145 + 32 len mem[_17145]])
                            mem[0] = sha3(mem[_17145 + 32 len mem[_17145]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17147
                            mem[32] = 4
                            _17579 = mem[_3766]
                            stor4[_17147][].field_0 = Array(len=_17579, data=mem[_3766 + 32 len _17579])
                            uint64(stor4[_17147].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17147].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17147].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17147].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17147].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17147][3][].field_0 = Array(len=_7163, data=mem[_7171 + 32 len _7163])
                        else:
                            mem[mem[64] + ceil32(_10493) + _13809 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17275 = mem[64]
                            mem[mem[64]] = ceil32(_10493) + ceil32(_13809) + 256
                            mem[64] = mem[64] + ceil32(_10493) + ceil32(_13809) + 288
                            _17277 = sha3(mem[_17275 + 32 len mem[_17275]])
                            mem[0] = sha3(mem[_17275 + 32 len mem[_17275]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17277
                            mem[32] = 4
                            _17756 = mem[_3766]
                            stor4[_17277][].field_0 = Array(len=_17756, data=mem[_3766 + 32 len _17756])
                            uint64(stor4[_17277].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17277].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17277].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17277].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17277].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17277][3][].field_0 = Array(len=_7163, data=mem[_7171 + 32 len _7163])
                    else:
                        mem[mem[64] + _10493 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10493) + 192
                        _13825 = mem[_368]
                        mem[mem[64] + ceil32(_10493) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10493) + 288 len ceil32(_13825)] = mem[_368 + 32 len ceil32(_13825)]
                        if ceil32(_13825) <= _13825:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17148 = mem[64]
                            mem[mem[64]] = ceil32(_10493) + ceil32(_13825) + 256
                            mem[64] = mem[64] + ceil32(_10493) + ceil32(_13825) + 288
                            _17150 = sha3(mem[_17148 + 32 len mem[_17148]])
                            mem[0] = sha3(mem[_17148 + 32 len mem[_17148]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17150
                            mem[32] = 4
                            _17585 = mem[_3766]
                            stor4[_17150][].field_0 = Array(len=_17585, data=mem[_3766 + 32 len _17585])
                            uint64(stor4[_17150].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17150].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17150].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17150].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17150].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17150][3][].field_0 = Array(len=_7163, data=mem[_7171 + 32 len _7163])
                        else:
                            mem[mem[64] + ceil32(_10493) + _13825 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17280 = mem[64]
                            mem[mem[64]] = ceil32(_10493) + ceil32(_13825) + 256
                            mem[64] = mem[64] + ceil32(_10493) + ceil32(_13825) + 288
                            _17282 = sha3(mem[_17280 + 32 len mem[_17280]])
                            mem[0] = sha3(mem[_17280 + 32 len mem[_17280]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17282
                            mem[32] = 4
                            _17761 = mem[_3766]
                            stor4[_17282][].field_0 = Array(len=_17761, data=mem[_3766 + 32 len _17761])
                            uint64(stor4[_17282].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17282].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17282].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17282].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17282].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17282][3][].field_0 = Array(len=_7163, data=mem[_7171 + 32 len _7163])
                else:
                    mem[_7171 + _7163 + 32] = 0
                    mem[_3754 + 192] = _7171
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10501 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10501)] = mem[ceil32(return_data.size) + 672 len ceil32(_10501)]
                    if ceil32(_10501) <= _10501:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10501) + 192
                        _13810 = mem[_368]
                        mem[mem[64] + ceil32(_10501) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10501) + 288 len ceil32(_13810)] = mem[_368 + 32 len ceil32(_13810)]
                        if ceil32(_13810) <= _13810:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17151 = mem[64]
                            mem[mem[64]] = ceil32(_10501) + ceil32(_13810) + 256
                            mem[64] = mem[64] + ceil32(_10501) + ceil32(_13810) + 288
                            _17153 = sha3(mem[_17151 + 32 len mem[_17151]])
                            mem[0] = sha3(mem[_17151 + 32 len mem[_17151]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17153
                            mem[32] = 4
                            _17591 = mem[_3766]
                            stor4[_17153][].field_0 = Array(len=_17591, data=mem[_3766 + 32 len _17591])
                            uint64(stor4[_17153].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17153].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17153].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17153].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17153].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17153][3][].field_0 = Array(len=_7163, data=mem[_7171 + 32 len _7163])
                        else:
                            mem[mem[64] + ceil32(_10501) + _13810 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17285 = mem[64]
                            mem[mem[64]] = ceil32(_10501) + ceil32(_13810) + 256
                            mem[64] = mem[64] + ceil32(_10501) + ceil32(_13810) + 288
                            _17287 = sha3(mem[_17285 + 32 len mem[_17285]])
                            mem[0] = sha3(mem[_17285 + 32 len mem[_17285]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17287
                            mem[32] = 4
                            _17766 = mem[_3766]
                            stor4[_17287][].field_0 = Array(len=_17766, data=mem[_3766 + 32 len _17766])
                            uint64(stor4[_17287].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17287].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17287].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17287].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17287].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17287][3][].field_0 = Array(len=_7163, data=mem[_7171 + 32 len _7163])
                    else:
                        mem[mem[64] + _10501 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10501) + 192
                        _13826 = mem[_368]
                        mem[mem[64] + ceil32(_10501) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10501) + 288 len ceil32(_13826)] = mem[_368 + 32 len ceil32(_13826)]
                        if ceil32(_13826) <= _13826:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17154 = mem[64]
                            mem[mem[64]] = ceil32(_10501) + ceil32(_13826) + 256
                            mem[64] = mem[64] + ceil32(_10501) + ceil32(_13826) + 288
                            _17156 = sha3(mem[_17154 + 32 len mem[_17154]])
                            mem[0] = sha3(mem[_17154 + 32 len mem[_17154]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17156
                            mem[32] = 4
                            _17597 = mem[_3766]
                            stor4[_17156][].field_0 = Array(len=_17597, data=mem[_3766 + 32 len _17597])
                            uint64(stor4[_17156].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17156].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17156].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17156].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17156].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17156][3][].field_0 = Array(len=_7163, data=mem[_7171 + 32 len _7163])
                        else:
                            mem[mem[64] + ceil32(_10501) + _13826 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17290 = mem[64]
                            mem[mem[64]] = ceil32(_10501) + ceil32(_13826) + 256
                            mem[64] = mem[64] + ceil32(_10501) + ceil32(_13826) + 288
                            _17292 = sha3(mem[_17290 + 32 len mem[_17290]])
                            mem[0] = sha3(mem[_17290 + 32 len mem[_17290]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17292
                            mem[32] = 4
                            _17771 = mem[_3766]
                            stor4[_17292][].field_0 = Array(len=_17771, data=mem[_3766 + 32 len _17771])
                            uint64(stor4[_17292].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17292].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17292].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17292].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17292].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17292][3][].field_0 = Array(len=_7163, data=mem[_7171 + 32 len _7163])
            else:
                mem[_3766 + _3762 + 32] = 0
                mem[_3754] = _3766
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3754 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3754 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3754 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3754 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3754 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7159 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7167 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7175 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7175] = _7167
                require 32, Mask(224, 32, arg1.length) >> 32 + _7159 + _7167 + 32 <= return_data.size
                mem[_7175 + 32 len ceil32(_7167)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7159 + 512 len ceil32(_7167)]
                if ceil32(_7167) <= _7167:
                    mem[_3754 + 192] = _7175
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10494 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10494)] = mem[ceil32(return_data.size) + 672 len ceil32(_10494)]
                    if ceil32(_10494) <= _10494:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10494) + 192
                        _13811 = mem[_368]
                        mem[mem[64] + ceil32(_10494) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10494) + 288 len ceil32(_13811)] = mem[_368 + 32 len ceil32(_13811)]
                        if ceil32(_13811) <= _13811:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17157 = mem[64]
                            mem[mem[64]] = ceil32(_10494) + ceil32(_13811) + 256
                            mem[64] = mem[64] + ceil32(_10494) + ceil32(_13811) + 288
                            _17159 = sha3(mem[_17157 + 32 len mem[_17157]])
                            mem[0] = sha3(mem[_17157 + 32 len mem[_17157]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17159
                            mem[32] = 4
                            _17603 = mem[_3766]
                            stor4[_17159][].field_0 = Array(len=_17603, data=mem[_3766 + 32 len _17603])
                            uint64(stor4[_17159].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17159].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17159].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17159].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17159].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17159][3][].field_0 = Array(len=_7167, data=mem[_7175 + 32 len _7167])
                        else:
                            mem[mem[64] + ceil32(_10494) + _13811 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17295 = mem[64]
                            mem[mem[64]] = ceil32(_10494) + ceil32(_13811) + 256
                            mem[64] = mem[64] + ceil32(_10494) + ceil32(_13811) + 288
                            _17297 = sha3(mem[_17295 + 32 len mem[_17295]])
                            mem[0] = sha3(mem[_17295 + 32 len mem[_17295]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17297
                            mem[32] = 4
                            _17776 = mem[_3766]
                            stor4[_17297][].field_0 = Array(len=_17776, data=mem[_3766 + 32 len _17776])
                            uint64(stor4[_17297].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17297].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17297].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17297].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17297].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17297][3][].field_0 = Array(len=_7167, data=mem[_7175 + 32 len _7167])
                    else:
                        mem[mem[64] + _10494 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10494) + 192
                        _13827 = mem[_368]
                        mem[mem[64] + ceil32(_10494) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10494) + 288 len ceil32(_13827)] = mem[_368 + 32 len ceil32(_13827)]
                        if ceil32(_13827) <= _13827:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17160 = mem[64]
                            mem[mem[64]] = ceil32(_10494) + ceil32(_13827) + 256
                            mem[64] = mem[64] + ceil32(_10494) + ceil32(_13827) + 288
                            _17162 = sha3(mem[_17160 + 32 len mem[_17160]])
                            mem[0] = sha3(mem[_17160 + 32 len mem[_17160]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17162
                            mem[32] = 4
                            _17609 = mem[_3766]
                            stor4[_17162][].field_0 = Array(len=_17609, data=mem[_3766 + 32 len _17609])
                            uint64(stor4[_17162].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17162].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17162].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17162].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17162].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17162][3][].field_0 = Array(len=_7167, data=mem[_7175 + 32 len _7167])
                        else:
                            mem[mem[64] + ceil32(_10494) + _13827 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17300 = mem[64]
                            mem[mem[64]] = ceil32(_10494) + ceil32(_13827) + 256
                            mem[64] = mem[64] + ceil32(_10494) + ceil32(_13827) + 288
                            _17302 = sha3(mem[_17300 + 32 len mem[_17300]])
                            mem[0] = sha3(mem[_17300 + 32 len mem[_17300]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17302
                            mem[32] = 4
                            _17781 = mem[_3766]
                            stor4[_17302][].field_0 = Array(len=_17781, data=mem[_3766 + 32 len _17781])
                            uint64(stor4[_17302].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17302].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17302].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17302].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17302].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17302][3][].field_0 = Array(len=_7167, data=mem[_7175 + 32 len _7167])
                else:
                    mem[_7175 + _7167 + 32] = 0
                    mem[_3754 + 192] = _7175
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10502 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10502)] = mem[ceil32(return_data.size) + 672 len ceil32(_10502)]
                    if ceil32(_10502) <= _10502:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10502) + 192
                        _13812 = mem[_368]
                        mem[mem[64] + ceil32(_10502) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10502) + 288 len ceil32(_13812)] = mem[_368 + 32 len ceil32(_13812)]
                        if ceil32(_13812) <= _13812:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17163 = mem[64]
                            mem[mem[64]] = ceil32(_10502) + ceil32(_13812) + 256
                            mem[64] = mem[64] + ceil32(_10502) + ceil32(_13812) + 288
                            _17165 = sha3(mem[_17163 + 32 len mem[_17163]])
                            mem[0] = sha3(mem[_17163 + 32 len mem[_17163]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17165
                            mem[32] = 4
                            _17615 = mem[_3766]
                            stor4[_17165][].field_0 = Array(len=_17615, data=mem[_3766 + 32 len _17615])
                            uint64(stor4[_17165].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17165].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17165].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17165].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17165].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17165][3][].field_0 = Array(len=_7167, data=mem[_7175 + 32 len _7167])
                        else:
                            mem[mem[64] + ceil32(_10502) + _13812 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17305 = mem[64]
                            mem[mem[64]] = ceil32(_10502) + ceil32(_13812) + 256
                            mem[64] = mem[64] + ceil32(_10502) + ceil32(_13812) + 288
                            _17307 = sha3(mem[_17305 + 32 len mem[_17305]])
                            mem[0] = sha3(mem[_17305 + 32 len mem[_17305]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17307
                            mem[32] = 4
                            _17786 = mem[_3766]
                            stor4[_17307][].field_0 = Array(len=_17786, data=mem[_3766 + 32 len _17786])
                            uint64(stor4[_17307].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17307].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17307].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17307].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17307].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17307][3][].field_0 = Array(len=_7167, data=mem[_7175 + 32 len _7167])
                    else:
                        mem[mem[64] + _10502 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10502) + 192
                        _13828 = mem[_368]
                        mem[mem[64] + ceil32(_10502) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10502) + 288 len ceil32(_13828)] = mem[_368 + 32 len ceil32(_13828)]
                        if ceil32(_13828) <= _13828:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17166 = mem[64]
                            mem[mem[64]] = ceil32(_10502) + ceil32(_13828) + 256
                            mem[64] = mem[64] + ceil32(_10502) + ceil32(_13828) + 288
                            _17168 = sha3(mem[_17166 + 32 len mem[_17166]])
                            mem[0] = sha3(mem[_17166 + 32 len mem[_17166]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17168
                            mem[32] = 4
                            _17621 = mem[_3766]
                            stor4[_17168][].field_0 = Array(len=_17621, data=mem[_3766 + 32 len _17621])
                            uint64(stor4[_17168].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17168].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17168].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17168].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17168].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17168][3][].field_0 = Array(len=_7167, data=mem[_7175 + 32 len _7167])
                        else:
                            mem[mem[64] + ceil32(_10502) + _13828 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17310 = mem[64]
                            mem[mem[64]] = ceil32(_10502) + ceil32(_13828) + 256
                            mem[64] = mem[64] + ceil32(_10502) + ceil32(_13828) + 288
                            _17312 = sha3(mem[_17310 + 32 len mem[_17310]])
                            mem[0] = sha3(mem[_17310 + 32 len mem[_17310]])
                            if mem[_3754 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3754 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17312
                            mem[32] = 4
                            _17791 = mem[_3766]
                            stor4[_17312][].field_0 = Array(len=_17791, data=mem[_3766 + 32 len _17791])
                            uint64(stor4[_17312].field_256) = mem[_3754 + 56 len 8]
                            uint64(stor4[_17312].field_320) = mem[_3754 + 88 len 8]
                            uint64(stor4[_17312].field_384) = mem[_3754 + 120 len 8]
                            uint64(stor4[_17312].field_448) = mem[_3754 + 152 len 8]
                            uint8(stor4[_17312].field_512) = mem[_3754 + 191 len 1]
                            stor4[_17312][3][].field_0 = Array(len=_7167, data=mem[_7175 + 32 len _7167])
        else:
            mem[_368 + _366 + 32] = 0
            mem[ceil32(return_data.size) + 544] = _368
            require mem[_6 + 576] == mem[_6 + 600 len 8]
            mem[ceil32(return_data.size) + 576] = mem[_6 + 576]
            require mem[_6 + 608] == mem[_6 + 632 len 8]
            mem[ceil32(return_data.size) + 608] = mem[_6 + 608]
            require 32, Mask(224, 32, arg1.length) >> 32 <= test266151307()
            require return_data.size - 32, Mask(224, 32, arg1.length) >> 32 >= 224
            _3756 = mem[64]
            require mem[64] + 224 <= test266151307() and mem[64] + 224 >= mem[64]
            mem[64] = mem[64] + 224
            _3760 = mem[32, Mask(224, 32, arg1.length) >> 32 + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + 480] <= test266151307()
            require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 511 < return_data.size + 480
            _3764 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]
            require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480] <= test266151307()
            _3768 = mem[64]
            require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32 >= mem[64]
            mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]) + 32
            mem[_3768] = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 480] + 480]
            require 32, Mask(224, 32, arg1.length) >> 32 + _3760 + _3764 + 32 <= return_data.size
            mem[_3768 + 32 len ceil32(_3764)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _3760 + 512 len ceil32(_3764)]
            if ceil32(_3764) <= _3764:
                mem[_3756] = _3768
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3756 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3756 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3756 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3756 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3756 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7156 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7164 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7172 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7172] = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require 32, Mask(224, 32, arg1.length) >> 32 + _7156 + _7164 + 32 <= return_data.size
                mem[_7172 + 32 len ceil32(_7164)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7156 + 512 len ceil32(_7164)]
                if ceil32(_7164) <= _7164:
                    mem[_3756 + 192] = _7172
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10495 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10495)] = mem[ceil32(return_data.size) + 672 len ceil32(_10495)]
                    if ceil32(_10495) <= _10495:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10495) + 192
                        _13813 = mem[_368]
                        mem[mem[64] + ceil32(_10495) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10495) + 288 len ceil32(_13813)] = mem[_368 + 32 len ceil32(_13813)]
                        if ceil32(_13813) <= _13813:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17169 = mem[64]
                            mem[mem[64]] = ceil32(_10495) + ceil32(_13813) + 256
                            mem[64] = mem[64] + ceil32(_10495) + ceil32(_13813) + 288
                            _17171 = sha3(mem[_17169 + 32 len mem[_17169]])
                            mem[0] = sha3(mem[_17169 + 32 len mem[_17169]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17171
                            mem[32] = 4
                            _17627 = mem[_3768]
                            mem[0] = sha3(_17171, 4)
                            stor4[_17171][].field_0 = Array(len=_17627, data=mem[_3768 + 32 len _17627])
                            uint64(stor4[_17171].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17171].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17171].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17171].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17171].field_512) = mem[_3756 + 191 len 1]
                            _22495 = mem[_7172]
                            stor4[_17171][3][].field_0 = Array(len=_22495, data=mem[_7172 + 32 len _22495])
                        else:
                            mem[mem[64] + ceil32(_10495) + _13813 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17315 = mem[64]
                            mem[mem[64]] = ceil32(_10495) + ceil32(_13813) + 256
                            mem[64] = mem[64] + ceil32(_10495) + ceil32(_13813) + 288
                            _17317 = sha3(mem[_17315 + 32 len mem[_17315]])
                            mem[0] = sha3(mem[_17315 + 32 len mem[_17315]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17317
                            mem[32] = 4
                            _17796 = mem[_3768]
                            mem[0] = sha3(_17317, 4)
                            stor4[_17317][].field_0 = Array(len=_17796, data=mem[_3768 + 32 len _17796])
                            uint64(stor4[_17317].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17317].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17317].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17317].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17317].field_512) = mem[_3756 + 191 len 1]
                            _22502 = mem[_7172]
                            stor4[_17317][3][].field_0 = Array(len=_22502, data=mem[_7172 + 32 len _22502])
                    else:
                        mem[mem[64] + _10495 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10495) + 192
                        _13829 = mem[_368]
                        mem[mem[64] + ceil32(_10495) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10495) + 288 len ceil32(_13829)] = mem[_368 + 32 len ceil32(_13829)]
                        if ceil32(_13829) <= _13829:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17172 = mem[64]
                            mem[mem[64]] = ceil32(_10495) + ceil32(_13829) + 256
                            mem[64] = mem[64] + ceil32(_10495) + ceil32(_13829) + 288
                            _17174 = sha3(mem[_17172 + 32 len mem[_17172]])
                            mem[0] = sha3(mem[_17172 + 32 len mem[_17172]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17174
                            mem[32] = 4
                            _17633 = mem[_3768]
                            mem[0] = sha3(_17174, 4)
                            stor4[_17174][].field_0 = Array(len=_17633, data=mem[_3768 + 32 len _17633])
                            uint64(stor4[_17174].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17174].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17174].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17174].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17174].field_512) = mem[_3756 + 191 len 1]
                            _22509 = mem[_7172]
                            stor4[_17174][3][].field_0 = Array(len=_22509, data=mem[_7172 + 32 len _22509])
                        else:
                            mem[mem[64] + ceil32(_10495) + _13829 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17320 = mem[64]
                            mem[mem[64]] = ceil32(_10495) + ceil32(_13829) + 256
                            mem[64] = mem[64] + ceil32(_10495) + ceil32(_13829) + 288
                            _17322 = sha3(mem[_17320 + 32 len mem[_17320]])
                            mem[0] = sha3(mem[_17320 + 32 len mem[_17320]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17322
                            mem[32] = 4
                            _17801 = mem[_3768]
                            mem[0] = sha3(_17322, 4)
                            stor4[_17322][].field_0 = Array(len=_17801, data=mem[_3768 + 32 len _17801])
                            uint64(stor4[_17322].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17322].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17322].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17322].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17322].field_512) = mem[_3756 + 191 len 1]
                            _22516 = mem[_7172]
                            stor4[_17322][3][].field_0 = Array(len=_22516, data=mem[_7172 + 32 len _22516])
                else:
                    mem[_7172 + _7164 + 32] = 0
                    mem[_3756 + 192] = _7172
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10503 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10503)] = mem[ceil32(return_data.size) + 672 len ceil32(_10503)]
                    if ceil32(_10503) <= _10503:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10503) + 192
                        _13814 = mem[_368]
                        mem[mem[64] + ceil32(_10503) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10503) + 288 len ceil32(_13814)] = mem[_368 + 32 len ceil32(_13814)]
                        if ceil32(_13814) <= _13814:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17175 = mem[64]
                            mem[mem[64]] = ceil32(_10503) + ceil32(_13814) + 256
                            mem[64] = mem[64] + ceil32(_10503) + ceil32(_13814) + 288
                            _17177 = sha3(mem[_17175 + 32 len mem[_17175]])
                            mem[0] = sha3(mem[_17175 + 32 len mem[_17175]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17177
                            mem[32] = 4
                            _17639 = mem[_3768]
                            mem[0] = sha3(_17177, 4)
                            stor4[_17177][].field_0 = Array(len=_17639, data=mem[_3768 + 32 len _17639])
                            uint64(stor4[_17177].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17177].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17177].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17177].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17177].field_512) = mem[_3756 + 191 len 1]
                            _22523 = mem[_7172]
                            stor4[_17177][3][].field_0 = Array(len=_22523, data=mem[_7172 + 32 len _22523])
                        else:
                            mem[mem[64] + ceil32(_10503) + _13814 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17325 = mem[64]
                            mem[mem[64]] = ceil32(_10503) + ceil32(_13814) + 256
                            mem[64] = mem[64] + ceil32(_10503) + ceil32(_13814) + 288
                            _17327 = sha3(mem[_17325 + 32 len mem[_17325]])
                            mem[0] = sha3(mem[_17325 + 32 len mem[_17325]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17327
                            mem[32] = 4
                            _17806 = mem[_3768]
                            mem[0] = sha3(_17327, 4)
                            stor4[_17327][].field_0 = Array(len=_17806, data=mem[_3768 + 32 len _17806])
                            uint64(stor4[_17327].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17327].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17327].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17327].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17327].field_512) = mem[_3756 + 191 len 1]
                            _22530 = mem[_7172]
                            stor4[_17327][3][].field_0 = Array(len=_22530, data=mem[_7172 + 32 len _22530])
                    else:
                        mem[mem[64] + _10503 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10503) + 192
                        _13830 = mem[_368]
                        mem[mem[64] + ceil32(_10503) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10503) + 288 len ceil32(_13830)] = mem[_368 + 32 len ceil32(_13830)]
                        if ceil32(_13830) <= _13830:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17178 = mem[64]
                            mem[mem[64]] = ceil32(_10503) + ceil32(_13830) + 256
                            mem[64] = mem[64] + ceil32(_10503) + ceil32(_13830) + 288
                            _17180 = sha3(mem[_17178 + 32 len mem[_17178]])
                            mem[0] = sha3(mem[_17178 + 32 len mem[_17178]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17180
                            mem[32] = 4
                            _17645 = mem[_3768]
                            mem[0] = sha3(_17180, 4)
                            stor4[_17180][].field_0 = Array(len=_17645, data=mem[_3768 + 32 len _17645])
                            uint64(stor4[_17180].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17180].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17180].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17180].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17180].field_512) = mem[_3756 + 191 len 1]
                            _22537 = mem[_7172]
                            stor4[_17180][3][].field_0 = Array(len=_22537, data=mem[_7172 + 32 len _22537])
                        else:
                            mem[mem[64] + ceil32(_10503) + _13830 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17330 = mem[64]
                            mem[mem[64]] = ceil32(_10503) + ceil32(_13830) + 256
                            mem[64] = mem[64] + ceil32(_10503) + ceil32(_13830) + 288
                            _17332 = sha3(mem[_17330 + 32 len mem[_17330]])
                            mem[0] = sha3(mem[_17330 + 32 len mem[_17330]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17332
                            mem[32] = 4
                            _17811 = mem[_3768]
                            mem[0] = sha3(_17332, 4)
                            stor4[_17332][].field_0 = Array(len=_17811, data=mem[_3768 + 32 len _17811])
                            uint64(stor4[_17332].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17332].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17332].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17332].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17332].field_512) = mem[_3756 + 191 len 1]
                            _22544 = mem[_7172]
                            stor4[_17332][3][].field_0 = Array(len=_22544, data=mem[_7172 + 32 len _22544])
            else:
                mem[_3768 + _3764 + 32] = 0
                mem[_3756] = _3768
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 512] == mem[32, Mask(224, 32, arg1.length) >> 32 + 536 len 8]
                mem[_3756 + 32] = mem[32, Mask(224, 32, arg1.length) >> 32 + 512]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 544] == mem[32, Mask(224, 32, arg1.length) >> 32 + 568 len 8]
                mem[_3756 + 64] = mem[32, Mask(224, 32, arg1.length) >> 32 + 544]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 576] == mem[32, Mask(224, 32, arg1.length) >> 32 + 600 len 8]
                mem[_3756 + 96] = mem[32, Mask(224, 32, arg1.length) >> 32 + 576]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 608] == mem[32, Mask(224, 32, arg1.length) >> 32 + 632 len 8]
                mem[_3756 + 128] = mem[32, Mask(224, 32, arg1.length) >> 32 + 608]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 640] == mem[32, Mask(224, 32, arg1.length) >> 32 + 671 len 1]
                mem[_3756 + 160] = mem[32, Mask(224, 32, arg1.length) >> 32 + 640]
                _7160 = mem[32, Mask(224, 32, arg1.length) >> 32 + 672]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + 672] <= test266151307()
                require 32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 511 < return_data.size + 480
                _7168 = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480] <= test266151307()
                _7176 = mem[64]
                require mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 <= test266151307() and mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32 >= mem[64]
                mem[64] = mem[64] + ceil32(mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]) + 32
                mem[_7176] = mem[32, Mask(224, 32, arg1.length) >> 32 + mem[32, Mask(224, 32, arg1.length) >> 32 + 672] + 480]
                require 32, Mask(224, 32, arg1.length) >> 32 + _7160 + _7168 + 32 <= return_data.size
                mem[_7176 + 32 len ceil32(_7168)] = mem[32, Mask(224, 32, arg1.length) >> 32 + _7160 + 512 len ceil32(_7168)]
                if ceil32(_7168) <= _7168:
                    mem[_3756 + 192] = _7176
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10496 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10496)] = mem[ceil32(return_data.size) + 672 len ceil32(_10496)]
                    if ceil32(_10496) <= _10496:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10496) + 192
                        _13815 = mem[_368]
                        mem[mem[64] + ceil32(_10496) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10496) + 288 len ceil32(_13815)] = mem[_368 + 32 len ceil32(_13815)]
                        if ceil32(_13815) <= _13815:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17181 = mem[64]
                            mem[mem[64]] = ceil32(_10496) + ceil32(_13815) + 256
                            mem[64] = mem[64] + ceil32(_10496) + ceil32(_13815) + 288
                            _17183 = sha3(mem[_17181 + 32 len mem[_17181]])
                            mem[0] = sha3(mem[_17181 + 32 len mem[_17181]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17183
                            mem[32] = 4
                            _17651 = mem[_3768]
                            mem[0] = sha3(_17183, 4)
                            stor4[_17183][].field_0 = Array(len=_17651, data=mem[_3768 + 32 len _17651])
                            uint64(stor4[_17183].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17183].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17183].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17183].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17183].field_512) = mem[_3756 + 191 len 1]
                            _22551 = mem[_7176]
                            stor4[_17183][3][].field_0 = Array(len=_22551, data=mem[_7176 + 32 len _22551])
                        else:
                            mem[mem[64] + ceil32(_10496) + _13815 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17335 = mem[64]
                            mem[mem[64]] = ceil32(_10496) + ceil32(_13815) + 256
                            mem[64] = mem[64] + ceil32(_10496) + ceil32(_13815) + 288
                            _17337 = sha3(mem[_17335 + 32 len mem[_17335]])
                            mem[0] = sha3(mem[_17335 + 32 len mem[_17335]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17337
                            mem[32] = 4
                            _17816 = mem[_3768]
                            mem[0] = sha3(_17337, 4)
                            stor4[_17337][].field_0 = Array(len=_17816, data=mem[_3768 + 32 len _17816])
                            uint64(stor4[_17337].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17337].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17337].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17337].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17337].field_512) = mem[_3756 + 191 len 1]
                            _22558 = mem[_7176]
                            stor4[_17337][3][].field_0 = Array(len=_22558, data=mem[_7176 + 32 len _22558])
                    else:
                        mem[mem[64] + _10496 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10496) + 192
                        _13831 = mem[_368]
                        mem[mem[64] + ceil32(_10496) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10496) + 288 len ceil32(_13831)] = mem[_368 + 32 len ceil32(_13831)]
                        if ceil32(_13831) <= _13831:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17184 = mem[64]
                            mem[mem[64]] = ceil32(_10496) + ceil32(_13831) + 256
                            mem[64] = mem[64] + ceil32(_10496) + ceil32(_13831) + 288
                            _17186 = sha3(mem[_17184 + 32 len mem[_17184]])
                            mem[0] = sha3(mem[_17184 + 32 len mem[_17184]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17186
                            mem[32] = 4
                            _17657 = mem[_3768]
                            mem[0] = sha3(_17186, 4)
                            stor4[_17186][].field_0 = Array(len=_17657, data=mem[_3768 + 32 len _17657])
                            uint64(stor4[_17186].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17186].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17186].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17186].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17186].field_512) = mem[_3756 + 191 len 1]
                            _22565 = mem[_7176]
                            stor4[_17186][3][].field_0 = Array(len=_22565, data=mem[_7176 + 32 len _22565])
                        else:
                            mem[mem[64] + ceil32(_10496) + _13831 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17340 = mem[64]
                            mem[mem[64]] = ceil32(_10496) + ceil32(_13831) + 256
                            mem[64] = mem[64] + ceil32(_10496) + ceil32(_13831) + 288
                            _17342 = sha3(mem[_17340 + 32 len mem[_17340]])
                            mem[0] = sha3(mem[_17340 + 32 len mem[_17340]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17342
                            mem[32] = 4
                            _17821 = mem[_3768]
                            mem[0] = sha3(_17342, 4)
                            stor4[_17342][].field_0 = Array(len=_17821, data=mem[_3768 + 32 len _17821])
                            uint64(stor4[_17342].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17342].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17342].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17342].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17342].field_512) = mem[_3756 + 191 len 1]
                            _22572 = mem[_7176]
                            stor4[_17342][3][].field_0 = Array(len=_22572, data=mem[_7176 + 32 len _22572])
                else:
                    mem[_7176 + _7168 + 32] = 0
                    mem[_3756 + 192] = _7176
                    mem[mem[64] + 32] = 32
                    mem[mem[64] + 64] = 160
                    _10504 = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 224] = mem[ceil32(return_data.size) + 640]
                    mem[mem[64] + 256 len ceil32(_10504)] = mem[ceil32(return_data.size) + 672 len ceil32(_10504)]
                    if ceil32(_10504) <= _10504:
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10504) + 192
                        _13816 = mem[_368]
                        mem[mem[64] + ceil32(_10504) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10504) + 288 len ceil32(_13816)] = mem[_368 + 32 len ceil32(_13816)]
                        if ceil32(_13816) <= _13816:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17187 = mem[64]
                            mem[mem[64]] = ceil32(_10504) + ceil32(_13816) + 256
                            mem[64] = mem[64] + ceil32(_10504) + ceil32(_13816) + 288
                            _17189 = sha3(mem[_17187 + 32 len mem[_17187]])
                            mem[0] = sha3(mem[_17187 + 32 len mem[_17187]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17189
                            mem[32] = 4
                            _17663 = mem[_3768]
                            mem[0] = sha3(_17189, 4)
                            stor4[_17189][].field_0 = Array(len=_17663, data=mem[_3768 + 32 len _17663])
                            uint64(stor4[_17189].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17189].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17189].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17189].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17189].field_512) = mem[_3756 + 191 len 1]
                            _22579 = mem[_7176]
                            stor4[_17189][3][].field_0 = Array(len=_22579, data=mem[_7176 + 32 len _22579])
                        else:
                            mem[mem[64] + ceil32(_10504) + _13816 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17345 = mem[64]
                            mem[mem[64]] = ceil32(_10504) + ceil32(_13816) + 256
                            mem[64] = mem[64] + ceil32(_10504) + ceil32(_13816) + 288
                            _17347 = sha3(mem[_17345 + 32 len mem[_17345]])
                            mem[0] = sha3(mem[_17345 + 32 len mem[_17345]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17347
                            mem[32] = 4
                            _17826 = mem[_3768]
                            mem[0] = sha3(_17347, 4)
                            stor4[_17347][].field_0 = Array(len=_17826, data=mem[_3768 + 32 len _17826])
                            uint64(stor4[_17347].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17347].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17347].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17347].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17347].field_512) = mem[_3756 + 191 len 1]
                            _22586 = mem[_7176]
                            stor4[_17347][3][].field_0 = Array(len=_22586, data=mem[_7176 + 32 len _22586])
                    else:
                        mem[mem[64] + _10504 + 256] = 0
                        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 536 len 8]
                        mem[mem[64] + 128] = ceil32(_10504) + 192
                        _13832 = mem[_368]
                        mem[mem[64] + ceil32(_10504) + 256] = mem[_368]
                        mem[mem[64] + ceil32(_10504) + 288 len ceil32(_13832)] = mem[_368 + 32 len ceil32(_13832)]
                        if ceil32(_13832) <= _13832:
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17190 = mem[64]
                            mem[mem[64]] = ceil32(_10504) + ceil32(_13832) + 256
                            mem[64] = mem[64] + ceil32(_10504) + ceil32(_13832) + 288
                            _17192 = sha3(mem[_17190 + 32 len mem[_17190]])
                            mem[0] = sha3(mem[_17190 + 32 len mem[_17190]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17192
                            mem[32] = 4
                            _17669 = mem[_3768]
                            mem[0] = sha3(_17192, 4)
                            stor4[_17192][].field_0 = Array(len=_17669, data=mem[_3768 + 32 len _17669])
                            uint64(stor4[_17192].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17192].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17192].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17192].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17192].field_512) = mem[_3756 + 191 len 1]
                            _22593 = mem[_7176]
                            stor4[_17192][3][].field_0 = Array(len=_22593, data=mem[_7176 + 32 len _22593])
                        else:
                            mem[mem[64] + ceil32(_10504) + _13832 + 288] = 0
                            mem[mem[64] + 160] = mem[ceil32(return_data.size) + 600 len 8]
                            mem[mem[64] + 192] = mem[ceil32(return_data.size) + 632 len 8]
                            _17350 = mem[64]
                            mem[mem[64]] = ceil32(_10504) + ceil32(_13832) + 256
                            mem[64] = mem[64] + ceil32(_10504) + ceil32(_13832) + 288
                            _17352 = sha3(mem[_17350 + 32 len mem[_17350]])
                            mem[0] = sha3(mem[_17350 + 32 len mem[_17350]])
                            if mem[_3756 + 152 len 8] <= uint64(stor4[mem[0]].field_448):
                                revert with 0, 'FAIL_LATEST_REQUEST_SHOULD_BE_NEWEST'
                            if mem[_3756 + 191 len 1] != 1:
                                revert with 0, 'FAIL_REQUEST_IS_NOT_SUCCESSFULLY_RESOLVED'
                            mem[0] = _17352
                            mem[32] = 4
                            _17831 = mem[_3768]
                            mem[0] = sha3(_17352, 4)
                            stor4[_17352][].field_0 = Array(len=_17831, data=mem[_3768 + 32 len _17831])
                            uint64(stor4[_17352].field_256) = mem[_3756 + 56 len 8]
                            uint64(stor4[_17352].field_320) = mem[_3756 + 88 len 8]
                            uint64(stor4[_17352].field_384) = mem[_3756 + 120 len 8]
                            uint64(stor4[_17352].field_448) = mem[_3756 + 152 len 8]
                            uint8(stor4[_17352].field_512) = mem[_3756 + 191 len 1]
                            _22600 = mem[_7176]
                            stor4[_17352][3][].field_0 = Array(len=_22600, data=mem[_7176 + 32 len _22600])
}



}
