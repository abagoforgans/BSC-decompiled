contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct stor1;
uint8 defaultScore;

function defaultScore() payable {
    return defaultScore
}

function owner() payable {
    return owner
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
    defaultScore = 128
    emit Init(defaultScore);
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateDefaultScore(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    defaultScore = arg1
    emit DefaultScoreChanged(arg1);
}

function getSecurityScore(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'address should not be 0x0'
    if stor1[address(arg1)][0].field_8 <= block.timestamp:
        return defaultScore
    return stor1[address(arg1)][0].field_0
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

function pushResult(address arg1, bytes4 arg2, uint8 arg3, uint248 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x74636f6e747261637420616464726573732073686f756c64206e6f74206265203078,
                    mem[198 len 30]
    stor1[address(arg1)][Mask(32, 224, arg2)].field_0 = arg3
    stor1[address(arg1)][Mask(32, 224, arg2)].field_8 = Mask(248, 0, arg4)
    emit ResultUpdate(Mask(32, 224, arg2), arg3 << 248, Mask(248, 0, arg4), arg1);
}

function getSecurityScoreBytes4(address arg1, bytes4 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'address should not be 0x0'
    if not Mask(32, 224, arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    169,
                    0x657369676e6174757265206279746573342830292077617320726573657276656420666f72207370656369616c20707572706f7365732c20696620796f75722066756e6374696f6e207369676e617475726520636f6e666c6963746564207769746820746869732076616c756520706c6561736520636f6e736964657220746f2072656e616d65207468652066756e6374696f6e20746f2061766f69642074686520636f6e666c6963,
                    mem[333 len 23]
    if stor1[address(arg1)][Mask(32, 224, arg2)].field_8 <= block.timestamp:
        return defaultScore
    return stor1[address(arg1)][Mask(32, 224, arg2)].field_0
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
    if not arg1:
        revert with 0, 'address should not be 0x0'
    if not Mask(32, 224, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])):
        revert with 0, 
                    32,
                    169,
                    0x657369676e6174757265206279746573342830292077617320726573657276656420666f72207370656369616c20707572706f7365732c20696620796f75722066756e6374696f6e207369676e617475726520636f6e666c6963746564207769746820746869732076616c756520706c6561736520636f6e736964657220746f2072656e616d65207468652066756e6374696f6e20746f2061766f69642074686520636f6e666c6963,
                    mem[arg2.length + ceil32(arg2.length) + 397 len 23]
    if stor1[address(arg1)][Mask(32, 224, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]))].field_8 <= block.timestamp:
        return defaultScore
    return stor1[address(arg1)][Mask(32, 224, sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]))].field_0
}

function batchPushResult(address[] arg1, bytes4[] arg2, uint8[] arg3, uint248[] arg4) payable {
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
                    0x307265717565737420706172616d6574657273206c656e6774682073686f756c642062652065786163746c79207468652073616d,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 344 len 12]
    if arg2.length != arg3.length:
        revert with 0, 
                    32,
                    52,
                    0x307265717565737420706172616d6574657273206c656e6774682073686f756c642062652065786163746c79207468652073616d,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 344 len 12]
    if arg3.length != arg4.length:
        revert with 0, 
                    32,
                    52,
                    0x307265717565737420706172616d6574657273206c656e6774682073686f756c642062652065786163746c79207468652073616d,
                    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 344 len 12]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _44 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _46 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _48 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
        _50 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 32, 34, 0x74636f6e747261637420616464726573732073686f756c64206e6f74206265203078, mem[mem[64] + 102 len 30]
        _53 = mem[64]
        mem[64] = mem[64] + 64
        mem[_53] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 223 len 1]
        mem[_53 + 32] = Mask(248, 0, _50)
        mem[0] = Mask(32, 224, _46)
        mem[32] = sha3(address(_44), 1)
        stor1[address(_44)][Mask(32, 224, _46)].field_0 = uint8(_48)
        stor1[address(_44)][Mask(32, 224, _46)].field_8 = Mask(248, 0, _50)
        mem[mem[64]] = Mask(32, 224, _46)
        mem[mem[64] + 32] = uint8(_48)
        mem[mem[64] + 64] = Mask(248, 0, _50)
        emit ResultUpdate(Mask(32, 224, _46), _48 << 248, Mask(248, 0, _50), address(_44));
        idx = idx + 1
        continue 
    emit BatchResultUpdate(arg1.length);
}

function getSecurityScores(address[] arg1, bytes4[] arg2) payable {
    require calldata.size - 4 >= 64
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
    if arg2.length != arg1.length:
        revert with 0, 
                    32,
                    63,
                    0x73746865206c656e677468206f662061646472657373657320616e642066756e6374696f6e5369676e617475726573206d757374206265207468652073616d,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 291 len 1]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    mem[64] = (64 * arg1.length) + (32 * arg2.length) + 192
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _56 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _63 = mem[(32 * idx) + (32 * arg1.length) + 160]
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'address should not be 0x0'
            if not Mask(32, 224, mem[(32 * idx) + (32 * arg1.length) + 160]):
                revert with 0, 
                            32,
                            169,
                            0x657369676e6174757265206279746573342830292077617320726573657276656420666f72207370656369616c20707572706f7365732c20696620796f75722066756e6374696f6e207369676e617475726520636f6e666c6963746564207769746820746869732076616c756520706c6561736520636f6e736964657220746f2072656e616d65207468652066756e6374696f6e20746f2061766f69642074686520636f6e666c6963,
                            mem[mem[64] + 237 len 23]
            _77 = mem[64]
            mem[64] = mem[64] + 64
            mem[_77] = 0
            mem[_77 + 32] = 0
            mem[0] = Mask(32, 224, _63)
            mem[32] = sha3(address(_56), 1)
            _81 = mem[64]
            mem[64] = mem[64] + 64
            mem[_81] = stor1[address(_56)][Mask(32, 224, _63)].field_0
            mem[_81 + 32] = stor1[address(_56)][Mask(32, 224, _63)].field_8
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            if stor1[address(_56)][Mask(32, 224, _63)].field_8 <= block.timestamp:
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = defaultScore
            else:
                mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = stor1[address(_56)][Mask(32, 224, _63)].field_0
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _55 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
        return 32, mem[mem[64] + 32 len (32 * _55) + 32]
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = code.data[6583 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _61 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _64 = mem[(32 * idx) + (32 * arg1.length) + 160]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'address should not be 0x0'
        if not Mask(32, 224, mem[(32 * idx) + (32 * arg1.length) + 160]):
            revert with 0, 
                        32,
                        169,
                        0x657369676e6174757265206279746573342830292077617320726573657276656420666f72207370656369616c20707572706f7365732c20696620796f75722066756e6374696f6e207369676e617475726520636f6e666c6963746564207769746820746869732076616c756520706c6561736520636f6e736964657220746f2072656e616d65207468652066756e6374696f6e20746f2061766f69642074686520636f6e666c6963,
                        mem[mem[64] + 237 len 23]
        _78 = mem[64]
        mem[64] = mem[64] + 64
        mem[_78] = 0
        mem[_78 + 32] = 0
        mem[0] = Mask(32, 224, _64)
        mem[32] = sha3(address(_61), 1)
        _85 = mem[64]
        mem[64] = mem[64] + 64
        mem[_85] = stor1[address(_61)][Mask(32, 224, _64)].field_0
        mem[_85 + 32] = stor1[address(_61)][Mask(32, 224, _64)].field_8
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if stor1[address(_61)][Mask(32, 224, _64)].field_8 <= block.timestamp:
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = defaultScore
        else:
            mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = stor1[address(_61)][Mask(32, 224, _64)].field_0
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    _60 = mem[(32 * arg1.length) + (32 * arg2.length) + 160]
    mem[mem[64] + 64 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(mem[(32 * arg1.length) + (32 * arg2.length) + 160])]
    return 32, mem[mem[64] + 32 len (32 * _60) + 32]
}



}
