contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;

function isAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function isInBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function revoke(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[address(msg.sender)]:
        revert with 0, 'You're not the admin'
    stor0[address(arg1)] = 0
}

function setAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0[address(msg.sender)]:
        revert with 0, 'You're not the admin'
    stor0[address(arg1)] = 1
}

function sub_7a12757b(?) payable {
    require calldata.size - 4 >= 32
    if not stor0[address(msg.sender)]:
        revert with 0, 'You're not the admin'
    stor0[address(arg1)] = 1
    stor0[address(msg.sender)] = 0
    emit HandoverAdmin(msg.sender, arg1);
}

function sub_4b04d6cd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'You're not the admin'
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * uint8(idx)) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit Enlist(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), msg.sender, block.timestamp);
}

function sub_b680a9f5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not stor0[address(msg.sender)]:
        revert with 0, 'You're not the admin'
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * uint8(idx)) + 140 len 20]] = 0
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    emit Delist(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 192 len (32 * arg1.length) - floor32(arg1.length)]), msg.sender, block.timestamp);
}



}
