contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address sub_41b64452Address;
address sub_367574b1Address;
address sub_6a7dd055Address;
mapping of uint256 sub_3e0636d9;
mapping of uint256 sub_6417d9ea;

function sub_367574b1(?) payable {
    return sub_367574b1Address
}

function sub_3e0636d9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_3e0636d9[arg1]
}

function sub_41b64452(?) payable {
    return sub_41b64452Address
}

function sub_6417d9ea(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_6417d9ea[arg1]
}

function sub_6a7dd055(?) payable {
    return sub_6a7dd055Address
}

function isSetter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor0[address(arg1)])
}

function sub_b837b358(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function sub_fc440083(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor0[address(msg.sender)]
    stor0[address(arg1)] = 0
}

function sub_4586884b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor0[address(msg.sender)]
    sub_41b64452Address = address(arg1)
}

function sub_c33db7d7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor0[address(msg.sender)]
    sub_6a7dd055Address = address(arg1)
}

function sub_f362ef77(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor0[address(msg.sender)]
    sub_367574b1Address = address(arg1)
}

function sub_d22fb74f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor0[address(msg.sender)]
    sub_3e0636d9[arg1] = arg2
}

function isAvailable(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 24 * 3600 > -sub_3e0636d9[arg1] - 1:
        revert with 'NH{q', 17
    if block.timestamp < sub_3e0636d9[arg1] + (24 * 3600):
        return 0
    return 1
}

function sub_1754973b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < sub_3e0636d9[arg1]:
        revert with 'NH{q', 17
    if block.timestamp - sub_3e0636d9[arg1] >= 24 * 3600:
        return 0
    if 24 * 3600 < block.timestamp - sub_3e0636d9[arg1]:
        revert with 'NH{q', 17
    return (-block.timestamp + sub_3e0636d9[arg1] + (24 * 3600))
}

function sub_1cf8a065(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require stor0[address(msg.sender)]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_649c749f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_367574b1Address)
    staticcall sub_367574b1Address.0xc72ea2d8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[140 len 20]
    require ext_code.size(sub_6a7dd055Address)
    staticcall sub_6a7dd055Address.0xc72ea2d8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if address(ext_call.return_data[128]) != msg.sender:
        revert with 0, 'You are not the owner.'
    if ext_call.return_data[96]:
        revert with 0, 'Taxi not available to farm.'
    if ext_call.return_data[32] >= 100:
        revert with 0, 'Your taxi is dead.'
    require ext_code.size(sub_367574b1Address)
    call sub_367574b1Address.0xb1ea95ca with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], 7, address(ext_call.return_data[128])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_3e0636d9[arg1] = block.timestamp
}

function sub_841ebc4f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_367574b1Address)
    staticcall sub_367574b1Address.0xc72ea2d8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[140 len 20]
    require ext_code.size(sub_6a7dd055Address)
    staticcall sub_6a7dd055Address.0xc72ea2d8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if address(ext_call.return_data[128]) != msg.sender:
        revert with 0, 'You are not the owner.'
    if ext_call.return_data[96] != 8:
        revert with 0, 'Not in maintenance'
    if 24 * 3600 > -sub_3e0636d9[arg1] - 1:
        revert with 'NH{q', 17
    if block.timestamp < sub_3e0636d9[arg1] + (24 * 3600):
        revert with 0, 'Retry later.'
    require ext_code.size(sub_367574b1Address)
    call sub_367574b1Address.0xb1ea95ca with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], 0, address(ext_call.return_data[128])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[32] > -2:
        revert with 'NH{q', 17
    require ext_code.size(sub_6a7dd055Address)
    call sub_6a7dd055Address.0x9de33514 with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0], ext_call.return_data[32] + 1, ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bda1eded(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_367574b1Address)
    staticcall sub_367574b1Address.0xc72ea2d8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[140 len 20]
    require ext_code.size(sub_6a7dd055Address)
    staticcall sub_6a7dd055Address.0xc72ea2d8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    if address(ext_call.return_data[128]) != msg.sender:
        revert with 0, 'Your are not the owner.'
    if ext_call.return_data[96] != 7:
        revert with 0, 'Taxi is not farming.'
    if 24 * 3600 > -sub_3e0636d9[arg1] - 1:
        revert with 'NH{q', 17
    if block.timestamp < sub_3e0636d9[arg1] + (24 * 3600):
        revert with 0, 'Retry later'
    if block.timestamp < sub_3e0636d9[arg1]:
        revert with 'NH{q', 17
    require ext_code.size(sub_367574b1Address)
    if block.timestamp - sub_3e0636d9[arg1] % 7 != 6:
        call sub_367574b1Address.0xb1ea95ca with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], 0, address(ext_call.return_data[128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 100 < ext_call.return_data[32]:
            revert with 'NH{q', 17
        if sub_6417d9ea[ext_call.return_data[32]] and -ext_call.return_data[32] + 100 > -1 / sub_6417d9ea[ext_call.return_data[32]]:
            revert with 'NH{q', 17
        require ext_code.size(sub_41b64452Address)
        call sub_41b64452Address.addRewards(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (100 * sub_6417d9ea[ext_call.return_data[32]]) - (ext_call.return_data[32] * sub_6417d9ea[ext_call.return_data[32]]) / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call sub_367574b1Address.0xb1ea95ca with:
             gas gas_remaining wei
            args arg1, ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], 8, address(ext_call.return_data[128])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 100 < ext_call.return_data[32]:
            revert with 'NH{q', 17
        if sub_6417d9ea[ext_call.return_data[32]] and -ext_call.return_data[32] + 100 > -1 / sub_6417d9ea[ext_call.return_data[32]]:
            revert with 'NH{q', 17
        require ext_code.size(sub_41b64452Address)
        call sub_41b64452Address.addRewards(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (100 * sub_6417d9ea[ext_call.return_data[32]]) - (ext_call.return_data[32] * sub_6417d9ea[ext_call.return_data[32]]) / 100 / 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_3e0636d9[arg1] = block.timestamp
    if ext_call.return_data[32] > -2:
        revert with 'NH{q', 17
    require ext_code.size(sub_6a7dd055Address)
    call sub_6a7dd055Address.0x9de33514 with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[0], ext_call.return_data[32] + 1, ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
