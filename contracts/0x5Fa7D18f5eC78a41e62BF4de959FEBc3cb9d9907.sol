contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function recharge() payable {
    if owner != msg.sender:
        revert with 0, 'ERC20:  sender equal owner'
}

function sub_2fb78794(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ERC20:  sender equal owner'
    stor4 = arg1
    return 1
}

function sub_7c1bd083(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ERC20:  sender equal owner'
    stor3 = arg1
    return 1
}

function sub_a7f48489(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ERC20:  sender equal owner'
    stor2 = arg1
    return 1
}

function acceptOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'ERC20:  sender equal owner'
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function sub_b7a30b9a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ERC20:  sender equal owner'
    stor5 = uint8(arg1)
    emit 0x4991e3c8: arg1
    return 1
}

function fund(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ERC20:  sender equal owner'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ERC20:  sender equal owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    newOwner = arg1
}

function sub_f4cc609a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor5:
        revert with 0, 
                    32,
                    34,
                    0x73616c6c207472616e7366657273206172652063757272656e746c79207374617475,
                    mem[ceil32(arg1.length) + 230 len 30]
    if msg.value < stor2:
        revert with 0, 'value min error'
    if arg1.length < stor4:
        revert with 0, 'valueid error'
    mem[ceil32(arg1.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + 128] = 96
    mem[ceil32(arg1.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0x8ea12565: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], msg.value, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 256] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 288 len arg1.length % 32]
        emit 0x8ea12565: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], msg.value, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 256 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
}

function sub_76ab4bdb(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'ERC20:  sender equal owner'
    if not arg2:
        revert with 0, 'transfer to the zero address'
    if arg2 == this.address:
        revert with 0, 'transfer to the this address'
    if arg1.length < stor4:
        revert with 0, 'valueid error'
    if arg3 > stor3:
        revert with 0, 'value max error'
    call arg2 with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 160] = arg2
    mem[ceil32(arg1.length) + 128] = 96
    mem[ceil32(arg1.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xf5fbd9a4: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg3, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 256] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 288 len arg1.length % 32]
        emit 0xf5fbd9a4: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], arg3, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 256 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
}



}
