contract main {




// =====================  Runtime code  =====================


array of struct stor0;
uint256 sub_52cb8590;
mapping of address sub_08d1a8e4;

function sub_08d1a8e4(?) {
    return sub_08d1a8e4[msg.sender]
}

function sub_52cb8590(?) {
    return sub_52cb8590
}

function _fallback() payable {
    revert
}

function sub_570066c1(?) {
    require calldata.size - 4 >= 32
    return address(sha3(0, Mask(160, 96, this.address) >> 96, arg1, sub_52cb8590))
}

function sub_4167efe1(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if address(arg1) >> 96 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x2e496e76616c69642073616c74202d206669727374203230206279746573206f66207468652073616c74206d757374206d617463682063616c6c696e672061646472657373,
                    mem[233 len 27]
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 128] = stor0.length
    mem[ceil32(arg3.length) + 160] = uint256(stor0.field_0)
    idx = ceil32(arg3.length) + 160
    s = 0
    while ceil32(arg3.length) + stor0.length + 128 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg3.length) + ceil32(stor0.length) + 192] = 0xff00000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + ceil32(stor0.length) + 193] = this.address << 96
    mem[ceil32(arg3.length) + ceil32(stor0.length) + 213] = arg1
    mem[ceil32(arg3.length) + ceil32(stor0.length) + 245] = sub_52cb8590
    mem[ceil32(arg3.length) + ceil32(stor0.length) + 160] = 85
    sub_08d1a8e4[address(sha3(0, Mask(160, 96, this.address) >> 96, arg1, stor1))] = arg2
    create2 contract with 0 wei
                    salt: arg1
                    code: mem[ceil32(arg3.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]]
    if address(create2.new_address) != address(sha3(0, Mask(160, 96, this.address) >> 96, arg1, sub_52cb8590)):
        revert with 0, 
                    32,
                    46,
                    0x2e4661696c656420746f206465706c6f7920746865206e6577206d6574616d6f727068696320636f6e7472616374,
                    mem[ceil32(arg3.length) + ceil32(stor0.length) + 391 len 18]
    if arg3.length > 0:
        mem[ceil32(arg3.length) + ceil32(stor0.length) + 277 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + ceil32(stor0.length) + floor32(arg3.length) + -(arg3.length % 32) + 309 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
        call address(sha3(0, Mask(160, 96, this.address) >> 96, arg1, sub_52cb8590)).mem[ceil32(arg3.length) + ceil32(stor0.length) + 277 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + ceil32(stor0.length) + 281 len arg3.length - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            50,
                            0xfe4661696c656420746f20696e697469616c697a6520746865206e6577206d6574616d6f727068696320636f6e7472616374,
                            mem[ceil32(arg3.length) + ceil32(stor0.length) + 395 len 14]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            50,
                            0xfe4661696c656420746f20696e697469616c697a6520746865206e6577206d6574616d6f727068696320636f6e7472616374,
                            mem[ceil32(arg3.length) + ceil32(stor0.length) + ceil32(return_data.size) + 396 len 14]
        ('bool', 'ext_call.success')
    else:
        if msg.value > 0:
            mem[ceil32(arg3.length) + ceil32(stor0.length) + 277 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            mem[ceil32(arg3.length) + ceil32(stor0.length) + floor32(arg3.length) + -(arg3.length % 32) + 309 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
            call address(sha3(0, Mask(160, 96, this.address) >> 96, arg1, sub_52cb8590)).mem[ceil32(arg3.length) + ceil32(stor0.length) + 277 len 4] with:
               value msg.value wei
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + ceil32(stor0.length) + 281 len arg3.length - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                50,
                                0xfe4661696c656420746f20696e697469616c697a6520746865206e6577206d6574616d6f727068696320636f6e7472616374,
                                mem[ceil32(arg3.length) + ceil32(stor0.length) + 395 len 14]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                50,
                                0xfe4661696c656420746f20696e697469616c697a6520746865206e6577206d6574616d6f727068696320636f6e7472616374,
                                mem[ceil32(arg3.length) + ceil32(stor0.length) + ceil32(return_data.size) + 396 len 14]
            ('bool', 'ext_call.success')
    emit 0x8dbf8591: address(create2.new_address), arg2
    return address(sha3(0, Mask(160, 96, this.address) >> 96, arg1, sub_52cb8590))
}

function sub_46521cb6(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if address(arg1) >> 96 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x2e496e76616c69642073616c74202d206669727374203230206279746573206f66207468652073616c74206d757374206d617463682063616c6c696e672061646472657373,
                    mem[233 len 27]
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = stor0.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = uint256(stor0.field_0)
    idx = ceil32(arg2.length) + ceil32(arg3.length) + 192
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + stor0.length + 160 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 224] = 0xff00000000000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 225] = this.address << 96
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 245] = arg1
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 277] = sub_52cb8590
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 192] = 85
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 309
    create contract with 0 wei
                    code: arg2[all]
    if not address(create.new_address):
        revert with 0, 'Could not deploy implementation.'
    mem[0] = address(sha3(0, Mask(160, 96, this.address) >> 96, arg1, sub_52cb8590))
    mem[32] = 2
    sub_08d1a8e4[address(sha3(0, Mask(160, 96, this.address) >> 96, arg1, stor1))] = address(create.new_address)
    create2 contract with 0 wei
                    salt: arg1
                    code: mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]]
    if address(create2.new_address) != address(sha3(0, Mask(160, 96, this.address) >> 96, arg1, sub_52cb8590)):
        revert with 0, 
                    32,
                    46,
                    0x2e4661696c656420746f206465706c6f7920746865206e6577206d6574616d6f727068696320636f6e7472616374,
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 423 len 18]
    if Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] > 0:
        _288 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 309 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 341 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] = mem[ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
        call address(create2.new_address).mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 309 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 313 len _288 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            50,
                            0xfe4661696c656420746f20696e697469616c697a6520746865206e6577206d6574616d6f727068696320636f6e7472616374,
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 427 len 14]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            50,
                            0xfe4661696c656420746f20696e697469616c697a6520746865206e6577206d6574616d6f727068696320636f6e7472616374,
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + ceil32(return_data.size) + 428 len 14]
        ('bool', 'ext_call.success')
    else:
        if msg.value > 0:
            _300 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 309 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
            mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 341 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] = mem[ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            call address(create2.new_address).mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 309 len 4] with:
               value msg.value wei
                 gas gas_remaining wei
                args mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 313 len _300 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                50,
                                0xfe4661696c656420746f20696e697469616c697a6520746865206e6577206d6574616d6f727068696320636f6e7472616374,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + 427 len 14]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                50,
                                0xfe4661696c656420746f20696e697469616c697a6520746865206e6577206d6574616d6f727068696320636f6e7472616374,
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(stor0.length) + ceil32(return_data.size) + 428 len 14]
            ('bool', 'ext_call.success')
    require ext_code.size(address(create.new_address))
    call address(create.new_address).sweep() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x8dbf8591: address(create2.new_address), address(create.new_address)
    return address(sha3(0, Mask(160, 96, this.address) >> 96, arg1, sub_52cb8590))
}



}
