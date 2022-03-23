contract main {




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() {
    revert
}

function newTimeLockedWallet(address arg1, uint256 arg2) payable {
    create contract with 0 wei
                    code: code.data[775 len 1258], msg.sender, address(arg1), arg2
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
    if not stor0[address(arg1)].field_0:
        mem[(32 * stor0[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor0[address(arg1)].field_0) + 160] = stor0[address(arg1)].field_0
        mem[(32 * stor0[address(arg1)].field_0) + 192 len floor32(stor0[address(arg1)].field_0)] = mem[128 len floor32(stor0[address(arg1)].field_0)]
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
    mem[(32 * stor0[address(arg1)].field_0) + 192 len floor32(stor0[address(arg1)].field_0)] = mem[128 len floor32(stor0[address(arg1)].field_0)]
    return Array(len=stor0[address(arg1)].field_0, data=mem[128 len floor32(stor0[address(arg1)].field_0)], mem[(32 * stor0[address(arg1)].field_0) + floor32(stor0[address(arg1)].field_0) + 192 len (32 * stor0[address(arg1)].field_0) - floor32(stor0[address(arg1)].field_0)]), 
}



}
