contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
address stor2;
address sub_d36dae09Address; offset 8
address sub_6fe88e13Address;
mapping of uint8 stor4;
mapping of struct sub_49d7e6de;
mapping of uint8 stor6;
mapping of uint8 stor99;

function sub_0d7f22df(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function sub_35950fed(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function sub_49d7e6de(?) payable {
    require calldata.size - 4 >= 64
    return uint256(sub_49d7e6de[address(arg1)][arg2].field_0), 
           uint256(sub_49d7e6de[address(arg1)][arg2].field_256),
           bool(sub_49d7e6de[address(arg1)][arg2].field_512)
}

function paused() payable {
    return bool(uint8(stor2.field_0))
}

function sub_6fe88e13(?) payable {
    return sub_6fe88e13Address
}

function owner() payable {
    return owner
}

function sub_bb0a88ca(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_d36dae09(?) payable {
    return sub_d36dae09Address
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

function sub_7cc1a6d9(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6fe88e13Address = arg1
    emit 0x8ae1e97b: sub_6fe88e13Address
}

function sub_d72b74b0(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d36dae09Address = arg1
    emit 0x4596fc0a: sub_d36dae09Address
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    uint8(stor2.field_0) = 1
    emit Pause()
}

function grantAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 1
    emit 0xe9b6cdfb: arg1, msg.sender
}

function revokeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = 0
    emit AdminRevoked(arg1, msg.sender);
}

function sub_4535e5ad(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = uint8(arg2)
    emit 0x3ecd29f4: address(arg1), arg2
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor2.field_0):
        revert with 0, 'Pausable: not paused'
    uint8(stor2.field_0) = 0
    emit Unpause()
}

function sub_b538f8e8(?) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(sub_49d7e6de[address(arg1)][arg2].field_0) = arg3
    uint256(sub_49d7e6de[address(arg1)][arg2].field_256) = arg4
    sub_49d7e6de[address(arg1)][arg2].field_512 = uint8(arg5)
    emit 0x2f20b74a: address(arg1), arg2, arg3, arg4, arg5
}

function sub_ef6106a4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = bool(stor6[arg1[all]])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3d7b96c8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 6
    mem[ceil32(arg1.length) + 128] = bool(stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function execute(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if uint8(stor2.field_0):
        revert with 0, 'Pausable: paused'
    if not sub_49d7e6de[address(arg2)][arg4].field_512:
        revert with 0, 'EBBridge: not support'
    if uint256(sub_49d7e6de[address(arg2)][arg4].field_256) > arg3:
        revert with 0, 'EBBridge: amount is error min'
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'EBBridge: balance is not enough'
    require ext_code.size(arg2)
    staticcall arg2.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 32, 33, 0x7345424272696467653a20616c6c6f77616e6365206973206e6f7420656e6f7567, mem[389 len 31]
    if uint256(sub_49d7e6de[address(arg2)][arg4].field_0) > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(arg2)
    if not stor4[address(arg2)]:
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(stor2.field_0), arg3 - uint256(sub_49d7e6de[address(arg2)][arg4].field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        call arg2.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3 - uint256(sub_49d7e6de[address(arg2)][arg4].field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.0x42966c68 with:
             gas gas_remaining wei
            args (arg3 - uint256(sub_49d7e6de[address(arg2)][arg4].field_0))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, sub_6fe88e13Address, uint256(sub_49d7e6de[address(arg2)][arg4].field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xae8e628c: msg.sender, address(arg1), address(arg2), arg3, arg3 - uint256(sub_49d7e6de[address(arg2)][arg4].field_0), uint256(sub_49d7e6de[address(arg2)][arg4].field_0), arg4
}

function sub_dda16ad7(?) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not stor1[address(msg.sender)]:
        revert with 0, 
                    32,
                    37,
                    0xfe41646d696e436f6e74726f6c3a2063616c6c6572206973206e6f74207468652061646d69,
                    mem[ceil32(arg1.length) + 233 len 27]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 6
    if stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)]:
        revert with 0, 'EBBridge: It already exists'
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 6
    stor[mem[arg1.length + 160 len ceil32(arg1.length)]][Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0)] = 1
    require ext_code.size(arg3)
    if stor4[address(arg3)]:
        call arg3.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg4), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call arg3.0x23b872dd with:
             gas gas_remaining wei
            args address(stor2.field_0), address(arg4), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    mem[ceil32(arg1.length) + 128] = 160
    mem[ceil32(arg1.length) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit 0xdc23b4af: 0, 160, arg2, address(arg3), address(arg4), arg5, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 352 len arg1.length % 32]
        emit 0xdc23b4af: 0, 160, arg2, address(arg3), address(arg4), arg5, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 320 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
}



}
