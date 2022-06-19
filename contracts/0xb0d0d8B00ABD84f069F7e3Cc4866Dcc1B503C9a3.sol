contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
mapping of uint8 stor3;
array of struct stor4;

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (stor2 == arg1)
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, '!AUTHORIZED OWNER'
    stor3[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, '!AUTHORIZED OWNER'
    stor3[address(arg1)] = 0
}

function sub_0c6008af(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return 32, 4524, code.data[5623 len 4492], mem[4620 len 20] >> 35680, address(arg1), 0 >> 35936, 0
}

function sub_1b204505(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor0 = address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).0x7088e207 with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAddress(bytes arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    return address(sha3(0, this.address, arg2, sha3(arg1[all])))
}

function sub_16027424(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor0 = address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).transferTokens(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9c346b92(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor0 = address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).0xb01276fd with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a8a55cfc(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor0 = address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).0x90ceb6f0 with:
       value msg.value wei
         gas gas_remaining wei
        args address(arg2), arg3, address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_390f336b(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor0 = address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).0xe48cb7eb with:
         gas gas_remaining wei
        args address(arg2), address(arg3), address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deploy(bytes arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    create2 contract with callvalue wei
                    salt: arg2
                    code: arg1[all]
    require ext_code.size(create2.new_address)
    stor4[msg.sender].field_0++
    stor4[msg.sender][stor4[msg.sender].field_0].field_0 = address(create2.new_address)
    emit Deployed(address(create2.new_address), arg2);
}

function sub_6b7878ea(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    mem[64] = (32 * stor4[address(arg1)].field_0) + 128
    mem[96] = stor4[address(arg1)].field_0
    if not stor4[address(arg1)].field_0:
        mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
        idx = 0
        s = (32 * stor4[address(arg1)].field_0) + 192
        t = 128
        while idx < stor4[address(arg1)].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor4[address(arg1)].field_0) + 128
           len (96 * stor4[address(arg1)].field_0) + 64
    mem[128] = stor4[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor4[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor4[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor4[address(arg1)].field_0) + 160] = stor4[address(arg1)].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor4[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor4[address(arg1)].field_0) + -mem[64] + 192
}

function sub_9af82814(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor0 = address(cd[((32 * idx) + cd[4] + 36)])
        mem[96] = 0xe48cb7eb00000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[36])
        mem[132] = address(cd[68])
        mem[164] = address(cd[100])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0xe48cb7eb with:
             gas gas_remaining wei
            args address(cd[36]), address(cd[68]), address(cd[100])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    require ext_code.size(stor1)
    call stor1.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_499ef556(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    idx = 0
    while idx < ('cd', 4).length:
        if not ('cd', 4).length:
            revert with 0, 18
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor0 = address(cd[((32 * idx) + cd[4] + 36)])
        mem[96] = 0xb01276fd00000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[36])
        mem[132] = address(cd[68])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0xb01276fd with:
           value msg.value / ('cd', 4).length wei
             gas gas_remaining wei
            args address(cd[36]), address(cd[68])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    require ext_code.size(stor1)
    call stor1.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_94591da0(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[100] == address(cd[100])
    if not stor3[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    idx = 0
    while idx < ('cd', 4).length:
        if not ('cd', 4).length:
            revert with 0, 18
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        stor0 = address(cd[((32 * idx) + cd[4] + 36)])
        mem[96] = 0x90ceb6f000000000000000000000000000000000000000000000000000000000
        mem[100] = address(cd[36])
        mem[132] = cd[68]
        mem[164] = address(cd[100])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        call address(cd[((32 * idx) + cd[4] + 36)]).0x90ceb6f0 with:
           value msg.value / ('cd', 4).length wei
             gas gas_remaining wei
            args address(cd[36]), cd[68], address(cd[100])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if 21000 > !gas_remaining:
        revert with 0, 17
    if gas_remaining + 21000 < gas_remaining:
        revert with 0, 17
    if 21000 > !(16 * calldata.size):
        revert with 0, 17
    if 14154 > !((16 * calldata.size) + 21000):
        revert with 0, 17
    require ext_code.size(stor1)
    call stor1.freeFromUpTo(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (16 * calldata.size) + 35154 / 41947
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x94ca2cb5(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xa8a55cfc(?????) <= uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0xa8a55cfc(?????):
                    if unknown_0xb6a5d7de(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if stor2 != msg.sender:
                            revert with 0, '!AUTHORIZED OWNER'
                        stor3[address(cd[4])] = 1
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xf0b37c04(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0xfe9fbb80(?????):
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            return bool(stor3[address(cd[4])])
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if stor2 != msg.sender:
                            revert with 0, '!AUTHORIZED OWNER'
                        stor3[address(cd[4])] = 0
                else:
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require cd[100] == address(cd[100])
                    if not stor3[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    stor0 = address(cd[4])
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0x90ceb6f0 with:
                       value msg.value wei
                         gas gas_remaining wei
                        args address(cd[36]), cd[68], address(cd[100])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x94ca2cb5(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                        revert with 0, 65
                    require cd[4] + ('cd', 4).length + 36 <= calldata.size
                    if not stor3[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    return address(sha3(0, this.address, cd[36], sha3(call.data[cd[4] + 36 len ('cd', 4).length])))
                if uint32(call.func_hash) >> 224 != unknown_0x9af82814(?????):
                    if unknown_0x9c346b92(?????) == uint32(call.func_hash) >> 224:
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        require cd[68] == address(cd[68])
                        if not stor3[address(msg.sender)]:
                            revert with 0, '!AUTHORIZED'
                        stor0 = address(cd[4])
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0xb01276fd with:
                           value msg.value wei
                             gas gas_remaining wei
                            args address(cd[36]), address(cd[68])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0x9c4ae2d0(?????) == uint32(call.func_hash) >> 224:
                            require calldata.size - 4 >= 64
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            if ('cd', 4).length > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                                revert with 0, 65
                            require cd[4] + ('cd', 4).length + 36 <= calldata.size
                            if not stor3[address(msg.sender)]:
                                revert with 0, '!AUTHORIZED'
                            create2 contract with callvalue wei
                                            salt: cd[36]
                                            code: call.data[cd[4] + 36 len ('cd', 4).length]
                            require ext_code.size(create2.new_address)
                            stor4[msg.sender].field_0++
                            stor4[msg.sender][stor4[msg.sender].field_0].field_0 = address(create2.new_address)
                            emit Deployed(address(create2.new_address), cd[36]);
                else:
                    require calldata.size - 4 >= 128
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    require ('cd', 4).length <= test266151307()
                    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                    require cd[36] == address(cd[36])
                    require cd[68] == address(cd[68])
                    require cd[100] == address(cd[100])
                    if not stor3[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    idx = 0
                    while idx < ('cd', 4).length:
                        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                        stor0 = address(cd[((32 * idx) + cd[4] + 36)])
                        mem[128] = 0xe48cb7eb00000000000000000000000000000000000000000000000000000000
                        mem[132] = address(cd[36])
                        mem[164] = address(cd[68])
                        mem[196] = address(cd[100])
                        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                        call address(cd[((32 * idx) + cd[4] + 36)]).0xe48cb7eb with:
                             gas gas_remaining wei
                            args address(cd[36]), address(cd[68]), address(cd[100])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'refund failed'
                    if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 21000 > !gas_remaining:
                        revert with 0, 17
                    if gas_remaining + 21000 < gas_remaining:
                        revert with 0, 17
                    if 21000 > !(16 * calldata.size):
                        revert with 0, 17
                    if 14154 > !((16 * calldata.size) + 21000):
                        revert with 0, 17
                    require ext_code.size(stor1)
                    call stor1.freeFromUpTo(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (16 * calldata.size) + 35154 / 41947
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x390f336b(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x0c6008af(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return 32, 4524, code.data[5623 len 4492], mem[4652 len 20] >> 35680, address(cd[4]), 0 >> 35936, 0
                if unknown_0x16027424(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require cd[68] == address(cd[68])
                    if not stor3[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    stor0 = address(cd[4])
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).transferTokens(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args address(cd[36]), address(cd[68])
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x1b204505(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x2f54bf6e(?????):
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return (stor2 == address(cd[4]))
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require cd[68] == address(cd[68])
                    if not stor3[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    stor0 = address(cd[4])
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0x7088e207 with:
                         gas gas_remaining wei
                        args address(cd[36]), address(cd[68]), cd[100]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x390f336b(?????) == uint32(call.func_hash) >> 224:
                    require calldata.size - 4 >= 128
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require cd[68] == address(cd[68])
                    require cd[100] == address(cd[100])
                    if not stor3[address(msg.sender)]:
                        revert with 0, '!AUTHORIZED'
                    stor0 = address(cd[4])
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xe48cb7eb with:
                         gas gas_remaining wei
                        args address(cd[36]), address(cd[68]), address(cd[100])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x499ef556(?????) == uint32(call.func_hash) >> 224:
                        require calldata.size - 4 >= 96
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        require ('cd', 4).length <= test266151307()
                        require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                        require cd[36] == address(cd[36])
                        require cd[68] == address(cd[68])
                        if not stor3[address(msg.sender)]:
                            revert with 0, '!AUTHORIZED'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if not ('cd', 4).length:
                                revert with 0, 18
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                            stor0 = address(cd[((32 * idx) + cd[4] + 36)])
                            mem[128] = 0xb01276fd00000000000000000000000000000000000000000000000000000000
                            mem[132] = address(cd[36])
                            mem[164] = address(cd[68])
                            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                            call address(cd[((32 * idx) + cd[4] + 36)]).0xb01276fd with:
                               value msg.value / ('cd', 4).length wei
                                 gas gas_remaining wei
                                args address(cd[36]), address(cd[68])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'refund failed'
                        if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 21000 > !gas_remaining:
                            revert with 0, 17
                        if gas_remaining + 21000 < gas_remaining:
                            revert with 0, 17
                        if 21000 > !(16 * calldata.size):
                            revert with 0, 17
                        if 14154 > !((16 * calldata.size) + 21000):
                            revert with 0, 17
                        require ext_code.size(stor1)
                        call stor1.freeFromUpTo(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, (16 * calldata.size) + 35154 / 41947
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0x6b7878ea(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if not stor3[address(msg.sender)]:
                                revert with 0, '!AUTHORIZED'
                            mem[64] = (32 * stor4[address(cd[4])].field_0) + 160
                            mem[128] = stor4[address(cd[4])].field_0
                            if not stor4[address(cd[4])].field_0:
                                mem[(32 * stor4[address(cd[4])].field_0) + 160] = 32
                                mem[(32 * stor4[address(cd[4])].field_0) + 192] = stor4[address(cd[4])].field_0
                                idx = 0
                                s = (32 * stor4[address(cd[4])].field_0) + 224
                                t = 160
                                while idx < stor4[address(cd[4])].field_0:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                return memory
                                  from (32 * stor4[address(cd[4])].field_0) + 160
                                   len (96 * stor4[address(cd[4])].field_0) + 64
                            mem[160] = stor4[address(cd[4])].field_0
                            idx = 160
                            s = 0
                            while (32 * stor4[address(cd[4])].field_0) + 128 > idx:
                                mem[idx + 32] = stor4[address(cd[4])][s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            mem[(32 * stor4[address(cd[4])].field_0) + 160] = 32
                            mem[(32 * stor4[address(cd[4])].field_0) + 192] = stor4[address(cd[4])].field_0
                            idx = 0
                            s = mem[64] + 64
                            t = 160
                            while idx < stor4[address(cd[4])].field_0:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            return memory
                              from mem[64]
                               len (64 * stor4[address(cd[4])].field_0) + -mem[64] + 224
                        if unknown_0x94591da0(?????) == uint32(call.func_hash) >> 224:
                            require calldata.size - 4 >= 128
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            require ('cd', 4).length <= test266151307()
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            require cd[36] == address(cd[36])
                            require cd[100] == address(cd[100])
                            if not stor3[address(msg.sender)]:
                                revert with 0, '!AUTHORIZED'
                            idx = 0
                            while idx < ('cd', 4).length:
                                if not ('cd', 4).length:
                                    revert with 0, 18
                                if idx >= ('cd', 4).length:
                                    revert with 0, 50
                                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                                stor0 = address(cd[((32 * idx) + cd[4] + 36)])
                                mem[128] = 0x90ceb6f000000000000000000000000000000000000000000000000000000000
                                mem[132] = address(cd[36])
                                mem[164] = cd[68]
                                mem[196] = address(cd[100])
                                require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
                                call address(cd[((32 * idx) + cd[4] + 36)]).0x90ceb6f0 with:
                                   value msg.value / ('cd', 4).length wei
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68], address(cd[100])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            call msg.sender with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'refund failed'
                            if calldata.size > 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                                revert with 0, 17
                            if 21000 > !gas_remaining:
                                revert with 0, 17
                            if gas_remaining + 21000 < gas_remaining:
                                revert with 0, 17
                            if 21000 > !(16 * calldata.size):
                                revert with 0, 17
                            if 14154 > !((16 * calldata.size) + 21000):
                                revert with 0, 17
                            require ext_code.size(stor1)
                            call stor1.freeFromUpTo(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, (16 * calldata.size) + 35154 / 41947
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
}



}
