contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct stor1;
uint8 sub_fa3438e1;

function owner() payable {
    return owner
}

function sub_fa3438e1(?) payable {
    return sub_fa3438e1
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function initialize() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fa3438e1 = 128
    emit Init(sub_fa3438e1);
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getSecurityScore(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[address(arg1)][0].field_256 <= block.timestamp:
        return sub_fa3438e1
    return stor1[address(arg1)][0].field_0
}

function updateDefaultScore(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fa3438e1 = arg1
    emit DefaultScoreChanged(arg1);
}

function sub_209e8235(?) payable {
    require calldata.size - 4 >= 64
    if stor1[address(arg1)][Mask(32, 224, arg2)].field_256 <= block.timestamp:
        return sub_fa3438e1
    return stor1[address(arg1)][Mask(32, 224, arg2)].field_0
}

function sub_37d69c90(?) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)][Mask(32, 224, arg2)].field_0 = arg3
    stor1[address(arg1)][Mask(32, 224, arg2)].field_256 = arg4
    emit 0x5cedb9e4: Mask(32, 224, arg2), arg3 << 248, arg4, arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getSecurityScore(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    if stor1[address(arg1)][Mask(32, 224, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]))].field_256 <= block.timestamp:
        return sub_fa3438e1
    mem[arg2.length + ceil32(arg2.length) + 160] = stor1[address(arg1)][Mask(32, 224, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]))].field_0
    return memory
      from arg2.length + ceil32(arg2.length) + 160
       len 32
}

function getSecurityScores(address[] arg1, bytes4[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg2.length != arg1.length:
        revert with 0, 
                    32,
                    63,
                    0x73746865206c656e677468206f662061646472657373657320616e642066756e6374696f6e5369676e617475726573206d757374206265207468652073616d,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 291 len 1]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = Mask(32, 224, mem[(32 * idx) + (32 * arg1.length) + 160])
        mem[32] = sha3(mem[(32 * idx) + 140 len 20], 1)
        require idx < arg1.length
        if stor1[mem[(32 * idx) + 140 len 20]][Mask(32, 224, mem[(32 * idx) + (32 * arg1.length) + 160])].field_256 <= block.timestamp:
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = sub_fa3438e1
        else:
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = stor1[mem[(32 * idx) + 140 len 20]][Mask(32, 224, mem[(32 * idx) + (32 * arg1.length) + 160])].field_0
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + (32 * arg2.length) + 192
       len (161 * arg1.length) + 64
}

function sub_a61e5edb(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    52,
                    0x657265717565737420706172616d6574657273206c656e6774682073686f756c642062652065786163746c79207468652073616d,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 344 len 12]
    if arg2.length != arg3.length:
        revert with 0, 
                    32,
                    52,
                    0x657265717565737420706172616d6574657273206c656e6774682073686f756c642062652065786163746c79207468652073616d,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 344 len 12]
    if arg3.length != arg4.length:
        revert with 0, 
                    32,
                    52,
                    0x657265717565737420706172616d6574657273206c656e6774682073686f756c642062652065786163746c79207468652073616d,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 344 len 12]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _42 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _44 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _46 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _48 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        _49 = mem[64]
        mem[64] = mem[64] + 64
        mem[_49] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 223 len 1]
        mem[_49 + 32] = _48
        mem[0] = Mask(32, 224, _44)
        mem[32] = sha3(address(_42), 1)
        stor1[address(_42)][Mask(32, 224, _44)].field_0 = uint8(_46)
        stor1[address(_42)][Mask(32, 224, _44)].field_256 = _48
        mem[mem[64]] = Mask(32, 224, _44)
        mem[mem[64] + 32] = uint8(_46)
        mem[mem[64] + 64] = _48
        emit 0x5cedb9e4: Mask(32, 224, _44), _46 << 248, _48, address(_42)
        idx = idx + 1
        continue 
    emit BatchResultUpdate(arg1.length);
}



}
