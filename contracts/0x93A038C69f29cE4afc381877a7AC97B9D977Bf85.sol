contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address stor2;
mapping of struct stor3;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setSigner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_3f75a07d(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    return uint64(sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256) % test266151307())
}

function sub_a1a34f87(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor3[arg1 << 192].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance should be larger than zero'
    if stor3[arg1 << 192].field_512 != msg.sender:
        revert with 0, 'We only return to the creator!'
    if block.timestamp < stor3[arg1 << 192].field_1280:
        revert with 'NH{q', 17
    if block.timestamp - stor3[arg1 << 192].field_1280 <= 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Need to wait for 1 day for the return!'
    stor3[arg1 << 192].field_0 = 0
    stor3[arg1 << 192].field_256 = 0
    stor3[arg1 << 192].field_512 = 0
    stor3[arg1 << 192].field_1024 = 0
    stor3[arg1 << 192].field_1040 = 0
    stor3[arg1 << 192].field_1280 = 0
    call stor3[arg1 << 192].field_512 with:
       value stor3[arg1 << 192].field_0 wei
         gas gas_remaining wei
    stor1 = 1
}

function sub_ff96a9b7(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == uint16(arg4)
    if arg3 and uint16(arg4) > -1 / arg3:
        revert with 'NH{q', 17
    if arg2 < arg3 * uint16(arg4):
        revert with 'NH{q', 17
    if not uint16(arg4):
        revert with 'NH{q', 18
    if arg2 - (arg3 * uint16(arg4)) / uint16(arg4) and 2 > -1 / arg2 - (arg3 * uint16(arg4)) / uint16(arg4):
        revert with 'NH{q', 17
    if 2 * arg2 - (arg3 * uint16(arg4)) / uint16(arg4) / 1000 and uint16(uint16(sha3(block.difficulty, block.timestamp, address(arg1))) % 1000) > -1 / 2 * arg2 - (arg3 * uint16(arg4)) / uint16(arg4) / 1000:
        revert with 'NH{q', 17
    if 2 * arg2 - (arg3 * uint16(arg4)) / uint16(arg4) / 1000 * uint16(uint16(sha3(block.difficulty, block.timestamp, address(arg1))) % 1000) > -arg3 - 1:
        revert with 'NH{q', 17
    return ((2 * arg2 - (arg3 * uint16(arg4)) / uint16(arg4) / 1000 * uint16(uint16(sha3(block.difficulty, block.timestamp, address(arg1))) % 1000)) + arg3)
}

function sub_4cadbdf1(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[4] == uint64(cd[4])
    require cd[36] == uint16(cd[36])
    require cd[68] == uint8(cd[68])
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor3[cd[4] << 192].field_0:
        revert with 0, 'balance not zero'
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Trying to create zero balance envelope'
    if cd[100] and uint16(cd[36]) > -1 / cd[100]:
        revert with 'NH{q', 17
    if msg.value < cd[100] * uint16(cd[36]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Everyone should be able to get min!'
    stor3[cd[4] << 192].field_1040 = uint8(cd[68])
    stor3[cd[4] << 192].field_256 = cd[100]
    stor3[cd[4] << 192].field_1024 = uint16(cd[36])
    stor3[cd[4] << 192].field_512 = msg.sender
    stor3[cd[4] << 192].field_1280 = block.timestamp
    idx = 0
    while idx < ('cd', 132).length:
        _16 = mem[64]
        mem[64] = mem[64] + 64
        mem[_16] = 0
        mem[_16 + 32] = 0
        _17 = mem[64]
        mem[64] = mem[64] + 64
        mem[_17] = 1
        mem[_17 + 32] = 0
        require cd[((32 * idx) + cd[132] + 36)] == uint64(cd[((32 * idx) + cd[132] + 36)])
        mem[0] = uint64(cd[((32 * idx) + cd[132] + 36)])
        mem[32] = sha3(cd[4] << 192, 3) + 3
        stor3[cd[4] << 192][3][cd[((32 * idx) + cd[132] + 36)] << 192].field_0 = 1
        stor3[cd[4] << 192][3][cd[((32 * idx) + cd[132] + 36)] << 192].field_8 = 0
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    stor3[cd[4] << 192].field_0 = msg.value
    stor1 = 1
}

function sub_2eb31683(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == uint64(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + 192] = 64
    mem[ceil32(arg1.length) + 224] = arg3.length
    mem[ceil32(arg1.length) + 256 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + arg3.length + 256] = 0
    mem[ceil32(arg1.length) + 128] = ceil32(arg3.length) + 96
    _7 = sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 288] = '\x19Ethereum Signed Message:\n32'
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 316] = _7
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 256] = 60
    _11 = sha3(mem[ceil32(arg1.length) + ceil32(arg3.length) + 288 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg1.length) + arg3.length + 288 len -arg3.length + ceil32(arg3.length)]])
    if arg1.length == 65:
        if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
            revert with 0, 'ECDSA: invalid signature 's' value'
        revert with 0, 'ECDSA: invalid signature 'v' value'
    if arg1.length != 64:
        revert with 0, 'ECDSA: invalid signature length'
    if uint255(mem[160]) > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    if uint8((bool(mem[160]) >> 255) + 27) != 27:
        if uint8((bool(mem[160]) >> 255) + 27) != 28:
            revert with 0, 'ECDSA: invalid signature 'v' value'
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 412] = uint8((bool(mem[160]) >> 255) + 27)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 444] = mem[128]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 476] = uint255(mem[160])
    signer = erecover(_11, (bool(mem[160]) >> 255) + 27 << 248, mem[128], uint255(mem[160])) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECDSA: invalid signature'
    if address(signer) != stor2:
        revert with 0, 'signature does not seem to be provided by signer'
    if stor3[arg2 << 192].field_0 <= 0:
        revert with 0, 'Envelope is empty'
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 412 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 412] = 0
    mem[ceil32(arg1.length) + (2 * ceil32(arg3.length)) + 444 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 412 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(arg1.length) + (2 * ceil32(arg3.length)) + arg3.length + 444] = 0
    if not stor3[arg2 << 192][3][sha3(Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 412 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256) % test266151307() << 192].field_0:
        revert with 0, 'Invalid password!'
    if stor3[arg2 << 192][3][sha3(Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 412 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256) % test266151307() << 192].field_8:
        revert with 0, 'Password is already used'
    if arg3.length != stor3[arg2 << 192].field_1040:
        revert with 0, 'password is incorrect length'
    stor3[arg2 << 192][3][sha3(Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[ceil32(arg1.length) + ceil32(arg3.length) + arg3.length + 412 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256) % test266151307() << 192].field_8 = 1
    if stor3[arg2 << 192].field_1024 == 1:
        stor3[arg2 << 192].field_0 = 0
        call msg.sender with:
           value stor3[arg2 << 192].field_0 wei
             gas gas_remaining wei
    else:
        if stor3[arg2 << 192].field_256 and stor3[arg2 << 192].field_1024 > -1 / stor3[arg2 << 192].field_256:
            revert with 'NH{q', 17
        if stor3[arg2 << 192].field_0 < stor3[arg2 << 192].field_256 * stor3[arg2 << 192].field_1024:
            revert with 'NH{q', 17
        if not stor3[arg2 << 192].field_1024:
            revert with 'NH{q', 18
        if stor3[arg2 << 192].field_0 - (stor3[arg2 << 192].field_256 * stor3[arg2 << 192].field_1024) / stor3[arg2 << 192].field_1024 and 2 > -1 / stor3[arg2 << 192].field_0 - (stor3[arg2 << 192].field_256 * stor3[arg2 << 192].field_1024) / stor3[arg2 << 192].field_1024:
            revert with 'NH{q', 17
        if 2 * stor3[arg2 << 192].field_0 - (stor3[arg2 << 192].field_256 * stor3[arg2 << 192].field_1024) / stor3[arg2 << 192].field_1024 / 1000 and uint16(uint16(sha3(block.difficulty, block.timestamp, msg.sender)) % 1000) > -1 / 2 * stor3[arg2 << 192].field_0 - (stor3[arg2 << 192].field_256 * stor3[arg2 << 192].field_1024) / stor3[arg2 << 192].field_1024 / 1000:
            revert with 'NH{q', 17
        if 2 * stor3[arg2 << 192].field_0 - (stor3[arg2 << 192].field_256 * stor3[arg2 << 192].field_1024) / stor3[arg2 << 192].field_1024 / 1000 * uint16(uint16(sha3(block.difficulty, block.timestamp, msg.sender)) % 1000) > -stor3[arg2 << 192].field_256 - 1:
            revert with 'NH{q', 17
        if not stor3[arg2 << 192].field_1024:
            revert with 'NH{q', 17
        stor3[arg2 << 192].field_1024 = uint16(stor3[arg2 << 192].field_1024 - 1)
        if stor3[arg2 << 192].field_0 < (2 * stor3[arg2 << 192].field_0 - (stor3[arg2 << 192].field_256 * stor3[arg2 << 192].field_1024) / stor3[arg2 << 192].field_1024 / 1000 * uint16(uint16(sha3(block.difficulty, block.timestamp, msg.sender)) % 1000)) + stor3[arg2 << 192].field_256:
            revert with 'NH{q', 17
        stor3[arg2 << 192].field_0 = stor3[arg2 << 192].field_0 - (2 * stor3[arg2 << 192].field_0 - (stor3[arg2 << 192].field_256 * stor3[arg2 << 192].field_1024) / stor3[arg2 << 192].field_1024 / 1000 * uint16(uint16(sha3(block.difficulty, block.timestamp, msg.sender)) % 1000)) - stor3[arg2 << 192].field_256
        call msg.sender with:
           value (2 * stor3[arg2 << 192].field_0 - (stor3[arg2 << 192].field_256 * stor3[arg2 << 192].field_1024) / stor3[arg2 << 192].field_1024 / 1000 * uint16(uint16(sha3(block.difficulty, block.timestamp, msg.sender)) % 1000)) + stor3[arg2 << 192].field_256 wei
             gas gas_remaining wei
    stor1 = 1
}



}
