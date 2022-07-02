contract main {




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
    revert
}

function newTimeLockedWallet(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    create contract with 0 wei
                    code: code.data[809 len 1267], msg.sender, address(arg1), arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[msg.sender].field_0++
    stor0[msg.sender][stor0[msg.sender].field_0].field_0 = address(create.new_address)
    if arg1 != msg.sender:
        stor0[address(arg1)].field_0++
        stor0[address(arg1)][stor0[address(arg1)].field_0].field_0 = address(create.new_address)
    call address(create.new_address) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Created(address(create.new_address), msg.sender, address(arg1), block.timestamp, arg2, msg.value);
    return address(create.new_address)
}

function getWallets(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * stor0[address(arg1)].field_0) + 128
    mem[96] = stor0[address(arg1)].field_0
    if not stor0[address(arg1)].field_0:
        mem[(32 * stor0[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor0[address(arg1)].field_0) + 160] = stor0[address(arg1)].field_0
        idx = 0
        s = (32 * stor0[address(arg1)].field_0) + 192
        t = 128
        while idx < stor0[address(arg1)].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor0[address(arg1)].field_0) + 128
           len (96 * stor0[address(arg1)].field_0) + 64
    mem[128] = stor0[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor0[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor0[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor0[address(arg1)].field_0) + 160] = stor0[address(arg1)].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor0[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor0[address(arg1)].field_0) + -mem[64] + 192
}



}
