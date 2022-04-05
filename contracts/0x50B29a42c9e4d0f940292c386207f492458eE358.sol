contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of uint256 stor1;
address factoryAddress;
array of struct sub_a7fb7e26;
mapping of uint256 stor4;
mapping of address sub_000cb797;

function sub_000cb797(?) payable {
    require calldata.size - 4 >= 64
    return sub_000cb797[arg1][arg2]
}

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function factoryLength() payable {
    return sub_a7fb7e26.length
}

function sub_a7fb7e26(?) payable {
    require calldata.size - 4 >= 32
    if arg1 >= sub_a7fb7e26.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return sub_a7fb7e26[arg1].field_0
}

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function renounceAdmin() payable {
    if stor1[address(msg.sender)]:
        require stor0.length - 1 < stor0.length
        require stor1[address(msg.sender)] - 1 < stor0.length
        stor0[stor1[address(msg.sender)]].field_0 = stor0[stor0.length].field_0
        stor1[stor0[stor0.length].field_0] = stor1[address(msg.sender)]
        require stor0.length
        stor0[stor0.length].field_0 = 0
        stor0.length--
        stor1[address(msg.sender)] = 0
    emit AdminRemoved(msg.sender);
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7341646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652041646d696e20726f6c,
                    mem[210 len 18]
    if not stor1[address(arg1)]:
        stor0.length++
        stor0[stor0.length].field_0 = arg1
        stor0[stor0.length].field_160 = 0
        stor1[address(arg1)] = stor0.length
    emit AdminAdded(arg1);
}

function createPair(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if sub_000cb797[address(arg1)][address(arg2)]:
        if not stor1[address(msg.sender)]:
            revert with 0, 'GoSwap: PAIR_EXISTS'
    require ext_code.size(factoryAddress)
    call factoryAddress.0xc9c65396 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_000cb797[address(arg1)][address(arg2)] = factoryAddress
    sub_000cb797[address(arg2)][address(arg1)] = factoryAddress
    return address(ext_call.return_data[0])
}

function setNewFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7341646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652041646d696e20726f6c,
                    mem[210 len 18]
    if stor4[address(arg1)]:
        revert with 0, 'factory exist!'
    if not stor4[address(arg1)]:
        sub_a7fb7e26.length++
        sub_a7fb7e26[sub_a7fb7e26.length].field_0 = arg1
        sub_a7fb7e26[sub_a7fb7e26.length].field_160 = 0
        stor4[address(arg1)] = sub_a7fb7e26.length
    factoryAddress = arg1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7341646d696e526f6c653a2063616c6c657220646f6573206e6f742068617665207468652041646d696e20726f6c,
                    mem[210 len 18]
    if stor1[address(arg1)]:
        require stor0.length - 1 < stor0.length
        require stor1[address(arg1)] - 1 < stor0.length
        stor0[stor1[address(arg1)]].field_0 = stor0[stor0.length].field_0
        stor1[stor0[stor0.length].field_0] = stor1[address(arg1)]
        require stor0.length
        stor0[stor0.length].field_0 = 0
        stor0.length--
        stor1[address(arg1)] = 0
    emit AdminRemoved(arg1);
}

function allAdmins() payable {
    require stor0.length <= test266151307()
    if not stor0.length:
        if var30002 >= stor0.length:
            mem[(32 * stor0.length) + 128] = 32
            mem[(32 * stor0.length) + 160] = stor0.length
            mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
            return memory
              from (32 * stor0.length) + 128
               len (96 * stor0.length) + 64
        if var36001 >= stor0.length:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * stor0.length) + 230 len 30]
        require var38002 < stor0.length
        require var44002 < stor0.length
        mem[(32 * var46001) + 128] = address(var46003)
        if var56002 < stor0.length:
            # nil
        else:
            mem[(32 * stor0.length) + 128] = 32
            mem[(32 * stor0.length) + 160] = stor0.length
            mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
            return memory
              from (32 * stor0.length) + 128
               len (96 * stor0.length) + 64
    else:
        mem[128 len 32 * stor0.length] = call.data[calldata.size len 32 * stor0.length]
        if var31002 >= stor0.length:
            mem[(32 * stor0.length) + 128] = 32
            mem[(32 * stor0.length) + 160] = stor0.length
            mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = call.data[calldata.size len floor32(stor0.length)]
            return memory
              from (32 * stor0.length) + 128
               len (96 * stor0.length) + 64
        if var37001 >= stor0.length:
            revert with 0, 
                        32,
                        34,
                        0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                        mem[(32 * stor0.length) + 230 len 30]
        require var39002 < stor0.length
        require var45002 < stor0.length
        mem[(32 * var47001) + 128] = address(var47003)
        if var57002 < stor0.length:
            # nil
        else:
            mem[(32 * stor0.length) + 128] = 32
            mem[(32 * stor0.length) + 160] = stor0.length
            mem[(32 * stor0.length) + 192 len floor32(stor0.length)] = call.data[calldata.size len floor32(stor0.length)]
            return memory
              from (32 * stor0.length) + 128
               len (96 * stor0.length) + 64
}



}
