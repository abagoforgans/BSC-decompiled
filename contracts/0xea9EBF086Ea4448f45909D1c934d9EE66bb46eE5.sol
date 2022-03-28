contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor2;
mapping of address stor99;

function frozen() payable {
    return bool(stor2)
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

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function freeze() payable {
    require msg.sender == owner
    if stor2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x7343616e6e6f7420706572666f726d20616374696f6e20666f7220612066726f7a656e20696d706c656d656e746174696f6e206469726563746f72,
                    mem[223 len 5]
    stor2 = 1
    emit Frozen()
}

function getImplementation(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    mem[ceil32(arg1.length) + 128] = stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function setImplementation(string arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == owner
    if stor2:
        revert with 0, 
                    32,
                    59,
                    0x7343616e6e6f7420706572666f726d20616374696f6e20666f7220612066726f7a656e20696d706c656d656e746174696f6e206469726563746f72,
                    mem[ceil32(arg1.length) + 255 len 5]
    if ext_code.size(arg2) <= 0:
        revert with 0, 
                    32,
                    66,
                    0xfe43616e6e6f742073657420696d706c656d656e746174696f6e20696e206469726563746f727920776974682061206e6f6e2d636f6e747261637420616464726573,
                    mem[ceil32(arg1.length) + 262 len 30]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] = arg2
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit ImplementationChanged(string rg1, address rg2):
                                   Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                   mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                                   Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
                                   arg2,
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
        emit ImplementationChanged(string rg1, address rg2):
                                   Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                   mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                                   Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                   mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
                                   arg2,
}

function unsetImplementation(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == owner
    if stor2:
        revert with 0, 
                    32,
                    59,
                    0x7343616e6e6f7420706572666f726d20616374696f6e20666f7220612066726f7a656e20696d706c656d656e746174696f6e206469726563746f72,
                    mem[ceil32(arg1.length) + 255 len 5]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 1
    stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] = 0
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    mem[ceil32(arg1.length) + 192 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit ImplementationChanged(string rg1, address rg2):
                                   Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                   mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                                   Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256,
        emit 0x0: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 192] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32]
        emit ImplementationChanged(string rg1, address rg2):
                                   Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0),
                                   mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
                                   Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256,
                                   mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32],
        emit 0x0: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 192 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
}



}
