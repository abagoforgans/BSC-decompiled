contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;

function owner() payable {
    return owner
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ca767f81(?) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + arg3.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg3.length) + 160] = 1
    require bool(uint8(stor1[('map', ('param', 'arg2'), ('map', ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3')))))), ('cd', ('add', 4, ('param', 'arg3'))))), 0, 0, 0), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('cd', ('add', 4, ('param', 'arg3')))), ('add', ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg3')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg3'))))))))))].field_160)) == 1
}

function sub_170a00f8(?) payable {
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
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 288 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 256] = 1
    _96 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 256 len (arg1.length % 32) + 32])
    _97 = sha3(0, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 256 len (arg1.length % 32) + 32]))
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 256 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][0].length) + 384
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 256 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][0].length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384] = stor[sha3(_97)]
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 384
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + stor[_97].length + 352 > idx:
        mem[idx + 32] = stor[s + sha3(_97) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = ceil32(arg1.length) + ceil32(arg2.length) + 352
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = address(stor1[_97].field_0)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = bool(uint8(stor1[_97].field_160))
    if uint8(stor1[_97].field_160):
        require msg.sender == address(stor1[_97].field_0)
    mem[mem[64] len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[mem[64] + floor32(arg1.length) + -(arg1.length % 32) + 32 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + mem[64]] = 1
    stor[mem[mem[64] + floor32(arg1.length) len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]][0][] = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    address(stor1[('map', 0, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', ('mem', ('range', 64, 32)), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))))].field_0) = msg.sender
    Mask(96, 0, stor1[('map', 0, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', ('mem', ('range', 64, 32)), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 32, ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))))].field_160) = 1
}



}
